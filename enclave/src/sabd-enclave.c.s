	.file	"sabd-enclave.c"
# GNU C11 (Debian 6.3.0-18) version 6.3.0 20170516 (x86_64-linux-gnu)
#	compiled by GNU C version 6.3.0 20170516, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version 0.15
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -I include -I include/bearssl
# -I linux-sgx-sgx_2.1.3-g75dd558bdaff/common/inc
# -I linux-sgx-sgx_2.1.3-g75dd558bdaff/common/inc/tlibc
# -imultiarch x86_64-linux-gnu -D _FORTIFY_SOURCE=2 -D _DEFAULT_SOURCE
# src/sabd-enclave.c -m64 -march=skylake
# -auxbase-strip src/sabd-enclave.c.s -ggdb -ggdb0 -O2 -Wdate-time -Wall
# -Werror=all -Wextra -Wno-unused-parameter -Wno-missing-field-initializers
# -std=c11 -fstack-protector -fvisibility=hidden -fpie -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
# -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
# -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-cp
# -fipa-cp-alignment -fipa-icf -fipa-icf-functions -fipa-icf-variables
# -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fpic -fpie
# -fplt -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
# -fstack-protector -fstdarg-opt -fstrict-aliasing -fstrict-overflow
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
# -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
# -ftree-vrp -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387 -madx -maes
# -malign-stringops -mavx -mavx2 -mbmi -mbmi2 -mclflushopt -mcx16 -mf16c
# -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase -mfxsr -mglibc -mhle
# -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe -mpclmul -mpopcnt
# -mprfchw -mpush-args -mrdrnd -mrdseed -mred-zone -msahf -msse -msse2
# -msse3 -msse4 -msse4.1 -msse4.2 -mssse3 -mstv -mtls-direct-seg-refs
# -mvzeroupper -mxsave -mxsavec -mxsaveopt -mxsaves

	.text
	.p2align 4,,15
	.globl	sabd_lookup_hash
	.hidden	sabd_lookup_hash
	.type	sabd_lookup_hash, @function
sabd_lookup_hash:
.LFB4849:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$416, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	cmpl	$1, %ecx	#, ab_jid_count
	jbe	.L2	#,
	leal	-1(%rcx), %ebx	#, tmp538
	bsrl	%ebx, %ebx	# tmp538, tmp537
	addl	$1, %ebx	#, iftmp.0_40
	cmpl	$13, %ebx	#, iftmp.0_40
	ja	.L27	#,
	movl	$1, %r14d	#, tmp540
	shlx	%ebx, %r14d, %eax	# iftmp.0_40, tmp540, _637
	movl	%eax, -172(%rbp)	# _637, %sfp
	movl	$12, %eax	#, tmp542
	shlx	%ebx, %eax, %eax	# iftmp.0_40, tmp542, tmp543
	salq	$3, %rax	#, _643
	movq	%rax, -432(%rbp)	# _643, %sfp
.L24:
	movq	%rsi, -456(%rbp)	# in_jid_count, %sfp
	movq	-432(%rbp), %rsi	# %sfp,
	movq	%rdi, -448(%rbp)	# in_jids, %sfp
	movl	$64, %edi	#,
	movq	%r8, -464(%rbp)	# in_ab_jids_result, %sfp
	movl	%ecx, -168(%rbp)	# ab_jid_count, %sfp
	movq	%rdx, -408(%rbp)	# ab_jids, %sfp
	call	memalign@PLT	#
	movq	%rax, -416(%rbp)	# hashed_ab_jids, %sfp
	testq	%rax, %rax	# hashed_ab_jids
	je	.L28	#,
	movl	-172(%rbp), %r12d	# %sfp, _637
	movl	$64, %edi	#,
	addq	%r12, %r12	# in_hashed_ab_jids_result_bits_size
	movq	%r12, %rsi	# in_hashed_ab_jids_result_bits_size,
	call	memalign@PLT	#
	movq	%rax, -424(%rbp)	# in_hashed_ab_jids_result_bits, %sfp
	testq	%rax, %rax	# in_hashed_ab_jids_result_bits
	je	.L45	#,
	movq	-424(%rbp), %rdi	# %sfp,
	movq	%r12, %rcx	# in_hashed_ab_jids_result_bits_size,
	xorl	%edx, %edx	#
	movq	%r12, %rsi	# in_hashed_ab_jids_result_bits_size,
	call	memset_s@PLT	#
	movl	-168(%rbp), %r15d	# %sfp, ab_jid_count
	movl	$255, %edx	#,
	movq	-464(%rbp), %rdi	# %sfp,
	movl	%r15d, %esi	# ab_jid_count,
	movq	%rsi, %rcx	# _70,
	call	memset_s@PLT	#
	movq	-432(%rbp), %rsi	# %sfp, _643
	movq	-416(%rbp), %rdi	# %sfp,
	xorl	%edx, %edx	#
	movq	%rsi, %rcx	# _643,
	call	memset_s@PLT	#
	movl	$1, %r8d	#, tmp545
	movl	%r15d, %eax	# ab_jid_count, ab_jid_count
	movl	$128, -176(%rbp)	#, %sfp
	shlx	%ebx, %r8d, %r8d	# iftmp.0_40, tmp545, _661
	movq	-408(%rbp), %rbx	# %sfp, ab_jids
	subl	$1, %eax	#, tmp547
	leal	-1(%r8), %r14d	#, _680
	vmovapd	.LC6(%rip), %ymm14	#, tmp818
	movl	%r14d, %r13d	# _680, _680
	leaq	8(%rbx,%rax,8), %r15	#, _373
	leaq	-64(%rbp), %rax	#, tmp811
	movq	%rax, -440(%rbp)	# tmp811, %sfp
	movq	%r15, %r14	# _373, _373
.L5:
	movq	-440(%rbp), %rsi	# %sfp, tmp811
	movl	$10, %ecx	#, ivtmp_188
	movl	$1, %edx	#, tmp552
.L7:
	rdrand	%rax	# tmp551
	movq	%rax, (%rsi)	# tmp551,
	cmovc	%edx, %eax	# tmp551,, tmp552, _296
	testl	%eax, %eax	# _296
	je	.L10	#,
	rdrand	%rax	# tmp555
	movq	%rax, 8(%rsi)	# tmp555,
	cmovc	%edx, %eax	# tmp555,, tmp552, _293
	testl	%eax, %eax	# _293
	je	.L10	#,
	vmovq	-56(%rbp), %xmm2	# MEM[(uint64_t *)&hash_salt_64 + 8B], tmp932
	xorl	%r15d, %r15d	# hash_slot_idx
	movl	%r13d, %eax	# _680, _680
	xorl	%ebx, %ebx	# any_hash_slots_overflowed
	vpinsrq	$1, -64(%rbp), %xmm2, %xmm13	# MEM[(uint64_t *)&hash_salt_64], tmp932, tmp693
	movq	-416(%rbp), %r12	# %sfp, ivtmp.123
	movl	%r15d, %r13d	# hash_slot_idx, hash_slot_idx
	movq	%r14, %r15	# _373, _373
	movl	%eax, %r14d	# _680, _680
	vpslldq	$4, %xmm13, %xmm0	#, tmp693, tmp698
	vaeskeygenassist	$1, %xmm13, %xmm2	#, tmp693, tmp696
	vpxor	%xmm0, %xmm13, %xmm0	# tmp698, tmp693, _386
	vpshufd	$255, %xmm2, %xmm2	#, tmp696, tmp704
	vpslldq	$4, %xmm0, %xmm1	#, _386, tmp700
	vpxor	%xmm1, %xmm0, %xmm0	# tmp700, _386, _390
	vpslldq	$4, %xmm0, %xmm1	#, _390, tmp702
	vpxor	%xmm2, %xmm1, %xmm1	# tmp704, tmp702, tmp706
	vpxor	%xmm0, %xmm1, %xmm2	# _390, tmp706, _399
	vmovdqa	%xmm2, %xmm3	# _399, _399
	vmovaps	%xmm2, -112(%rbp)	# _399, %sfp
	vaeskeygenassist	$2, %xmm2, %xmm2	#, _399, tmp707
	vpslldq	$4, %xmm3, %xmm0	#, tmp935, tmp709
	vpshufd	$255, %xmm2, %xmm2	#, tmp707, tmp715
	vpxor	%xmm3, %xmm0, %xmm0	# _399, tmp709, _403
	vpslldq	$4, %xmm0, %xmm1	#, _403, tmp711
	vpxor	%xmm1, %xmm0, %xmm0	# tmp711, _403, _407
	vpslldq	$4, %xmm0, %xmm1	#, _407, tmp713
	vpxor	%xmm2, %xmm1, %xmm1	# tmp715, tmp713, tmp717
	vpxor	%xmm0, %xmm1, %xmm2	# _407, tmp717, _416
	vmovdqa	%xmm2, %xmm6	# _416, _416
	vmovaps	%xmm2, -80(%rbp)	# _416, %sfp
	vaeskeygenassist	$4, %xmm2, %xmm2	#, _416, tmp718
	vpslldq	$4, %xmm6, %xmm0	#, tmp939, tmp720
	vpshufd	$255, %xmm2, %xmm2	#, tmp718, tmp726
	vpxor	%xmm6, %xmm0, %xmm0	# _416, tmp720, _420
	vpslldq	$4, %xmm0, %xmm1	#, _420, tmp722
	vpxor	%xmm1, %xmm0, %xmm0	# tmp722, _420, _424
	vpslldq	$4, %xmm0, %xmm1	#, _424, tmp724
	vpxor	%xmm2, %xmm1, %xmm1	# tmp726, tmp724, tmp728
	vpxor	%xmm0, %xmm1, %xmm2	# _424, tmp728, _433
	vmovdqa	%xmm2, %xmm3	# _433, _433
	vmovaps	%xmm2, -128(%rbp)	# _433, %sfp
	vaeskeygenassist	$8, %xmm2, %xmm2	#, _433, tmp729
	vpslldq	$4, %xmm3, %xmm0	#, tmp943, tmp731
	vpshufd	$255, %xmm2, %xmm2	#, tmp729, tmp737
	vpxor	%xmm3, %xmm0, %xmm0	# _433, tmp731, _437
	vpslldq	$4, %xmm0, %xmm1	#, _437, tmp733
	vpxor	%xmm1, %xmm0, %xmm0	# tmp733, _437, _441
	vpslldq	$4, %xmm0, %xmm1	#, _441, tmp735
	vpxor	%xmm2, %xmm1, %xmm1	# tmp737, tmp735, tmp739
	vpxor	%xmm0, %xmm1, %xmm2	# _441, tmp739, _450
	vmovdqa	%xmm2, %xmm6	# _450, _450
	vmovaps	%xmm2, -144(%rbp)	# _450, %sfp
	vaeskeygenassist	$16, %xmm2, %xmm2	#, _450, tmp740
	vpslldq	$4, %xmm6, %xmm0	#, tmp947, tmp742
	vpshufd	$255, %xmm2, %xmm2	#, tmp740, tmp748
	vpxor	%xmm6, %xmm0, %xmm0	# _450, tmp742, _454
	vpslldq	$4, %xmm0, %xmm1	#, _454, tmp744
	vpxor	%xmm1, %xmm0, %xmm0	# tmp744, _454, _458
	vpslldq	$4, %xmm0, %xmm1	#, _458, tmp746
	vpxor	%xmm2, %xmm1, %xmm1	# tmp748, tmp746, tmp750
	vpxor	%xmm0, %xmm1, %xmm2	# _458, tmp750, _467
	vpslldq	$4, %xmm2, %xmm0	#, tmp951, tmp753
	vaeskeygenassist	$32, %xmm2, %xmm1	#, _467, tmp751
	vmovaps	%xmm2, -160(%rbp)	# _467, %sfp
	vpxor	%xmm2, %xmm0, %xmm0	# _467, tmp753, _471
	vpshufd	$255, %xmm1, %xmm1	#, tmp751, tmp759
	vpslldq	$4, %xmm0, %xmm8	#, _471, tmp755
	vpxor	%xmm8, %xmm0, %xmm0	# tmp755, _471, _475
	vpslldq	$4, %xmm0, %xmm8	#, _475, tmp757
	vpxor	%xmm1, %xmm8, %xmm8	# tmp759, tmp757, tmp761
	vpxor	%xmm0, %xmm8, %xmm8	# _475, tmp761, _484
	vpslldq	$4, %xmm8, %xmm0	#, _484, tmp764
	vaeskeygenassist	$64, %xmm8, %xmm1	#, _484, tmp762
	vpxor	%xmm0, %xmm8, %xmm0	# tmp764, _484, _488
	vpshufd	$255, %xmm1, %xmm1	#, tmp762, tmp770
	vpslldq	$4, %xmm0, %xmm9	#, _488, tmp766
	vpxor	%xmm9, %xmm0, %xmm0	# tmp766, _488, _492
	vpslldq	$4, %xmm0, %xmm9	#, _492, tmp768
	vpxor	%xmm1, %xmm9, %xmm9	# tmp770, tmp768, tmp772
	vpxor	%xmm0, %xmm9, %xmm9	# _492, tmp772, _501
	vpslldq	$4, %xmm9, %xmm0	#, _501, tmp775
	vaeskeygenassist	$128, %xmm9, %xmm1	#, _501, tmp773
	vpxor	%xmm0, %xmm9, %xmm0	# tmp775, _501, _505
	vpshufd	$255, %xmm1, %xmm1	#, tmp773, tmp781
	vpslldq	$4, %xmm0, %xmm10	#, _505, tmp777
	vpxor	%xmm10, %xmm0, %xmm0	# tmp777, _505, _509
	vpslldq	$4, %xmm0, %xmm10	#, _509, tmp779
	vpxor	%xmm1, %xmm10, %xmm10	# tmp781, tmp779, tmp783
	vpxor	%xmm0, %xmm10, %xmm10	# _509, tmp783, _518
	vpslldq	$4, %xmm10, %xmm0	#, _518, tmp786
	vaeskeygenassist	$27, %xmm10, %xmm1	#, _518, tmp784
	vpxor	%xmm0, %xmm10, %xmm0	# tmp786, _518, _522
	vpshufd	$255, %xmm1, %xmm1	#, tmp784, tmp792
	vpslldq	$4, %xmm0, %xmm11	#, _522, tmp788
	vpxor	%xmm11, %xmm0, %xmm0	# tmp788, _522, _526
	vpslldq	$4, %xmm0, %xmm11	#, _526, tmp790
	vpxor	%xmm1, %xmm11, %xmm11	# tmp792, tmp790, tmp794
	vpxor	%xmm0, %xmm11, %xmm11	# _526, tmp794, _535
	vpslldq	$4, %xmm11, %xmm0	#, _535, tmp797
	vaeskeygenassist	$54, %xmm11, %xmm1	#, _535, tmp795
	vpxor	%xmm0, %xmm11, %xmm0	# tmp797, _535, _539
	vpshufd	$255, %xmm1, %xmm1	#, tmp795, tmp803
	vpslldq	$4, %xmm0, %xmm12	#, _539, tmp799
	vpxor	%xmm12, %xmm0, %xmm0	# tmp799, _539, _543
	vpslldq	$4, %xmm0, %xmm12	#, _543, tmp801
	vpxor	%xmm1, %xmm12, %xmm12	# tmp803, tmp801, tmp805
	vpxor	%xmm0, %xmm12, %xmm12	# _543, tmp805, _552
	.p2align 4,,10
	.p2align 3
.L25:
	movl	-168(%rbp), %edi	# %sfp,
	testl	%edi, %edi	#
	je	.L29	#,
	vpxor	%xmm6, %xmm6, %xmm6	# chain_blocks$0
	movq	-408(%rbp), %rdi	# %sfp, ivtmp.118
	vmovdqa	.LC0(%rip), %ymm3	#, chain_block_masks$0
	xorl	%r10d, %r10d	# chain_idx
	vmovdqa	.LC1(%rip), %ymm1	#, chain_block_masks$1
	vmovdqa	.LC2(%rip), %ymm2	#, chain_block_masks$2
	vmovdqa	%ymm6, %ymm5	#, chain_blocks$1
	vmovdqa	%ymm6, %ymm4	# tmp26, chain_blocks$2
	.p2align 4,,10
	.p2align 3
.L11:
	vmovq	(%rdi), %xmm7	# MEM[base: _428, offset: 0B], tmp558
	vpbroadcastq	(%rdi), %ymm0	# MEM[base: _428, offset: 0B], tmp557
	xorl	%edx, %edx	# tmp580
	vpxor	%xmm13, %xmm7, %xmm7	# tmp693, tmp558, tmp559
	vpcmpeqq	%ymm0, %ymm5, %ymm15	# tmp557, chain_blocks$1, tmp573
	vaesenc	-112(%rbp), %xmm7, %xmm7	# %sfp, tmp559, tmp560
	vaesenc	-80(%rbp), %xmm7, %xmm7	# %sfp, tmp560, tmp561
	vaesenc	-128(%rbp), %xmm7, %xmm7	# %sfp, tmp561, tmp562
	vaesenc	-144(%rbp), %xmm7, %xmm7	# %sfp, tmp562, tmp563
	vaesenc	-160(%rbp), %xmm7, %xmm7	# %sfp, tmp563, tmp564
	vaesenc	%xmm8, %xmm7, %xmm7	# _484, tmp564, tmp565
	vaesenc	%xmm9, %xmm7, %xmm7	# _501, tmp565, tmp566
	vaesenc	%xmm10, %xmm7, %xmm7	# _518, tmp566, tmp567
	vaesenc	%xmm11, %xmm7, %xmm7	# _535, tmp567, tmp568
	vaesenclast	%xmm12, %xmm7, %xmm7	# _552, tmp568, tmp569
	vmovd	%xmm7, %eax	#, tmp571
	vpcmpeqq	%ymm6, %ymm0, %ymm7	# chain_blocks$0, tmp557, tmp575
	vpor	%ymm7, %ymm15, %ymm7	# tmp575, tmp573, tmp576
	vpcmpeqq	%ymm4, %ymm0, %ymm15	# chain_blocks$2, tmp557, tmp578
	vpor	%ymm15, %ymm7, %ymm7	# tmp578, tmp576, tmp579
	vblendvpd	%ymm3, %ymm0, %ymm6, %ymm15	# chain_block_masks$0, _139, chain_blocks$0, _154
	vtestpd	%ymm7, %ymm7	# tmp579, tmp579
	vblendvpd	%ymm1, %ymm0, %ymm5, %ymm7	# chain_block_masks$1, _139, chain_blocks$1, _155
	vmovdqa	%ymm15, %ymm6	# _154, chain_blocks$0
	vblendvpd	%ymm2, %ymm0, %ymm4, %ymm0	# chain_block_masks$2, _139, chain_blocks$2, _157
	sete	%dl	#, tmp580
	andl	%r14d, %eax	# _680, tmp581
	addq	$8, %rdi	#, ivtmp.118
	xorl	%r13d, %eax	# hash_slot_idx, tmp583
	subq	$1, %rax	#, tmp584
	shrq	$32, %rax	#, tmp585
	andq	%rdx, %rax	# tmp580, should_insert_jid
	vmovq	%rax, %xmm5	# should_insert_jid, should_insert_jid
	addl	%eax, %r10d	# should_insert_jid, chain_idx
	vpbroadcastq	%xmm5, %ymm4	# should_insert_jid, tmp600
	vmovdqa	%ymm7, %ymm5	# _155, chain_blocks$1
	vpaddq	%ymm4, %ymm2, %ymm2	# tmp600, chain_block_masks$2, chain_block_masks$2
	vpaddq	%ymm4, %ymm1, %ymm1	# tmp600, chain_block_masks$1, chain_block_masks$1
	vpaddq	%ymm4, %ymm3, %ymm3	# tmp600, chain_block_masks$0, chain_block_masks$0
	vmovdqa	%ymm0, %ymm4	# _157, chain_blocks$2
	cmpq	%rdi, %r15	# ivtmp.118, _373
	jne	.L11	#,
	cmpl	$12, %r10d	#, chain_idx
	seta	-161(%rbp)	#, %sfp
.L13:
	vblendvpd	%ymm3, %ymm14, %ymm15, %ymm3	# _663, tmp818, _154, tmp602
	vblendvpd	%ymm1, %ymm14, %ymm7, %ymm1	# _667, tmp818, _155, tmp606
	movq	%r12, %rdi	# ivtmp.123,
	vmovaps	%xmm13, -400(%rbp)	# tmp693, %sfp
	vblendvpd	%ymm2, %ymm14, %ymm0, %ymm0	# _671, tmp818, _157, tmp610
	vmovaps	%xmm12, -384(%rbp)	# _552, %sfp
	vmovaps	%xmm11, -368(%rbp)	# _535, %sfp
	vmovaps	%xmm10, -352(%rbp)	# _518, %sfp
	vmovaps	%xmm9, -336(%rbp)	# _501, %sfp
	vmovaps	%xmm8, -320(%rbp)	# _484, %sfp
	vmovapd	%ymm3, -304(%rbp)	# tmp602, %sfp
	vmovapd	%ymm1, -272(%rbp)	# tmp606, %sfp
	vmovapd	%ymm14, -240(%rbp)	# tmp818, %sfp
	vmovapd	%ymm0, -208(%rbp)	# tmp610, %sfp
	vzeroupper
	addl	$1, %r13d	#, hash_slot_idx
	addq	$96, %r12	#, ivtmp.123
	call	sgxsd_ocall_print_pt@PLT	#
	vmovapd	-304(%rbp), %ymm3	# %sfp, tmp602
	vmovapd	-272(%rbp), %ymm1	# %sfp, tmp606
	vmovapd	-208(%rbp), %ymm0	# %sfp, tmp610
	orb	-161(%rbp), %bl	# %sfp, any_hash_slots_overflowed
	vmovdqa	%ymm3, -96(%r12)	# tmp602, MEM[base: p_chain_blocks_173, offset: 0B]
	vmovapd	-240(%rbp), %ymm14	# %sfp, tmp818
	vmovdqa	-320(%rbp), %xmm8	# %sfp, _484
	vmovdqa	%ymm1, -64(%r12)	# tmp606, MEM[base: p_chain_blocks_173, offset: 32B]
	vmovdqa	-336(%rbp), %xmm9	# %sfp, _501
	vmovdqa	-352(%rbp), %xmm10	# %sfp, _518
	vmovdqa	%ymm0, -32(%r12)	# tmp610, MEM[base: p_chain_blocks_173, offset: 64B]
	cmpl	-172(%rbp), %r13d	# %sfp, hash_slot_idx
	vmovdqa	-368(%rbp), %xmm11	# %sfp, _535
	vmovdqa	-384(%rbp), %xmm12	# %sfp, _552
	vmovdqa	-400(%rbp), %xmm13	# %sfp, tmp693
	jne	.L25	#,
	movl	%r14d, %r13d	# _680, _680
	movq	%r15, %r14	# _373, _373
	testb	%bl, %bl	# any_hash_slots_overflowed
	jne	.L46	#,
	movq	-448(%rbp), %rdi	# %sfp, ivtmp.113
	movq	-456(%rbp), %rax	# %sfp, in_jid_count
	movl	%r13d, %r14d	# _680, _680
	leaq	(%rdi,%rax,8), %rsi	#, _496
	testq	%rax, %rax	# in_jid_count
	je	.L17	#,
	movq	-416(%rbp), %rcx	# %sfp, hashed_ab_jids
	movq	-424(%rbp), %r8	# %sfp, in_hashed_ab_jids_result_bits
	vmovdqa	-112(%rbp), %xmm2	# %sfp, _399
	vmovdqa	-80(%rbp), %xmm3	# %sfp, _416
	vmovdqa	-128(%rbp), %xmm4	# %sfp, _433
	vmovdqa	-144(%rbp), %xmm5	# %sfp, _450
	vmovdqa	-160(%rbp), %xmm6	# %sfp, _467
.L31:
	vmovq	(%rdi), %xmm0	# MEM[base: _547, offset: 0B], tmp616
	vpbroadcastq	(%rdi), %ymm1	# MEM[base: _547, offset: 0B], tmp615
	addq	$8, %rdi	#, ivtmp.113
	vpxor	%xmm13, %xmm0, %xmm0	# tmp693, tmp616, tmp617
	vaesenc	%xmm2, %xmm0, %xmm0	# _399, tmp617, tmp618
	vaesenc	%xmm3, %xmm0, %xmm0	# _416, tmp618, tmp619
	vaesenc	%xmm4, %xmm0, %xmm0	# _433, tmp619, tmp620
	vaesenc	%xmm5, %xmm0, %xmm0	# _450, tmp620, tmp621
	vaesenc	%xmm6, %xmm0, %xmm0	# _467, tmp621, tmp622
	vaesenc	%xmm8, %xmm0, %xmm0	# _484, tmp622, tmp623
	vaesenc	%xmm9, %xmm0, %xmm0	# _501, tmp623, tmp624
	vaesenc	%xmm10, %xmm0, %xmm0	# _518, tmp624, tmp625
	vaesenc	%xmm11, %xmm0, %xmm0	# _535, tmp625, tmp626
	vaesenclast	%xmm12, %xmm0, %xmm0	# _552, tmp626, tmp627
	vmovd	%xmm0, %eax	#, tmp629
	andl	%r14d, %eax	# _680, _366
	leal	(%rax,%rax,2), %edx	#, tmp632
	cltq
	sall	$2, %edx	#,
	leaq	(%r8,%rax,2), %r11	#, chain_result_bits
	leaq	(%rcx,%rdx,8), %r9	#, chain_blocks
	movzwl	(%r11), %ebx	# *chain_result_bits_228, _229
	vmovdqa	(%r9), %ymm0	# *chain_blocks_206, *chain_blocks_206
	xorw	$-4096, %bx	#, _229
	vpcmpeqq	%ymm1, %ymm0, %ymm0	# tmp615, *chain_blocks_206, tmp639
	vmovmskpd	%ymm0, %r10d	# tmp639, tmp636
	vmovdqa	32(%r9), %ymm0	# MEM[(__m256i * {ref-all})chain_blocks_206 + 32B], MEM[(__m256i * {ref-all})chain_blocks_206 + 32B]
	vpcmpeqq	%ymm1, %ymm0, %ymm0	# tmp615, MEM[(__m256i * {ref-all})chain_blocks_206 + 32B], tmp644
	vmovmskpd	%ymm0, %edx	# tmp644, tmp641
	vmovdqa	64(%r9), %ymm0	# MEM[(__m256i * {ref-all})chain_blocks_206 + 64B], MEM[(__m256i * {ref-all})chain_blocks_206 + 64B]
	movl	%edx, %eax	# tmp641, tmp641
	vpcmpeqq	%ymm1, %ymm0, %ymm1	# tmp615, MEM[(__m256i * {ref-all})chain_blocks_206 + 64B], tmp649
	sall	$4, %eax	#, tmp641
	vmovmskpd	%ymm1, %r9d	# tmp649, tmp646
	movl	%r9d, %edx	# tmp646, tmp646
	sall	$8, %edx	#, tmp646
	orl	%edx, %eax	# tmp654, tmp655
	movl	%ebx, %edx	# _229, tmp657
	orl	%r10d, %eax	# tmp636, chain_eq_mask
	orl	%edx, %eax	# tmp657, _231
	movw	%ax, (%r11)	# _231, *chain_result_bits_228
	cmpq	%rdi, %rsi	# ivtmp.113, _496
	jne	.L31	#,
.L17:
	movl	-168(%rbp), %eax	# %sfp,
	testl	%eax, %eax	#
	je	.L47	#,
	movl	-172(%rbp), %r14d	# %sfp, _637
	movq	-424(%rbp), %r12	# %sfp, in_hashed_ab_jids_result_bits
	xorl	%r11d, %r11d	# ivtmp.105
	movq	-416(%rbp), %rbx	# %sfp, hashed_ab_jids
	movq	-408(%rbp), %r13	# %sfp, ab_jids
	leal	-1(%r14), %eax	#,
	movq	-464(%rbp), %r15	# %sfp, in_ab_jids_result
	movl	-168(%rbp), %r14d	# %sfp, ab_jid_count
	movl	%eax, -112(%rbp)	# tmp808, %sfp
	leaq	2(%r12,%rax,2), %r10	#, _560
	.p2align 4,,10
	.p2align 3
.L20:
	vpbroadcastq	0(%r13,%r11,8), %ymm1	# MEM[base: ab_jids_111(D), index: ivtmp.105_559, step: 8, offset: 0B], _311
	movq	%rbx, %rsi	# hashed_ab_jids, ivtmp.100
	movq	%r12, %rdi	# in_hashed_ab_jids_result_bits, ivtmp.101
	xorl	%r9d, %r9d	# ab_jid_result
	.p2align 4,,10
	.p2align 3
.L19:
	vmovdqa	(%rsi), %ymm0	# MEM[base: _570, offset: 0B], MEM[base: _570, offset: 0B]
	movzwl	(%rdi), %r8d	# *_271, _272
	addq	$2, %rdi	#, ivtmp.101
	addq	$96, %rsi	#, ivtmp.100
	vpcmpeqq	%ymm1, %ymm0, %ymm0	# _311, MEM[base: _570, offset: 0B], tmp666
	andw	$4095, %r8w	#, chain_result
	vmovmskpd	%ymm0, %ecx	# tmp666, tmp663
	vmovdqa	-64(%rsi), %ymm0	# MEM[base: _570, offset: 32B], MEM[base: _570, offset: 32B]
	vpcmpeqq	%ymm1, %ymm0, %ymm0	# _311, MEM[base: _570, offset: 32B], tmp671
	vmovmskpd	%ymm0, %eax	# tmp671, tmp668
	vmovdqa	-32(%rsi), %ymm0	# MEM[base: _570, offset: 64B], MEM[base: _570, offset: 64B]
	sall	$4, %eax	#, tmp678
	vpcmpeqq	%ymm1, %ymm0, %ymm0	# _311, MEM[base: _570, offset: 64B], tmp676
	vmovmskpd	%ymm0, %edx	# tmp676, tmp673
	sall	$8, %edx	#, tmp679
	orl	%eax, %edx	# tmp678, tmp680
	orl	%edx, %ecx	# tmp680, chain_eq_mask
	andl	%ecx, %r8d	# chain_eq_mask, tmp683
	orl	%r8d, %r9d	# tmp683, ab_jid_result
	cmpq	%rdi, %r10	# ivtmp.101, _560
	jne	.L19	#,
	testw	%r9w, %r9w	# ab_jid_result
	leaq	(%r15,%r11), %rax	#, _557
	setne	%dl	#, tmp684
	addq	$1, %r11	#, ivtmp.105
	movb	%dl, (%rax)	# tmp684, *_557
	cmpl	%r11d, %r14d	# ivtmp.105, ab_jid_count
	ja	.L20	#,
	movl	-112(%rbp), %r14d	# %sfp,
.L21:
	movq	-424(%rbp), %rbx	# %sfp, in_hashed_ab_jids_result_bits
	movq	-416(%rbp), %rax	# %sfp, ivtmp.93
	vpxor	%xmm0, %xmm0, %xmm0	# tmp689
	movq	%rbx, %rdx	# in_hashed_ab_jids_result_bits, ivtmp.92
	leaq	2(%rbx,%r14,2), %rcx	#, _578
	.p2align 4,,10
	.p2align 3
.L22:
	movl	$-32768, %esi	#,
	addq	$2, %rdx	#, ivtmp.92
	addq	$96, %rax	#, ivtmp.93
	movw	%si, -2(%rdx)	#, *_287
	vmovdqa	%ymm0, -96(%rax)	# tmp689, *chain_blocks_292
	vmovdqa	%ymm0, -64(%rax)	# tmp689, MEM[(volatile __m256i * {ref-all})chain_blocks_292 + 32B]
	vmovdqa	%ymm0, -32(%rax)	# tmp689, MEM[(volatile __m256i * {ref-all})chain_blocks_292 + 64B]
	cmpq	%rdx, %rcx	# ivtmp.92, _578
	jne	.L22	#,
	movq	-424(%rbp), %rdi	# %sfp,
	vzeroupper
	call	free@PLT	#
	movq	-416(%rbp), %rdi	# %sfp,
	call	free@PLT	#
	xorl	%eax, %eax	# <retval>
.L41:
	addq	$416, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret
.L46:
	.cfi_restore_state
	movq	-432(%rbp), %rsi	# %sfp, _643
	movq	-416(%rbp), %rdi	# %sfp,
	xorl	%edx, %edx	#
	vmovapd	%ymm14, -112(%rbp)	# tmp818, %sfp
	movq	%rsi, %rcx	# _643,
	vzeroupper
	call	memset_s@PLT	#
	subl	$1, -176(%rbp)	#, %sfp
	vmovapd	-112(%rbp), %ymm14	# %sfp, tmp818
	jne	.L5	#,
.L15:
	movq	-424(%rbp), %rdi	# %sfp,
	vzeroupper
	call	free@PLT	#
	movq	-416(%rbp), %rdi	# %sfp,
	call	free@PLT	#
	movl	$1, %eax	#, <retval>
	jmp	.L41	#
	.p2align 4,,10
	.p2align 3
.L29:
	vxorpd	%xmm0, %xmm0, %xmm0	# _157
	movb	$0, -161(%rbp)	#, %sfp
	vmovapd	.LC3(%rip), %ymm2	#, _671
	vmovapd	%ymm0, %ymm7	#, _155
	vmovapd	.LC4(%rip), %ymm1	#, _667
	vmovapd	%ymm0, %ymm15	#, _154
	vmovapd	.LC5(%rip), %ymm3	#, _663
	jmp	.L13	#
.L10:
	subl	$1, %ecx	#, ivtmp_188
	jne	.L7	#,
	jmp	.L15	#
.L2:
	testl	%ecx, %ecx	# ab_jid_count
	jne	.L48	#,
	xorl	%eax, %eax	# <retval>
	jmp	.L41	#
.L27:
	movl	$2, %eax	#, <retval>
	jmp	.L41	#
.L28:
	movl	$3, %eax	#, <retval>
	jmp	.L41	#
.L47:
	movl	-172(%rbp), %eax	# %sfp, _637
	leal	-1(%rax), %r14d	#,
	jmp	.L21	#
.L45:
	movq	-416(%rbp), %rdi	# %sfp,
	call	free@PLT	#
	movl	$3, %eax	#, <retval>
	jmp	.L41	#
.L48:
	movq	$96, -432(%rbp)	#, %sfp
	xorl	%ebx, %ebx	# iftmp.0_40
	movl	$1, -172(%rbp)	#, %sfp
	jmp	.L24	#
	.cfi_endproc
.LFE4849:
	.size	sabd_lookup_hash, .-sabd_lookup_hash
	.p2align 4,,15
	.globl	sgxsd_enclave_server_init
	.hidden	sgxsd_enclave_server_init
	.type	sgxsd_enclave_server_init, @function
sgxsd_enclave_server_init:
.LFB4850:
	.cfi_startproc
	movl	$2, %eax	#, <retval>
	testq	%rdi, %rdi	# p_args
	je	.L60	#,
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13	# pp_state, pp_state
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# p_args, p_args
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
	movl	(%rdi), %eax	# p_args_3(D)->max_ab_jids, p_args_3(D)->max_ab_jids
	movl	$64, %edi	#,
	leaq	64(,%rax,8), %r12	#, state_size
	movq	%r12, %rsi	# state_size,
	call	memalign@PLT	#
	movq	%rax, %rbp	#, p_state
	movl	$3, %eax	#, <retval>
	testq	%rbp, %rbp	# p_state
	je	.L55	#,
	movq	%r12, %rcx	# state_size,
	xorl	%edx, %edx	#
	movq	%r12, %rsi	# state_size,
	movq	%rbp, %rdi	# p_state,
	call	memset_s@PLT	#
	movl	(%rbx), %eax	# p_args_3(D)->max_ab_jids, _12
	movq	$0, 0(%rbp)	#, p_state_10->msgs
	movl	$0, 8(%rbp)	#, p_state_10->ab_jid_count
	movl	%eax, 12(%rbp)	# _12, p_state_10->max_ab_jids
	xorl	%eax, %eax	# <retval>
	movq	%rbp, 0(%r13)	# p_state, *pp_state_16(D)
.L55:
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.L60:
	ret
	.cfi_endproc
.LFE4850:
	.size	sgxsd_enclave_server_init, .-sgxsd_enclave_server_init
	.p2align 4,,15
	.globl	sgxsd_enclave_server_handle_call
	.hidden	sgxsd_enclave_server_handle_call
	.type	sgxsd_enclave_server_handle_call, @function
sgxsd_enclave_server_handle_call:
.LFB4851:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	$5, %eax	#, <retval>
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	(%rcx), %rbx	# *pp_state_4(D), p_state
	testq	%rbx, %rbx	# p_state
	je	.L74	#,
	movl	$2, %eax	#, <retval>
	testq	%rdi, %rdi	# p_args
	je	.L74	#,
	movl	(%rdi), %ecx	# p_args_7(D)->ab_jid_count, _8
	testl	%ecx, %ecx	# _8
	jne	.L76	#,
.L74:
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L76:
	.cfi_restore_state
	movl	12(%rbx), %r8d	# p_state_5->max_ab_jids, p_state_5->max_ab_jids
	subl	8(%rbx), %r8d	# p_state_5->ab_jid_count, tmp115
	cmpl	%r8d, %ecx	# tmp115, _8
	ja	.L74	#,
	testb	$7, %dl	#, msg
	jne	.L74	#,
	movl	%edx, %r8d	# msg, tmp118
	shrl	$3, %r8d	#, tmp118
	cmpl	%r8d, %ecx	# tmp118, _8
	jne	.L74	#,
	lfence
	movq	%rdi, %rbp	# p_args, p_args
	movl	$56, %edi	#,
	movq	%rdx, %r12	# msg, msg
	movq	%rsi, %r13	# msg, msg
	call	malloc@PLT	#
	movq	%rax, %r14	#, tmp119
	movl	$3, %eax	#, <retval>
	testq	%r14, %r14	# tmp119
	je	.L74	#,
	movq	(%rbx), %rax	# p_state_5->msgs, _18
	movl	$10, %ecx	#, tmp122
	movq	%r14, %rdi	# tmp119, p_sabd_msg
	leaq	48(%rsp), %rsi	#, tmp121
	rep movsl
	movl	0(%rbp), %edx	# p_args_7(D)->ab_jid_count, _17
	movq	%r13, %rsi	# msg,
	movq	%rax, 48(%r14)	# _18, p_sabd_msg_16->prev
	movl	8(%rbx), %eax	# p_state_5->ab_jid_count, p_state_5->ab_jid_count
	movl	%edx, 40(%r14)	# _17, p_sabd_msg_16->ab_jid_count
	movl	%r12d, %edx	# msg, msg$size
	movq	%r14, (%rbx)	# tmp119, p_state_5->msgs
	leaq	64(%rbx,%rax,8), %rdi	#, tmp126
	call	memcpy@PLT	#
	movl	40(%r14), %eax	# p_sabd_msg_16->ab_jid_count, p_sabd_msg_16->ab_jid_count
	addl	%eax, 8(%rbx)	# p_sabd_msg_16->ab_jid_count, p_state_5->ab_jid_count
	xorl	%edx, %edx	#
	movl	$40, %ecx	#,
	movl	$40, %esi	#,
	leaq	48(%rsp), %rdi	#,
	call	memset_s@PLT	#
	xorl	%eax, %eax	# <retval>
	jmp	.L74	#
	.cfi_endproc
.LFE4851:
	.size	sgxsd_enclave_server_handle_call, .-sgxsd_enclave_server_handle_call
	.p2align 4,,15
	.globl	sgxsd_enclave_server_terminate
	.hidden	sgxsd_enclave_server_terminate
	.type	sgxsd_enclave_server_terminate, @function
sgxsd_enclave_server_terminate:
.LFB4852:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$5, %ebp	#, <retval>
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
	testq	%rsi, %rsi	# p_state
	je	.L104	#,
	movq	%rsi, %rbx	# p_state, p_state
	movq	%rdi, %rbp	# p_args, p_args
	testq	%rdi, %rdi	# p_args
	je	.L79	#,
	movabsq	$2305843009213693951, %rax	#, tmp125
	movq	8(%rdi), %r12	# p_args_21(D)->in_jid_count, _22
	cmpq	%rax, %r12	# tmp125, _22
	jbe	.L109	#,
.L79:
	movl	8(%rbx), %r13d	# p_state_19(D)->ab_jid_count, ab_jid_idx
	testl	%r13d, %r13d	# ab_jid_idx
	jne	.L110	#,
	movl	12(%rbx), %eax	# p_state_19(D)->max_ab_jids, p_state_19(D)->max_ab_jids
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# p_state,
	movl	$2, %ebp	#, <retval>
	leaq	64(,%rax,8), %rsi	#, state_size
	movq	%rsi, %rcx	# state_size,
	call	memset_s@PLT	#
	movq	%rbx, %rdi	# p_state,
	call	free@PLT	#
.L104:
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	.cfi_restore_state
	movq	(%rdi), %rdi	# p_args_21(D)->in_jids,
	leaq	0(,%r12,8), %rsi	#, in_jids_size
	call	sgx_is_outside_enclave@PLT	#
	cmpl	$1, %eax	#, _26
	jne	.L79	#,
	movl	8(%rbx), %r13d	# p_state_19(D)->ab_jid_count, ab_jid_idx
	testl	%r13d, %r13d	# ab_jid_idx
	je	.L111	#,
	movl	%r13d, %edi	# ab_jid_idx, ab_jid_idx
	movl	$3, %r14d	#, lookup_res
	call	malloc@PLT	#
	movq	%rax, 40(%rsp)	# in_ab_jids_result, %sfp
	testq	%rax, %rax	# in_ab_jids_result
	je	.L87	#,
	lfence
	movl	8(%rbx), %ecx	# p_state_19(D)->ab_jid_count, p_state_19(D)->ab_jid_count
	leaq	64(%rbx), %rdx	#, tmp128
	movq	%r12, %rsi	# _22,
	movq	40(%rsp), %r8	# %sfp,
	movq	0(%rbp), %rdi	# p_args_21(D)->in_jids,
	call	sabd_lookup_hash	#
	movl	8(%rbx), %r13d	# p_state_19(D)->ab_jid_count, ab_jid_idx
	movl	%eax, %r14d	#, lookup_res
.L87:
	movq	(%rbx), %r15	# p_state_19(D)->msgs, p_msg
	testq	%r15, %r15	# p_msg
	je	.L82	#,
	xorl	%ebp, %ebp	# <retval>
	jmp	.L85	#
	.p2align 4,,10
	.p2align 3
.L83:
	movq	%r15, %rdi	# p_msg,
	movq	48(%r15), %r12	# p_msg_101->prev, p_prev_msg
	movl	$56, %ecx	#,
	xorl	%edx, %edx	#
	movl	$56, %esi	#,
	call	memset_s@PLT	#
	movq	%r15, %rdi	# p_msg,
	movq	%r12, %r15	# p_prev_msg, p_msg
	call	free@PLT	#
	testq	%r12, %r12	# p_msg
	je	.L112	#,
.L85:
	testl	%r14d, %r14d	# lookup_res
	jne	.L83	#,
	movl	40(%r15), %eax	# p_msg_101->ab_jid_count, _40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 120
	subl	%eax, %r13d	# _40, ab_jid_idx
	movl	%r13d, %edx	# ab_jid_idx, ab_jid_idx
	addq	48(%rsp), %rdx	# %sfp, ab_jid_idx
	movq	%rdx, 24(%rsp)	# ab_jid_idx, %sfp
	vmovdqa	24(%rsp), %xmm1	# %sfp, tmp160
	vpinsrd	$2, %eax, %xmm1, %xmm0	#, _40, tmp160, tmp131
	vmovaps	%xmm0, 8(%rsp)	# tmp131, %sfp
	vmovdqa	8(%rsp), %xmm2	# %sfp, tmp161
	movq	16(%rsp), %rsi	# %sfp, tmp152
	vmovaps	%xmm2, 24(%rsp)	# tmp161, %sfp
	pushq	32(%r15)	# p_msg_101->from
	.cfi_def_cfa_offset 128
	pushq	24(%r15)	# p_msg_101->from
	.cfi_def_cfa_offset 136
	pushq	16(%r15)	# p_msg_101->from
	.cfi_def_cfa_offset 144
	pushq	8(%r15)	# p_msg_101->from
	.cfi_def_cfa_offset 152
	pushq	(%r15)	# p_msg_101->from
	.cfi_def_cfa_offset 160
	movq	48(%rsp), %rdi	# %sfp,
	call	sgxsd_enclave_server_reply@PLT	#
	addq	$48, %rsp	#,
	.cfi_def_cfa_offset 112
	testl	%ebp, %ebp	# <retval>
	cmove	%eax, %ebp	# reply_res,, <retval>
	jmp	.L83	#
	.p2align 4,,10
	.p2align 3
.L112:
	movq	40(%rsp), %rdi	# %sfp,
	call	free@PLT	#
	movl	12(%rbx), %eax	# p_state_19(D)->max_ab_jids, p_state_19(D)->max_ab_jids
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# p_state,
	leaq	64(,%rax,8), %rsi	#, state_size
	movq	%rsi, %rcx	# state_size,
	call	memset_s@PLT	#
	movq	%rbx, %rdi	# p_state,
	call	free@PLT	#
	testl	%r14d, %r14d	# lookup_res
	jne	.L106	#,
	cmpl	$2, %ebp	#, <retval>
	movl	$1, %eax	#, tmp153
	cmove	%eax, %ebp	# <retval>,, tmp153, <retval>
	jmp	.L104	#
	.p2align 4,,10
	.p2align 3
.L110:
	movl	%r13d, %edi	# ab_jid_idx, ab_jid_idx
	movl	$2, %r14d	#, lookup_res
	call	malloc@PLT	#
	movq	%rax, 40(%rsp)	#, %sfp
	jmp	.L87	#
.L82:
	movq	40(%rsp), %rdi	# %sfp,
	call	free@PLT	#
	movl	12(%rbx), %eax	# p_state_19(D)->max_ab_jids, p_state_19(D)->max_ab_jids
	movq	%rbx, %rdi	# p_state,
	xorl	%edx, %edx	#
	leaq	64(,%rax,8), %rsi	#, state_size
	movq	%rsi, %rcx	# state_size,
	call	memset_s@PLT	#
	movq	%rbx, %rdi	# p_state,
	call	free@PLT	#
.L106:
	movl	%r14d, %ebp	# lookup_res, <retval>
	jmp	.L104	#
.L111:
	movl	12(%rbx), %eax	# p_state_19(D)->max_ab_jids, p_state_19(D)->max_ab_jids
	xorl	%edx, %edx	#
	movq	%rbx, %rdi	# p_state,
	xorl	%ebp, %ebp	# <retval>
	leaq	64(,%rax,8), %rsi	#, state_size
	movq	%rsi, %rcx	# state_size,
	call	memset_s@PLT	#
	movq	%rbx, %rdi	# p_state,
	call	free@PLT	#
	jmp	.L104	#
	.cfi_endproc
.LFE4852:
	.size	sgxsd_enclave_server_terminate, .-sgxsd_enclave_server_terminate
	.p2align 4,,15
	.globl	sgxsd_enclave_test_ocall
	.hidden	sgxsd_enclave_test_ocall
	.type	sgxsd_enclave_test_ocall, @function
sgxsd_enclave_test_ocall:
.LFB4853:
	.cfi_startproc
	movabsq	$-2401053089206453570, %rdi	#,
	jmp	sgxsd_ocall_print_pt@PLT	#
	.cfi_endproc
.LFE4853:
	.size	sgxsd_enclave_test_ocall, .-sgxsd_enclave_test_ocall
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.quad	-4
	.quad	-3
	.quad	-2
	.quad	-1
	.align 32
.LC1:
	.quad	-8
	.quad	-7
	.quad	-6
	.quad	-5
	.align 32
.LC2:
	.quad	-12
	.quad	-11
	.quad	-10
	.quad	-9
	.align 32
.LC3:
	.long	4294967284
	.long	-1
	.long	4294967285
	.long	-1
	.long	4294967286
	.long	-1
	.long	4294967287
	.long	-1
	.align 32
.LC4:
	.long	4294967288
	.long	-1
	.long	4294967289
	.long	-1
	.long	4294967290
	.long	-1
	.long	4294967291
	.long	-1
	.align 32
.LC5:
	.long	4294967292
	.long	-1
	.long	4294967293
	.long	-1
	.long	4294967294
	.long	-1
	.long	4294967295
	.long	-1
	.align 32
.LC6:
	.long	4294967295
	.long	-1
	.long	4294967295
	.long	-1
	.long	4294967295
	.long	-1
	.long	4294967295
	.long	-1
	.ident	"GCC: (Debian 6.3.0-18) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
