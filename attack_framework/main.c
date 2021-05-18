/* utility headers */
#include <sys/mman.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdlib.h>
#include <sgx_urts.h>

#include <sched.h>
#include <stdio.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include "driver_ioctl.h"

#include "./bearssl/bearssl_aead.h"
#include "./bearssl/bearssl_hash.h"
#include "sha.h"

#include "../enclave/jni/src/sabd_enclave_u.h"

#define ENCLAVE_PATH "../enclave/libsabd_enclave.debug.so"

#define SIZE_REGISTERED_USERS 9
#define SIZE_ADDRESS_BOOK 5

uint8_t private_key[32];
uint8_t public_key[32];

uint8_t ephemeral_secret[32]; 
uint8_t static_secret[32];

uint8_t master_secret[64];
uint8_t public_keys[96];

uint8_t client_key[32];
uint8_t server_key[32];

sgxsd_aes_gcm_key_t aes_gcm_key;

sgx_status_t sgx_rv;
int fd_am = -1;
int ac_fired = 0;

// phone numbers that server as registered users.
uint8_t registered_users[72] = {1,1,1,1,1,1,1,1,
                                2,2,2,2,2,2,2,2,
                                3,3,3,3,3,3,3,3,
                                4,4,4,4,4,4,4,4,
                                5,5,5,5,5,5,5,5,
                                6,6,6,6,6,6,6,6,
                                7,7,7,7,7,7,7,7,
                                8,8,8,8,8,8,8,8,
                                9,9,9,9,9,9,9,9};

// phone numbers that serve as the user's address book.
uint8_t address_book[40] = {1,1,1,1,1,1,1,1,
                            2,2,2,2,2,2,2,2,
                            9,9,9,9,9,9,9,9,
                            1,2,3,4,5,6,7,8,
                            6,6,6,6,6,6,6,6};



void valid_contact_discovery(sgx_enclave_id_t eid);
void perform_server_call(sgx_enclave_id_t eid, sgx_status_t *retval, 
                         sgxsd_server_state_handle_t *state_handle, 
                         sgxsd_pending_request_id_t *request_id);
void encrypt_decrypt(bool encrypt,
        const sgxsd_aes_gcm_key_t *p_key, 
        const void *p_src, uint32_t src_len, 
        void *p_dst, 
        const sgxsd_aes_gcm_iv_t *p_iv,
        const void *p_aad, uint32_t aad_len, 
        sgxsd_aes_gcm_mac_t *p_mac);
void generate_curve25519_key_pair();
void derive_secrets(sgxsd_request_negotiation_response_t *negotation_response);
void print_address_from_address_book(uint8_t index);
void print_setup_info();

int enclave_rv;
#define SGX_ASSERT(f)  { if ( SGX_SUCCESS != (enclave_rv = (f)) )       \
 {                                                                      \
       printf( "Error calling enclave at %s:%d (rv=0x%x)\n", __FILE__,  \
                                              __LINE__, enclave_rv);    \
        abort();                                                        \
 } }

 #define ASSERT(cond)                                                    \
    do {                                                                \
        if (!(cond))                                                    \
        {                                                               \
            perror("[" __FILE__ "] assertion '" #cond "' failed");      \
            abort();                                                    \
        }                                                               \
    } while(0)

#define ENABLE_AC 					                                    \
    do {                                                                \
        ac_fired = 0;                                                   \
        __asm__("pushf\norl $0x40000,(%rsp)\npopf");                    \
    } while(0)

#define DISABLE_AC 					                                    \
    do {                                                                \
        __asm__("pushf\nandl $~(0x40000),(%rsp)\npopf");                \
        if (!ac_fired)                                                  \
            puts("---> OK");                                            \
    } while(0)

void sgxsd_ocall_print_pt(void* pt)
{
    printf("\tEnclave says: %p\n", pt);
}

sgx_status_t sgxsd_ocall_reply(const sgxsd_msg_header_t* reply_header, const uint8_t* reply_data, size_t reply_data_size, sgxsd_msg_tag_t msg_tag)
{
    printf("--> Ocall has been called!\n");

    memcpy(aes_gcm_key.data, server_key, 32);

    uint8_t *decrypted_reply_data = malloc(reply_data_size);

    encrypt_decrypt(false,
                    &aes_gcm_key,
                    reply_data,
                    reply_data_size,
                    decrypted_reply_data,
                    &reply_header->iv,
                    NULL, 0,
                    &reply_header->mac);

    printf("\n-----------------------\ncontact discovery results for user %d:\n", msg_tag.tag);
    for (int i = 0; i < reply_data_size; i++) {
        printf("%d ", decrypted_reply_data[i]);

        // Pretty print
        /*
        if (decrypted_reply_data[i]) {
            print_address_from_address_book(i);
            printf("\n");
        }
        */
    }
    printf("\n-----------------------\n\n");

    return SGX_SUCCESS;
}

sgx_enclave_id_t create_enclave(void)
{
    sgx_launch_token_t token = {0};
    int updated = 0;
    sgx_enclave_id_t eid = -1;

    SGX_ASSERT( sgx_create_enclave( ENCLAVE_PATH, /*debug=*/1,
                                    &token, &updated, &eid, NULL ) );

    printf("calling test ecall\n");
    SGX_ASSERT( sgxsd_enclave_test_ocall(eid) );

    return eid;
}

int main( int argc, char **argv )
{
    print_setup_info();

    generate_curve25519_key_pair();
    printf("--> curve25519 key pair generated\n");

    printf("Creating SGX enclave '%s'..\n", ENCLAVE_PATH);
    sgx_enclave_id_t eid = create_enclave();
    printf("--> success!\n");

    valid_contact_discovery(eid);

    printf("destroying SGX enclave..\n");
    SGX_ASSERT( sgx_destroy_enclave( eid ) );

    printf("--> all is well; exiting..\n");
    return 0;
}

// This function does a full contact discovery
void valid_contact_discovery(sgx_enclave_id_t eid) {
    sgx_status_t retval;

    // Initialize enclave
    sgxsd_node_init_args_t node_init_args = {.pending_requests_table_order = 16};
    
    sgxsd_enclave_node_init(eid, &retval, &node_init_args);
    SGX_ASSERT(retval);
    printf("--> sgxsd_enclave_node_init success!\n");

    // Perform attestation
    sgx_report_body_t body;
    sgx_key_id_t key;
    sgx_mac_t mac;
    sgx_report_t report = {.body = body, .key_id = key, .mac = mac};

    sgx_measurement_t ms;
    sgx_attributes_t attr;
    uint8_t u;
    sgx_misc_select_t misc;
    uint8_t u2;

    sgx_target_info_t info = {.mr_enclave = ms, .attributes = attr, .reserved1 = u, .misc_select = misc, .reserved2 = u2};
    //ENABLE_AC;
    sgxsd_enclave_get_next_report(eid, &retval, info, &report);
    //DISABLE_AC;
    SGX_ASSERT(retval);

    printf("Measurement:\n");
    printf("Body:\n");
    for (int i = 0; i < 32; i++) {
        printf("%x", report.body.mr_enclave.m[i]);
    }
    printf("\n");
    printf("Key ID:\n");
    for (int i = 0; i < 32; i++) {
        printf("%x", report.key_id.id[i]);
    }
    printf("\n");
    printf("MAC:\n");
    for (int i = 0; i < 16; i++) {
        printf("%x", report.mac[i]);
    }
    printf("\n");

    // Start server 0
    sgxsd_server_init_args_t server_init_args = {.max_ab_jids = 160};
    sgxsd_server_state_handle_t state_handle = 0;

    sgxsd_enclave_server_start(eid, &retval, &server_init_args, state_handle);
    SGX_ASSERT(retval);
    printf("--> sgxsd_enclave_server_start success!\n");

    // negotiate request
    sgxsd_request_negotiation_request_t negotation_request = {.client_pubkey.x=public_key[0]};
    memcpy(negotation_request.client_pubkey.x, public_key, 32);

    sgxsd_request_negotiation_response_t negotation_response = {};
    
    sgxsd_enclave_negotiate_request(eid, &retval, &negotation_request, &negotation_response);
    SGX_ASSERT(retval);
    printf("--> sgxsd_enclave_negotiate_request success!\n");

    // Use the response to derive the client and server key.
    derive_secrets(&negotation_response);
    printf("--> client and server key derived!\n\n");

    sgxsd_pending_request_id_t request_id;

    // Decrypt the response to get the request id.
    encrypt_decrypt(false, 
        &aes_gcm_key, 
        &negotation_response.encrypted_pending_request_id.data,
        sizeof(negotation_response.encrypted_pending_request_id.data),
        &request_id,
        &negotation_response.encrypted_pending_request_id.iv,
        NULL, 0,
        &negotation_response.encrypted_pending_request_id.mac);
    

    // Make server call
    perform_server_call(eid, &retval, &state_handle, &request_id);
    SGX_ASSERT(retval);
    printf("--> sgxsd_enclave_server_call success!\n");

    // Stop server 0
    sgxsd_server_terminate_args_t terminate_args = { .in_jids = registered_users, .in_jid_count = 9};

    sgxsd_enclave_server_stop(eid, &retval, &terminate_args, state_handle);
    SGX_ASSERT(retval);
    printf("--> sgxsd_enclave_server_stop success!\n");
}

void perform_server_call(sgx_enclave_id_t eid, sgx_status_t *retval, sgxsd_server_state_handle_t *state_handle, sgxsd_pending_request_id_t *request_id) {
    memcpy(aes_gcm_key.data, client_key, 32);

    uint8_t *encrypted_message_data = malloc(sizeof(address_book));
    
    sgxsd_msg_header_t msg_header;
    sgxsd_msg_tag_t msg_tag = {.tag=1};

    encrypt_decrypt(true, 
                    &aes_gcm_key, 
                    address_book, // src
                    sizeof(address_book), //src len
                    encrypted_message_data, // dest
                    &msg_header.iv, // iv
                    request_id, // aad
                    sizeof(msg_header.pending_request_id), // aad len
                    &msg_header.mac); // out mac
                    
    sgxsd_server_handle_call_args_t server_handle_call_args = {.ab_jid_count = SIZE_ADDRESS_BOOK};

    memcpy(&msg_header.pending_request_id, request_id, sizeof(msg_header.pending_request_id));
    
    sgxsd_enclave_server_call(eid, retval, &server_handle_call_args, 
                            &msg_header, encrypted_message_data, sizeof(address_book), msg_tag, *state_handle);
}

void derive_secrets(sgxsd_request_negotiation_response_t *negotation_response) {
    // Generate shared secrets based on the 2 server public keys received in the response.
    curve25519_donna(ephemeral_secret, private_key, negotation_response->server_ephemeral_pubkey.x);
    curve25519_donna(static_secret, private_key, negotation_response->server_static_pubkey.x); 
    printf("--> shared secrets derived!\n");

    // Combine both derived secrets
    memcpy(master_secret, ephemeral_secret, 32 * sizeof(uint8_t));
    memcpy(master_secret + 32, static_secret, 32 * sizeof(uint8_t));

    // Combine  all 3 public keys
    memcpy(public_keys, public_key, 32 * sizeof(uint8_t));
    memcpy(public_keys + 32, negotation_response->server_ephemeral_pubkey.x, 32 * sizeof(uint8_t));
    memcpy(public_keys + 64, negotation_response->server_static_pubkey.x, 32 * sizeof(uint8_t));

    uint8_t keys[64];

    // Derive client and server key
    hkdf(SHA256, public_keys, 96, master_secret, 64, NULL, NULL, keys, 64);
    memcpy(client_key, keys, 32);
    memcpy(server_key, keys + 32, 32);

    memcpy(aes_gcm_key.data, server_key, 32);
}

void generate_curve25519_key_pair() {
    // Fill private key with 32 random bytes;
    for (int i = 0; i < 32; i++) {
        private_key[i] = rand();
    }

    // Generate private key 
    private_key[0] &= 248; 
    private_key[31] &= 127;
    private_key[31] |= 64; 

    // Generate public key
    static const uint8_t basepoint[32] = {9}; 
    curve25519_donna(public_key, private_key, basepoint); 
}

void encrypt_decrypt(bool encrypt,
        const sgxsd_aes_gcm_key_t *p_key, 
        const void *p_src, uint32_t src_len, 
        void *p_dst, 
        const sgxsd_aes_gcm_iv_t *p_iv,
        const void *p_aad, uint32_t aad_len, 
        sgxsd_aes_gcm_mac_t *p_mac) {
    br_aes_x86ni_ctr_keys aes_ctx;
    br_aes_x86ni_ctr_init(&aes_ctx, p_key->data, sizeof(p_key->data));
    br_gcm_context aes_gcm_ctx;
    br_gcm_init(&aes_gcm_ctx, &aes_ctx.vtable, &br_ghash_pclmul);
    br_gcm_reset(&aes_gcm_ctx, p_iv->data, sizeof(p_iv->data));
    if (aad_len != 0) {
        br_gcm_aad_inject(&aes_gcm_ctx, p_aad, aad_len);
    }
    br_gcm_flip(&aes_gcm_ctx);
    if (src_len != 0) {
        memmove(p_dst, p_src, src_len);
        br_gcm_run(&aes_gcm_ctx, encrypt, p_dst, src_len);
    }
    bool tag_res;
    if (encrypt) {
      br_gcm_get_tag(&aes_gcm_ctx, p_mac->data);
      tag_res = true;
    } else {
      tag_res = br_gcm_check_tag(&aes_gcm_ctx, p_mac->data);
    }
    if (tag_res) {
        if (encrypt) {
            printf("--> Encryption ");
        } else {
            printf("--> Decryption ");
        }
        printf("success!\n");
    } else {
        printf("--> Encryption/Decryption failed\n");
    }
}

void print_address_from_address_book(uint8_t index) {
    uint8_t start_index = index * 8;
    for (int i = start_index; i < start_index + 8; i++) {
        printf("%d", address_book[i]);
    }
}

void print_setup_info() {
    printf("\nREGISTERED USERS:\n");
    for (int i = 0; i < SIZE_REGISTERED_USERS * 8; i += 8) {
        printf("%d: ", i/8);
        for (int j = i; j< i + 8; j++) {
            printf("%d", registered_users[j]);
        }
        printf("\n");
    }

    printf("ADDRESS BOOK:\n");
    for (int i = 0; i < SIZE_ADDRESS_BOOK * 8; i+=8) {
        printf("%d: ", i/8);
        for (int j = i; j< i + 8; j++) {
            printf("%d", address_book[j]);
        }
        printf("\n");
    }
    printf("\n");
}
