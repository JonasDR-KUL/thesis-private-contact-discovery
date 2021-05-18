

//! The enclave uses this OCALL to pass the result of the contact discovery to the service.
/*!
 * This function will be called after a server is stopped using the sgxsd_enclave_server_stop ECALL.\n
 * The enclave will pass the result of the contact discovery requests to the service. \n
 * The result consists of 1 byte for each contact that was in the request. 
 * This byte will be 1 in case the contact is a registered users, 0 in case the contact isn't registered. 
 * \param reply_header Contains the IV and MAC used for decrypting the reply. 
 * \param reply_data Contains a 0 byte for each contact in the request that is not registered and a 1 byte for each contact that is registered.
 * \param reply_data_sise The size of the reply in bytes, 1 byte for earch contact in the request.
 * \param msg_tag Indicates to which client this reply should be sent. 
*/
sgx_status_t sgxsd_ocall_reply(const sgxsd_msg_header_t *reply_header, const uint8_t *reply_data, size_t reply_data_size, sgxsd_msg_tag_t msg_tag);

//! This ECALL will initialize the enclave.
/*!
 * This function must be called first, before all other ECALLS.\n
 * It can only be called once. Calling it more than once will result in an error.\n
 * It will perform the enclave setup.\n
 * \param p_args Used to calculate the size of the memory region used for storing client contact discovery requests.
*/
sgx_status_t sgxsd_enclave_node_init(sgx_enclave_id_t eid, sgx_status_t* retval, const sgxsd_node_init_args_t* p_args);

//! Used to start the server specified with state_handle.
/*! 
 * This function starts the server specified with the state_handle argument.\n
 * It can only be called once for each server.\n
 * Zeroes the region of memory corresponding to the server state,
 * then initializes the server state.\n
 * Must be called once on a server before this server can be used to make calls.
 * \param p_args Used to calculate size of server state.
 * \param state_handle Used as index to fetch the appropriate server state. Must be smaller than the max allowed amount of servers (256).
*/
sgx_status_t sgxsd_enclave_server_start(sgx_enclave_id_t eid, sgx_status_t* retval, const sgxsd_server_init_args_t* p_args, sgxsd_server_state_handle_t state_handle);

//! Used to make a server call.
/*! 
 * This function can be used to send an encrypted contact discovery request to the server.\n
 * The message is decrypted and is stored behind previous messages in a byte array.\n
 * Message meta-data is stored in the server state in a linked list.
 * \param p_args Contains the amount of contacts in the request. 
 * \param msg_header Contains the IV and MAC used by the enclave for decrypting the request. 
 * \param msg_data The encrypted message.
 * \param msg_size The encrypted message size. 
 * \param msg_tag Used for indicating which client this request belongs to. 
 * \param state_handle Used as index to fetch the appropriate server state.
*/
sgx_status_t sgxsd_enclave_server_call(sgx_enclave_id_t eid, sgx_status_t* retval, const sgxsd_server_handle_call_args_t* p_args, const sgxsd_msg_header_t* msg_header, const uint8_t* msg_data, size_t msg_size, sgxsd_msg_tag_t msg_tag, sgxsd_server_state_handle_t state_handle);

//! Used to get the enclave measurement
/*!
 * \param qe_target_info Target info.
 * \param p_report Will contain the measurement after the function is finished. 
*/
sgx_status_t sgxsd_enclave_get_next_report(sgx_enclave_id_t eid, sgx_status_t* retval, sgx_target_info_t qe_target_info, sgx_report_t* p_report);

//! This function sets the old keypair equal to the newly generated keypair during a sgxsd_enclave_get_next_report call.
/*! 
*/
sgx_status_t sgxsd_enclave_set_current_quote(sgx_enclave_id_t eid, sgx_status_t* retval);

//! Used to establish a shared secret using ECDH.
/*!
 * This function needs to be called before making a server call.
 * It will register a pending request and set all fields in the response parameter.
 * \param p_request Contains the client public key. 
 * \param p_response Will contain the enclave's 2 public keys when this call is finished. 
*/
sgx_status_t sgxsd_enclave_negotiate_request(sgx_enclave_id_t eid, sgx_status_t* retval, const sgxsd_request_negotiation_request_t* p_request, sgxsd_request_negotiation_response_t* p_response);

//! This function will find the intersection between registered users and the discovery requests and stop the server.
/*!   
 * This function will find the intersection between registered users and the discovery requests.\n
 * After that, the server is terminated.\n
 * It will call the OCALL with the encrypted reply.
 * \param p_args Contains the list of registered users. 
 * \param state_handle Used to indentify the server that needs to be stopped.
*/
sgx_status_t sgxsd_enclave_server_stop(sgx_enclave_id_t eid, sgx_status_t* retval, const sgxsd_server_terminate_args_t* p_args, sgxsd_server_state_handle_t state_handle);

