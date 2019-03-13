	.text
	.file	"401.bzip2link.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	805306368               # float 4.65661287E-10
	.text
	.globl	ran
	.align	16, 0x90
	.type	ran,@function
ran:                                    # @ran
	.cfi_startproc
# BB#0:                                 # %entry
	movq	seedi(%rip), %rcx
	movabsq	$4730756183288445817, %rdx # imm = 0x41A705AF1FE3FB79
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$127773, %rdx, %rax     # imm = 0x1F31D
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax      # imm = 0x41A7
	imulq	$-2836, %rdx, %rcx      # imm = 0xFFFFFFFFFFFFF4EC
	leaq	(%rax,%rcx), %rdx
	testq	%rdx, %rdx
	leaq	2147483647(%rax,%rcx), %rax
	cmovgq	%rdx, %rax
	movq	%rax, seedi(%rip)
	cvtsi2ssq	%rax, %xmm0
	mulss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	ran, .Lfunc_end0-ran
	.cfi_endproc

	.globl	spec_init
	.align	16, 0x90
	.type	spec_init,@function
spec_init:                              # @spec_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	xorl	%r14d, %r14d
	cmpl	$4, dbglvl(%rip)
	jl	.LBB1_2
# BB#1:                                 # %if.then
	movl	$.Lstr.34, %edi
	callq	puts
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	leaq	(%r14,%r14,2), %r15
	movslq	spec_fd(,%r15,8), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, spec_fd(,%r15,8)
	movq	$0, spec_fd+16(,%r15,8)
	movl	%ebx, spec_fd(,%r15,8)
	leaq	1048576(%rbx), %rdi
	callq	malloc
	movq	%rax, spec_fd+16(,%r15,8)
	testq	%rax, %rax
	je	.LBB1_9
# BB#3:                                 # %for.cond19.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%ebx, %ebx
	jle	.LBB1_7
# BB#4:                                 # %for.body22.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$0, (%rax)
	movl	$1024, %eax             # imm = 0x400
	cmpl	$1024, %ebx             # imm = 0x400
	jle	.LBB1_7
# BB#5:                                 #   in Loop: Header=BB1_2 Depth=1
	leaq	spec_fd+16(,%r15,8), %rcx
	.align	16, 0x90
.LBB1_6:                                # %for.body22.for.body22_crit_edge
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rcx), %rdx
	movb	$0, (%rdx,%rax)
	addq	$1024, %rax             # imm = 0x400
	cmpq	%rbx, %rax
	jl	.LBB1_6
.LBB1_7:                                # %for.end
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r14
	cmpq	$3, %r14
	jl	.LBB1_2
# BB#8:                                 # %for.end30
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB1_9:                                # %if.then16
	movl	$.Lstr, %edi
	callq	puts
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	spec_init, .Lfunc_end1-spec_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	805306368               # float 4.65661287E-10
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4629700416936869888     # double 32
.LCPI2_2:
	.quad	4643211215818981376     # double 256
	.text
	.globl	spec_random_load
	.align	16, 0x90
	.type	spec_random_load,@function
spec_random_load:                       # @spec_random_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 48
	subq	$4194304, %rsp          # imm = 0x400000
.Ltmp11:
	.cfi_def_cfa_offset 4194352
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	xorl	%ebp, %ebp
	cmpl	$5, dbglvl(%rip)
	jl	.LBB2_5
# BB#1:                                 # %if.then
	movl	$.Lstr.36, %edi
	callq	puts
	xorl	%ebp, %ebp
.LBB2_2:                                # %for.cond
	movl	dbglvl(%rip), %eax
	cmpl	$31, %ebp
	jg	.LBB2_8
# BB#3:                                 # %for.body
	cmpl	$6, %eax
	jl	.LBB2_5
# BB#4:                                 # %if.then3
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
.LBB2_5:                                # %for.cond6.preheader
	movq	seedi(%rip), %rcx
	movslq	%ebp, %rax
	shlq	$17, %rax
	leaq	(%rsp,%rax), %rsi
	xorl	%edi, %edi
	movabsq	$4730756183288445817, %rbx # imm = 0x41A705AF1FE3FB79
	movss	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	.align	16, 0x90
.LBB2_6:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$127773, %rdx, %rax     # imm = 0x1F31D
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax      # imm = 0x41A7
	imulq	$-2836, %rdx, %rcx      # imm = 0xFFFFFFFFFFFFF4EC
	leaq	(%rax,%rcx), %rdx
	testq	%rdx, %rdx
	leaq	2147483647(%rax,%rcx), %rcx
	cmovgq	%rdx, %rcx
	cvtsi2ssq	%rcx, %xmm2
	mulss	%xmm0, %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movb	%al, (%rsi,%rdi)
	incq	%rdi
	cmpq	$131072, %rdi           # imm = 0x20000
	jne	.LBB2_6
# BB#7:                                 # %for.inc13
	movq	%rcx, seedi(%rip)
	incl	%ebp
	jmp	.LBB2_2
.LBB2_8:                                # %for.end15
	cmpl	$5, %eax
	jl	.LBB2_10
# BB#9:                                 # %if.then18
	movl	$.Lstr.35, %edi
	callq	puts
.LBB2_10:                               # %for.cond21.preheader
	movslq	%r14d, %rax
	leaq	(%rax,%rax,2), %r14
	cmpl	$0, spec_fd(,%r14,8)
	jle	.LBB2_13
# BB#11:                                # %for.body26.lr.ph
	leaq	spec_fd(,%r14,8), %r15
	leaq	spec_fd+16(,%r14,8), %rbx
	xorl	%ebp, %ebp
	movabsq	$4730756183288445817, %r12 # imm = 0x41A705AF1FE3FB79
	.align	16, 0x90
.LBB2_12:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	movq	seedi(%rip), %rcx
	movq	%rcx, %rax
	imulq	%r12
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$15, %rdx
	addq	%rax, %rdx
	imulq	$127773, %rdx, %rax     # imm = 0x1F31D
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax      # imm = 0x41A7
	imulq	$-2836, %rdx, %rcx      # imm = 0xFFFFFFFFFFFFF4EC
	leaq	(%rax,%rcx), %rdx
	testq	%rdx, %rdx
	leaq	2147483647(%rax,%rcx), %rax
	cmovgq	%rdx, %rax
	movq	(%rbx), %rdi
	addq	%rbp, %rdi
	movq	%rax, seedi(%rip)
	cvtsi2ssq	%rax, %xmm0
	mulss	.LCPI2_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI2_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	shlq	$17, %rax
	leaq	(%rsp,%rax), %rsi
	movl	$131072, %edx           # imm = 0x20000
	callq	memcpy
	addq	$131072, %rbp           # imm = 0x20000
	movslq	(%r15), %rax
	cmpq	%rax, %rbp
	jl	.LBB2_12
.LBB2_13:                               # %for.end35
	movl	$1048576, spec_fd+4(,%r14,8) # imm = 0x100000
	xorl	%eax, %eax
	addq	$4194304, %rsp          # imm = 0x400000
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	spec_random_load, .Lfunc_end2-spec_random_load
	.cfi_endproc

	.globl	spec_load
	.align	16, 0x90
	.type	spec_load,@function
spec_load:                              # @spec_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%edi, %r15d
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	open
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_1
# BB#3:                                 # %if.end
	movslq	%r15d, %rax
	leaq	(%rax,%rax,2), %r15
	leaq	spec_fd+4(,%r15,8), %rbx
	movq	$0, spec_fd+4(,%r15,8)
	testl	%r12d, %r12d
	jle	.LBB3_9
# BB#4:                                 # %for.body.lr.ph
	leaq	spec_fd+16(,%r15,8), %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %rsi
	addq	(%rbp), %rsi
	movl	$131072, %edx           # imm = 0x20000
	movl	%r13d, %edi
	callq	read
	testl	%eax, %eax
	je	.LBB3_9
# BB#6:                                 # %if.end13
                                        #   in Loop: Header=BB3_5 Depth=1
	js	.LBB3_7
# BB#8:                                 # %if.end20
                                        #   in Loop: Header=BB3_5 Depth=1
	addl	%eax, (%rbx)
	addl	%eax, %r14d
	cmpl	%r12d, %r14d
	jl	.LBB3_5
.LBB3_9:                                # %for.end
	movl	%r13d, %edi
	callq	close
	movl	(%rbx), %eax
	cmpl	%r12d, %eax
	jge	.LBB3_14
# BB#10:                                # %while.body.lr.ph
	leaq	spec_fd+16(,%r15,8), %r14
	.align	16, 0x90
.LBB3_11:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %ebp
	subl	%eax, %ebp
	cmpl	%eax, %ebp
	cmovgl	%eax, %ebp
	cmpl	$4, dbglvl(%rip)
	jl	.LBB3_13
# BB#12:                                # %if.then46
                                        #   in Loop: Header=BB3_11 Depth=1
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
	movl	(%rbx), %eax
.LBB3_13:                               # %if.end48
                                        #   in Loop: Header=BB3_11 Depth=1
	movq	(%r14), %rsi
	movslq	%eax, %rdi
	addq	%rsi, %rdi
	movslq	%ebp, %rdx
	callq	memcpy
	addl	(%rbx), %ebp
	movl	%ebp, (%rbx)
	cmpl	%r12d, %ebp
	movl	%ebp, %eax
	jl	.LBB3_11
.LBB3_14:                               # %while.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_7:                                # %if.then16
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.6, %esi
.LBB3_2:                                # %if.then
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB3_1:                                # %if.then
	movq	stderr(%rip), %rbx
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rcx
	movl	$.L.str.5, %esi
	jmp	.LBB3_2
.Lfunc_end3:
	.size	spec_load, .Lfunc_end3-spec_load
	.cfi_endproc

	.globl	spec_read
	.align	16, 0x90
	.type	spec_read,@function
spec_read:                              # @spec_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r12, -32
.Ltmp37:
	.cfi_offset %r14, -24
.Ltmp38:
	.cfi_offset %r15, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movl	%edi, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB4_2
# BB#1:                                 # %if.then
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	printf
.LBB4_2:                                # %if.end
	cmpl	$4, %ebx
	jge	.LBB4_9
# BB#3:                                 # %if.end4
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rax
	movslq	spec_fd+8(,%rax,8), %rsi
	movl	spec_fd+4(,%rax,8), %ecx
	cmpl	%esi, %ecx
	jle	.LBB4_4
# BB#6:                                 # %if.end13
	leaq	spec_fd+8(,%rax,8), %r12
	movl	%ecx, %ebx
	subl	%esi, %ebx
	leal	(%rsi,%r15), %edx
	cmpl	%ecx, %edx
	cmovll	%r15d, %ebx
	addq	spec_fd+16(,%rax,8), %rsi
	movslq	%ebx, %r15
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addl	%r15d, (%r12)
	cmpl	$5, dbglvl(%rip)
	jl	.LBB4_8
# BB#7:                                 # %if.then43
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	jmp	.LBB4_8
.LBB4_4:                                # %if.then8
	movl	$-1, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB4_8
# BB#5:                                 # %if.then10
	movl	$.Lstr.39, %edi
	callq	puts
.LBB4_8:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB4_9:                                # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end4:
	.size	spec_read, .Lfunc_end4-spec_read
	.cfi_endproc

	.globl	spec_fread
	.align	16, 0x90
	.type	spec_fread,@function
spec_fread:                             # @spec_fread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 48
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	cmpl	$5, dbglvl(%rip)
	jl	.LBB5_2
# BB#1:                                 # %if.then
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	printf
.LBB5_2:                                # %if.end
	cmpl	$4, %ebp
	jge	.LBB5_11
# BB#3:                                 # %if.end4
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rcx
	movslq	spec_fd+8(,%rcx,8), %rsi
	movl	spec_fd+4(,%rcx,8), %eax
	cmpl	%esi, %eax
	jle	.LBB5_4
# BB#6:                                 # %if.end13
	leaq	spec_fd+8(,%rcx,8), %r12
	movl	%ebx, %edx
	imull	%r15d, %edx
	addl	%esi, %edx
	cmpl	%eax, %edx
	jl	.LBB5_8
# BB#7:                                 # %if.then21
	subl	%esi, %eax
	cltd
	idivl	%r15d
	movl	%eax, %ebx
.LBB5_8:                                # %if.end28
	addq	spec_fd+16(,%rcx,8), %rsi
	movslq	%ebx, %rbp
	movq	%r14, %rdi
	movq	%rbp, %rdx
	callq	memcpy
	imull	%r15d, %ebp
	addl	%ebp, (%r12)
	cmpl	$5, dbglvl(%rip)
	jl	.LBB5_10
# BB#9:                                 # %if.then44
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
	jmp	.LBB5_10
.LBB5_4:                                # %if.then8
	movl	$-1, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB5_10
# BB#5:                                 # %if.then10
	movl	$.Lstr.39, %edi
	callq	puts
.LBB5_10:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_11:                               # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end5:
	.size	spec_fread, .Lfunc_end5-spec_fread
	.cfi_endproc

	.globl	spec_getc
	.align	16, 0x90
	.type	spec_getc,@function
spec_getc:                              # @spec_getc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB6_2
# BB#1:                                 # %if.then
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
.LBB6_2:                                # %if.end
	cmpl	$4, %ebx
	jge	.LBB6_9
# BB#3:                                 # %if.end4
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rax
	movslq	spec_fd+8(,%rax,8), %rcx
	cmpl	spec_fd+4(,%rax,8), %ecx
	jge	.LBB6_4
# BB#6:                                 # %if.end13
	leaq	spec_fd+8(,%rax,8), %rdx
	leal	1(%rcx), %esi
	movl	%esi, (%rdx)
	movq	spec_fd+16(,%rax,8), %rax
	movzbl	(%rax,%rcx), %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB6_8
# BB#7:                                 # %if.then23
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
	jmp	.LBB6_8
.LBB6_4:                                # %if.then8
	movl	$-1, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB6_8
# BB#5:                                 # %if.then10
	movl	$.Lstr.39, %edi
	callq	puts
.LBB6_8:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.LBB6_9:                                # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end6:
	.size	spec_getc, .Lfunc_end6-spec_getc
	.cfi_endproc

	.globl	spec_ungetc
	.align	16, 0x90
	.type	spec_ungetc,@function
spec_ungetc:                            # @spec_ungetc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	%edi, %ebx
	cmpl	$5, dbglvl(%rip)
	jl	.LBB7_2
# BB#1:                                 # %if.then
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	printf
.LBB7_2:                                # %if.end
	cmpl	$4, %ebp
	jge	.LBB7_3
# BB#4:                                 # %if.end4
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rax
	movslq	spec_fd+8(,%rax,8), %rdx
	testq	%rdx, %rdx
	jle	.LBB7_5
# BB#7:                                 # %if.end11
	leaq	spec_fd+8(,%rax,8), %rcx
	leaq	-1(%rdx), %rsi
	movl	%esi, (%rcx)
	movq	spec_fd+16(,%rax,8), %rax
	movzbl	%bl, %ebx
	movzbl	-1(%rax,%rdx), %eax
	cmpl	%ebx, %eax
	jne	.LBB7_11
# BB#8:                                 # %if.end24
	cmpl	$5, dbglvl(%rip)
	jl	.LBB7_10
# BB#9:                                 # %if.then27
	movl	$.L.str.11, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
.LBB7_10:                               # %if.end29
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB7_3:                                # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	jmp	.LBB7_6
.LBB7_5:                                # %if.then6
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
.LBB7_6:                                # %if.then6
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB7_11:                               # %if.then22
	movq	stderr(%rip), %rcx
	movl	$.L.str.17, %edi
	movl	$71, %esi
	movl	$1, %edx
	callq	fwrite
	xorl	%edi, %edi
	callq	exit
.Lfunc_end7:
	.size	spec_ungetc, .Lfunc_end7-spec_ungetc
	.cfi_endproc

	.globl	spec_rewind
	.align	16, 0x90
	.type	spec_rewind,@function
spec_rewind:                            # @spec_rewind
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rax
	movl	$0, spec_fd+8(,%rax,8)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	spec_rewind, .Lfunc_end8-spec_rewind
	.cfi_endproc

	.globl	spec_reset
	.align	16, 0x90
	.type	spec_reset,@function
spec_reset:                             # @spec_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbx, -16
	movslq	%edi, %rax
	leaq	(%rax,%rax,2), %rbx
	movq	spec_fd+16(,%rbx,8), %rdi
	movslq	spec_fd+4(,%rbx,8), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	$0, spec_fd+4(,%rbx,8)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end9:
	.size	spec_reset, .Lfunc_end9-spec_reset
	.cfi_endproc

	.globl	spec_write
	.align	16, 0x90
	.type	spec_write,@function
spec_write:                             # @spec_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 32
.Ltmp61:
	.cfi_offset %rbx, -32
.Ltmp62:
	.cfi_offset %r14, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movl	%edi, %ebp
	cmpl	$5, dbglvl(%rip)
	jl	.LBB10_2
# BB#1:                                 # %if.then
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	printf
.LBB10_2:                               # %if.end
	cmpl	$4, %ebp
	jge	.LBB10_6
# BB#3:                                 # %if.end4
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rbp
	movslq	spec_fd+8(,%rbp,8), %rdi
	addq	spec_fd+16(,%rbp,8), %rdi
	movslq	%ebx, %rdx
	movq	%r14, %rsi
	callq	memcpy
	addl	%ebx, spec_fd+4(,%rbp,8)
	addl	%ebx, spec_fd+8(,%rbp,8)
	cmpl	$5, dbglvl(%rip)
	jl	.LBB10_5
# BB#4:                                 # %if.then18
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	printf
.LBB10_5:                               # %if.end20
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_6:                               # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end10:
	.size	spec_write, .Lfunc_end10-spec_write
	.cfi_endproc

	.globl	spec_fwrite
	.align	16, 0x90
	.type	spec_fwrite,@function
spec_fwrite:                            # @spec_fwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp68:
	.cfi_def_cfa_offset 48
.Ltmp69:
	.cfi_offset %rbx, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
.Ltmp72:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %r15d
	movl	%esi, %ebx
	movq	%rdi, %r14
	cmpl	$5, dbglvl(%rip)
	jl	.LBB11_2
# BB#1:                                 # %if.then
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	movl	%ebx, %edx
	movl	%r15d, %ecx
	movl	%ebp, %r8d
	callq	printf
.LBB11_2:                               # %if.end
	cmpl	$4, %ebp
	jge	.LBB11_6
# BB#3:                                 # %if.end4
	movslq	%ebp, %rax
	leaq	(%rax,%rax,2), %rbp
	movslq	spec_fd+8(,%rbp,8), %rdi
	addq	spec_fd+16(,%rbp,8), %rdi
	imull	%r15d, %ebx
	movslq	%ebx, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addl	%ebx, spec_fd+4(,%rbp,8)
	addl	%ebx, spec_fd+8(,%rbp,8)
	cmpl	$5, dbglvl(%rip)
	jl	.LBB11_5
# BB#4:                                 # %if.then20
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	printf
.LBB11_5:                               # %if.end22
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_6:                               # %if.then2
	movq	stderr(%rip), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end11:
	.size	spec_fwrite, .Lfunc_end11-spec_fwrite
	.cfi_endproc

	.globl	spec_putc
	.align	16, 0x90
	.type	spec_putc,@function
spec_putc:                              # @spec_putc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp75:
	.cfi_def_cfa_offset 32
.Ltmp76:
	.cfi_offset %rbx, -24
.Ltmp77:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movl	%edi, %ebp
	cmpl	$5, dbglvl(%rip)
	jl	.LBB12_2
# BB#1:                                 # %if.then
	movzbl	%bpl, %esi
	movl	$.L.str.22, %edi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	printf
.LBB12_2:                               # %if.end
	cmpl	$4, %ebx
	jge	.LBB12_4
# BB#3:                                 # %if.end5
	movslq	%ebx, %rax
	leaq	(%rax,%rax,2), %rax
	movslq	spec_fd+8(,%rax,8), %rcx
	leal	1(%rcx), %edx
	movl	%edx, spec_fd+8(,%rax,8)
	movq	spec_fd+16(,%rax,8), %rdx
	movb	%bpl, (%rdx,%rcx)
	incl	spec_fd+4(,%rax,8)
	movzbl	%bpl, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_4:                               # %if.then3
	movq	stderr(%rip), %rdi
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end12:
	.size	spec_putc, .Lfunc_end12-spec_putc
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp79:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp81:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp84:
	.cfi_def_cfa_offset 64
.Ltmp85:
	.cfi_offset %rbx, -56
.Ltmp86:
	.cfi_offset %r12, -48
.Ltmp87:
	.cfi_offset %r13, -40
.Ltmp88:
	.cfi_offset %r14, -32
.Ltmp89:
	.cfi_offset %r15, -24
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %ebp
	movq	$10, seedi(%rip)
	movl	$.L.str.23, %r14d
	movl	$64, %r12d
	cmpl	$2, %ebp
	jl	.LBB13_1
# BB#2:                                 # %if.end
	movq	8(%r15), %r14
	cmpl	$3, %ebp
	jl	.LBB13_3
# BB#4:                                 # %if.end4
	movq	16(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %r12
	cmpl	$4, %ebp
	jl	.LBB13_5
# BB#6:                                 # %if.then6
	movq	24(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	jmp	.LBB13_7
.LBB13_1:
	movl	$64, %eax
	jmp	.LBB13_7
.LBB13_3:
	movl	$64, %eax
	jmp	.LBB13_7
.LBB13_5:
	movl	%r12d, %eax
.LBB13_7:                               # %if.end9
	movl	%r12d, %ebp
	shll	$20, %ebp
	movl	%ebp, spec_fd(%rip)
	shll	$20, %eax
	movl	%eax, spec_fd+24(%rip)
	movl	%ebp, spec_fd+48(%rip)
	callq	spec_init
	cmpl	$3, dbglvl(%rip)
	jl	.LBB13_9
# BB#8:                                 # %if.then15
	movl	$.Lstr.43, %edi
	callq	puts
.LBB13_9:                               # %if.end17
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	spec_load
	cmpl	$4, dbglvl(%rip)
	jl	.LBB13_11
# BB#10:                                # %if.then21
	movl	spec_fd+4(%rip), %esi
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
.LBB13_11:                              # %if.end23
	movl	%r12d, %eax
	shll	$10, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB13_14
# BB#12:                                # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB13_13
# BB#15:                                # %for.body.lr.ph
	movq	spec_fd+16(%rip), %rsi
	movslq	%ebp, %rbx
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	.align	16, 0x90
.LBB13_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rsi,%rcx), %al
	movb	%al, (%rdx)
	addq	$1027, %rcx             # imm = 0x403
	incq	%rdx
	cmpq	%rbx, %rcx
	jl	.LBB13_16
	jmp	.LBB13_17
.LBB13_13:                              # %for.cond.preheader.for.end_crit_edge
	movslq	%ebp, %rbx
.LBB13_17:                              # %for.end
	movb	$0, smallMode(%rip)
	movl	$0, verbosity(%rip)
	movl	$9, blockSize100k(%rip)
	movl	$30, workFactor(%rip)
	movl	$5, %r15d
	movabsq	$4410931412992, %r13    # imm = 0x40300000000
	.align	16, 0x90
.LBB13_18:                              # %for.body42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_29 Depth 2
	cmpl	$3, dbglvl(%rip)
	jl	.LBB13_20
# BB#19:                                # %if.then46
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	printf
.LBB13_20:                              # %if.end48
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	%r15d, blockSize100k(%rip)
	xorl	%edi, %edi
	movl	$1, %esi
	callq	compressStream
	cmpl	$4, dbglvl(%rip)
	jl	.LBB13_22
# BB#21:                                # %if.then52
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	spec_fd+28(%rip), %esi
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	printf
.LBB13_22:                              # %if.end54
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	spec_fd+16(%rip), %rdi
	movslq	spec_fd+4(%rip), %rdx
	xorl	%esi, %esi
	callq	memset
	movq	$0, spec_fd+4(%rip)
	movl	$0, spec_fd+32(%rip)
	cmpl	$3, dbglvl(%rip)
	jl	.LBB13_24
# BB#23:                                # %if.then60
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	$.Lstr.41, %edi
	callq	puts
.LBB13_24:                              # %if.end62
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	$0, blockSize100k(%rip)
	movl	$1, %edi
	xorl	%esi, %esi
	callq	uncompressStream
	cmpl	$4, dbglvl(%rip)
	jl	.LBB13_26
# BB#25:                                # %if.then66
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	spec_fd+4(%rip), %esi
	movl	$.L.str.30, %edi
	xorl	%eax, %eax
	callq	printf
.LBB13_26:                              # %for.cond69.preheader
                                        #   in Loop: Header=BB13_18 Depth=1
	testl	%r12d, %r12d
	jle	.LBB13_31
# BB#27:                                # %for.body74.lr.ph
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	spec_fd+16(%rip), %rax
	movq	%r14, %rcx
	xorl	%edx, %edx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB13_29:                              # %for.body74
                                        #   Parent Loop BB13_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdi
	sarq	$32, %rdi
	movzbl	(%rax,%rdi), %edi
	movzbl	(%rcx), %ebp
	cmpl	%edi, %ebp
	jne	.LBB13_30
# BB#28:                                # %for.cond69
                                        #   in Loop: Header=BB13_29 Depth=2
	addq	%r13, %rsi
	addq	$1027, %rdx             # imm = 0x403
	incq	%rcx
	cmpq	%rbx, %rdx
	jl	.LBB13_29
.LBB13_31:                              # %for.end89
                                        #   in Loop: Header=BB13_18 Depth=1
	cmpl	$4, dbglvl(%rip)
	jl	.LBB13_33
# BB#32:                                # %if.then93
                                        #   in Loop: Header=BB13_18 Depth=1
	movl	$.Lstr.40, %edi
	callq	puts
.LBB13_33:                              # %if.end95
                                        #   in Loop: Header=BB13_18 Depth=1
	movq	spec_fd+40(%rip), %rdi
	movslq	spec_fd+28(%rip), %rdx
	xorl	%esi, %esi
	callq	memset
	movl	$0, spec_fd+28(%rip)
	movl	$0, spec_fd+32(%rip)
	movl	$0, spec_fd+8(%rip)
	addl	$2, %r15d
	cmpl	$10, %r15d
	jl	.LBB13_18
# BB#34:                                # %for.end99
	movl	$.L.str.33, %edi
	xorl	%eax, %eax
	movl	%r12d, %esi
	callq	printf
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_30:                              # %if.then84
	movl	$.L.str.31, %edi
	xorl	%eax, %eax
	movl	%r12d, %esi
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB13_14:                              # %if.then28
	movl	$.Lstr.42, %edi
	callq	puts
	xorl	%edi, %edi
	callq	exit
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc

	.globl	spec_compress
	.align	16, 0x90
	.type	spec_compress,@function
spec_compress:                          # @spec_compress
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, blockSize100k(%rip)
	jmp	compressStream          # TAILCALL
.Lfunc_end14:
	.size	spec_compress, .Lfunc_end14-spec_compress
	.cfi_endproc

	.globl	spec_uncompress
	.align	16, 0x90
	.type	spec_uncompress,@function
spec_uncompress:                        # @spec_uncompress
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, blockSize100k(%rip)
	jmp	uncompressStream        # TAILCALL
.Lfunc_end15:
	.size	spec_uncompress, .Lfunc_end15-spec_uncompress
	.cfi_endproc

	.globl	spec_initbufs
	.align	16, 0x90
	.type	spec_initbufs,@function
spec_initbufs:                          # @spec_initbufs
	.cfi_startproc
# BB#0:                                 # %entry
	movb	$0, smallMode(%rip)
	movl	$0, verbosity(%rip)
	movl	$9, blockSize100k(%rip)
	movl	$30, workFactor(%rip)
	retq
.Lfunc_end16:
	.size	spec_initbufs, .Lfunc_end16-spec_initbufs
	.cfi_endproc

	.globl	debug_time
	.align	16, 0x90
	.type	debug_time,@function
debug_time:                             # @debug_time
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	debug_time, .Lfunc_end17-debug_time
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI18_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI18_1:
	.long	1065353216              # float 1
	.text
	.globl	BZ2_blockSort
	.align	16, 0x90
	.type	BZ2_blockSort,@function
BZ2_blockSort:                          # @BZ2_blockSort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp93:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp94:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp95:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 56
	subq	$4808, %rsp             # imm = 0x12C8
.Ltmp97:
	.cfi_def_cfa_offset 4864
.Ltmp98:
	.cfi_offset %rbx, -56
.Ltmp99:
	.cfi_offset %r12, -48
.Ltmp100:
	.cfi_offset %r13, -40
.Ltmp101:
	.cfi_offset %r14, -32
.Ltmp102:
	.cfi_offset %r15, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rdi, %rax
	movq	40(%rax), %r15
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movq	56(%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movslq	108(%rax), %rbp
	cmpq	$9999, %rbp             # imm = 0x270F
	movl	656(%rax), %r8d
	movl	%r8d, 68(%rsp)          # 4-byte Spill
	jg	.LBB18_2
# BB#1:                                 # %if.then
	movq	24(%rax), %rdi
	movq	32(%rax), %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	jmp	.LBB18_185
.LBB18_2:                               # %if.else
	movq	64(%rax), %r13
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	88(%rax), %eax
	leal	34(%rbp), %ecx
	leal	35(%rbp), %ebx
	testb	$1, %cl
	cmovel	%ecx, %ebx
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	cmpl	$100, %ecx
	movl	$100, %eax
	cmovlel	%ecx, %eax
	decl	%eax
	cltq
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	imull	%ebp, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 268(%rsp)
	cmpl	$4, %r8d
	movl	%r8d, %r14d
	jge	.LBB18_3
.LBB18_4:                               # %for.body.preheader.i
	movslq	%ebx, %rbx
	xorl	%esi, %esi
	movl	$262148, %edx           # imm = 0x40004
	movq	%r15, %rdi
	callq	memset
	movzbl	(%r13), %eax
	shll	$8, %eax
	leal	-1(%rbp), %ecx
	cmpl	$3, %ecx
	movq	%r13, %r11
	jl	.LBB18_5
# BB#22:                                # %for.body6.preheader.i
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	%rbp, %r13
	leal	-4(%r13), %ecx
	movl	%ecx, 248(%rsp)         # 4-byte Spill
	leal	-1(%r13), %r10d
	movslq	%r10d, %rcx
	leaq	(%r11,%rcx), %r9
	movq	%r11, %r14
	movq	%r14, 128(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rcx,2), %r11
	addq	%r14, %r11
	leal	-4(%r13), %ecx
	movslq	%ecx, %rcx
	leaq	(%r14,%rcx), %r12
	leaq	(%rbx,%rcx,2), %r8
	addq	%r14, %r8
	leal	-3(%r13), %edx
	movslq	%edx, %rdx
	movq	%rbx, %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	leaq	(%r14,%rdx), %rbx
	leaq	(%rcx,%rdx,2), %rsi
	addq	%r14, %rsi
	leal	-2(%r13), %edx
	movslq	%edx, %rdi
	leaq	(%r14,%rdi), %rdx
	leaq	(%rcx,%rdi,2), %rdi
	addq	%r14, %rdi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB18_23:                              # %for.body6.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%r11,%rbp,2)
	sarl	$8, %eax
	movzbl	(%r9,%rbp), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rax
	incl	(%r15,%rax,4)
	movw	$0, (%rdi,%rbp,2)
	sarl	$8, %eax
	movzbl	(%rdx,%rbp), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rax
	incl	(%r15,%rax,4)
	movw	$0, (%rsi,%rbp,2)
	sarl	$8, %eax
	movzbl	(%rbx,%rbp), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rcx
	incl	(%r15,%rcx,4)
	movw	$0, (%r8,%rbp,2)
	sarl	$8, %ecx
	movzbl	(%r12,%rbp), %eax
	shll	$8, %eax
	orl	%ecx, %eax
	movslq	%eax, %rcx
	incl	(%r15,%rcx,4)
	addq	$-4, %rbp
	leal	(%r10,%rbp), %ecx
	cmpl	$2, %ecx
	jg	.LBB18_23
# BB#6:                                 # %for.cond61.preheader.loopexit.i
	movl	248(%rsp), %edx         # 4-byte Reload
	andl	$-4, %edx
	leal	-5(%r13), %ecx
	subl	%edx, %ecx
	movl	68(%rsp), %r12d         # 4-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	240(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB18_7
.LBB18_5:
	movq	%rbp, %r13
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%r14d, %r12d
.LBB18_7:                               # %for.cond61.preheader.i
	leaq	(%r11,%rbx), %rbp
	testl	%ecx, %ecx
	js	.LBB18_10
# BB#8:                                 # %for.body64.preheader.i
	movslq	%ecx, %rcx
	incq	%rcx
	.align	16, 0x90
.LBB18_9:                               # %for.body64.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -2(%rbp,%rcx,2)
	sarl	$8, %eax
	movzbl	-1(%r11,%rcx), %edx
	shll	$8, %edx
	orl	%edx, %eax
	movslq	%eax, %rdx
	incl	(%r15,%rdx,4)
	decq	%rcx
	jg	.LBB18_9
.LBB18_10:                              # %for.body83.preheader.i
	leaq	(%r11,%r13), %rax
	leaq	33(%r11,%r13), %rdx
	leaq	(%rbx,%r13,2), %rsi
	leaq	(%r11,%rsi), %rcx
	leaq	66(%r11,%rsi), %rdi
	leaq	33(%r11), %rsi
	cmpq	%rdi, %rax
	setbe	%r9b
	cmpq	%rdx, %rcx
	setbe	%r10b
	cmpq	%rsi, %rax
	setbe	%bl
	cmpq	%rdx, %r11
	setbe	%r14b
	cmpq	%rsi, %rcx
	setbe	%sil
	cmpq	%rdi, %r11
	setbe	%r8b
	xorl	%edx, %edx
	testb	%r10b, %r9b
	jne	.LBB18_15
# BB#11:                                # %for.body83.preheader.i
	andb	%r14b, %bl
	jne	.LBB18_15
# BB#12:                                # %for.body83.preheader.i
	andb	%r8b, %sil
	jne	.LBB18_15
# BB#13:                                # %vector.body.preheader
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movl	$32, %edx
	.align	16, 0x90
.LBB18_14:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11,%rsi), %rdi
	movq	%rdi, (%rax,%rsi)
	movups	%xmm0, (%rcx,%rsi,2)
	addq	$8, %rsi
	cmpq	$32, %rsi
	jne	.LBB18_14
	.align	16, 0x90
.LBB18_15:                              # %for.body83.i
                                        # =>This Inner Loop Header: Depth=1
	movb	(%r11,%rdx), %bl
	movb	%bl, (%rax,%rdx)
	movw	$0, (%rcx,%rdx,2)
	incq	%rdx
	cmpq	$34, %rdx
	jne	.LBB18_15
# BB#16:                                # %for.end93.i
	cmpl	$4, %r12d
	jge	.LBB18_17
.LBB18_18:                              # %for.body102.preheader.i
	movl	(%r15), %eax
	movl	$1, %ecx
	.align	16, 0x90
.LBB18_19:                              # %for.body102.i
                                        # =>This Inner Loop Header: Depth=1
	addl	(%r15,%rcx,4), %eax
	movl	%eax, (%r15,%rcx,4)
	incq	%rcx
	cmpq	$65537, %rcx            # imm = 0x10001
	jne	.LBB18_19
# BB#20:                                # %for.end111.i
	movl	%r12d, 68(%rsp)         # 4-byte Spill
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	movzbl	(%r11), %eax
	shll	$8, %eax
	movl	20(%rsp), %ecx          # 4-byte Reload
	cmpl	$3, %ecx
	jl	.LBB18_21
# BB#56:                                # %for.body120.preheader.i
	leal	-4(%r13), %r8d
	leal	-1(%r13), %edx
	movslq	%edx, %r9
	addq	%r11, %r9
	movslq	%r8d, %r10
	addq	%r11, %r10
	movq	%r11, %rdi
	movq	%rdi, 128(%rsp)         # 8-byte Spill
	leal	-3(%r13), %r11d
	movslq	%r11d, %r14
	addq	%rdi, %r14
	leal	-2(%r13), %ecx
	movq	%r13, 256(%rsp)         # 8-byte Spill
	movslq	%ecx, %rsi
	addq	%rdi, %rsi
	xorl	%edi, %edi
	movq	32(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB18_57:                              # %for.body120.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%rdi), %ebp
	shrdw	$8, %bp, %ax
	movzwl	%ax, %eax
	movl	(%r15,%rax,4), %ebx
	decl	%ebx
	movl	%ebx, (%r15,%rax,4)
	movslq	%ebx, %rax
	leal	(%rdx,%rdi), %ebx
	movl	%ebx, (%r13,%rax,4)
	movzbl	(%rsi,%rdi), %eax
	movl	%eax, %ebx
	shll	$8, %ebx
	orl	%ebp, %ebx
	movzwl	%bx, %ebx
	movl	(%r15,%rbx,4), %ebp
	decl	%ebp
	movl	%ebp, (%r15,%rbx,4)
	movslq	%ebp, %rbx
	leal	(%rcx,%rdi), %ebp
	movl	%ebp, (%r13,%rbx,4)
	movzbl	(%r14,%rdi), %ebx
	movl	%ebx, %ebp
	shll	$8, %ebp
	orl	%eax, %ebp
	movzwl	%bp, %eax
	movl	(%r15,%rax,4), %ebp
	decl	%ebp
	movl	%ebp, (%r15,%rax,4)
	movslq	%ebp, %rax
	leal	(%r11,%rdi), %ebp
	movl	%ebp, (%r13,%rax,4)
	movzbl	(%r10,%rdi), %eax
	shll	$8, %eax
	orl	%ebx, %eax
	movzwl	%ax, %ebx
	movl	(%r15,%rbx,4), %ebp
	decl	%ebp
	movl	%ebp, (%r15,%rbx,4)
	movslq	%ebp, %rbx
	leal	(%r8,%rdi), %ebp
	movl	%ebp, (%r13,%rbx,4)
	addq	$-4, %rdi
	leal	(%rdx,%rdi), %ebx
	cmpl	$2, %ebx
	jg	.LBB18_57
# BB#24:                                # %for.cond190.preheader.loopexit.i
	andl	$-4, %r8d
	movq	256(%rsp), %rcx         # 8-byte Reload
	leal	-5(%rcx), %ecx
	subl	%r8d, %ecx
	movq	%r13, %r14
	movq	128(%rsp), %r11         # 8-byte Reload
	jmp	.LBB18_25
.LBB18_21:
	movq	%r13, 256(%rsp)         # 8-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB18_25:                              # %for.cond190.preheader.i
	testl	%ecx, %ecx
	js	.LBB18_28
# BB#26:                                # %for.body193.preheader.i
	movslq	%ecx, %rdx
	incq	%rdx
	.align	16, 0x90
.LBB18_27:                              # %for.body193.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r11,%rdx), %esi
	shrdw	$8, %si, %ax
	movzwl	%ax, %esi
	movl	(%r15,%rsi,4), %edi
	decl	%edi
	movl	%edi, (%r15,%rsi,4)
	movslq	%edi, %rsi
	movl	%ecx, (%r14,%rsi,4)
	decl	%ecx
	decq	%rdx
	jg	.LBB18_27
.LBB18_28:                              # %for.body215.preheader.i
	movq	%r11, 128(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 2560(%rsp)
	movaps	%xmm0, 2544(%rsp)
	movaps	%xmm0, 2528(%rsp)
	movaps	%xmm0, 2512(%rsp)
	movaps	%xmm0, 2496(%rsp)
	movaps	%xmm0, 2480(%rsp)
	movaps	%xmm0, 2464(%rsp)
	movaps	%xmm0, 2448(%rsp)
	movaps	%xmm0, 2432(%rsp)
	movaps	%xmm0, 2416(%rsp)
	movaps	%xmm0, 2400(%rsp)
	movaps	%xmm0, 2384(%rsp)
	movaps	%xmm0, 2368(%rsp)
	movaps	%xmm0, 2352(%rsp)
	movaps	%xmm0, 2336(%rsp)
	movaps	%xmm0, 2320(%rsp)
	xorl	%eax, %eax
	movdqa	.LCPI18_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	movq	256(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB18_29:                              # %vector.body258
                                        # =>This Inner Loop Header: Depth=1
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, 2576(%rsp,%rax,4)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB18_29
# BB#30:
	movl	$364, %r8d              # imm = 0x16C
	.align	16, 0x90
.LBB18_31:                              # %do.body226.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_33 Depth 2
                                        #       Child Loop BB18_34 Depth 3
	movslq	%r8d, %rax
	imulq	$1431655766, %rax, %rcx # imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	cmpl	$767, %eax              # imm = 0x2FF
	jg	.LBB18_38
# BB#32:                                # %for.body230.preheader.i
                                        #   in Loop: Header=BB18_31 Depth=1
	movslq	%ecx, %r11
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB18_33:                              # %for.body230.i
                                        #   Parent Loop BB18_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_34 Depth 3
	movl	2576(%rsp,%r11,4), %r9d
	movl	%r9d, %eax
	shll	$8, %eax
	leal	256(%rax), %edi
	movslq	%edi, %rdi
	movl	(%r15,%rdi,4), %ebp
	cltq
	subl	(%r15,%rax,4), %ebp
	movl	%r10d, %ebx
	.align	16, 0x90
.LBB18_34:                              # %while.cond.i
                                        #   Parent Loop BB18_31 Depth=1
                                        #     Parent Loop BB18_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rcx,%rbx), %eax
	movslq	%ebx, %rdi
	movl	2576(%rsp,%rdi,4), %edi
	movl	%edi, %esi
	shll	$8, %esi
	leal	256(%rsi), %edx
	movslq	%edx, %rdx
	movl	(%r15,%rdx,4), %edx
	movslq	%esi, %rsi
	subl	(%r15,%rsi,4), %edx
	cmpl	%ebp, %edx
	jbe	.LBB18_37
# BB#35:                                # %while.body.i
                                        #   in Loop: Header=BB18_34 Depth=3
	cltq
	movl	%edi, 2576(%rsp,%rax,4)
	subl	%ecx, %ebx
	jge	.LBB18_34
# BB#36:                                # %zero.isplit
                                        #   in Loop: Header=BB18_33 Depth=2
	addl	%ecx, %ebx
	movl	%ebx, %eax
.LBB18_37:                              # %zero.i
                                        #   in Loop: Header=BB18_33 Depth=2
	cltq
	movl	%r9d, 2576(%rsp,%rax,4)
	incq	%r11
	incl	%r10d
	cmpq	$256, %r11              # imm = 0x100
	jl	.LBB18_33
.LBB18_38:                              # %do.cond273.i
                                        #   in Loop: Header=BB18_31 Depth=1
	addl	$-3, %r8d
	cmpl	$2, %r8d
	movl	%ecx, %r8d
	ja	.LBB18_31
# BB#39:                                # %for.cond277.preheader.i
	leaq	4(%r15), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$-2097153, %r12d        # imm = 0xFFFFFFFFFFDFFFFF
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	%eax, 204(%rsp)         # 4-byte Spill
	xorl	%edx, %edx
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	movq	%r14, %r10
	movq	128(%rsp), %r11         # 8-byte Reload
	movl	68(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB18_40:                              # %for.body280.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_41 Depth 2
                                        #       Child Loop BB18_47 Depth 3
                                        #         Child Loop BB18_48 Depth 4
                                        #           Child Loop BB18_92 Depth 5
                                        #             Child Loop BB18_94 Depth 6
                                        #               Child Loop BB18_95 Depth 7
                                        #             Child Loop BB18_103 Depth 6
                                        #         Child Loop BB18_121 Depth 4
                                        #         Child Loop BB18_124 Depth 4
                                        #         Child Loop BB18_133 Depth 4
                                        #         Child Loop BB18_136 Depth 4
                                        #         Child Loop BB18_53 Depth 4
                                        #         Child Loop BB18_59 Depth 4
                                        #           Child Loop BB18_60 Depth 5
                                        #             Child Loop BB18_62 Depth 6
                                        #             Child Loop BB18_68 Depth 6
                                        #             Child Loop BB18_74 Depth 6
                                        #     Child Loop BB18_144 Depth 2
                                        #     Child Loop BB18_148 Depth 2
                                        #     Child Loop BB18_152 Depth 2
                                        #     Child Loop BB18_161 Depth 2
                                        #     Child Loop BB18_164 Depth 2
                                        #     Child Loop BB18_167 Depth 2
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	2576(%rsp,%rdx,4), %ecx
	movq	%rdx, %r14
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movslq	%ecx, %r9
	movq	%r9, 56(%rsp)           # 8-byte Spill
	movl	%r9d, %eax
	shll	$8, %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movslq	%eax, %rbx
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB18_41
.LBB18_45:                              # %if.then308.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movq	stderr(%rip), %rdi
	movl	$1, %r9d
	subl	%ebp, %r9d
	addl	140(%rsp), %r9d         # 4-byte Folded Reload
	movl	$.L.str.7.4, %esi
	xorl	%eax, %eax
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	124(%rsp), %r8d         # 4-byte Reload
	movq	%r10, %rbx
	movl	%ebp, %r14d
	movq	%r11, %rbp
	callq	fprintf
	movq	%rbp, %r11
	movl	%r14d, %ebp
	movq	%rbx, %r10
	jmp	.LBB18_46
	.align	16, 0x90
.LBB18_41:                              # %for.body286.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_47 Depth 3
                                        #         Child Loop BB18_48 Depth 4
                                        #           Child Loop BB18_92 Depth 5
                                        #             Child Loop BB18_94 Depth 6
                                        #               Child Loop BB18_95 Depth 7
                                        #             Child Loop BB18_103 Depth 6
                                        #         Child Loop BB18_121 Depth 4
                                        #         Child Loop BB18_124 Depth 4
                                        #         Child Loop BB18_133 Depth 4
                                        #         Child Loop BB18_136 Depth 4
                                        #         Child Loop BB18_53 Depth 4
                                        #         Child Loop BB18_59 Depth 4
                                        #           Child Loop BB18_60 Depth 5
                                        #             Child Loop BB18_62 Depth 6
                                        #             Child Loop BB18_68 Depth 6
                                        #             Child Loop BB18_74 Depth 6
	cmpq	%rcx, %rdx
	je	.LBB18_140
# BB#42:                                # %if.then289.i
                                        #   in Loop: Header=BB18_41 Depth=2
	leaq	(%rdx,%rbx), %rsi
	movl	(%r15,%rsi,4), %eax
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB18_139
# BB#43:                                # %if.then294.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movl	%eax, %ebp
	andl	$-2097153, %ebp         # imm = 0xFFFFFFFFFFDFFFFF
	movl	4(%r15,%rsi,4), %r8d
	andl	%r12d, %r8d
	decl	%r8d
	movl	%r8d, 140(%rsp)         # 4-byte Spill
	cmpl	%ebp, %r8d
	jle	.LBB18_139
# BB#44:                                # %if.then305.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	cmpl	$4, %edi
	jge	.LBB18_45
.LBB18_46:                              # %if.end312.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	movl	%ebp, 4400(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 4000(%rsp)
	movl	$2, 3600(%rsp)
	movl	$1, %ecx
	movl	204(%rsp), %eax         # 4-byte Reload
	.align	16, 0x90
.LBB18_47:                              # %while.body.lr.ph.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_48 Depth 4
                                        #           Child Loop BB18_92 Depth 5
                                        #             Child Loop BB18_94 Depth 6
                                        #               Child Loop BB18_95 Depth 7
                                        #             Child Loop BB18_103 Depth 6
                                        #         Child Loop BB18_121 Depth 4
                                        #         Child Loop BB18_124 Depth 4
                                        #         Child Loop BB18_133 Depth 4
                                        #         Child Loop BB18_136 Depth 4
                                        #         Child Loop BB18_53 Depth 4
                                        #         Child Loop BB18_59 Depth 4
                                        #           Child Loop BB18_60 Depth 5
                                        #             Child Loop BB18_62 Depth 6
                                        #             Child Loop BB18_68 Depth 6
                                        #             Child Loop BB18_74 Depth 6
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movl	%eax, 204(%rsp)         # 4-byte Spill
	leal	-1(%rcx), %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	-1(%rax), %rbx
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movl	4396(%rsp,%rax,4), %r13d
	movslq	%r13d, %rdx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movl	3996(%rsp,%rax,4), %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	%eax, %r15d
	subl	%edx, %r15d
	movslq	%eax, %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	leal	(%rax,%r13), %eax
	sarl	%eax
	movslq	%eax, %r14
	jmp	.LBB18_48
	.align	16, 0x90
.LBB18_111:                             # %if.then120.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	incl	%r9d
	movq	208(%rsp), %rbx         # 8-byte Reload
	movl	%r9d, 3600(%rsp,%rbx,4)
	movq	216(%rsp), %rcx         # 8-byte Reload
.LBB18_48:                              # %while.body.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB18_92 Depth 5
                                        #             Child Loop BB18_94 Depth 6
                                        #               Child Loop BB18_95 Depth 7
                                        #             Child Loop BB18_103 Depth 6
	cmpl	$100, %ecx
	jl	.LBB18_50
# BB#49:                                # %if.then.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movl	$1001, %edi             # imm = 0x3E9
	movq	%r10, %r12
	movq	%r11, %rbp
	callq	BZ2_bz__AssertH__fail
	movq	%rbp, %r11
	movq	%r12, %r10
.LBB18_50:                              # %if.end.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	cmpl	$20, %r15d
	movl	3600(%rsp,%rbx,4), %r9d
	jl	.LBB18_52
# BB#51:                                # %if.end.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	cmpl	$15, %r9d
	jge	.LBB18_52
# BB#84:                                # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	(%r10,%rax,4), %eax
	addl	%r9d, %eax
	movzbl	(%r11,%rax), %edi
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	(%r10,%rax,4), %eax
	addl	%r9d, %eax
	movzbl	(%r11,%rax), %edx
	movl	(%r10,%r14,4), %eax
	addl	%r9d, %eax
	movzbl	(%r11,%rax), %eax
	cmpl	%edx, %edi
	ja	.LBB18_85
# BB#86:                                # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movb	%dl, %cl
	jmp	.LBB18_87
	.align	16, 0x90
.LBB18_85:                              #   in Loop: Header=BB18_48 Depth=4
	movb	%dil, %cl
	movb	%dl, %dil
.LBB18_87:                              # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movzbl	%cl, %edx
	movzbl	%dil, %esi
	cmpl	%eax, %esi
	ja	.LBB18_89
# BB#88:                                # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movb	%al, %dil
.LBB18_89:                              # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	cmpl	%eax, %edx
	ja	.LBB18_91
# BB#90:                                # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movb	%cl, %dil
.LBB18_91:                              # %if.end18.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	movl	%r13d, %r12d
	movl	%eax, %esi
	movl	%r13d, %eax
	jmp	.LBB18_92
	.align	16, 0x90
.LBB18_193:                             # %if.end105.i.i
                                        #   in Loop: Header=BB18_92 Depth=5
	movl	(%r10,%rcx,4), %edx
	movl	%esi, (%r10,%rcx,4)
	movl	%edx, (%r10,%rbx,4)
	incl	%eax
	decl	%ebx
	movl	%ebx, %esi
.LBB18_92:                              # %while.body37.outer.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_48 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB18_94 Depth 6
                                        #               Child Loop BB18_95 Depth 7
                                        #             Child Loop BB18_103 Depth 6
	cmpl	%esi, %eax
	jg	.LBB18_100
# BB#93:                                # %if.end41.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB18_92 Depth=5
	movslq	%esi, %rbx
	movslq	%r12d, %r12
.LBB18_94:                              # %if.end41.lr.ph.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_48 Depth=4
                                        #           Parent Loop BB18_92 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB18_95 Depth 7
	movslq	%eax, %rcx
	.align	16, 0x90
.LBB18_95:                              # %if.end41.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_48 Depth=4
                                        #           Parent Loop BB18_92 Depth=5
                                        #             Parent Loop BB18_94 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	movl	(%r10,%rcx,4), %eax
	leal	(%rax,%r9), %edx
	movzbl	(%r11,%rdx), %ebp
	movzbl	%dil, %edx
	cmpl	%edx, %ebp
	je	.LBB18_96
# BB#98:                                # %if.end62.i.i
                                        #   in Loop: Header=BB18_95 Depth=7
	movzbl	%bpl, %eax
	cmpl	%edx, %eax
	ja	.LBB18_99
# BB#102:                               # %if.end66.i.i
                                        #   in Loop: Header=BB18_95 Depth=7
	cmpq	%rbx, %rcx
	leaq	1(%rcx), %rcx
	jl	.LBB18_95
	jmp	.LBB18_99
	.align	16, 0x90
.LBB18_96:                              # %if.then51.i.i
                                        #   in Loop: Header=BB18_94 Depth=6
	movl	(%r10,%r12,4), %edx
	movl	%edx, (%r10,%rcx,4)
	movl	%eax, (%r10,%r12,4)
	incq	%r12
	leal	1(%rcx), %eax
	cmpl	%esi, %ecx
	jl	.LBB18_94
# BB#97:                                # %while.body69.preheader.i.i.loopexit
                                        #   in Loop: Header=BB18_92 Depth=5
	incl	%ecx
	.align	16, 0x90
.LBB18_99:                              # %while.body69.preheader.i.i
                                        #   in Loop: Header=BB18_92 Depth=5
	movl	%ecx, %eax
.LBB18_100:                             # %while.body69.preheader.i.i
                                        #   in Loop: Header=BB18_92 Depth=5
	cmpl	%esi, %eax
	jg	.LBB18_110
# BB#101:                               # %if.end73.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB18_92 Depth=5
	movslq	%eax, %rcx
	movslq	%r8d, %r8
	movslq	%esi, %rbx
	jmp	.LBB18_103
.LBB18_105:                             # %if.end73.lr.ph.i.i
                                        #   in Loop: Header=BB18_103 Depth=6
	movslq	%esi, %rbx
	.align	16, 0x90
.LBB18_103:                             # %if.end73.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_48 Depth=4
                                        #           Parent Loop BB18_92 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	(%r10,%rbx,4), %esi
	leal	(%rsi,%r9), %edx
	movzbl	(%r11,%rdx), %edx
	movzbl	%dil, %ebp
	cmpl	%ebp, %edx
	je	.LBB18_104
# BB#106:                               # %if.end95.i.i
                                        #   in Loop: Header=BB18_103 Depth=6
	movzbl	%dl, %edx
	cmpl	%ebp, %edx
	jb	.LBB18_193
# BB#107:                               # %if.end99.i.i
                                        #   in Loop: Header=BB18_103 Depth=6
	cmpq	%rbx, %rcx
	leaq	-1(%rbx), %rbx
	jl	.LBB18_103
	jmp	.LBB18_109
.LBB18_104:                             # %if.then83.i.i
                                        #   in Loop: Header=BB18_103 Depth=6
	movl	(%r10,%r8,4), %edx
	movl	%edx, (%r10,%rbx,4)
	movl	%esi, (%r10,%r8,4)
	decq	%r8
	leal	-1(%rbx), %esi
	cmpl	%ebx, %eax
	jl	.LBB18_105
# BB#108:                               # %while.end117.i.i.loopexit
                                        #   in Loop: Header=BB18_48 Depth=4
	decl	%ebx
	.align	16, 0x90
.LBB18_109:                             # %while.end117.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	movl	%ebx, %esi
.LBB18_110:                             # %while.end117.i.i
                                        #   in Loop: Header=BB18_48 Depth=4
	cmpl	%r12d, %r8d
	jl	.LBB18_111
# BB#112:                               # %if.end129.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	%r9, 224(%rsp)          # 8-byte Spill
	movl	%r12d, %ecx
	subl	%r13d, %ecx
	movl	%eax, %edi
	subl	%r12d, %edi
	cmpl	%edi, %ecx
	cmovlel	%ecx, %edi
	testl	%edi, %edi
	movq	232(%rsp), %r14         # 8-byte Reload
	jle	.LBB18_125
# BB#113:                               # %while.body140.preheader.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	%r10, %r15
	leal	-1(%r13), %r11d
	subl	%r12d, %r11d
	leal	-1(%r12), %ebp
	subl	%eax, %ebp
	cmpl	%ebp, %r11d
	movl	%ebp, %ecx
	cmovgel	%r11d, %ecx
	leal	1(%rax,%rcx), %ecx
	movslq	%ecx, %rbx
	cmpl	%r11d, %ebp
	movl	%r11d, %ecx
	cmovgel	%ebp, %ecx
	cmpl	$-3, %ecx
	movl	$-2, %r10d
	cmovgl	%ecx, %r10d
	subl	%ecx, %r10d
	incq	%r10
	cmpq	$4, %r10
	jae	.LBB18_115
# BB#114:                               #   in Loop: Header=BB18_47 Depth=3
	movq	%r15, %r10
	jmp	.LBB18_123
	.align	16, 0x90
.LBB18_52:                              # %if.then14.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	leal	1(%r15), %eax
	cmpl	$2, %eax
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	movq	%rax, %rdx
	movl	$0, %eax
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	jl	.LBB18_80
	.align	16, 0x90
.LBB18_53:                              # %while.cond.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addq	%rcx, %rdx
	cmpl	%r15d, incs(,%rax,4)
	leaq	1(%rax), %rax
	jle	.LBB18_53
# BB#54:                                # %for.cond.preheader.i.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	decl	%eax
	testl	%eax, %eax
	jle	.LBB18_80
# BB#55:                                # %for.body.preheader.i.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	sarq	$32, %rdx
	movq	%r13, 152(%rsp)         # 8-byte Spill
	leal	1(%r13), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	leal	2(%r13), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
.LBB18_59:                              # %for.body.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB18_60 Depth 5
                                        #             Child Loop BB18_62 Depth 6
                                        #             Child Loop BB18_68 Depth 6
                                        #             Child Loop BB18_74 Depth 6
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	leaq	-1(%rdx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	incs-4(,%rdx,4), %r12d
	movq	152(%rsp), %rax         # 8-byte Reload
	leal	(%r12,%rax), %ecx
	movl	%ecx, 240(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	movl	144(%rsp), %edx         # 4-byte Reload
	movl	%edx, 192(%rsp)         # 4-byte Spill
	movl	148(%rsp), %edx         # 4-byte Reload
	movl	%edx, 204(%rsp)         # 4-byte Spill
	movl	%eax, 208(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB18_60:                              # %while.body7.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_59 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB18_62 Depth 6
                                        #             Child Loop BB18_68 Depth 6
                                        #             Child Loop BB18_74 Depth 6
	cmpq	224(%rsp), %rcx         # 8-byte Folded Reload
	jg	.LBB18_58
# BB#61:                                # %if.end10.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movl	(%r10,%rcx,4), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leal	(%rax,%r9), %eax
	movl	%eax, 232(%rsp)         # 4-byte Spill
	movl	208(%rsp), %eax         # 4-byte Reload
	.align	16, 0x90
.LBB18_62:                              # %while.cond13.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_59 Depth=4
                                        #           Parent Loop BB18_60 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r12,%rax), %ebp
	movslq	%eax, %r15
	movl	(%r10,%r15,4), %edi
	addl	%r9d, %edi
	movq	%r9, %r14
	movl	232(%rsp), %esi         # 4-byte Reload
	movq	%r11, %rdx
	movq	%r11, %r13
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	leaq	268(%rsp), %r9
	movq	%r10, %rbx
	callq	mainGtU
	testb	%al, %al
	je	.LBB18_65
# BB#63:                                # %while.body19.i.i.i
                                        #   in Loop: Header=BB18_62 Depth=6
	movl	(%rbx,%r15,4), %eax
	movslq	%ebp, %rcx
	movl	%eax, (%rbx,%rcx,4)
	movl	%r15d, %eax
	subl	%r12d, %eax
	cmpl	240(%rsp), %r15d        # 4-byte Folded Reload
	movq	%rbx, %r10
	movq	%r13, %r11
	movq	%r14, %r9
	jge	.LBB18_62
# BB#64:                                # %while.end31.i.i.isplit
                                        #   in Loop: Header=BB18_60 Depth=5
	addl	%r12d, %eax
	movl	%eax, %ebp
	jmp	.LBB18_66
	.align	16, 0x90
.LBB18_65:                              # %while.cond13.i.i.i.while.end31.i.i.i_crit_edge
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	%rbx, %r10
	movq	%r13, %r11
	movq	%r14, %r9
.LBB18_66:                              # %while.end31.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	216(%rsp), %rcx         # 8-byte Reload
	movslq	%ebp, %rax
	movq	184(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%r10,%rax,4)
	cmpq	224(%rsp), %rcx         # 8-byte Folded Reload
	jge	.LBB18_58
# BB#67:                                # %if.end37.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movl	4(%r10,%rcx,4), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leal	(%rax,%r9), %eax
	movl	%eax, 232(%rsp)         # 4-byte Spill
	movl	204(%rsp), %eax         # 4-byte Reload
	.align	16, 0x90
.LBB18_68:                              # %while.cond40.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_59 Depth=4
                                        #           Parent Loop BB18_60 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r12,%rax), %r14d
	movslq	%eax, %rbx
	movl	(%r10,%rbx,4), %edi
	addl	%r9d, %edi
	movq	%r9, %r15
	movl	232(%rsp), %esi         # 4-byte Reload
	movq	%r11, %rdx
	movq	%r11, %r13
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	leaq	268(%rsp), %r9
	movq	%r10, %rbp
	callq	mainGtU
	testb	%al, %al
	je	.LBB18_71
# BB#69:                                # %while.body48.i.i.i
                                        #   in Loop: Header=BB18_68 Depth=6
	movl	(%rbp,%rbx,4), %eax
	movslq	%r14d, %rcx
	movl	%eax, (%rbp,%rcx,4)
	movl	%ebx, %eax
	subl	%r12d, %eax
	cmpl	240(%rsp), %ebx         # 4-byte Folded Reload
	movq	%rbp, %r10
	movq	%r13, %r11
	movq	%r15, %r9
	jge	.LBB18_68
# BB#70:                                # %while.end60.i.i.isplit
                                        #   in Loop: Header=BB18_60 Depth=5
	addl	%r12d, %eax
	movl	%eax, %r14d
	jmp	.LBB18_72
	.align	16, 0x90
.LBB18_71:                              # %while.cond40.i.i.i.while.end60.i.i.i_crit_edge
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	%rbp, %r10
	movq	%r13, %r11
	movq	%r15, %r9
.LBB18_72:                              # %while.end60.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	movslq	%r14d, %rax
	movl	%edx, (%r10,%rax,4)
	leaq	2(%rcx), %rax
	cmpq	224(%rsp), %rax         # 8-byte Folded Reload
	jg	.LBB18_58
# BB#73:                                # %if.end66.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movl	8(%r10,%rcx,4), %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leal	(%rax,%r9), %eax
	movl	%eax, 232(%rsp)         # 4-byte Spill
	movl	192(%rsp), %eax         # 4-byte Reload
	.align	16, 0x90
.LBB18_74:                              # %while.cond69.i.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        #         Parent Loop BB18_59 Depth=4
                                        #           Parent Loop BB18_60 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r12,%rax), %r14d
	movslq	%eax, %rbx
	movl	(%r10,%rbx,4), %edi
	addl	%r9d, %edi
	movq	%r9, %r15
	movl	232(%rsp), %esi         # 4-byte Reload
	movq	%r11, %rdx
	movq	%r11, %r13
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %r8          # 8-byte Reload
	leaq	268(%rsp), %r9
	movq	%r10, %rbp
	callq	mainGtU
	testb	%al, %al
	je	.LBB18_77
# BB#75:                                # %while.body77.i.i.i
                                        #   in Loop: Header=BB18_74 Depth=6
	movl	(%rbp,%rbx,4), %eax
	movslq	%r14d, %rcx
	movl	%eax, (%rbp,%rcx,4)
	movl	%ebx, %eax
	subl	%r12d, %eax
	cmpl	240(%rsp), %ebx         # 4-byte Folded Reload
	movq	%rbp, %r10
	movq	%r13, %r11
	movq	%r15, %r9
	jge	.LBB18_74
# BB#76:                                # %while.end89.i.i.isplit
                                        #   in Loop: Header=BB18_60 Depth=5
	addl	%r12d, %eax
	movl	%eax, %r14d
	jmp	.LBB18_78
	.align	16, 0x90
.LBB18_77:                              # %while.cond69.i.i.i.while.end89.i.i.i_crit_edge
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	%rbp, %r10
	movq	%r13, %r11
	movq	%r15, %r9
.LBB18_78:                              # %while.end89.i.i.i
                                        #   in Loop: Header=BB18_60 Depth=5
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	184(%rsp), %rdx         # 8-byte Reload
	movslq	%r14d, %rax
	movl	%edx, (%r10,%rax,4)
	movl	268(%rsp), %eax
	addq	$3, %rcx
	addl	$3, 208(%rsp)           # 4-byte Folded Spill
	addl	$3, 204(%rsp)           # 4-byte Folded Spill
	addl	$3, 192(%rsp)           # 4-byte Folded Spill
	testl	%eax, %eax
	jns	.LBB18_60
	jmp	.LBB18_82
	.align	16, 0x90
.LBB18_58:                              # %for.cond.loopexit.i.i.i
                                        #   in Loop: Header=BB18_59 Depth=4
	cmpq	$2, 160(%rsp)           # 8-byte Folded Reload
	movq	168(%rsp), %rdx         # 8-byte Reload
	jge	.LBB18_59
# BB#79:                                # %mainSimpleSort.exit.i.i.loopexit
                                        #   in Loop: Header=BB18_47 Depth=3
	movl	268(%rsp), %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB18_80:                              # %mainSimpleSort.exit.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movl	204(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB18_81
	jmp	.LBB18_82
.LBB18_115:                             # %min.iters.checked326
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	%r10, %r9
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rcx, %r9
	je	.LBB18_116
# BB#117:                               # %vector.memcheck346
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	%rbx, 184(%rsp)         # 8-byte Spill
	leaq	(%r15,%r14,4), %rbx
	cmpl	%r11d, %ebp
	movl	%r11d, %edx
	cmovgel	%ebp, %edx
	cmpl	$-3, %edx
	movl	$-2, %ecx
	cmovgl	%edx, %ecx
	subl	%edx, %ecx
	leal	1(%rax,%rdx), %edx
	movslq	%edx, %r14
	leaq	(%r14,%rcx), %rdx
	leaq	(%r15,%rdx,4), %rdx
	cmpq	%rdx, %rbx
	ja	.LBB18_120
# BB#118:                               # %vector.memcheck346
                                        #   in Loop: Header=BB18_47 Depth=3
	addq	232(%rsp), %rcx         # 8-byte Folded Reload
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%r14,4), %rdx
	cmpq	%rcx, %rdx
	ja	.LBB18_120
# BB#119:                               #   in Loop: Header=BB18_47 Depth=3
	movq	%r15, %r10
	movq	232(%rsp), %r14         # 8-byte Reload
	movq	184(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB18_123
.LBB18_116:                             #   in Loop: Header=BB18_47 Depth=3
	movq	%r15, %r10
	jmp	.LBB18_123
.LBB18_120:                             # %vector.body319.preheader
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	232(%rsp), %r14         # 8-byte Reload
	addq	%r9, %r14
	addq	%r9, 184(%rsp)          # 8-byte Folded Spill
	subl	%r9d, %edi
	cmpl	%r11d, %ebp
	cmovgel	%ebp, %r11d
	cmpl	$-3, %r11d
	movl	$-2, %ecx
	cmovgl	%r11d, %ecx
	subl	%r11d, %ecx
	incq	%rcx
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rcx
	leal	1(%rax,%r11), %edx
	movslq	%edx, %rdx
	leaq	(%r15,%rdx,4), %rbp
	.align	16, 0x90
.LBB18_121:                             # %vector.body319
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	(%rbx), %xmm0
	movdqu	(%rbp), %xmm1
	movdqu	%xmm1, (%rbx)
	movdqu	%xmm0, (%rbp)
	addq	$16, %rbp
	addq	$16, %rbx
	addq	$-4, %rcx
	jne	.LBB18_121
# BB#122:                               # %middle.block320
                                        #   in Loop: Header=BB18_47 Depth=3
	cmpq	%r9, %r10
	movq	%r15, %r10
	movq	184(%rsp), %rbx         # 8-byte Reload
	je	.LBB18_125
	.align	16, 0x90
.LBB18_123:                             # %while.body140.i.i.preheader
                                        #   in Loop: Header=BB18_47 Depth=3
	leaq	(%r10,%r14,4), %rcx
	leaq	(%r10,%rbx,4), %rbp
	incl	%edi
	.align	16, 0x90
.LBB18_124:                             # %while.body140.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rcx), %edx
	movl	(%rbp), %ebx
	movl	%ebx, (%rcx)
	movl	%edx, (%rbp)
	addq	$4, %rcx
	addq	$4, %rbp
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB18_124
.LBB18_125:                             # %while.end153.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	240(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %ebp
	subl	%r8d, %ebp
	movl	%r8d, %r11d
	subl	%esi, %r11d
	cmpl	%r11d, %ebp
	cmovgl	%r11d, %ebp
	testl	%ebp, %ebp
	jle	.LBB18_137
# BB#126:                               # %while.body172.preheader.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	240(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r9d
	subl	%ebp, %r9d
	movslq	%eax, %r14
	decl	%esi
	subl	%r8d, %esi
	leal	-1(%r8), %ecx
	subl	%edx, %ecx
	cmpl	%ecx, %esi
	movl	%ecx, %edx
	cmovgel	%esi, %edx
	cmpl	$-3, %edx
	movl	$-2, %ebx
	cmovgl	%edx, %ebx
	subl	%edx, %ebx
	incq	%rbx
	cmpq	$4, %rbx
	jb	.LBB18_135
# BB#127:                               # %min.iters.checked278
                                        #   in Loop: Header=BB18_47 Depth=3
	movq	%r10, %r15
	movq	%rbx, %r10
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %r10
	je	.LBB18_128
# BB#129:                               # %vector.memcheck295
                                        #   in Loop: Header=BB18_47 Depth=3
	leaq	(%r15,%r14,4), %rdx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	cmpl	%ecx, %esi
	cmovgel	%esi, %ecx
	cmpl	$-3, %ecx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	subl	%ecx, %edi
	movq	240(%rsp), %rdx         # 8-byte Reload
	leal	2(%rdx,%rcx), %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rdi), %rdx
	leaq	(%r15,%rdx,4), %rdx
	cmpq	%rdx, 232(%rsp)         # 8-byte Folded Reload
	ja	.LBB18_132
# BB#130:                               # %vector.memcheck295
                                        #   in Loop: Header=BB18_47 Depth=3
	addq	%r14, %rdi
	leaq	(%r15,%rdi,4), %rdx
	leaq	(%r15,%rcx,4), %rcx
	cmpq	%rdx, %rcx
	ja	.LBB18_132
# BB#131:                               #   in Loop: Header=BB18_47 Depth=3
	movq	%r15, %r10
	jmp	.LBB18_135
.LBB18_128:                             #   in Loop: Header=BB18_47 Depth=3
	movq	%r15, %r10
	jmp	.LBB18_135
.LBB18_132:                             # %vector.body273.preheader
                                        #   in Loop: Header=BB18_47 Depth=3
	addq	%r10, %r14
	addl	%r10d, %r9d
	subl	%r10d, %ebp
	movq	240(%rsp), %rdi         # 8-byte Reload
	movl	%edi, %edx
	notl	%edx
	addl	%r8d, %edx
	cmpl	%edx, %esi
	cmovgel	%esi, %edx
	cmpl	$-3, %edx
	movl	$-2, %ecx
	cmovgl	%edx, %ecx
	subl	%edx, %ecx
	incq	%rcx
	movabsq	$8589934588, %rsi       # imm = 0x1FFFFFFFC
	andq	%rsi, %rcx
	leal	2(%rdi,%rdx), %edx
	movslq	%eax, %rsi
	leaq	(%r15,%rsi,4), %rsi
	.align	16, 0x90
.LBB18_133:                             # %vector.body273
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movdqu	(%rsi), %xmm0
	movslq	%edx, %rdx
	movdqu	(%r15,%rdx,4), %xmm1
	movdqu	%xmm1, (%rsi)
	movdqu	%xmm0, (%r15,%rdx,4)
	addl	$4, %edx
	addq	$16, %rsi
	addq	$-4, %rcx
	jne	.LBB18_133
# BB#134:                               # %middle.block274
                                        #   in Loop: Header=BB18_47 Depth=3
	cmpq	%r10, %rbx
	movq	%r15, %r10
	je	.LBB18_137
	.align	16, 0x90
.LBB18_135:                             # %while.body172.i.i.preheader
                                        #   in Loop: Header=BB18_47 Depth=3
	leaq	(%r10,%r14,4), %rcx
	incl	%r9d
	movslq	%r9d, %rdx
	leaq	(%r10,%rdx,4), %rdx
	incl	%ebp
	.align	16, 0x90
.LBB18_136:                             # %while.body172.i.i
                                        #   Parent Loop BB18_40 Depth=1
                                        #     Parent Loop BB18_41 Depth=2
                                        #       Parent Loop BB18_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rcx), %esi
	movl	(%rdx), %edi
	movl	%edi, (%rcx)
	movl	%esi, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB18_136
.LBB18_137:                             # %while.end185.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movl	%r13d, %ecx
	subl	%r12d, %ecx
	leal	(%rcx,%rax), %esi
	leal	-1(%rcx,%rax), %r9d
	movq	240(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	subl	%r11d, %ebx
	leal	1(%rbx), %edi
	movq	224(%rsp), %r14         # 8-byte Reload
	leal	1(%r14), %r8d
	movl	%r9d, %edx
	subl	%r13d, %edx
	movl	%eax, %ebp
	subl	%edi, %ebp
	cmpl	%ebp, %edx
	movl	%edi, %edx
	cmovll	%r13d, %edx
	cmovll	%edi, %r13d
	movl	%eax, %ecx
	cmovll	%r9d, %ecx
	cmovll	%eax, %r9d
	movl	%ecx, %ebp
	subl	%edx, %ebp
	movl	%ebx, %eax
	subl	%esi, %eax
	cmpl	%eax, %ebp
	movl	%edx, %eax
	cmovll	%esi, %eax
	movq	%r10, %r11
	movl	%ebx, %r10d
	cmovll	%ecx, %r10d
	cmovll	%ebx, %ecx
	movl	%r14d, %ebx
	cmovll	%r8d, %ebx
	cmovll	%r14d, %r8d
	cmovgel	%esi, %edx
	movl	%r9d, %esi
	subl	%r13d, %esi
	movl	%ecx, %edi
	subl	%eax, %edi
	cmpl	%edi, %esi
	movl	%eax, %r15d
	cmovll	%r13d, %r15d
	cmovgel	%r13d, %eax
	movl	%ecx, %edi
	cmovll	%r9d, %edi
	cmovgel	%r9d, %ecx
	movl	%ebx, %ebp
	cmovll	%r14d, %ebp
	cmovgel	%r14d, %ebx
	movq	208(%rsp), %rsi         # 8-byte Reload
	movl	%eax, 4400(%rsp,%rsi,4)
	movl	%ecx, 4000(%rsp,%rsi,4)
	movl	%ebx, 3600(%rsp,%rsi,4)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%r15d, 4400(%rsp,%rax,4)
	movl	%edi, 4000(%rsp,%rax,4)
	movl	%ebp, 3600(%rsp,%rax,4)
	movl	%edx, 4404(%rsp,%rax,4)
	movl	%r10d, 4004(%rsp,%rax,4)
	movq	%r11, %r10
	movl	%r8d, 3604(%rsp,%rax,4)
	movq	216(%rsp), %rax         # 8-byte Reload
	addl	$2, %eax
	movl	%eax, 180(%rsp)         # 4-byte Spill
	movq	128(%rsp), %r11         # 8-byte Reload
	movl	204(%rsp), %eax         # 4-byte Reload
.LBB18_81:                              # %while.cond.outer.backedge.i.i
                                        #   in Loop: Header=BB18_47 Depth=3
	movl	180(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	jg	.LBB18_47
.LBB18_82:                              # %mainQSort3.exit.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movl	%eax, 204(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	js	.LBB18_83
# BB#138:                               # %mainQSort3.exit.if.end322_crit_edge.i
                                        #   in Loop: Header=BB18_41 Depth=2
	movl	124(%rsp), %eax         # 4-byte Reload
	incl	%eax
	subl	100(%rsp), %eax         # 4-byte Folded Reload
	addl	140(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	(%r15,%rsi,4), %eax
	movl	68(%rsp), %edi          # 4-byte Reload
	movq	256(%rsp), %r13         # 8-byte Reload
	movl	$-2097153, %r12d        # imm = 0xFFFFFFFFFFDFFFFF
	movq	88(%rsp), %r14          # 8-byte Reload
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
.LBB18_139:                             # %if.end322.i
                                        #   in Loop: Header=BB18_41 Depth=2
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, (%r15,%rsi,4)
.LBB18_140:                             # %for.inc327.i
                                        #   in Loop: Header=BB18_41 Depth=2
	incq	%rdx
	cmpq	$256, %rdx              # imm = 0x100
	jl	.LBB18_41
# BB#141:                               # %for.end329.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	cmpb	$0, 2320(%rsp,%r9)
	je	.LBB18_143
# BB#142:                               # %if.then333.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movl	$1006, %edi             # imm = 0x3EE
	movq	%r11, %rbp
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%r9, %rbx
	callq	BZ2_bz__AssertH__fail
	movq	%rbx, %r9
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbp, %r11
	movq	32(%rsp), %r10          # 8-byte Reload
.LBB18_143:                             # %for.body338.i.preheader
                                        #   in Loop: Header=BB18_40 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r9,4), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_144:                             # %for.body338.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rax), %edx
	andl	%r12d, %edx
	movl	%edx, 1296(%rsp,%rcx,4)
	movl	(%rax), %edx
	andl	%r12d, %edx
	decl	%edx
	movl	%edx, 272(%rsp,%rcx,4)
	incq	%rcx
	addq	$1024, %rax             # imm = 0x400
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB18_144
# BB#145:                               # %for.end357.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movl	(%r15,%rbx,4), %ecx
	andl	%r12d, %ecx
	movl	1296(%rsp,%r9,4), %eax
	cmpl	%eax, %ecx
	jge	.LBB18_146
# BB#147:                               # %for.body367.preheader.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movslq	%ecx, %rcx
	movq	88(%rsp), %r8           # 8-byte Reload
	.align	16, 0x90
.LBB18_148:                             # %for.body367.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r10,%rcx,4), %edx
	leal	-1(%rdx), %esi
	sarl	$31, %esi
	andl	%r13d, %esi
	leal	-1(%rsi,%rdx), %edx
	movslq	%edx, %rsi
	movzbl	(%r11,%rsi), %esi
	cmpb	$0, 2320(%rsp,%rsi)
	jne	.LBB18_150
# BB#149:                               # %if.then381.i
                                        #   in Loop: Header=BB18_148 Depth=2
	movslq	1296(%rsp,%rsi,4), %rax
	leal	1(%rax), %edi
	movl	%edi, 1296(%rsp,%rsi,4)
	movl	%edx, (%r10,%rax,4)
	movl	1296(%rsp,%r9,4), %eax
.LBB18_150:                             # %for.inc388.i
                                        #   in Loop: Header=BB18_148 Depth=2
	incq	%rcx
	movslq	%eax, %rdx
	cmpq	%rdx, %rcx
	jl	.LBB18_148
	jmp	.LBB18_151
	.align	16, 0x90
.LBB18_146:                             #   in Loop: Header=BB18_40 Depth=1
	movq	88(%rsp), %r8           # 8-byte Reload
.LBB18_151:                             # %for.end390.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movl	44(%rsp), %ecx          # 4-byte Reload
	addl	$256, %ecx              # imm = 0x100
	movslq	%ecx, %r14
	movl	(%r15,%r14,4), %edx
	andl	%r12d, %edx
	decl	%edx
	movl	272(%rsp,%r9,4), %ecx
	jmp	.LBB18_152
	.align	16, 0x90
.LBB18_154:                             # %for.cond397.backedge.i
                                        #   in Loop: Header=BB18_152 Depth=2
	decl	%edx
.LBB18_152:                             # %for.end390.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %edx
	jle	.LBB18_156
# BB#153:                               # %for.body402.i
                                        #   in Loop: Header=BB18_152 Depth=2
	movslq	%edx, %rsi
	movl	(%r10,%rsi,4), %esi
	leal	-1(%rsi), %edi
	sarl	$31, %edi
	andl	%r13d, %edi
	leal	-1(%rdi,%rsi), %esi
	movslq	%esi, %rdi
	movzbl	(%r11,%rdi), %edi
	cmpb	$0, 2320(%rsp,%rdi)
	jne	.LBB18_154
# BB#155:                               # %if.then416.i
                                        #   in Loop: Header=BB18_152 Depth=2
	movslq	272(%rsp,%rdi,4), %rcx
	leal	-1(%rcx), %ebp
	movl	%ebp, 272(%rsp,%rdi,4)
	movl	%esi, (%r10,%rcx,4)
	movl	272(%rsp,%r9,4), %ecx
	decl	%edx
	jmp	.LBB18_152
	.align	16, 0x90
.LBB18_156:                             # %for.end425.i
                                        #   in Loop: Header=BB18_40 Depth=1
	leal	-1(%rax), %edx
	cmpl	%ecx, %edx
	movq	%r8, %rdx
	je	.LBB18_160
# BB#157:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB18_40 Depth=1
	testl	%eax, %eax
	jne	.LBB18_159
# BB#158:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB18_40 Depth=1
	cmpl	20(%rsp), %ecx          # 4-byte Folded Reload
	je	.LBB18_160
.LBB18_159:                             # %if.then442.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movl	$1007, %edi             # imm = 0x3EF
	movq	%r11, %rbp
	movq	%rdx, %r12
	movq	%r14, 240(%rsp)         # 8-byte Spill
	movq	%r9, %r14
	callq	BZ2_bz__AssertH__fail
	movq	%r14, %r9
	movq	240(%rsp), %r14         # 8-byte Reload
	movq	%r12, %rdx
	movq	%rbp, %r11
	movq	32(%rsp), %r10          # 8-byte Reload
	movl	$-2097153, %r12d        # imm = 0xFFFFFFFFFFDFFFFF
.LBB18_160:                             # %for.body447.i.preheader
                                        #   in Loop: Header=BB18_40 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cltq
	leaq	(%r15,%rax,4), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_161:                             # %for.body447.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orb	$32, 2(%rax,%rcx)
	addq	$1024, %rcx             # imm = 0x400
	cmpq	$262144, %rcx           # imm = 0x40000
	jne	.LBB18_161
# BB#162:                               # %for.end455.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movb	$1, 2320(%rsp,%r9)
	cmpq	$254, %rdx
	movl	68(%rsp), %edi          # 4-byte Reload
	jg	.LBB18_172
# BB#163:                               # %if.then460.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movq	%rdx, %r8
	movl	%edi, %r9d
	movl	(%r15,%rbx,4), %eax
	andl	%r12d, %eax
	movl	(%r15,%r14,4), %esi
	andl	%r12d, %esi
	movl	%esi, %edx
	subl	%eax, %edx
	movl	$-1, %ecx
	.align	16, 0x90
.LBB18_164:                             # %while.cond471.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%ecx
	movl	%edx, %eax
	sarl	%cl, %eax
	cmpl	$65534, %eax            # imm = 0xFFFE
	jg	.LBB18_164
# BB#165:                               # %while.end477.i
                                        #   in Loop: Header=BB18_40 Depth=1
	leal	-1(%rdx), %r14d
	testl	%edx, %edx
	movq	248(%rsp), %rax         # 8-byte Reload
	jle	.LBB18_170
# BB#166:                               # %for.body482.preheader.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movslq	%edx, %rdx
	incq	%rdx
	decl	%esi
	movslq	%esi, %rsi
	leaq	(%r10,%rsi,4), %rsi
	movl	%r14d, %edi
	.align	16, 0x90
.LBB18_167:                             # %for.body482.i
                                        #   Parent Loop BB18_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsi), %rbp
	movl	%edi, %ebx
	sarl	%cl, %ebx
	cmpq	$33, %rbp
	movw	%bx, (%rax,%rbp,2)
	jg	.LBB18_169
# BB#168:                               # %if.then492.i
                                        #   in Loop: Header=BB18_167 Depth=2
	leal	(%r13,%rbp), %ebp
	movslq	%ebp, %rbp
	movw	%bx, (%rax,%rbp,2)
.LBB18_169:                             # %if.end496.i
                                        #   in Loop: Header=BB18_167 Depth=2
	decl	%edi
	decq	%rdx
	addq	$-4, %rsi
	cmpq	$1, %rdx
	jg	.LBB18_167
.LBB18_170:                             # %for.end499.i
                                        #   in Loop: Header=BB18_40 Depth=1
	sarl	%cl, %r14d
	cmpl	$65536, %r14d           # imm = 0x10000
	movl	%r9d, %edi
	movq	%r8, %rdx
	jl	.LBB18_172
# BB#171:                               # %if.then504.i
                                        #   in Loop: Header=BB18_40 Depth=1
	movl	$1002, %edi             # imm = 0x3EA
	movq	%r10, %rbx
	movq	%r11, %rbp
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	callq	BZ2_bz__AssertH__fail
	movl	68(%rsp), %edi          # 4-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %r11
	movq	%rbx, %r10
.LBB18_172:                             # %for.inc507.i
                                        #   in Loop: Header=BB18_40 Depth=1
	incq	%rdx
	cmpq	$256, %rdx              # imm = 0x100
	jl	.LBB18_40
# BB#173:                               # %for.end509.i
	cmpl	$4, %edi
	jge	.LBB18_174
.LBB18_175:                             # %mainSort.exit
	movq	(%rsp), %rax            # 8-byte Reload
	jmp	.LBB18_176
.LBB18_83:
	movq	(%rsp), %rax            # 8-byte Reload
	movq	48(%rsp), %r15          # 8-byte Reload
	movl	68(%rsp), %edi          # 4-byte Reload
	movq	256(%rsp), %r13         # 8-byte Reload
.LBB18_176:                             # %mainSort.exit
	cmpl	$3, %edi
	jge	.LBB18_177
.LBB18_181:                             # %if.end21
	movq	%r10, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 204(%rsp)           # 4-byte Folded Reload
	jns	.LBB18_186
# BB#182:                               # %if.then24
	cmpl	$2, %edi
	movl	%edi, %ebp
	jge	.LBB18_183
.LBB18_184:                             # %if.end29
	movq	24(%rax), %rdi
	movq	32(%rax), %rsi
	movq	%r15, %rdx
	movl	%r13d, %ecx
	movl	%ebp, %r8d
.LBB18_185:                             # %if.end33
	movq	%rax, %rbx
	callq	fallbackSort
	movq	%rbx, %rax
.LBB18_186:                             # %if.end33
	movl	$-1, 48(%rax)
	movq	%rax, %rcx
	movslq	108(%rcx), %rax
	movq	%rcx, %rdx
	testq	%rax, %rax
	movq	32(%rsp), %r13          # 8-byte Reload
	jle	.LBB18_191
# BB#187:                               # %for.body.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB18_188:                             # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r13,%rcx,4)
	je	.LBB18_190
# BB#189:                               # %for.inc
                                        #   in Loop: Header=BB18_188 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB18_188
	jmp	.LBB18_191
.LBB18_190:                             # %for.end
	movl	%ecx, 48(%rdx)
	cmpl	$-1, %ecx
	jne	.LBB18_192
.LBB18_191:                             # %if.then48
	movl	$1003, %edi             # imm = 0x3EB
	callq	BZ2_bz__AssertH__fail
.LBB18_192:                             # %if.end49
	addq	$4808, %rsp             # imm = 0x12C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB18_3:                               # %if.then.i
	movq	stderr(%rip), %rcx
	movl	$.L.str.6.3, %edi
	movl	$33, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB18_4
.LBB18_17:                              # %if.then96.i
	movq	stderr(%rip), %rcx
	movl	$.L.str.2, %edi
	movl	$27, %esi
	movl	$1, %edx
	movq	%r11, %rbx
	callq	fwrite
	movq	%rbx, %r11
	jmp	.LBB18_18
.LBB18_177:                             # %if.then13
	movl	%edi, %r14d
	movq	stderr(%rip), %rdi
	movq	8(%rsp), %rcx           # 8-byte Reload
	subl	204(%rsp), %ecx         # 4-byte Folded Reload
	cvtsi2ssl	%ecx, %xmm0
	movq	%rcx, %rdx
	movq	%r10, %rbp
	movq	%rax, %rbx
	testl	%r13d, %r13d
	je	.LBB18_178
# BB#179:                               # %if.then13
	cvtsi2ssl	%r13d, %xmm1
	jmp	.LBB18_180
.LBB18_178:
	movss	.LCPI18_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
.LBB18_180:                             # %if.then13
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str, %esi
	movb	$1, %al
	movl	%r13d, %ecx
	callq	fprintf
	movq	%rbx, %rax
	movq	%rbp, %r10
	movl	%r14d, %edi
	jmp	.LBB18_181
.LBB18_183:                             # %if.then27
	movq	stderr(%rip), %rcx
	movl	$.L.str.1, %edi
	movl	$53, %esi
	movl	$1, %edx
	movq	%rax, %rbx
	callq	fwrite
	movq	%rbx, %rax
	jmp	.LBB18_184
.LBB18_174:                             # %if.then512.i
	movl	%edi, %ebp
	movq	stderr(%rip), %rdi
	movl	%r13d, %r8d
	movl	124(%rsp), %ecx         # 4-byte Reload
	subl	%ecx, %r8d
	movl	$.L.str.8.5, %esi
	xorl	%eax, %eax
	movl	%r13d, %edx
	movq	%r10, %rbx
	callq	fprintf
	movl	%ebp, %edi
	movq	%rbx, %r10
	jmp	.LBB18_175
.Lfunc_end18:
	.size	BZ2_blockSort, .Lfunc_end18-BZ2_blockSort
	.cfi_endproc

	.align	16, 0x90
	.type	fallbackSort,@function
fallbackSort:                           # @fallbackSort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	subq	$3032, %rsp             # imm = 0xBD8
.Ltmp110:
	.cfi_def_cfa_offset 3088
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movl	%r8d, 100(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r15
	cmpl	$3, %r8d
	movl	%ebp, %r13d
	jg	.LBB19_133
.LBB19_1:                               # %for.body.preheader
	leaq	1184(%rsp), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	movl	$1028, %edx             # imm = 0x404
	callq	memset
	testl	%ebp, %ebp
	jle	.LBB19_5
# BB#2:
	movq	%rbx, %rax
	movl	%ebp, %ecx
	.align	16, 0x90
.LBB19_3:                               # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	incl	1184(%rsp,%rdx,4)
	incq	%rax
	decl	%ecx
	jne	.LBB19_3
# BB#4:                                 # %for.body15.preheader.loopexit
	movl	1184(%rsp), %r14d
.LBB19_5:                               # %for.body15.preheader
	leaq	160(%rsp), %rdi
	leaq	1184(%rsp), %rsi
	movl	$1024, %edx             # imm = 0x400
	callq	memcpy
	xorl	%eax, %eax
	.align	16, 0x90
.LBB19_6:                               # %for.body25
                                        # =>This Inner Loop Header: Depth=1
	addl	1188(%rsp,%rax,4), %r14d
	movl	%r14d, 1188(%rsp,%rax,4)
	incq	%rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB19_6
# BB#7:                                 # %for.cond33.preheader
	movq	%rbp, %r8
	movq	%r8, 64(%rsp)           # 8-byte Spill
	testl	%r8d, %r8d
	movq	%rbx, %r9
	movq	%r12, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	jle	.LBB19_10
# BB#8:                                 # %for.body35.preheader
	xorl	%eax, %eax
	.align	16, 0x90
.LBB19_9:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r9,%rax), %ecx
	movslq	1184(%rsp,%rcx,4), %rdx
	leaq	-1(%rdx), %rsi
	movl	%esi, 1184(%rsp,%rcx,4)
	movl	%eax, -4(%r15,%rdx,4)
	incq	%rax
	cmpl	%eax, %r13d
	jne	.LBB19_9
.LBB19_10:                              # %for.end47
	movq	%r13, 88(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	cmpl	$-63, %r8d
	movl	$0, %ebp
	jl	.LBB19_12
# BB#11:                                # %for.body52.preheader
	movl	%r8d, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%r8d, %eax
	sarl	$5, %eax
	xorl	%ebp, %ebp
	incl	%eax
	cmovsl	%ebp, %eax
	movl	%eax, %eax
	leaq	4(,%rax,4), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r8, %r13
	movq	%r9, %r12
	callq	memset
	movq	%r12, %r9
	movq	%r13, %r8
	.align	16, 0x90
.LBB19_12:                              # %for.body61
                                        # =>This Inner Loop Header: Depth=1
	movl	1184(%rsp,%rbp,4), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	orl	%eax, (%rbx,%rcx,4)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB19_12
	.align	16, 0x90
.LBB19_13:                              # %for.body74
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r8,%r14), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	orl	%eax, (%rbx,%rcx,4)
	leal	1(%r8,%r14), %ecx
	movl	$-2, %eax
	roll	%cl, %eax
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	andl	%eax, (%rbx,%rcx,4)
	addl	$2, %r14d
	cmpl	$64, %r14d
	jne	.LBB19_13
# BB#14:                                # %while.body.preheader
	movl	$1, %ebp
	movl	100(%rsp), %r13d        # 4-byte Reload
	jmp	.LBB19_15
.LBB19_16:                              # %if.then101
                                        #   in Loop: Header=BB19_15 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.3.1, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	movq	%r8, %r14
	movq	%r9, %r12
	callq	fprintf
	movq	%r12, %r9
	movq	%r14, %r8
	jmp	.LBB19_17
.LBB19_120:                             # %if.then258
                                        #   in Loop: Header=BB19_15 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	%r8, %r14
	movq	%r9, %rbp
	callq	fprintf
	movq	%rbp, %r9
	movq	%r14, %r8
	jmp	.LBB19_121
	.align	16, 0x90
.LBB19_15:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_18 Depth 2
                                        #     Child Loop BB19_20 Depth 2
                                        #       Child Loop BB19_21 Depth 3
                                        #         Child Loop BB19_25 Depth 4
                                        #         Child Loop BB19_26 Depth 4
                                        #         Child Loop BB19_29 Depth 4
                                        #         Child Loop BB19_33 Depth 4
                                        #         Child Loop BB19_34 Depth 4
                                        #       Child Loop BB19_38 Depth 3
                                        #         Child Loop BB19_39 Depth 4
                                        #           Child Loop BB19_54 Depth 5
                                        #             Child Loop BB19_57 Depth 6
                                        #           Child Loop BB19_46 Depth 5
                                        #             Child Loop BB19_48 Depth 6
                                        #         Child Loop BB19_66 Depth 4
                                        #           Child Loop BB19_68 Depth 5
                                        #             Child Loop BB19_69 Depth 6
                                        #           Child Loop BB19_77 Depth 5
                                        #         Child Loop BB19_99 Depth 4
                                        #         Child Loop BB19_102 Depth 4
                                        #         Child Loop BB19_111 Depth 4
                                        #         Child Loop BB19_114 Depth 4
                                        #       Child Loop BB19_88 Depth 3
	cmpl	$4, %r13d
	jge	.LBB19_16
.LBB19_17:                              # %for.cond104.preheader
                                        #   in Loop: Header=BB19_15 Depth=1
	movl	$-1, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	movl	$0, %eax
	movl	$0, %ecx
	movq	88(%rsp), %rdi          # 8-byte Reload
	jle	.LBB19_19
	.align	16, 0x90
.LBB19_18:                              # %for.body107
                                        #   Parent Loop BB19_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	sarl	$5, %edx
	movslq	%edx, %rdx
	movl	(%rbx,%rdx,4), %edx
	btl	%eax, %edx
	cmovbl	%eax, %ecx
	movl	(%r15,%rax,4), %edx
	subl	%ebp, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edi, %esi
	addl	%edx, %esi
	movslq	%esi, %rdx
	movl	%ecx, (%r9,%rdx,4)
	incq	%rax
	cmpl	%eax, %edi
	jne	.LBB19_18
.LBB19_19:                              #   in Loop: Header=BB19_15 Depth=1
	movl	%ebp, 116(%rsp)         # 4-byte Spill
.LBB19_20:                              # %while.body130.outer
                                        #   Parent Loop BB19_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_21 Depth 3
                                        #         Child Loop BB19_25 Depth 4
                                        #         Child Loop BB19_26 Depth 4
                                        #         Child Loop BB19_29 Depth 4
                                        #         Child Loop BB19_33 Depth 4
                                        #         Child Loop BB19_34 Depth 4
                                        #       Child Loop BB19_38 Depth 3
                                        #         Child Loop BB19_39 Depth 4
                                        #           Child Loop BB19_54 Depth 5
                                        #             Child Loop BB19_57 Depth 6
                                        #           Child Loop BB19_46 Depth 5
                                        #             Child Loop BB19_48 Depth 6
                                        #         Child Loop BB19_66 Depth 4
                                        #           Child Loop BB19_68 Depth 5
                                        #             Child Loop BB19_69 Depth 6
                                        #           Child Loop BB19_77 Depth 5
                                        #         Child Loop BB19_99 Depth 4
                                        #         Child Loop BB19_102 Depth 4
                                        #         Child Loop BB19_111 Depth 4
                                        #         Child Loop BB19_114 Depth 4
                                        #       Child Loop BB19_88 Depth 3
	movq	120(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB19_21:                              # %while.cond132
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_25 Depth 4
                                        #         Child Loop BB19_26 Depth 4
                                        #         Child Loop BB19_29 Depth 4
                                        #         Child Loop BB19_33 Depth 4
                                        #         Child Loop BB19_34 Depth 4
	movl	%ecx, %eax
	leal	1(%rax), %r13d
	movl	%r13d, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rsi
	movl	%r13d, %ecx
	andl	$31, %ecx
	movl	$1, %edx
	shll	%cl, %edx
	andl	(%rbx,%rsi,4), %edx
	setne	%cl
	movl	%r13d, %esi
	andl	$31, %esi
	je	.LBB19_23
# BB#22:                                # %while.cond132
                                        #   in Loop: Header=BB19_21 Depth=3
	testb	%cl, %cl
	movl	%r13d, %ecx
	jne	.LBB19_21
.LBB19_23:                              # %while.end
                                        #   in Loop: Header=BB19_21 Depth=3
	testl	%edx, %edx
	je	.LBB19_27
# BB#24:                                # %while.cond152.preheader
                                        #   in Loop: Header=BB19_21 Depth=3
	leal	-31(%rax), %ecx
	.align	16, 0x90
.LBB19_25:                              # %while.cond152
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %r13d
	addl	$32, %ecx
	movl	%ecx, %eax
	sarl	$5, %eax
	movslq	%eax, %rdx
	leal	32(%r13), %eax
	cmpl	$-1, (%rbx,%rdx,4)
	je	.LBB19_25
	.align	16, 0x90
.LBB19_26:                              # %while.cond161
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incl	%r13d
	movl	%r13d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rbx,%rax,4), %eax
	btl	%r13d, %eax
	jb	.LBB19_26
.LBB19_27:                              # %if.end172
                                        #   in Loop: Header=BB19_21 Depth=3
	cmpl	%r8d, %r13d
	jg	.LBB19_119
# BB#28:                                # %while.cond178.preheader
                                        #   in Loop: Header=BB19_21 Depth=3
	leal	-32(%r13), %ecx
	leal	-1(%r13), %edi
	movl	%r13d, %r14d
	.align	16, 0x90
.LBB19_29:                              # %while.cond178
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%r14d, %ebp
	movl	%ecx, %eax
	movl	%edi, %edx
	movl	%ebp, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rdi
	movl	%ebp, %ecx
	andl	$31, %ecx
	movl	$1, %esi
	shll	%cl, %esi
	andl	(%rbx,%rdi,4), %esi
	leal	1(%rbp), %r14d
	andl	$31, %ebp
	je	.LBB19_31
# BB#30:                                # %while.cond178
                                        #   in Loop: Header=BB19_29 Depth=4
	leal	1(%rax), %ecx
	leal	1(%rdx), %edi
	testl	%esi, %esi
	je	.LBB19_29
.LBB19_31:                              # %while.end192
                                        #   in Loop: Header=BB19_21 Depth=3
	testl	%esi, %esi
	je	.LBB19_33
# BB#32:                                #   in Loop: Header=BB19_21 Depth=3
	decl	%r14d
	jmp	.LBB19_35
	.align	16, 0x90
.LBB19_33:                              # %while.cond201
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%edx, %r14d
	addl	$32, %eax
	movl	%eax, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	leal	32(%r14), %edx
	cmpl	$0, (%rbx,%rcx,4)
	je	.LBB19_33
	.align	16, 0x90
.LBB19_34:                              # %while.cond210
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_21 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incl	%r14d
	movl	%r14d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rbx,%rax,4), %eax
	btl	%r14d, %eax
	jae	.LBB19_34
.LBB19_35:                              # %if.end221
                                        #   in Loop: Header=BB19_21 Depth=3
	cmpl	%r8d, %r14d
	jg	.LBB19_119
# BB#36:                                # %if.end226
                                        #   in Loop: Header=BB19_21 Depth=3
	leal	-1(%r14), %ecx
	cmpl	%r13d, %r14d
	jle	.LBB19_21
# BB#37:                                # %if.then229
                                        #   in Loop: Header=BB19_20 Depth=2
	leal	-1(%r13), %esi
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movl	$1, %r12d
	movl	$1, %eax
	subl	%r13d, %eax
	movq	%rcx, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rcx         # 8-byte Reload
	addl	%eax, %ecx
	leal	1(%rdx,%rcx), %ecx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movl	%esi, 2624(%rsp)
	movl	%edx, 2224(%rsp)
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB19_38
.LBB19_110:                             # %vector.body.preheader
                                        #   in Loop: Header=BB19_38 Depth=3
	addq	%rdx, %rbp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	addl	%edx, 40(%rsp)          # 4-byte Folded Spill
	subl	%edx, %edi
	movq	144(%rsp), %rbp         # 8-byte Reload
	movl	112(%rsp), %ebx         # 4-byte Reload
	cmpl	%ebp, %ebx
	cmovgel	%ebx, %ebp
	cmpl	$-3, %ebp
	movl	$-2, %ecx
	cmovgl	%ebp, %ecx
	subl	%ebp, %ecx
	incq	%rcx
	movabsq	$8589934588, %rsi       # imm = 0x1FFFFFFFC
	andq	%rsi, %rcx
	leal	2(%rax,%rbp), %ebp
	movq	72(%rsp), %rsi          # 8-byte Reload
	movslq	%esi, %rsi
	leaq	(%r15,%rsi,4), %rsi
	movq	152(%rsp), %r10         # 8-byte Reload
	.align	16, 0x90
.LBB19_111:                             # %vector.body
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rsi), %xmm0
	movslq	%ebp, %rbp
	movups	(%r15,%rbp,4), %xmm1
	movups	%xmm1, (%rsi)
	movups	%xmm0, (%r15,%rbp,4)
	addl	$4, %ebp
	addq	$16, %rsi
	addq	$-4, %rcx
	jne	.LBB19_111
# BB#112:                               # %middle.block
                                        #   in Loop: Header=BB19_38 Depth=3
	cmpq	%rdx, %r12
	movq	48(%rsp), %rbp          # 8-byte Reload
	movl	32(%rsp), %ebx          # 4-byte Reload
	je	.LBB19_115
	jmp	.LBB19_113
	.align	16, 0x90
.LBB19_38:                              # %while.body.lr.ph.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB19_39 Depth 4
                                        #           Child Loop BB19_54 Depth 5
                                        #             Child Loop BB19_57 Depth 6
                                        #           Child Loop BB19_46 Depth 5
                                        #             Child Loop BB19_48 Depth 6
                                        #         Child Loop BB19_66 Depth 4
                                        #           Child Loop BB19_68 Depth 5
                                        #             Child Loop BB19_69 Depth 6
                                        #           Child Loop BB19_77 Depth 5
                                        #         Child Loop BB19_99 Depth 4
                                        #         Child Loop BB19_102 Depth 4
                                        #         Child Loop BB19_111 Depth 4
                                        #         Child Loop BB19_114 Depth 4
	movslq	%r12d, %r12
	.align	16, 0x90
.LBB19_39:                              # %while.body.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB19_54 Depth 5
                                        #             Child Loop BB19_57 Depth 6
                                        #           Child Loop BB19_46 Depth 5
                                        #             Child Loop BB19_48 Depth 6
	movq	%r12, %r11
	cmpq	$100, %r11
	jl	.LBB19_41
# BB#40:                                # %if.then.i
                                        #   in Loop: Header=BB19_39 Depth=4
	movl	$1004, %edi             # imm = 0x3EC
	movq	%r11, %rbp
	movq	%r9, %rbx
	callq	BZ2_bz__AssertH__fail
	movq	%rbx, %r9
	movq	%rbp, %r11
.LBB19_41:                              # %if.end.i
                                        #   in Loop: Header=BB19_39 Depth=4
	leaq	-1(%r11), %r12
	movslq	%r12d, %r8
	movl	2624(%rsp,%r8,4), %r10d
	movslq	%r10d, %rbx
	movl	2224(%rsp,%r8,4), %eax
	movslq	%eax, %rdx
	movl	%edx, %ecx
	subl	%ebx, %ecx
	cmpl	$9, %ecx
	jg	.LBB19_60
# BB#42:                                # %if.then9.i
                                        #   in Loop: Header=BB19_39 Depth=4
	cmpl	%r10d, %eax
	je	.LBB19_43
# BB#44:                                # %if.end.i.i
                                        #   in Loop: Header=BB19_39 Depth=4
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%rax, %r12
	movq	%r9, %r8
	movq	%r10, 152(%rsp)         # 8-byte Spill
	movq	%r11, 136(%rsp)         # 8-byte Spill
	cmpl	$3, %ecx
	jle	.LBB19_45
# BB#52:                                # %if.then3.i.i
                                        #   in Loop: Header=BB19_39 Depth=4
	leal	-4(%r12), %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB19_45
# BB#53:                                # %for.body.preheader.i.i
                                        #   in Loop: Header=BB19_39 Depth=4
	movslq	%eax, %rcx
	movl	%r12d, %esi
	.align	16, 0x90
.LBB19_54:                              # %for.body.i.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_39 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB19_57 Depth 6
	movslq	(%r15,%rcx,4), %rdi
	leaq	4(%rcx), %rax
	cmpq	%rdx, %rax
	jle	.LBB19_56
# BB#55:                                #   in Loop: Header=BB19_54 Depth=5
	movl	%ecx, %ebp
	jmp	.LBB19_59
	.align	16, 0x90
.LBB19_56:                              #   in Loop: Header=BB19_54 Depth=5
	movslq	%esi, %rax
	leaq	(%r15,%rax,4), %rax
	movl	(%r8,%rdi,4), %r9d
	movl	%ecx, %ebp
	.align	16, 0x90
.LBB19_57:                              # %land.rhs.i.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_39 Depth=4
                                        #           Parent Loop BB19_54 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	(%rax), %r10d
	cmpl	(%r8,%r10,4), %r9d
	jbe	.LBB19_59
# BB#58:                                # %for.body15.i.i
                                        #   in Loop: Header=BB19_57 Depth=6
	movslq	%ebp, %r11
	movl	%r10d, (%r15,%r11,4)
	leal	4(%r11), %ebp
	addq	$16, %rax
	addl	$8, %r11d
	cmpl	%r12d, %r11d
	jle	.LBB19_57
.LBB19_59:                              # %for.end.i.i
                                        #   in Loop: Header=BB19_54 Depth=5
	movslq	%ebp, %rax
	movl	%edi, (%r15,%rax,4)
	decl	%esi
	cmpq	%rbx, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB19_54
.LBB19_45:                              # %for.cond29.preheader.i.i
                                        #   in Loop: Header=BB19_39 Depth=4
	movq	152(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r12d
	movq	%rdx, %rcx
	movq	136(%rsp), %r11         # 8-byte Reload
	movq	%r8, %r9
	movq	%r12, %r8
	movq	144(%rsp), %r12         # 8-byte Reload
	jle	.LBB19_43
	.align	16, 0x90
.LBB19_46:                              # %for.body31.i.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_39 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB19_48 Depth 6
	movq	%rcx, %rdi
	leaq	-1(%rdi), %rcx
	movslq	-4(%r15,%rdi,4), %rsi
	cmpl	%r8d, %edi
	jg	.LBB19_51
# BB#47:                                #   in Loop: Header=BB19_46 Depth=5
	movl	(%r9,%rsi,4), %eax
	.align	16, 0x90
.LBB19_48:                              # %land.rhs39.i.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_39 Depth=4
                                        #           Parent Loop BB19_46 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	(%r15,%rdi,4), %ebp
	cmpl	(%r9,%rbp,4), %eax
	jbe	.LBB19_51
# BB#49:                                # %for.body46.i.i
                                        #   in Loop: Header=BB19_48 Depth=6
	movl	%ebp, -4(%r15,%rdi,4)
	leaq	1(%rdi), %rbp
	cmpq	%rdx, %rdi
	movq	%rbp, %rdi
	jl	.LBB19_48
# BB#50:                                # %for.end53.i.i.loopexitsplit
                                        #   in Loop: Header=BB19_46 Depth=5
	movl	%ebp, %edi
.LBB19_51:                              # %for.end53.i.i
                                        #   in Loop: Header=BB19_46 Depth=5
	movslq	%edi, %rax
	movl	%esi, -4(%r15,%rax,4)
	cmpq	%rbx, %rcx
	jg	.LBB19_46
.LBB19_43:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB19_39 Depth=4
	cmpq	$1, %r11
	jg	.LBB19_39
	jmp	.LBB19_86
	.align	16, 0x90
.LBB19_60:                              # %if.end10.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	104(%rsp), %rdi         # 8-byte Reload
	imull	$7621, %edi, %edi       # imm = 0x1DC5
	incl	%edi
	andl	$32767, %edi            # imm = 0x7FFF
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %rcx
	movl	$2863311531, %esi       # imm = 0xAAAAAAAB
	imulq	%rsi, %rcx
	shrq	$33, %rcx
	leal	(%rcx,%rcx,2), %esi
	movl	%edi, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	.LBB19_63
# BB#61:                                # %if.end10.i
                                        #   in Loop: Header=BB19_38 Depth=3
	testl	%ecx, %ecx
	jne	.LBB19_64
# BB#62:                                # %if.then13.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movl	(%r15,%rbx,4), %ecx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	jmp	.LBB19_65
.LBB19_63:                              # %if.then19.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	leal	(%rax,%r10), %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movl	(%r15,%rcx,4), %ecx
	jmp	.LBB19_65
.LBB19_64:                              # %if.else25.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movl	(%r15,%rdx,4), %ecx
.LBB19_65:                              # %if.end31.i
                                        #   in Loop: Header=BB19_38 Depth=3
	leaq	(%r9,%rcx,4), %rcx
	movl	(%rcx), %edx
	movl	%eax, %r12d
	movl	%r10d, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movl	%eax, %edi
	movl	%r10d, %ebx
	jmp	.LBB19_66
	.align	16, 0x90
.LBB19_134:                             # %if.end92.i
                                        #   in Loop: Header=BB19_66 Depth=4
	movl	(%r15,%rcx,4), %ebp
	movl	%edi, (%r15,%rcx,4)
	movl	%ebp, (%r15,%rsi,4)
	incl	%ebx
	decl	%esi
	movl	%esi, %edi
.LBB19_66:                              # %while.body35.outer.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB19_68 Depth 5
                                        #             Child Loop BB19_69 Depth 6
                                        #           Child Loop BB19_77 Depth 5
	cmpl	%edi, %ebx
	jg	.LBB19_72
# BB#67:                                # %if.end38.lr.ph.preheader.i
                                        #   in Loop: Header=BB19_66 Depth=4
	movslq	%edi, %rcx
	movq	136(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %rsi
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rbx, %rbp
.LBB19_68:                              # %if.end38.lr.ph.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_66 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB19_69 Depth 6
	movl	%edi, 112(%rsp)         # 4-byte Spill
	movslq	%ebp, %rsi
	.align	16, 0x90
.LBB19_69:                              # %if.end38.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_66 Depth=4
                                        #           Parent Loop BB19_68 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	(%r15,%rsi,4), %edi
	cmpl	%edx, (%r9,%rdi,4)
	je	.LBB19_70
# BB#74:                                # %if.end56.i
                                        #   in Loop: Header=BB19_69 Depth=6
	jg	.LBB19_76
# BB#75:                                # %if.end59.i
                                        #   in Loop: Header=BB19_69 Depth=6
	cmpq	%rcx, %rsi
	leaq	1(%rsi), %rsi
	jl	.LBB19_69
	jmp	.LBB19_76
	.align	16, 0x90
.LBB19_70:                              # %if.then45.i
                                        #   in Loop: Header=BB19_68 Depth=5
	movq	136(%rsp), %rbx         # 8-byte Reload
	movl	(%r15,%rbx,4), %ebp
	movl	%ebp, (%r15,%rsi,4)
	movl	%edi, (%r15,%rbx,4)
	incq	%rbx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	leal	1(%rsi), %ebp
	movl	112(%rsp), %edi         # 4-byte Reload
	cmpl	%edi, %esi
	jl	.LBB19_68
# BB#71:                                # %while.body62.preheader.i.loopexit
                                        #   in Loop: Header=BB19_66 Depth=4
	incl	%esi
	movl	%esi, %ebx
	jmp	.LBB19_72
	.align	16, 0x90
.LBB19_76:                              # %if.end56.i.while.body62.preheader.loopexit.i_crit_edge
                                        #   in Loop: Header=BB19_66 Depth=4
	movl	112(%rsp), %edi         # 4-byte Reload
	movq	%rsi, %rbx
.LBB19_72:                              # %while.body62.preheader.i
                                        #   in Loop: Header=BB19_66 Depth=4
	cmpl	%edi, %ebx
	jg	.LBB19_84
# BB#73:                                # %if.end65.lr.ph.preheader.i
                                        #   in Loop: Header=BB19_66 Depth=4
	movslq	%ebx, %rcx
	movslq	%r12d, %r12
	movslq	%edi, %rsi
	jmp	.LBB19_77
.LBB19_79:                              # %if.end65.lr.ph.i
                                        #   in Loop: Header=BB19_77 Depth=5
	movslq	%edi, %rsi
	.align	16, 0x90
.LBB19_77:                              # %if.end65.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        #         Parent Loop BB19_66 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	(%r15,%rsi,4), %edi
	cmpl	%edx, (%r9,%rdi,4)
	je	.LBB19_78
# BB#80:                                # %if.end84.i
                                        #   in Loop: Header=BB19_77 Depth=5
	jl	.LBB19_134
# BB#81:                                # %if.end87.i
                                        #   in Loop: Header=BB19_77 Depth=5
	cmpq	%rsi, %rcx
	leaq	-1(%rsi), %rsi
	jl	.LBB19_77
	jmp	.LBB19_83
.LBB19_78:                              # %if.then72.i
                                        #   in Loop: Header=BB19_77 Depth=5
	movl	(%r15,%r12,4), %ebp
	movl	%ebp, (%r15,%rsi,4)
	movl	%edi, (%r15,%r12,4)
	decq	%r12
	leal	-1(%rsi), %edi
	cmpl	%esi, %ebx
	jl	.LBB19_79
# BB#82:                                # %while.end104.i.loopexit
                                        #   in Loop: Header=BB19_38 Depth=3
	decl	%esi
	.align	16, 0x90
.LBB19_83:                              # %while.end104.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movl	%esi, %edi
.LBB19_84:                              # %while.end104.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %r12d
	jl	.LBB19_85
# BB#91:                                # %if.end107.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movl	%edi, 112(%rsp)         # 4-byte Spill
	movq	%r12, 144(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	subl	%r10d, %ecx
	movl	%ebx, %esi
	subl	%edx, %esi
	cmpl	%esi, %ecx
	cmovlel	%ecx, %esi
	testl	%esi, %esi
	movq	%rdx, %rcx
	jle	.LBB19_103
# BB#92:                                # %while.body116.preheader.i
                                        #   in Loop: Header=BB19_38 Depth=3
	leal	-1(%rcx), %edi
	subl	%ebx, %edi
	leal	-1(%r10), %ebp
	subl	%ecx, %ebp
	cmpl	%ebp, %edi
	movl	%ebp, %ecx
	cmovgel	%edi, %ecx
	leal	1(%rbx,%rcx), %edx
	movslq	%edx, %r12
	cmpl	$-3, %ecx
	movl	$-2, %edx
	cmovgl	%ecx, %edx
	subl	%ecx, %edx
	incq	%rdx
	cmpq	$4, %rdx
	jb	.LBB19_101
# BB#93:                                # %min.iters.checked683
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r12, 48(%rsp)          # 8-byte Spill
	movl	%edi, %r12d
	movq	%rdx, %rdi
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rcx, %rdi
	je	.LBB19_94
# BB#95:                                # %vector.memcheck703
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax,4), %rdx
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	cmpl	%ebp, %r12d
	movl	%ebp, %edi
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	cmovgel	%r12d, %edi
	cmpl	$-3, %edi
	movl	$-2, %ecx
	cmovgl	%edi, %ecx
	subl	%edi, %ecx
	leal	1(%rbx,%rdi), %edi
	movslq	%edi, %rdi
	leaq	(%rdi,%rcx), %rbp
	leaq	(%r15,%rbp,4), %rbp
	cmpq	%rbp, %rdx
	ja	.LBB19_98
# BB#96:                                # %vector.memcheck703
                                        #   in Loop: Header=BB19_38 Depth=3
	addq	%rax, %rcx
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%rdi,4), %rdi
	cmpq	%rcx, %rdi
	ja	.LBB19_98
# BB#97:                                #   in Loop: Header=BB19_38 Depth=3
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
	jmp	.LBB19_101
.LBB19_94:                              #   in Loop: Header=BB19_38 Depth=3
	movq	48(%rsp), %r12          # 8-byte Reload
	jmp	.LBB19_101
.LBB19_98:                              # %vector.body676.preheader
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	24(%rsp), %rbp          # 8-byte Reload
	addq	%rbp, %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	48(%rsp), %r12          # 8-byte Reload
	addq	%rbp, %r12
	subl	%ebp, %esi
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	cmovgel	%ecx, %eax
	cmpl	$-3, %eax
	movl	$-2, %ecx
	cmovgl	%eax, %ecx
	subl	%eax, %ecx
	incq	%rcx
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rcx
	leal	1(%rbx,%rax), %edi
	movslq	%edi, %rdi
	leaq	(%r15,%rdi,4), %rdi
	.align	16, 0x90
.LBB19_99:                              # %vector.body676
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rdx), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm1, (%rdx)
	movups	%xmm0, (%rdi)
	addq	$16, %rdi
	addq	$16, %rdx
	addq	$-4, %rcx
	jne	.LBB19_99
# BB#100:                               # %middle.block677
                                        #   in Loop: Header=BB19_38 Depth=3
	cmpq	%rbp, 32(%rsp)          # 8-byte Folded Reload
	movq	40(%rsp), %rax          # 8-byte Reload
	je	.LBB19_103
.LBB19_101:                             # %while.body116.i.preheader
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%r12,4), %rdx
	incl	%esi
	.align	16, 0x90
.LBB19_102:                             # %while.body116.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rcx), %edi
	movl	(%rdx), %ebp
	movl	%ebp, (%rcx)
	movl	%edi, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB19_102
.LBB19_103:                             # %while.end129.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	%eax, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	subl	%esi, %edi
	movl	%esi, %ebx
	movl	112(%rsp), %ebp         # 4-byte Reload
	subl	%ebp, %ebx
	cmpl	%ebx, %edi
	cmovgl	%ebx, %edi
	testl	%edi, %edi
	jle	.LBB19_115
# BB#104:                               # %while.body146.preheader.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movl	%eax, %ecx
	subl	%edi, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	decl	%ebp
	subl	%esi, %ebp
	decl	%esi
	subl	%eax, %esi
	cmpl	%esi, %ebp
	movl	%esi, %ecx
	cmovgel	%ebp, %ecx
	cmpl	$-3, %ecx
	movl	$-2, %r12d
	cmovgl	%ecx, %r12d
	subl	%ecx, %r12d
	incq	%r12
	cmpq	$4, %r12
	jb	.LBB19_105
# BB#106:                               # %min.iters.checked
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r12, %rdx
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rcx, %rdx
	je	.LBB19_105
# BB#107:                               # %vector.memcheck
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	%r10, 152(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	leaq	(%r15,%rbx,4), %r10
	cmpl	%esi, %ebp
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	cmovgel	%ebp, %esi
	movl	%ebp, 112(%rsp)         # 4-byte Spill
	cmpl	$-3, %esi
	movl	$-2, %ecx
	cmovgl	%esi, %ecx
	subl	%esi, %ecx
	leal	2(%rax,%rsi), %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rcx), %rbp
	leaq	(%r15,%rbp,4), %rbp
	cmpq	%rbp, %r10
	movq	%rbx, %rbp
	ja	.LBB19_110
# BB#108:                               # %vector.memcheck
                                        #   in Loop: Header=BB19_38 Depth=3
	addq	%rbp, %rcx
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%rsi,4), %rsi
	cmpq	%rcx, %rsi
	ja	.LBB19_110
# BB#109:                               #   in Loop: Header=BB19_38 Depth=3
	movq	152(%rsp), %r10         # 8-byte Reload
	movl	32(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB19_113
.LBB19_105:                             #   in Loop: Header=BB19_38 Depth=3
	movq	48(%rsp), %rbp          # 8-byte Reload
	movl	32(%rsp), %ebx          # 4-byte Reload
.LBB19_113:                             # %while.body146.i.preheader
                                        #   in Loop: Header=BB19_38 Depth=3
	leaq	(%r15,%rbp,4), %rcx
	movl	40(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movslq	%edx, %rdx
	leaq	(%r15,%rdx,4), %rdx
	incl	%edi
	.align	16, 0x90
.LBB19_114:                             # %while.body146.i
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        #       Parent Loop BB19_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%rcx), %esi
	movl	(%rdx), %ebp
	movl	%ebp, (%rcx)
	movl	%esi, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%edi
	cmpl	$1, %edi
	jg	.LBB19_114
.LBB19_115:                             # %while.end159.i
                                        #   in Loop: Header=BB19_38 Depth=3
	leal	-1(%r10), %ecx
	movq	136(%rsp), %rdx         # 8-byte Reload
	subl	%edx, %ecx
	movq	72(%rsp), %rdx          # 8-byte Reload
	addl	%edx, %ecx
	movl	%eax, %edx
	subl	%ebx, %edx
	incl	%edx
	movl	%ecx, %esi
	subl	%r10d, %esi
	movl	%eax, %edi
	subl	%edx, %edi
	cmpl	%edi, %esi
	jle	.LBB19_118
# BB#116:                               # %if.then169.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movl	%ecx, 2224(%rsp,%r8,4)
	movslq	%r11d, %rcx
	movl	%edx, 2624(%rsp,%rcx,4)
	movl	%eax, 2224(%rsp,%rcx,4)
	jmp	.LBB19_117
.LBB19_118:                             # %if.else180.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movl	%edx, 2624(%rsp,%r8,4)
	movslq	%r11d, %rdx
	movl	%r10d, 2624(%rsp,%rdx,4)
	movl	%ecx, 2224(%rsp,%rdx,4)
.LBB19_117:                             # %while.cond.outer.backedge.i
                                        #   in Loop: Header=BB19_38 Depth=3
	leal	1(%r11), %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
.LBB19_85:                              # %while.cond.outer.backedge.i
                                        #   in Loop: Header=BB19_38 Depth=3
	movq	144(%rsp), %r12         # 8-byte Reload
	testl	%r12d, %r12d
	jg	.LBB19_38
	.align	16, 0x90
.LBB19_86:                              # %fallbackQSort3.exit
                                        #   in Loop: Header=BB19_20 Depth=2
	cmpl	%r14d, %r13d
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	jg	.LBB19_20
# BB#87:                                # %for.body236.preheader
                                        #   in Loop: Header=BB19_20 Depth=2
	movslq	84(%rsp), %rcx          # 4-byte Folded Reload
	movl	$-1, %eax
	.align	16, 0x90
.LBB19_88:                              # %for.body236
                                        #   Parent Loop BB19_15 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r15,%rcx,4), %edx
	movl	(%r9,%rdx,4), %edx
	cmpl	%edx, %eax
	je	.LBB19_90
# BB#89:                                # %if.then243
                                        #   in Loop: Header=BB19_88 Depth=3
	movl	$1, %eax
	shll	%cl, %eax
	movl	%ecx, %esi
	sarl	$5, %esi
	movslq	%esi, %rsi
	orl	%eax, (%rbx,%rsi,4)
	movl	%edx, %eax
.LBB19_90:                              # %for.inc251
                                        #   in Loop: Header=BB19_88 Depth=3
	incq	%rcx
	cmpl	%r14d, %ecx
	jl	.LBB19_88
	jmp	.LBB19_20
	.align	16, 0x90
.LBB19_119:                             # %while.end255
                                        #   in Loop: Header=BB19_15 Depth=1
	movl	100(%rsp), %r13d        # 4-byte Reload
	cmpl	$4, %r13d
	jge	.LBB19_120
.LBB19_121:                             # %if.end260
                                        #   in Loop: Header=BB19_15 Depth=1
	movl	116(%rsp), %ebp         # 4-byte Reload
	addl	%ebp, %ebp
	cmpl	%r8d, %ebp
	jg	.LBB19_123
# BB#122:                               # %if.end260
                                        #   in Loop: Header=BB19_15 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB19_15
.LBB19_123:                             # %while.end268
	cmpl	$4, %r13d
	jge	.LBB19_124
.LBB19_125:                             # %for.cond274.preheader
	xorl	%eax, %eax
	testl	%r8d, %r8d
	jle	.LBB19_132
# BB#126:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB19_127:                             # %while.cond278.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_128 Depth 2
	movslq	%ecx, %rcx
	decq	%rcx
	.align	16, 0x90
.LBB19_128:                             # %while.cond278
                                        #   Parent Loop BB19_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	movl	164(%rsp,%rdx,4), %esi
	leaq	1(%rdx), %rcx
	testl	%esi, %esi
	je	.LBB19_128
# BB#129:                               # %while.end285
                                        #   in Loop: Header=BB19_127 Depth=1
	decl	%esi
	movl	%esi, 164(%rsp,%rdx,4)
	movl	(%r15,%rax,4), %edx
	leal	256(%rcx), %esi
	movb	%sil, (%r9,%rdx)
	incq	%rax
	cmpl	%r8d, %eax
	jne	.LBB19_127
# BB#130:                               # %for.end295
	cmpl	$256, %ecx              # imm = 0x100
	jl	.LBB19_132
# BB#131:                               # %if.then298
	movl	$1005, %edi             # imm = 0x3ED
	callq	BZ2_bz__AssertH__fail
.LBB19_132:                             # %if.end299
	addq	$3032, %rsp             # imm = 0xBD8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_133:                             # %if.then
	movq	stderr(%rip), %rcx
	movl	$.L.str.2, %edi
	movl	$27, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB19_1
.LBB19_124:                             # %if.then271
	movq	stderr(%rip), %rcx
	movl	$.L.str.5.2, %edi
	movl	$33, %esi
	movl	$1, %edx
	movq	%r8, %rbp
	movq	%r9, %rbx
	callq	fwrite
	movq	%rbx, %r9
	movq	%rbp, %r8
	jmp	.LBB19_125
.Lfunc_end19:
	.size	fallbackSort, .Lfunc_end19-fallbackSort
	.cfi_endproc

	.align	16, 0x90
	.type	mainGtU,@function
mainGtU:                                # @mainGtU
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp118:
	.cfi_def_cfa_offset 24
.Ltmp119:
	.cfi_offset %rbx, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movl	%edi, %eax
	movzbl	(%rdx,%rax), %eax
	movl	%esi, %ebp
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#3:                                 # %if.end
	leal	1(%rdi), %eax
	leal	1(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#4:                                 # %if.end25
	leal	2(%rdi), %eax
	leal	2(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#5:                                 # %if.end42
	leal	3(%rdi), %eax
	leal	3(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#6:                                 # %if.end59
	leal	4(%rdi), %eax
	leal	4(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#7:                                 # %if.end76
	leal	5(%rdi), %eax
	leal	5(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#8:                                 # %if.end93
	leal	6(%rdi), %eax
	leal	6(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#9:                                 # %if.end110
	leal	7(%rdi), %eax
	leal	7(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#10:                                # %if.end127
	leal	8(%rdi), %eax
	leal	8(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#11:                                # %if.end144
	leal	9(%rdi), %eax
	leal	9(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#12:                                # %if.end161
	leal	10(%rdi), %eax
	leal	10(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#13:                                # %if.end178
	leal	11(%rdi), %eax
	leal	11(%rsi), %ebp
	movzbl	(%rdx,%rax), %eax
	movzbl	(%rdx,%rbp), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#14:                                # %if.end195
	addl	$12, %edi
	addl	$12, %esi
	leal	8(%r8), %r10d
.LBB20_15:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %edi
	movzbl	(%rdx,%rdi), %eax
	movl	%esi, %esi
	movzbl	(%rdx,%rsi), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_1
# BB#16:                                # %if.end212
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%rdi,2), %eax
	movzwl	(%rcx,%rsi,2), %ebx
	cmpl	%ebx, %eax
	jne	.LBB20_17
# BB#18:                                # %if.end227
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	1(%rdi), %r11d
	leal	1(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#20:                                # %if.end244
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#22:                                # %if.end259
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	2(%rdi), %r11d
	leal	2(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#23:                                # %if.end276
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#24:                                # %if.end291
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	3(%rdi), %r11d
	leal	3(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#25:                                # %if.end308
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#26:                                # %if.end323
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	4(%rdi), %r11d
	leal	4(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#27:                                # %if.end340
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#28:                                # %if.end355
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	5(%rdi), %r11d
	leal	5(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#29:                                # %if.end372
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#30:                                # %if.end387
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	6(%rdi), %r11d
	leal	6(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#31:                                # %if.end404
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#32:                                # %if.end419
                                        #   in Loop: Header=BB20_15 Depth=1
	leal	7(%rdi), %r11d
	leal	7(%rsi), %eax
	movzbl	(%rdx,%r11), %ebx
	movzbl	(%rdx,%rax), %ebp
	cmpl	%ebp, %ebx
	jne	.LBB20_19
# BB#33:                                # %if.end436
                                        #   in Loop: Header=BB20_15 Depth=1
	movzwl	(%rcx,%r11,2), %ebp
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, %ebp
	jne	.LBB20_21
# BB#34:                                # %if.end451
                                        #   in Loop: Header=BB20_15 Depth=1
	addl	$8, %edi
	addl	$8, %esi
	xorl	%eax, %eax
	cmpl	%r8d, %edi
	movl	%r8d, %ebp
	cmovbl	%eax, %ebp
	subl	%ebp, %edi
	cmpl	%r8d, %esi
	movl	%r8d, %ebp
	cmovbl	%eax, %ebp
	subl	%ebp, %esi
	decl	(%r9)
	addl	$-8, %r10d
	jns	.LBB20_15
	jmp	.LBB20_35
.LBB20_1:                               # %if.then
	movzbl	%al, %eax
	movzbl	%bl, %ecx
.LBB20_2:                               # %cleanup
	cmpl	%eax, %ecx
	setb	%al
.LBB20_35:                              # %cleanup
	movzbl	%al, %eax
	popq	%rbx
	popq	%rbp
	retq
.LBB20_19:                              # %if.then238
	movzbl	%bl, %eax
	movzbl	%bpl, %ecx
	jmp	.LBB20_2
.LBB20_21:                              # %if.then253
	movzwl	%bp, %ecx
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setb	%al
	jmp	.LBB20_35
.LBB20_17:                              # %if.then221
	movzwl	%ax, %eax
	movzwl	%bx, %ecx
	jmp	.LBB20_2
.Lfunc_end20:
	.size	mainGtU, .Lfunc_end20-mainGtU
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
.LCPI21_1:
	.quad	4643211215818981376     # double 256
.LCPI21_2:
	.quad	4620693217682128896     # double 8
.LCPI21_3:
	.quad	4636737291354636288     # double 100
	.text
	.globl	compressStream
	.align	16, 0x90
	.type	compressStream,@function
compressStream:                         # @compressStream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp123:
	.cfi_def_cfa_offset 32
	subq	$5184, %rsp             # imm = 0x1440
.Ltmp124:
	.cfi_def_cfa_offset 5216
.Ltmp125:
	.cfi_offset %rbx, -32
.Ltmp126:
	.cfi_offset %r14, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movl	%edi, %ebp
	movl	blockSize100k(%rip), %edx
	movl	verbosity(%rip), %ecx
	movl	workFactor(%rip), %r8d
	leaq	108(%rsp), %rdi
	callq	BZ2_bzWriteOpen
	movq	%rax, %rbx
	cmpl	$0, 108(%rsp)
	jne	.LBB21_7
# BB#1:                                 # %if.end
	cmpl	$2, verbosity(%rip)
	jl	.LBB21_3
# BB#2:                                 # %if.then2
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	fputc
	.align	16, 0x90
.LBB21_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	je	.LBB21_11
# BB#4:                                 # %if.end7
                                        #   in Loop: Header=BB21_3 Depth=1
	movzbl	%al, %edi
	movl	%ebp, %esi
	callq	spec_ungetc
	leaq	128(%rsp), %rdi
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	movl	%ebp, %ecx
	callq	spec_fread
	testl	%eax, %eax
	jle	.LBB21_6
# BB#5:                                 # %if.then10
                                        #   in Loop: Header=BB21_3 Depth=1
	leaq	108(%rsp), %rdi
	leaq	128(%rsp), %rdx
	movq	%rbx, %rsi
	movl	%eax, %ecx
	callq	BZ2_bzWrite
.LBB21_6:                               # %if.end12
                                        #   in Loop: Header=BB21_3 Depth=1
	cmpl	$0, 108(%rsp)
	je	.LBB21_3
.LBB21_7:                               # %errhandler
	leaq	112(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	104(%rsp), %rdi
	leaq	124(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	116(%rsp), %r9
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	BZ2_bzWriteClose64
	movl	108(%rsp), %eax
	cmpl	$-3, %eax
	je	.LBB21_42
# BB#8:                                 # %errhandler
	cmpl	$-6, %eax
	je	.LBB21_43
# BB#9:                                 # %errhandler
	cmpl	$-9, %eax
	jne	.LBB21_44
# BB#10:                                # %sw.bb
	callq	configError
.LBB21_11:                              # %while.end
	leaq	112(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	108(%rsp), %rdi
	leaq	124(%rsp), %rcx
	leaq	120(%rsp), %r8
	leaq	116(%rsp), %r9
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	BZ2_bzWriteClose64
	cmpl	$0, 108(%rsp)
	jne	.LBB21_7
# BB#12:                                # %if.end21
	cmpl	$1, %r14d
	je	.LBB21_14
# BB#13:                                # %if.then23
	movl	$0, outputHandleJustInCase(%rip)
.LBB21_14:                              # %if.end27
	movl	$0, outputHandleJustInCase(%rip)
	cmpl	$0, verbosity(%rip)
	jle	.LBB21_41
# BB#15:                                # %if.then32
	movl	124(%rsp), %eax
	movl	120(%rsp), %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	je	.LBB21_16
# BB#17:                                # %if.else
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 31(%rsp)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 30(%rsp)
	movb	%ch, 29(%rsp)  # NOREX
	movb	%cl, 28(%rsp)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 27(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 26(%rsp)
	movb	%ah, 25(%rsp)  # NOREX
	movb	%al, 24(%rsp)
	movl	116(%rsp), %eax
	movl	112(%rsp), %ecx
	movl	%ecx, %edx
	shrl	$24, %edx
	movb	%dl, 23(%rsp)
	movl	%ecx, %edx
	shrl	$16, %edx
	movb	%dl, 22(%rsp)
	movb	%ch, 21(%rsp)  # NOREX
	movb	%cl, 20(%rsp)
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 19(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 18(%rsp)
	movb	%ah, 17(%rsp)  # NOREX
	movb	%al, 16(%rsp)
	movsd	.LCPI21_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm3, %xmm3
	xorl	%eax, %eax
	movsd	.LCPI21_1(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	xorpd	%xmm2, %xmm2
	movapd	%xmm0, %xmm4
	.align	16, 0x90
.LBB21_18:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	24(%rsp,%rcx), %edx
	xorps	%xmm5, %xmm5
	cvtsi2sdl	%edx, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm5, %xmm2
	mulsd	%xmm1, %xmm4
	incq	%rcx
	cmpq	$8, %rcx
	jne	.LBB21_18
	.align	16, 0x90
.LBB21_19:                              # %for.body.i111
                                        # =>This Inner Loop Header: Depth=1
	movzbl	16(%rsp,%rax), %ecx
	xorps	%xmm4, %xmm4
	cvtsi2sdl	%ecx, %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm4, %xmm3
	mulsd	%xmm1, %xmm0
	incq	%rax
	cmpq	$8, %rax
	jne	.LBB21_19
# BB#20:                                # %uInt64_to_double.exit112
	movq	24(%rsp), %rax
	movq	%rax, 5176(%rsp)
	xorl	%eax, %eax
	movl	$3435973837, %ecx       # imm = 0xCCCCCCCD
	movabsq	$4294967296, %r8        # imm = 0x100000000
	xorl	%esi, %esi
	jmp	.LBB21_22
	.align	16, 0x90
.LBB21_21:                              # %do.body.i.loopexit
                                        #   in Loop: Header=BB21_22 Depth=1
	addq	%r8, %rax
	movq	%rdi, %rsi
.LBB21_22:                              # %do.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_23 Depth 2
                                        #     Child Loop BB21_26 Depth 2
	movl	$8, %edi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB21_23:                              # %for.body.i.i
                                        #   Parent Loop BB21_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$8, %ebp
	movzbl	5175(%rsp,%rdi), %ebx
	orl	%ebp, %ebx
	movl	%ebx, %ebp
	imulq	%rcx, %rbx
	shrq	$35, %rbx
	movb	%bl, 5175(%rsp,%rdi)
	leal	(%rbx,%rbx), %ebx
	leal	(%rbx,%rbx,4), %ebx
	subl	%ebx, %ebp
	decq	%rdi
	jg	.LBB21_23
# BB#24:                                # %uInt64_qrm10.exit.i
                                        #   in Loop: Header=BB21_22 Depth=1
	orl	$48, %ebp
	movb	%bpl, 5136(%rsp,%rsi)
	leaq	1(%rsi), %rdi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB21_26:                              # %for.body.i26.i
                                        #   Parent Loop BB21_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 5176(%rsp,%rbp)
	leaq	1(%rbp), %rbp
	jne	.LBB21_21
# BB#25:                                # %for.cond.i.i
                                        #   in Loop: Header=BB21_26 Depth=2
	cmpq	$7, %rbp
	jle	.LBB21_26
# BB#27:                                # %do.end.i
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	movslq	%edi, %rdi
	movb	$0, 64(%rsp,%rdi)
	testl	%esi, %esi
	js	.LBB21_30
# BB#28:                                # %for.body.lr.ph.i
	incq	%rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB21_29:                              # %for.body.i119
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdx
	sarq	$32, %rdx
	movb	5136(%rsp,%rdx), %dl
	movb	%dl, 64(%rsp,%rdi)
	incq	%rdi
	addq	%rcx, %rax
	cmpl	%edi, %esi
	jne	.LBB21_29
.LBB21_30:                              # %uInt64_toAscii.exit
	movq	16(%rsp), %rax
	movq	%rax, 5176(%rsp)
	xorl	%edx, %edx
	movl	$3435973837, %edi       # imm = 0xCCCCCCCD
	xorl	%esi, %esi
	jmp	.LBB21_32
	.align	16, 0x90
.LBB21_31:                              # %do.body.i124.loopexit
                                        #   in Loop: Header=BB21_32 Depth=1
	addq	%r8, %rdx
	movq	%rbp, %rsi
.LBB21_32:                              # %do.body.i124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_33 Depth 2
                                        #     Child Loop BB21_36 Depth 2
	movl	$8, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB21_33:                              # %for.body.i.i136
                                        #   Parent Loop BB21_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shll	$8, %ebx
	movzbl	5175(%rsp,%rbp), %eax
	orl	%ebx, %eax
	movl	%eax, %ebx
	imulq	%rdi, %rax
	shrq	$35, %rax
	movb	%al, 5175(%rsp,%rbp)
	leal	(%rax,%rax), %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ebx
	decq	%rbp
	jg	.LBB21_33
# BB#34:                                # %uInt64_qrm10.exit.i141
                                        #   in Loop: Header=BB21_32 Depth=1
	orl	$48, %ebx
	movb	%bl, 5136(%rsp,%rsi)
	leaq	1(%rsi), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB21_36:                              # %for.body.i26.i148
                                        #   Parent Loop BB21_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, 5176(%rsp,%rbx)
	leaq	1(%rbx), %rbx
	jne	.LBB21_31
# BB#35:                                # %for.cond.i.i143
                                        #   in Loop: Header=BB21_36 Depth=2
	cmpq	$7, %rbx
	jle	.LBB21_36
# BB#37:                                # %do.end.i153
	movslq	%ebp, %rax
	movb	$0, 32(%rsp,%rax)
	testl	%esi, %esi
	js	.LBB21_40
# BB#38:                                # %for.body.lr.ph.i154
	incq	%rsi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB21_39:                              # %for.body.i164
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rdi
	sarq	$32, %rdi
	movb	5136(%rsp,%rdi), %bl
	movb	%bl, 32(%rsp,%rax)
	incq	%rax
	addq	%rcx, %rdx
	cmpl	%eax, %esi
	jne	.LBB21_39
.LBB21_40:                              # %uInt64_toAscii.exit165
	movq	stderr(%rip), %rdi
	movapd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	movsd	.LCPI21_2(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	divsd	%xmm2, %xmm3
	movsd	.LCPI21_0(%rip), %xmm2  # xmm2 = mem[0],zero
	subsd	%xmm3, %xmm2
	mulsd	.LCPI21_3(%rip), %xmm2
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movl	$.L.str.2.17, %esi
	movb	$3, %al
	callq	fprintf
.LBB21_41:                              # %cleanup
	addq	$5184, %rsp             # imm = 0x1440
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB21_16:                              # %if.then35
	movq	stderr(%rip), %rcx
	movl	$.L.str.1.16, %edi
	movl	$21, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB21_41
.LBB21_42:                              # %sw.bb49
	callq	outOfMemory
.LBB21_43:                              # %errhandler_io
	callq	ioError
.LBB21_44:                              # %sw.default
	movl	$.L.str.3.22, %edi
	callq	panic
.Lfunc_end21:
	.size	compressStream, .Lfunc_end21-compressStream
	.cfi_endproc

	.align	16, 0x90
	.type	configError,@function
configError:                            # @configError
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp128:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rcx
	movl	$.L.str.17.18, %edi
	movl	$235, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$0, exitValue(%rip)
	xorl	%edi, %edi
	callq	exit
.Lfunc_end22:
	.size	configError, .Lfunc_end22-configError
	.cfi_endproc

	.align	16, 0x90
	.type	outOfMemory,@function
outOfMemory:                            # @outOfMemory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp129:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.16.19, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpb	$0, noisy(%rip)
	je	.LBB23_2
# BB#1:                                 # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.20, %esi
	movl	$inName, %edx
	movl	$outName, %ecx
	xorl	%eax, %eax
	callq	fprintf
.LBB23_2:                               # %showFileNames.exit
	callq	cleanUpAndFail
.Lfunc_end23:
	.size	outOfMemory, .Lfunc_end23-outOfMemory
	.cfi_endproc

	.align	16, 0x90
	.type	cleanUpAndFail,@function
cleanUpAndFail:                         # @cleanUpAndFail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp130:
	.cfi_def_cfa_offset 16
	movl	$0, exitValue(%rip)
	xorl	%edi, %edi
	callq	exit
.Lfunc_end24:
	.size	cleanUpAndFail, .Lfunc_end24-cleanUpAndFail
	.cfi_endproc

	.align	16, 0x90
	.type	ioError,@function
ioError:                                # @ioError
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp131:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.15.21, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	progName(%rip), %rdi
	callq	perror
	cmpb	$0, noisy(%rip)
	je	.LBB25_2
# BB#1:                                 # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.20, %esi
	movl	$inName, %edx
	movl	$outName, %ecx
	xorl	%eax, %eax
	callq	fprintf
.LBB25_2:                               # %showFileNames.exit
	callq	cleanUpAndFail
.Lfunc_end25:
	.size	ioError, .Lfunc_end25-ioError
	.cfi_endproc

	.align	16, 0x90
	.type	panic,@function
panic:                                  # @panic
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp132:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rcx
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpb	$0, noisy(%rip)
	je	.LBB26_2
# BB#1:                                 # %if.then.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.20, %esi
	movl	$inName, %edx
	movl	$outName, %ecx
	xorl	%eax, %eax
	callq	fprintf
.LBB26_2:                               # %showFileNames.exit
	callq	cleanUpAndFail
.Lfunc_end26:
	.size	panic, .Lfunc_end26-panic
	.cfi_endproc

	.globl	uncompressStream
	.align	16, 0x90
	.type	uncompressStream,@function
uncompressStream:                       # @uncompressStream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp134:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp136:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp137:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 56
	subq	$10040, %rsp            # imm = 0x2738
.Ltmp139:
	.cfi_def_cfa_offset 10096
.Ltmp140:
	.cfi_offset %rbx, -56
.Ltmp141:
	.cfi_offset %r12, -48
.Ltmp142:
	.cfi_offset %r13, -40
.Ltmp143:
	.cfi_offset %r14, -32
.Ltmp144:
	.cfi_offset %r15, -24
.Ltmp145:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movl	%edi, %ebp
	movl	$0, 12(%rsp)
	movl	verbosity(%rip), %edx
	movzbl	smallMode(%rip), %ecx
	leaq	10036(%rsp), %rdi
	leaq	16(%rsp), %r8
	xorl	%r14d, %r14d
	xorl	%r9d, %r9d
	movl	%ebp, %esi
	callq	BZ2_bzReadOpen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB27_25
# BB#1:                                 # %entry
	movl	10036(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB27_25
# BB#2:                                 # %if.end.preheader
	xorl	%r14d, %r14d
	leaq	10036(%rsp), %r15
	leaq	5024(%rsp), %rbx
.LBB27_3:                               # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_4 Depth 2
                                        #     Child Loop BB27_18 Depth 2
                                        #     Child Loop BB27_20 Depth 2
	incl	%r14d
	xorl	%ecx, %ecx
	jmp	.LBB27_4
	.align	16, 0x90
.LBB27_11:                              # %if.then21
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	$1, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	movl	%r12d, %ecx
	callq	spec_fwrite
	movl	10036(%rsp), %ecx
.LBB27_4:                               # %while.cond4
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ecx, %ecx
	jne	.LBB27_5
# BB#8:                                 # %while.body7
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	$5000, %ecx             # imm = 0x1388
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	BZ2_bzRead
	movl	10036(%rsp), %ecx
	cmpl	$-5, %ecx
	je	.LBB27_33
# BB#9:                                 # %if.end13
                                        #   in Loop: Header=BB27_4 Depth=2
	testl	%eax, %eax
	jle	.LBB27_4
# BB#10:                                # %if.end13
                                        #   in Loop: Header=BB27_4 Depth=2
	movl	%ecx, %edx
	orl	$4, %edx
	cmpl	$4, %edx
	je	.LBB27_11
	jmp	.LBB27_4
	.align	16, 0x90
.LBB27_5:                               # %while.cond4
                                        #   in Loop: Header=BB27_3 Depth=1
	cmpl	$4, %ecx
	jne	.LBB27_25
# BB#6:                                 # %if.end28
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	leaq	(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	BZ2_bzReadGetUnused
	cmpl	$0, 10036(%rsp)
	jne	.LBB27_7
# BB#12:                                # %if.end32
                                        #   in Loop: Header=BB27_3 Depth=1
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB27_21
# BB#13:                                # %for.body.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	(%rsp), %rcx
	cmpl	$16, %eax
	movl	$0, %esi
	jb	.LBB27_20
# BB#14:                                # %min.iters.checked
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	%rax, %r8
	andq	$-16, %r8
	movl	$0, %esi
	je	.LBB27_20
# BB#15:                                # %vector.memcheck
                                        #   in Loop: Header=BB27_3 Depth=1
	leaq	-1(%rcx,%rax), %rdx
	leaq	16(%rsp), %rsi
	cmpq	%rdx, %rsi
	ja	.LBB27_17
# BB#16:                                # %vector.memcheck
                                        #   in Loop: Header=BB27_3 Depth=1
	leaq	15(%rsp), %rdx
	leaq	(%rdx,%rax), %rdx
	cmpq	%rdx, %rcx
	movl	$0, %esi
	jbe	.LBB27_20
.LBB27_17:                              # %vector.body.preheader
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	%rax, %rsi
	andq	$-16, %rsi
	movq	%rcx, %rdi
	leaq	16(%rsp), %rdx
	.align	16, 0x90
.LBB27_18:                              # %vector.body
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rdi), %xmm0
	movaps	%xmm0, (%rdx)
	addq	$16, %rdx
	addq	$16, %rdi
	addq	$-16, %rsi
	jne	.LBB27_18
# BB#19:                                # %middle.block
                                        #   in Loop: Header=BB27_3 Depth=1
	cmpq	%r8, %rax
	movq	%r8, %rsi
	je	.LBB27_21
	.align	16, 0x90
.LBB27_20:                              # %for.body
                                        #   Parent Loop BB27_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rcx,%rsi), %dl
	movb	%dl, 16(%rsp,%rsi)
	incq	%rsi
	cmpq	%rax, %rsi
	jl	.LBB27_20
.LBB27_21:                              # %for.end
                                        #   in Loop: Header=BB27_3 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	BZ2_bzReadClose
	cmpl	$0, 10036(%rsp)
	jne	.LBB27_56
# BB#22:                                # %if.end41
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	12(%rsp), %r9d
	testl	%r9d, %r9d
	jne	.LBB27_23
# BB#27:                                # %land.lhs.true44
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	je	.LBB27_29
# BB#28:                                # %myfeof.exit.thread
                                        #   in Loop: Header=BB27_3 Depth=1
	movzbl	%al, %edi
	movl	%ebp, %esi
	callq	spec_ungetc
	movl	12(%rsp), %r9d
.LBB27_23:                              # %while.body.backedge
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	verbosity(%rip), %edx
	movzbl	smallMode(%rip), %ecx
	movq	%r15, %rdi
	movl	%ebp, %esi
	leaq	16(%rsp), %r8
	callq	BZ2_bzReadOpen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB27_25
# BB#24:                                # %while.body.backedge
                                        #   in Loop: Header=BB27_3 Depth=1
	movl	10036(%rsp), %eax
	testl	%eax, %eax
	je	.LBB27_3
	jmp	.LBB27_25
.LBB27_33:                              # %trycat
	cmpb	$0, forceOverwrite(%rip)
	je	.LBB27_25
# BB#34:                                # %if.then72
	movl	%ebp, %edi
	callq	spec_rewind
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	je	.LBB27_29
# BB#35:
	leaq	5024(%rsp), %rbx
	.align	16, 0x90
.LBB27_36:                              # %if.end79
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %edi
	movl	%ebp, %esi
	callq	spec_ungetc
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	spec_fread
	testl	%eax, %eax
	jle	.LBB27_38
# BB#37:                                # %if.then84
                                        #   in Loop: Header=BB27_36 Depth=1
	movl	$1, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	movl	%r12d, %ecx
	callq	spec_fwrite
.LBB27_38:                              # %while.body75.backedge
                                        #   in Loop: Header=BB27_36 Depth=1
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	jne	.LBB27_36
.LBB27_29:                              # %if.end57
	cmpl	$1, %r12d
	je	.LBB27_31
# BB#30:                                # %if.then60
	movl	$0, outputHandleJustInCase(%rip)
.LBB27_31:                              # %if.end65
	movl	$0, outputHandleJustInCase(%rip)
	movb	$1, %bl
	cmpl	$2, verbosity(%rip)
	jl	.LBB27_55
# BB#32:                                # %if.then68
	movq	stderr(%rip), %rcx
	movl	$.L.str.6.26, %edi
	movl	$5, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB27_55
.LBB27_25:                              # %errhandler
	leaq	10032(%rsp), %rdi
	movq	%r13, %rsi
	callq	BZ2_bzReadClose
	movl	10036(%rsp), %eax
	addl	$9, %eax
	cmpl	$6, %eax
	ja	.LBB27_57
# BB#26:                                # %errhandler
	jmpq	*.LJTI27_0(,%rax,8)
.LBB27_51:                              # %sw.bb94
	cmpl	$1, %r14d
	jne	.LBB27_53
# BB#52:
	xorl	%ebx, %ebx
	jmp	.LBB27_55
.LBB27_53:                              # %if.else
	movb	$1, %bl
	cmpb	$0, noisy(%rip)
	jne	.LBB27_54
.LBB27_55:                              # %cleanup
	movzbl	%bl, %eax
	addq	$10040, %rsp            # imm = 0x2738
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB27_54:                              # %if.then107
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.7.30, %esi
	movl	$inName, %ecx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB27_55
.LBB27_7:                               # %if.then31
	movl	$.L.str.5.25, %edi
	callq	panic
.LBB27_56:                              # %if.then40
	movl	$.L.str.5.25, %edi
	callq	panic
.LBB27_39:                              # %sw.bb
	callq	configError
.LBB27_57:                              # %sw.default
	movl	$.L.str.8.31, %edi
	callq	panic
.LBB27_41:                              # %sw.bb91
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.12.27, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpb	$0, noisy(%rip)
	je	.LBB27_44
# BB#42:                                # %showFileNames.exit.i
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.20, %esi
	movl	$inName, %edx
	movl	$outName, %ecx
	xorl	%eax, %eax
	callq	fprintf
	cmpb	$0, noisy(%rip)
	je	.LBB27_44
# BB#43:                                # %if.then.i2.i
	movq	stderr(%rip), %rcx
	movl	$.L.str.13.28, %edi
	movl	$240, %esi
	movl	$1, %edx
	callq	fwrite
.LBB27_44:                              # %cadvise.exit.i
	callq	cleanUpAndFail
.LBB27_45:                              # %sw.bb92
	callq	outOfMemory
.LBB27_46:                              # %sw.bb93
	cmpb	$0, noisy(%rip)
	je	.LBB27_50
# BB#47:                                # %if.then.i
	movq	stderr(%rip), %rdi
	movq	progName(%rip), %rdx
	movl	$.L.str.14.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	progName(%rip), %rdi
	callq	perror
	cmpb	$0, noisy(%rip)
	je	.LBB27_50
# BB#48:                                # %showFileNames.exit.i163
	movq	stderr(%rip), %rdi
	movl	$.L.str.11.20, %esi
	movl	$inName, %edx
	movl	$outName, %ecx
	xorl	%eax, %eax
	callq	fprintf
	cmpb	$0, noisy(%rip)
	je	.LBB27_50
# BB#49:                                # %if.then.i2.i164
	movq	stderr(%rip), %rcx
	movl	$.L.str.13.28, %edi
	movl	$240, %esi
	movl	$1, %edx
	callq	fwrite
.LBB27_50:                              # %if.end.i165
	callq	cleanUpAndFail
.LBB27_40:                              # %errhandler_io
	callq	ioError
.Lfunc_end27:
	.size	uncompressStream, .Lfunc_end27-uncompressStream
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI27_0:
	.quad	.LBB27_39
	.quad	.LBB27_57
	.quad	.LBB27_46
	.quad	.LBB27_40
	.quad	.LBB27_51
	.quad	.LBB27_41
	.quad	.LBB27_45

	.text
	.globl	BZ2_bz__AssertH__fail
	.align	16, 0x90
	.type	BZ2_bz__AssertH__fail,@function
BZ2_bz__AssertH__fail:                  # @BZ2_bz__AssertH__fail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	stderr(%rip), %rdi
	movl	$.L.str.34, %esi
	movl	$.L.str.5.35, %ecx
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	fprintf
	cmpl	$1007, %ebx             # imm = 0x3EF
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	stderr(%rip), %rcx
	movl	$.L.str.1.36, %edi
	movl	$1056, %esi             # imm = 0x420
	movl	$1, %edx
	callq	fwrite
.LBB28_2:                               # %if.end
	xorl	%edi, %edi
	callq	exit
.Lfunc_end28:
	.size	BZ2_bz__AssertH__fail, .Lfunc_end28-BZ2_bz__AssertH__fail
	.cfi_endproc

	.globl	BZ2_bzlibVersion
	.align	16, 0x90
	.type	BZ2_bzlibVersion,@function
BZ2_bzlibVersion:                       # @BZ2_bzlibVersion
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str.5.35, %eax
	retq
.Lfunc_end29:
	.size	BZ2_bzlibVersion, .Lfunc_end29-BZ2_bzlibVersion
	.cfi_endproc

	.globl	BZ2_bzCompressInit
	.align	16, 0x90
	.type	BZ2_bzCompressInit,@function
BZ2_bzCompressInit:                     # @BZ2_bzCompressInit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp150:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp151:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp152:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp153:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp154:
	.cfi_def_cfa_offset 64
.Ltmp155:
	.cfi_offset %rbx, -56
.Ltmp156:
	.cfi_offset %r12, -48
.Ltmp157:
	.cfi_offset %r13, -40
.Ltmp158:
	.cfi_offset %r14, -32
.Ltmp159:
	.cfi_offset %r15, -24
.Ltmp160:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movq	%rdi, %r14
	cmpl	$250, %ecx
	movl	$-2, %r13d
	ja	.LBB30_18
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB30_18
# BB#2:                                 # %entry
	leal	-1(%r12), %eax
	cmpl	$8, %eax
	ja	.LBB30_18
# BB#3:                                 # %if.end9
	testl	%ecx, %ecx
	movl	$30, %r15d
	cmovnel	%ecx, %r15d
	movq	56(%r14), %rax
	testq	%rax, %rax
	jne	.LBB30_5
# BB#4:                                 # %if.then14
	movq	$default_bzalloc, 56(%r14)
	movl	$default_bzalloc, %eax
.LBB30_5:                               # %if.end16
	movl	%edx, 4(%rsp)           # 4-byte Spill
	cmpq	$0, 64(%r14)
	jne	.LBB30_7
# BB#6:                                 # %if.then18
	movq	$default_bzfree, 64(%r14)
.LBB30_7:                               # %if.end20
	movq	72(%r14), %rdi
	movl	$55768, %esi            # imm = 0xD9D8
	movl	$1, %edx
	callq	*%rax
	movq	%rax, %rbx
	movl	$-3, %r13d
	testq	%rbx, %rbx
	je	.LBB30_18
# BB#8:                                 # %if.end25
	movq	%r14, (%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rbx)
	movq	$0, 40(%rbx)
	movq	72(%r14), %rdi
	imull	$400000, %r12d, %ebp    # imm = 0x61A80
	movl	$1, %edx
	movl	%ebp, %esi
	callq	*56(%r14)
	movq	%rax, 24(%rbx)
	movq	72(%r14), %rdi
	addl	$136, %ebp
	movl	$1, %edx
	movl	%ebp, %esi
	callq	*56(%r14)
	movq	%rax, 32(%rbx)
	movq	72(%r14), %rdi
	movl	$262148, %esi           # imm = 0x40004
	movl	$1, %edx
	callq	*56(%r14)
	movq	%rax, 40(%rbx)
	movq	24(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB30_12
# BB#9:                                 # %lor.lhs.false47
	testq	%rax, %rax
	je	.LBB30_11
# BB#10:                                # %lor.lhs.false47
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB30_11
# BB#17:                                # %if.end86
	imull	$100000, %r12d, %ecx    # imm = 0x186A0
	movl	$0, 660(%rbx)
	movl	$2, 12(%rbx)
	movl	$2, 8(%rbx)
	movl	$0, 652(%rbx)
	movl	%r12d, 664(%rbx)
	addl	$-19, %ecx
	movl	%ecx, 112(%rbx)
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, 656(%rbx)
	movl	%r15d, 88(%rbx)
	movq	%rax, 64(%rbx)
	movq	%rsi, 72(%rbx)
	movq	$0, 80(%rbx)
	movq	%rsi, 56(%rbx)
	movq	%rbx, 48(%r14)
	movl	$0, 12(%r14)
	movl	$0, 16(%r14)
	movl	$0, 36(%r14)
	movl	$0, 40(%r14)
	movq	$256, 92(%rbx)          # imm = 0x100
	movl	$0, 108(%rbx)
	movl	$0, 116(%rbx)
	movl	$0, 120(%rbx)
	movl	$-1, 648(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 368(%rbx)
	movups	%xmm0, 352(%rbx)
	movups	%xmm0, 336(%rbx)
	movups	%xmm0, 320(%rbx)
	movups	%xmm0, 304(%rbx)
	movups	%xmm0, 288(%rbx)
	movups	%xmm0, 272(%rbx)
	movups	%xmm0, 256(%rbx)
	movups	%xmm0, 240(%rbx)
	movups	%xmm0, 224(%rbx)
	movups	%xmm0, 208(%rbx)
	movups	%xmm0, 192(%rbx)
	movups	%xmm0, 176(%rbx)
	movups	%xmm0, 160(%rbx)
	movups	%xmm0, 144(%rbx)
	movups	%xmm0, 128(%rbx)
	incl	660(%rbx)
	xorl	%r13d, %r13d
	jmp	.LBB30_18
.LBB30_11:                              # %if.then59
	movq	72(%r14), %rdi
	callq	*64(%r14)
.LBB30_12:                              # %if.end63
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB30_14
# BB#13:                                # %if.then67
	movq	72(%r14), %rdi
	callq	*64(%r14)
.LBB30_14:                              # %if.end71
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB30_16
# BB#15:                                # %if.then75
	movq	72(%r14), %rdi
	callq	*64(%r14)
.LBB30_16:                              # %if.then82
	movq	72(%r14), %rdi
	movq	%rbx, %rsi
	callq	*64(%r14)
.LBB30_18:                              # %cleanup
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	BZ2_bzCompressInit, .Lfunc_end30-BZ2_bzCompressInit
	.cfi_endproc

	.align	16, 0x90
	.type	default_bzalloc,@function
default_bzalloc:                        # @default_bzalloc
	.cfi_startproc
# BB#0:                                 # %entry
	imull	%edx, %esi
	movslq	%esi, %rdi
	jmp	malloc                  # TAILCALL
.Lfunc_end31:
	.size	default_bzalloc, .Lfunc_end31-default_bzalloc
	.cfi_endproc

	.align	16, 0x90
	.type	default_bzfree,@function
default_bzfree:                         # @default_bzfree
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB32_1
# BB#2:                                 # %if.then
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.LBB32_1:                               # %if.end
	retq
.Lfunc_end32:
	.size	default_bzfree, .Lfunc_end32-default_bzfree
	.cfi_endproc

	.globl	BZ2_bzCompress
	.align	16, 0x90
	.type	BZ2_bzCompress,@function
BZ2_bzCompress:                         # @BZ2_bzCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp163:
	.cfi_def_cfa_offset 32
.Ltmp164:
	.cfi_offset %rbx, -24
.Ltmp165:
	.cfi_offset %r14, -16
	movl	$-2, %ebx
	testq	%rdi, %rdi
	je	.LBB33_27
# BB#1:                                 # %if.end
	movq	48(%rdi), %r14
	testq	%r14, %r14
	je	.LBB33_27
# BB#2:                                 # %if.end3
	cmpq	%rdi, (%r14)
	jne	.LBB33_27
# BB#3:                                 # %preswitch.preheader
	movl	8(%r14), %eax
	jmp	.LBB33_4
	.align	16, 0x90
.LBB33_11:                              # %preswitch.backedge
                                        #   in Loop: Header=BB33_4 Depth=1
	movl	8(%rdi), %ecx
	movl	%ecx, 16(%r14)
	movl	%eax, 8(%r14)
.LBB33_4:                               # %preswitch
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ebx, %ebx
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB33_27
# BB#5:                                 # %preswitch
                                        #   in Loop: Header=BB33_4 Depth=1
	movl	$-1, %ebx
	jmpq	*.LJTI33_0(,%rax,8)
.LBB33_6:                               # %sw.bb8
                                        #   in Loop: Header=BB33_4 Depth=1
	movl	$3, %eax
	cmpl	$1, %esi
	je	.LBB33_11
# BB#7:                                 # %sw.bb8
                                        #   in Loop: Header=BB33_4 Depth=1
	cmpl	$2, %esi
	jne	.LBB33_8
# BB#10:                                # %if.then18
                                        #   in Loop: Header=BB33_4 Depth=1
	movl	$4, %eax
	jmp	.LBB33_11
.LBB33_8:                               # %sw.bb8
	movl	$-2, %ebx
	testl	%esi, %esi
	jne	.LBB33_27
# BB#9:                                 # %if.then10
	callq	handle_compress
	testb	%al, %al
	movl	$1, %eax
	movl	$-2, %ebx
	cmovnel	%eax, %ebx
	jmp	.LBB33_27
.LBB33_12:                              # %sw.bb23
	movl	$-1, %ebx
	cmpl	$1, %esi
	jne	.LBB33_27
# BB#13:                                # %if.end27
	movl	16(%r14), %eax
	cmpl	8(%rdi), %eax
	jne	.LBB33_27
# BB#14:                                # %if.end34
	callq	handle_compress
	movl	$2, %ebx
	cmpl	$0, 16(%r14)
	jne	.LBB33_27
# BB#15:                                # %lor.lhs.false
	cmpl	$255, 92(%r14)
	ja	.LBB33_17
# BB#16:                                # %land.lhs.true.i
	cmpl	$0, 96(%r14)
	jg	.LBB33_27
.LBB33_17:                              # %lor.lhs.false41
	movl	120(%r14), %eax
	cmpl	116(%r14), %eax
	jl	.LBB33_27
# BB#18:                                # %if.end45
	movl	$2, 8(%r14)
	movl	$1, %ebx
	jmp	.LBB33_27
.LBB33_19:                              # %sw.bb47
	movl	$-1, %ebx
	cmpl	$2, %esi
	jne	.LBB33_27
# BB#20:                                # %if.end51
	movl	16(%r14), %eax
	cmpl	8(%rdi), %eax
	jne	.LBB33_27
# BB#21:                                # %if.end58
	callq	handle_compress
	testb	%al, %al
	je	.LBB33_27
# BB#22:                                # %if.end62
	movl	$3, %ebx
	cmpl	$0, 16(%r14)
	jne	.LBB33_27
# BB#23:                                # %lor.lhs.false66
	cmpl	$255, 92(%r14)
	ja	.LBB33_25
# BB#24:                                # %land.lhs.true.i115
	cmpl	$0, 96(%r14)
	jg	.LBB33_27
.LBB33_25:                              # %lor.lhs.false69
	movl	120(%r14), %eax
	cmpl	116(%r14), %eax
	jl	.LBB33_27
# BB#26:                                # %if.end75
	movl	$1, 8(%r14)
	movl	$4, %ebx
.LBB33_27:                              # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	BZ2_bzCompress, .Lfunc_end33-BZ2_bzCompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI33_0:
	.quad	.LBB33_27
	.quad	.LBB33_6
	.quad	.LBB33_12
	.quad	.LBB33_19

	.text
	.align	16, 0x90
	.type	handle_compress,@function
handle_compress:                        # @handle_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp170:
	.cfi_def_cfa_offset 48
.Ltmp171:
	.cfi_offset %rbx, -48
.Ltmp172:
	.cfi_offset %r12, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	48(%rdi), %rbx
	movq	%rbx, %r12
	subq	$-128, %r12
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	jmp	.LBB34_1
	.align	16, 0x90
.LBB34_62:                              # %while.body.outer
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	callq	BZ2_compressBlock
	movl	$1, 12(%rbx)
.LBB34_1:                               # %while.body.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_14 Depth 2
                                        #     Child Loop BB34_6 Depth 2
                                        #     Child Loop BB34_34 Depth 2
	movl	12(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB34_2
# BB#12:                                # %while.body.outer
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$1, %eax
	jne	.LBB34_65
# BB#13:                                # %if.then
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	(%rbx), %rcx
	xorl	%eax, %eax
	jmp	.LBB34_14
	.align	16, 0x90
.LBB34_18:                              # %while.body.backedge.i
                                        #   in Loop: Header=BB34_14 Depth=2
	movb	$1, %al
.LBB34_14:                              # %if.then
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 32(%rcx)
	je	.LBB34_19
# BB#15:                                # %if.end.i
                                        #   in Loop: Header=BB34_14 Depth=2
	movslq	120(%rbx), %rdx
	cmpl	116(%rbx), %edx
	jge	.LBB34_19
# BB#16:                                # %if.end3.i
                                        #   in Loop: Header=BB34_14 Depth=2
	movq	80(%rbx), %rax
	movb	(%rax,%rdx), %al
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	incl	120(%rbx)
	movq	(%rbx), %rax
	decl	32(%rax)
	movq	(%rbx), %rax
	incq	24(%rax)
	movq	(%rbx), %rax
	incl	36(%rax)
	movq	(%rbx), %rcx
	cmpl	$0, 36(%rcx)
	jne	.LBB34_18
# BB#17:                                # %if.then16.i
                                        #   in Loop: Header=BB34_14 Depth=2
	incl	40(%rcx)
	movq	(%rbx), %rcx
	jmp	.LBB34_18
	.align	16, 0x90
.LBB34_2:                               #   in Loop: Header=BB34_1 Depth=1
	movb	%r15b, %al
	jmp	.LBB34_3
	.align	16, 0x90
.LBB34_19:                              # %copy_output_until_stop.exit
                                        #   in Loop: Header=BB34_1 Depth=1
	orb	%r15b, %al
	movl	120(%rbx), %ecx
	cmpl	116(%rbx), %ecx
	jl	.LBB34_20
# BB#21:                                # %if.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	8(%rbx), %ecx
	cmpl	$4, %ecx
	jne	.LBB34_27
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, 16(%rbx)
	jne	.LBB34_27
# BB#23:                                # %land.lhs.true11
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$255, 92(%rbx)
	ja	.LBB34_24
# BB#25:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, 96(%rbx)
	jle	.LBB34_26
	.align	16, 0x90
.LBB34_27:                              # %if.end15
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	$0, 108(%rbx)
	movl	$0, 116(%rbx)
	movl	$0, 120(%rbx)
	movl	$-1, 648(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 240(%r12)
	movups	%xmm0, 224(%r12)
	movups	%xmm0, 208(%r12)
	movups	%xmm0, 192(%r12)
	movups	%xmm0, 176(%r12)
	movups	%xmm0, 160(%r12)
	movups	%xmm0, 144(%r12)
	movups	%xmm0, 128(%r12)
	movups	%xmm0, 112(%r12)
	movups	%xmm0, 96(%r12)
	movups	%xmm0, 80(%r12)
	movups	%xmm0, 64(%r12)
	movups	%xmm0, 48(%r12)
	movups	%xmm0, 32(%r12)
	movups	%xmm0, 16(%r12)
	movups	%xmm0, (%r12)
	incl	660(%rbx)
	movl	$2, 12(%rbx)
	cmpl	$3, %ecx
	jne	.LBB34_4
# BB#28:                                # %land.lhs.true20
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, 16(%rbx)
	jne	.LBB34_3
# BB#29:                                # %land.lhs.true24
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$255, 92(%rbx)
	ja	.LBB34_30
# BB#31:                                # %land.lhs.true.i125
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, 96(%rbx)
	jle	.LBB34_32
	.align	16, 0x90
.LBB34_3:                               # %if.end30.if.then34_crit_edge
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	8(%rbx), %ecx
.LBB34_4:                               # %if.then34
                                        #   in Loop: Header=BB34_1 Depth=1
	movb	%al, %r15b
	cmpl	$2, %ecx
	movl	108(%rbx), %eax
	movl	112(%rbx), %ecx
	jne	.LBB34_5
# BB#33:                                # %while.body.preheader.i
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%edx, %edx
	jmp	.LBB34_34
	.align	16, 0x90
.LBB34_46:                              # %while.body.backedge.i116
                                        #   in Loop: Header=BB34_34 Depth=2
	movl	108(%rbx), %eax
	movl	112(%rbx), %ecx
	movb	$1, %dl
.LBB34_34:                              # %while.body.preheader.i
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %eax
	jge	.LBB34_55
# BB#35:                                # %if.end.i108
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	(%rbx), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB34_55
# BB#36:                                # %if.end5.i
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	(%rsi), %rcx
	movzbl	(%rcx), %ebp
	movl	92(%rbx), %ecx
	movl	96(%rbx), %edx
	cmpl	%ecx, %ebp
	jne	.LBB34_37
# BB#39:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB34_34 Depth=2
	cmpl	$255, %edx
	je	.LBB34_40
# BB#43:                                # %if.else40.i
                                        #   in Loop: Header=BB34_34 Depth=2
	incl	%edx
	movl	%edx, 96(%rbx)
	jmp	.LBB34_44
	.align	16, 0x90
.LBB34_37:                              # %land.lhs.true.i109
                                        #   in Loop: Header=BB34_34 Depth=2
	cmpl	$1, %edx
	jne	.LBB34_40
# BB#38:                                # %if.then11.i
                                        #   in Loop: Header=BB34_34 Depth=2
	movl	648(%rbx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	shrl	$24, %edx
	movzbl	%cl, %edi
	xorl	%edx, %edi
	xorl	BZ2_crc32Table(,%rdi,4), %esi
	movl	%esi, 648(%rbx)
	movb	$1, 128(%rbx,%rcx)
	cltq
	movq	64(%rbx), %rdx
	movb	%cl, (%rdx,%rax)
	incl	108(%rbx)
	movl	%ebp, 92(%rbx)
	jmp	.LBB34_44
	.align	16, 0x90
.LBB34_40:                              # %if.then32.i
                                        #   in Loop: Header=BB34_34 Depth=2
	cmpl	$255, %ecx
	ja	.LBB34_42
# BB#41:                                # %if.then36.i
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	%rbx, %rdi
	callq	add_pair_to_block
.LBB34_42:                              # %if.end37.i
                                        #   in Loop: Header=BB34_34 Depth=2
	movl	%ebp, 92(%rbx)
	movl	$1, 96(%rbx)
.LBB34_44:                              # %if.end44.i
                                        #   in Loop: Header=BB34_34 Depth=2
	movq	(%rbx), %rax
	incq	(%rax)
	movq	(%rbx), %rax
	decl	8(%rax)
	movq	(%rbx), %rax
	incl	12(%rax)
	movq	(%rbx), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB34_46
# BB#45:                                # %if.then55.i
                                        #   in Loop: Header=BB34_34 Depth=2
	incl	16(%rax)
	jmp	.LBB34_46
	.align	16, 0x90
.LBB34_5:                               # %while.body61.preheader.i
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%edx, %edx
	jmp	.LBB34_6
	.align	16, 0x90
.LBB34_54:                              # %if.end152.i
                                        #   in Loop: Header=BB34_6 Depth=2
	decl	16(%rbx)
	movl	108(%rbx), %eax
	movl	112(%rbx), %ecx
	movb	$1, %dl
.LBB34_6:                               # %while.body61.preheader.i
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ecx, %eax
	jge	.LBB34_55
# BB#7:                                 # %if.end67.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movq	(%rbx), %rsi
	cmpl	$0, 8(%rsi)
	je	.LBB34_55
# BB#8:                                 # %if.end73.i
                                        #   in Loop: Header=BB34_6 Depth=2
	cmpl	$0, 16(%rbx)
	je	.LBB34_55
# BB#9:                                 # %if.end77.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movq	(%rsi), %rcx
	movzbl	(%rcx), %ebp
	movl	92(%rbx), %ecx
	movl	96(%rbx), %edx
	cmpl	%ecx, %ebp
	jne	.LBB34_10
# BB#47:                                # %lor.lhs.false118.i
                                        #   in Loop: Header=BB34_6 Depth=2
	cmpl	$255, %edx
	je	.LBB34_48
# BB#51:                                # %if.else130.i
                                        #   in Loop: Header=BB34_6 Depth=2
	incl	%edx
	movl	%edx, 96(%rbx)
	jmp	.LBB34_52
	.align	16, 0x90
.LBB34_10:                              # %land.lhs.true85.i
                                        #   in Loop: Header=BB34_6 Depth=2
	cmpl	$1, %edx
	jne	.LBB34_48
# BB#11:                                # %if.then89.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movl	648(%rbx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	shrl	$24, %edx
	movzbl	%cl, %edi
	xorl	%edx, %edi
	xorl	BZ2_crc32Table(,%rdi,4), %esi
	movl	%esi, 648(%rbx)
	movb	$1, 128(%rbx,%rcx)
	cltq
	movq	64(%rbx), %rdx
	movb	%cl, (%rdx,%rax)
	incl	108(%rbx)
	movl	%ebp, 92(%rbx)
	jmp	.LBB34_52
	.align	16, 0x90
.LBB34_48:                              # %if.then122.i
                                        #   in Loop: Header=BB34_6 Depth=2
	cmpl	$255, %ecx
	ja	.LBB34_50
# BB#49:                                # %if.then126.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movq	%rbx, %rdi
	callq	add_pair_to_block
.LBB34_50:                              # %if.end127.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movl	%ebp, 92(%rbx)
	movl	$1, 96(%rbx)
.LBB34_52:                              # %if.end134.i
                                        #   in Loop: Header=BB34_6 Depth=2
	movq	(%rbx), %rax
	incq	(%rax)
	movq	(%rbx), %rax
	decl	8(%rax)
	movq	(%rbx), %rax
	incl	12(%rax)
	movq	(%rbx), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB34_54
# BB#53:                                # %if.then148.i
                                        #   in Loop: Header=BB34_6 Depth=2
	incl	16(%rax)
	jmp	.LBB34_54
	.align	16, 0x90
.LBB34_55:                              # %copy_input_until_stop.exit
                                        #   in Loop: Header=BB34_1 Depth=1
	orb	%dl, %r14b
	movl	8(%rbx), %edx
	cmpl	$2, %edx
	je	.LBB34_60
# BB#56:                                # %land.lhs.true43
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$0, 16(%rbx)
	je	.LBB34_57
.LBB34_60:                              # %if.else
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	%ecx, %eax
	jge	.LBB34_61
# BB#63:                                # %if.else57
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	(%rbx), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB34_1
	jmp	.LBB34_64
	.align	16, 0x90
.LBB34_61:                              # %if.then55
                                        #   in Loop: Header=BB34_1 Depth=1
	xorl	%esi, %esi
	jmp	.LBB34_62
.LBB34_57:                              # %if.then47
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpl	$255, 92(%rbx)
	ja	.LBB34_59
# BB#58:                                # %if.then.i
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	callq	add_pair_to_block
	movl	8(%rbx), %edx
.LBB34_59:                              # %flush_RL.exit
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	$256, 92(%rbx)          # imm = 0x100
	cmpl	$4, %edx
	sete	%al
	movzbl	%al, %esi
	jmp	.LBB34_62
	.align	16, 0x90
.LBB34_65:                              # %infloop
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB34_65
.LBB34_20:
	movb	%al, %r15b
.LBB34_64:                              # %while.end
	orb	%r14b, %r15b
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_24:
	movb	%al, %r15b
	jmp	.LBB34_64
.LBB34_26:
	movb	%al, %r15b
	jmp	.LBB34_64
.LBB34_30:
	movb	%al, %r15b
	jmp	.LBB34_64
.LBB34_32:
	movb	%al, %r15b
	jmp	.LBB34_64
.Lfunc_end34:
	.size	handle_compress, .Lfunc_end34-handle_compress
	.cfi_endproc

	.align	16, 0x90
	.type	add_pair_to_block,@function
add_pair_to_block:                      # @add_pair_to_block
	.cfi_startproc
# BB#0:                                 # %entry
	movl	92(%rdi), %r8d
	movslq	96(%rdi), %r9
	testq	%r9, %r9
	jle	.LBB35_3
# BB#1:                                 # %for.body.lr.ph
	movzbl	%r8b, %edx
	movl	648(%rdi), %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB35_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	shll	$8, %ecx
	shrl	$24, %eax
	xorl	%edx, %eax
	xorl	BZ2_crc32Table(,%rax,4), %ecx
	movl	%ecx, 648(%rdi)
	incl	%esi
	cmpl	%r9d, %esi
	movl	%ecx, %eax
	jl	.LBB35_2
.LBB35_3:                               # %for.end
	movb	$1, 128(%rdi,%r8)
	cmpl	$3, %r9d
	je	.LBB35_9
# BB#4:                                 # %for.end
	cmpl	$2, %r9d
	je	.LBB35_7
# BB#5:                                 # %for.end
	cmpl	$1, %r9d
	jne	.LBB35_10
# BB#6:                                 # %sw.bb
	movslq	108(%rdi), %rax
	movq	64(%rdi), %rcx
	movb	%r8b, (%rcx,%rax)
	incl	108(%rdi)
	retq
.LBB35_9:                               # %sw.bb27
	movslq	108(%rdi), %rax
	movq	64(%rdi), %rcx
	movb	%r8b, (%rcx,%rax)
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movq	64(%rdi), %rcx
	movb	%r8b, 1(%rcx,%rax)
	jmp	.LBB35_8
.LBB35_7:                               # %sw.bb14
	movslq	108(%rdi), %rax
	movq	64(%rdi), %rcx
	movb	%r8b, (%rcx,%rax)
.LBB35_8:                               # %sw.epilog
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movq	64(%rdi), %rcx
	movb	%r8b, 1(%rcx,%rax)
	incl	108(%rdi)
	retq
.LBB35_10:                              # %sw.default
	movb	$1, 124(%r9,%rdi)
	movslq	108(%rdi), %rax
	movq	64(%rdi), %rcx
	movb	%r8b, (%rcx,%rax)
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movq	64(%rdi), %rcx
	movb	%r8b, 1(%rcx,%rax)
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movq	64(%rdi), %rcx
	movb	%r8b, 1(%rcx,%rax)
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movq	64(%rdi), %rcx
	movb	%r8b, 1(%rcx,%rax)
	movslq	108(%rdi), %rax
	leaq	1(%rax), %rcx
	movl	%ecx, 108(%rdi)
	movl	$252, %ecx
	addl	96(%rdi), %ecx
	movq	64(%rdi), %rdx
	movb	%cl, 1(%rdx,%rax)
	incl	108(%rdi)
	retq
.Lfunc_end35:
	.size	add_pair_to_block, .Lfunc_end35-add_pair_to_block
	.cfi_endproc

	.globl	BZ2_bzCompressEnd
	.align	16, 0x90
	.type	BZ2_bzCompressEnd,@function
BZ2_bzCompressEnd:                      # @BZ2_bzCompressEnd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp178:
	.cfi_def_cfa_offset 32
.Ltmp179:
	.cfi_offset %rbx, -24
.Ltmp180:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	$-2, %eax
	testq	%rbx, %rbx
	je	.LBB36_10
# BB#1:                                 # %if.end
	movq	48(%rbx), %r14
	testq	%r14, %r14
	je	.LBB36_10
# BB#2:                                 # %if.end3
	cmpq	%rbx, (%r14)
	jne	.LBB36_10
# BB#3:                                 # %if.end7
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB36_5
# BB#4:                                 # %if.then9
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB36_5:                               # %if.end11
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB36_7
# BB#6:                                 # %if.then13
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB36_7:                               # %if.end17
	movq	40(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB36_9
# BB#8:                                 # %if.then19
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB36_9:                               # %if.end23
	movq	48(%rbx), %rsi
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
	movq	$0, 48(%rbx)
	xorl	%eax, %eax
.LBB36_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end36:
	.size	BZ2_bzCompressEnd, .Lfunc_end36-BZ2_bzCompressEnd
	.cfi_endproc

	.globl	BZ2_bzDecompressInit
	.align	16, 0x90
	.type	BZ2_bzDecompressInit,@function
BZ2_bzDecompressInit:                   # @BZ2_bzDecompressInit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp182:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp183:
	.cfi_def_cfa_offset 32
.Ltmp184:
	.cfi_offset %rbx, -32
.Ltmp185:
	.cfi_offset %r14, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %rbp
	cmpl	$4, %ebx
	movl	$-2, %eax
	ja	.LBB37_9
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB37_9
# BB#2:                                 # %entry
	cmpl	$1, %r14d
	ja	.LBB37_9
# BB#3:                                 # %if.end10
	movq	56(%rbp), %rax
	testq	%rax, %rax
	jne	.LBB37_5
# BB#4:                                 # %if.then12
	movq	$default_bzalloc, 56(%rbp)
	movl	$default_bzalloc, %eax
.LBB37_5:                               # %if.end14
	cmpq	$0, 64(%rbp)
	jne	.LBB37_7
# BB#6:                                 # %if.then16
	movq	$default_bzfree, 64(%rbp)
.LBB37_7:                               # %if.end18
	movq	72(%rbp), %rdi
	movl	$64144, %esi            # imm = 0xFA90
	movl	$1, %edx
	callq	*%rax
	movq	%rax, %rcx
	movl	$-3, %eax
	testq	%rcx, %rcx
	je	.LBB37_9
# BB#8:                                 # %if.end23
	movq	%rbp, (%rcx)
	movq	%rcx, 48(%rbp)
	movl	$10, 8(%rcx)
	movl	$0, 36(%rcx)
	movl	$0, 32(%rcx)
	movl	$0, 3188(%rcx)
	movl	$0, 12(%rbp)
	movl	$0, 16(%rbp)
	movl	$0, 36(%rbp)
	movl	$0, 40(%rbp)
	movb	%r14b, 44(%rcx)
	movl	$0, 48(%rcx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 3152(%rcx)
	movq	$0, 3168(%rcx)
	movl	%ebx, 52(%rcx)
	xorl	%eax, %eax
.LBB37_9:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	BZ2_bzDecompressInit, .Lfunc_end37-BZ2_bzDecompressInit
	.cfi_endproc

	.globl	BZ2_indexIntoF
	.align	16, 0x90
	.type	BZ2_indexIntoF,@function
BZ2_indexIntoF:                         # @BZ2_indexIntoF
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB38_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rcx), %edx
	sarl	%edx
	movslq	%edx, %rdx
	cmpl	%edi, (%rsi,%rdx,4)
	cmovgl	%edx, %ecx
	cmovlel	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB38_1
# BB#2:                                 # %do.end
	retq
.Lfunc_end38:
	.size	BZ2_indexIntoF, .Lfunc_end38-BZ2_indexIntoF
	.cfi_endproc

	.globl	BZ2_bzDecompress
	.align	16, 0x90
	.type	BZ2_bzDecompress,@function
BZ2_bzDecompress:                       # @BZ2_bzDecompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp189:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp190:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp191:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp192:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp193:
	.cfi_def_cfa_offset 80
.Ltmp194:
	.cfi_offset %rbx, -56
.Ltmp195:
	.cfi_offset %r12, -48
.Ltmp196:
	.cfi_offset %r13, -40
.Ltmp197:
	.cfi_offset %r14, -32
.Ltmp198:
	.cfi_offset %r15, -24
.Ltmp199:
	.cfi_offset %rbp, -16
	movl	$-2, %eax
	testq	%rdi, %rdi
	je	.LBB39_140
# BB#1:                                 # %if.end
	movq	48(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB39_140
# BB#2:                                 # %if.end3
	cmpq	%rdi, (%rbx)
	jne	.LBB39_140
# BB#3:                                 # %while.body.preheader
	movq	8(%rbx), %rcx
	movl	%ecx, %edx
	jmp	.LBB39_4
	.align	16, 0x90
.LBB39_6:                               # %if.end47
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$10, %edx
	jl	.LBB39_6
	jmp	.LBB39_53
	.align	16, 0x90
.LBB39_7:                               # %if.then14
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpb	$0, 44(%rbx)
	movb	20(%rbx), %al
	je	.LBB39_84
# BB#8:                                 # %if.then15
                                        #   in Loop: Header=BB39_4 Depth=1
	testb	%al, %al
	movq	(%rbx), %r13
	movl	32(%r13), %eax
	je	.LBB39_58
# BB#9:                                 # %while.body2.preheader.i
                                        #   in Loop: Header=BB39_4 Depth=1
	testl	%eax, %eax
	je	.LBB39_45
	.align	16, 0x90
.LBB39_10:                              # %if.end.i
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_16 Depth 3
                                        #       Child Loop BB39_23 Depth 3
                                        #       Child Loop BB39_30 Depth 3
                                        #       Child Loop BB39_36 Depth 3
                                        #       Child Loop BB39_40 Depth 3
	cmpl	$0, 16(%rbx)
	je	.LBB39_13
# BB#11:                                # %if.end6.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movb	12(%rbx), %al
	movq	24(%r13), %rcx
	movb	%al, (%rcx)
	movl	3184(%rbx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	shrl	$24, %eax
	movzbl	12(%rbx), %edx
	xorl	%eax, %edx
	xorl	BZ2_crc32Table(,%rdx,4), %ecx
	movl	%ecx, 3184(%rbx)
	decl	16(%rbx)
	movq	(%rbx), %rax
	incq	24(%rax)
	movq	(%rbx), %rax
	decl	32(%rax)
	movq	(%rbx), %rax
	incl	36(%rax)
	movq	(%rbx), %r13
	cmpl	$0, 36(%r13)
	jne	.LBB39_44
# BB#12:                                # %if.then23.i
                                        #   in Loop: Header=BB39_10 Depth=2
	incl	40(%r13)
	movq	(%rbx), %r13
	jmp	.LBB39_44
	.align	16, 0x90
.LBB39_13:                              # %while.end.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	1092(%rbx), %r10d
	movl	64080(%rbx), %r9d
	leal	1(%r9), %eax
	cmpl	%eax, %r10d
	je	.LBB39_45
# BB#14:                                # %if.end30.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	$-4, %eax
	jg	.LBB39_140
# BB#15:                                # %if.end37.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	$1, 16(%rbx)
	movl	64(%rbx), %r12d
	movb	%r12b, 12(%rbx)
	movl	60(%rbx), %ecx
	xorl	%edi, %edi
	movl	$256, %eax              # imm = 0x100
	.align	16, 0x90
.LBB39_16:                              # %do.body.i.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rax), %edx
	sarl	%edx
	movslq	%edx, %rdx
	cmpl	%ecx, 1096(%rbx,%rdx,4)
	cmovgl	%edx, %eax
	cmovlel	%edx, %edi
	movl	%eax, %edx
	subl	%edi, %edx
	cmpl	$1, %edx
	jne	.LBB39_16
# BB#17:                                # %BZ2_indexIntoF.exit.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movq	3160(%rbx), %r8
	movq	3168(%rbx), %r14
	movzwl	(%r8,%rcx,2), %eax
	movl	%ecx, %edx
	shrl	%edx
	movzbl	(%r14,%rdx), %ebp
	leal	(,%rcx,4), %ecx
	andb	$4, %cl
	shrl	%cl, %ebp
	andl	$15, %ebp
	shll	$16, %ebp
	orl	%eax, %ebp
	movl	%ebp, 60(%rbx)
	movq	24(%rbx), %rdx
	movq	%rdx, %r15
	shrq	$32, %r15
	testl	%edx, %edx
	jne	.LBB39_19
# BB#18:                                # %if.then59.i
                                        #   in Loop: Header=BB39_10 Depth=2
	sarq	$32, %rdx
	movl	BZ2_rNums(,%rdx,4), %edx
	movl	%edx, 24(%rbx)
	incl	%r15d
	cmpl	$512, %r15d             # imm = 0x200
	movl	$0, %ecx
	cmovel	%ecx, %r15d
	movl	%r15d, 28(%rbx)
.LBB39_19:                              # %if.end71.i
                                        #   in Loop: Header=BB39_10 Depth=2
	decl	%edx
	movl	%edx, 24(%rbx)
	leal	1(%r10), %r11d
	movl	%r11d, 1092(%rbx)
	cmpl	%r9d, %r10d
	je	.LBB39_44
# BB#20:                                # %if.end88.i
                                        #   in Loop: Header=BB39_10 Depth=2
	cmpl	$1, %edx
	sete	%cl
	movzbl	%cl, %esi
	movzbl	%dil, %ecx
	xorl	%esi, %ecx
	cmpl	%r12d, %ecx
	jne	.LBB39_21
# BB#22:                                # %if.end96.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	$2, 16(%rbx)
	xorl	%edi, %edi
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB39_23:                              # %do.body.i922.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %rsi
	cmpl	%ebp, 1096(%rbx,%rsi,4)
	cmovgl	%esi, %ecx
	cmovlel	%esi, %edi
	movl	%ecx, %esi
	subl	%edi, %esi
	cmpl	$1, %esi
	jne	.LBB39_23
# BB#24:                                # %BZ2_indexIntoF.exit923.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%ebp, %ecx
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movzwl	(%r8,%rcx,2), %r8d
	shrl	%ebp
	movq	%r14, %rcx
	movzbl	(%rcx,%rbp), %r14d
	movq	%rcx, %rsi
	shll	$2, %eax
	andb	$4, %al
	movb	%al, %cl
	shrl	%cl, %r14d
	andl	$15, %r14d
	shll	$16, %r14d
	orl	%r8d, %r14d
	movl	%r14d, 60(%rbx)
	testl	%edx, %edx
	jne	.LBB39_26
# BB#25:                                # %if.then125.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movslq	%r15d, %r15
	movl	BZ2_rNums(,%r15,4), %edx
	movl	%edx, 24(%rbx)
	incl	%r15d
	cmpl	$512, %r15d             # imm = 0x200
	movl	$0, %eax
	cmovel	%eax, %r15d
	movl	%r15d, 28(%rbx)
.LBB39_26:                              # %if.end138.i
                                        #   in Loop: Header=BB39_10 Depth=2
	decl	%edx
	movl	%edx, 24(%rbx)
	leal	2(%r10), %ebp
	movl	%ebp, 1092(%rbx)
	cmpl	%r9d, %r11d
	je	.LBB39_44
# BB#27:                                # %if.end156.i
                                        #   in Loop: Header=BB39_10 Depth=2
	cmpl	$1, %edx
	sete	%al
	movzbl	%al, %ecx
	movzbl	%dil, %eax
	xorl	%ecx, %eax
	cmpl	%r12d, %eax
	jne	.LBB39_28
# BB#29:                                # %if.end164.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	$3, 16(%rbx)
	xorl	%edi, %edi
	movl	$256, %eax              # imm = 0x100
	.align	16, 0x90
.LBB39_30:                              # %do.body.i909.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rax), %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	cmpl	%r14d, 1096(%rbx,%rcx,4)
	cmovgl	%ecx, %eax
	cmovlel	%ecx, %edi
	movl	%eax, %ecx
	subl	%edi, %ecx
	cmpl	$1, %ecx
	jne	.LBB39_30
# BB#31:                                # %BZ2_indexIntoF.exit910.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%r14d, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzwl	(%rcx,%rax,2), %eax
	shrl	%r14d
	movq	%rsi, %rcx
	movzbl	(%rcx,%r14), %esi
	movq	%rcx, %r11
	shll	$2, %r8d
	andb	$4, %r8b
	movb	%r8b, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	shll	$16, %esi
	orl	%eax, %esi
	movl	%esi, 60(%rbx)
	testl	%edx, %edx
	jne	.LBB39_33
# BB#32:                                # %if.then193.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movslq	%r15d, %r15
	movl	BZ2_rNums(,%r15,4), %edx
	movl	%edx, 24(%rbx)
	incl	%r15d
	cmpl	$512, %r15d             # imm = 0x200
	movl	$0, %ecx
	cmovel	%ecx, %r15d
	movl	%r15d, 28(%rbx)
.LBB39_33:                              # %if.end206.i
                                        #   in Loop: Header=BB39_10 Depth=2
	decl	%edx
	movl	%edx, 24(%rbx)
	leal	3(%r10), %ecx
	movl	%ecx, 1092(%rbx)
	cmpl	%r9d, %ebp
	movq	16(%rsp), %r8           # 8-byte Reload
	je	.LBB39_44
# BB#34:                                # %if.end224.i
                                        #   in Loop: Header=BB39_10 Depth=2
	cmpl	$1, %edx
	sete	%cl
	movzbl	%cl, %ebp
	movzbl	%dil, %ecx
	xorl	%ebp, %ecx
	cmpl	%r12d, %ecx
	jne	.LBB39_141
# BB#35:                                #   in Loop: Header=BB39_10 Depth=2
	xorl	%edi, %edi
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB39_36:                              # %do.body.i896.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rcx), %ebp
	sarl	%ebp
	movslq	%ebp, %rbp
	cmpl	%esi, 1096(%rbx,%rbp,4)
	cmovgl	%ebp, %ecx
	cmovlel	%ebp, %edi
	movl	%ecx, %ebp
	subl	%edi, %ebp
	cmpl	$1, %ebp
	jne	.LBB39_36
# BB#37:                                # %BZ2_indexIntoF.exit897.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%esi, %ecx
	movq	%r8, %rbp
	movzwl	(%rbp,%rcx,2), %r8d
	shrl	%esi
	movzbl	(%r11,%rsi), %esi
	shll	$2, %eax
	andb	$4, %al
	movb	%al, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	shll	$16, %esi
	orl	%r8d, %esi
	movl	%esi, 60(%rbx)
	testl	%edx, %edx
	jne	.LBB39_39
# BB#38:                                # %if.then260.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movslq	%r15d, %r15
	movl	BZ2_rNums(,%r15,4), %edx
	movl	%edx, 24(%rbx)
	incl	%r15d
	cmpl	$512, %r15d             # imm = 0x200
	movl	$0, %eax
	cmovel	%eax, %r15d
	movl	%r15d, 28(%rbx)
.LBB39_39:                              # %if.end273.i
                                        #   in Loop: Header=BB39_10 Depth=2
	decl	%edx
	movl	%edx, 24(%rbx)
	cmpl	$1, %edx
	sete	%al
	movzbl	%al, %eax
	leal	4(%r10), %ecx
	movl	%ecx, 1092(%rbx)
	movzbl	%dil, %ecx
	xorl	%eax, %ecx
	addl	$4, %ecx
	movl	%ecx, 16(%rbx)
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB39_40:                              # %do.body.i883.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rax,%rcx), %edi
	sarl	%edi
	movslq	%edi, %rdi
	cmpl	%esi, 1096(%rbx,%rdi,4)
	cmovgl	%edi, %ecx
	cmovlel	%edi, %eax
	movl	%ecx, %edi
	subl	%eax, %edi
	cmpl	$1, %edi
	jne	.LBB39_40
# BB#41:                                # %BZ2_indexIntoF.exit884.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%eax, 64(%rbx)
	movl	%esi, %ecx
	movzwl	(%rbp,%rcx,2), %edi
	shrl	%esi
	movzbl	(%r11,%rsi), %esi
	shll	$2, %r8d
	andb	$4, %r8b
	movb	%r8b, %cl
	shrl	%cl, %esi
	andl	$15, %esi
	shll	$16, %esi
	orl	%edi, %esi
	movl	%esi, 60(%rbx)
	testl	%edx, %edx
	jne	.LBB39_43
# BB#42:                                # %if.then315.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movslq	%r15d, %rcx
	movl	BZ2_rNums(,%rcx,4), %edx
	movl	%edx, 24(%rbx)
	incl	%ecx
	cmpl	$512, %ecx              # imm = 0x200
	movl	$0, %esi
	cmovel	%esi, %ecx
	movl	%ecx, 28(%rbx)
.LBB39_43:                              # %if.end328.i
                                        #   in Loop: Header=BB39_10 Depth=2
	decl	%edx
	movl	%edx, 24(%rbx)
	cmpl	$1, %edx
	sete	%cl
	movzbl	%cl, %ecx
	xorl	%eax, %ecx
	movl	%ecx, 64(%rbx)
	addl	$5, %r10d
	movl	%r10d, 1092(%rbx)
	jmp	.LBB39_44
.LBB39_21:                              # %if.then93.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%ecx, 64(%rbx)
	jmp	.LBB39_44
.LBB39_28:                              # %if.then161.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%eax, 64(%rbx)
	jmp	.LBB39_44
.LBB39_141:                             # %if.then229.i
                                        #   in Loop: Header=BB39_10 Depth=2
	movl	%ecx, 64(%rbx)
	.align	16, 0x90
.LBB39_44:                              # %while.body2.backedge.i
                                        #   in Loop: Header=BB39_10 Depth=2
	cmpl	$0, 32(%r13)
	jne	.LBB39_10
	jmp	.LBB39_45
.LBB39_84:                              # %if.else
                                        #   in Loop: Header=BB39_4 Depth=1
	testb	%al, %al
	jne	.LBB39_85
# BB#112:                               # %if.else.i
                                        #   in Loop: Header=BB39_4 Depth=1
	shrq	$32, %rcx
	movl	3184(%rbx), %r13d
	movl	16(%rbx), %r9d
	movl	1092(%rbx), %r11d
	movl	64(%rbx), %r8d
	movq	3152(%rbx), %r10
	movq	%r10, 16(%rsp)          # 8-byte Spill
	movl	60(%rbx), %r12d
	movq	(%rbx), %rax
	movq	24(%rax), %r14
	movl	32(%rax), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	64080(%rbx), %r15d
	incl	%r15d
	movl	%eax, %ebp
	jmp	.LBB39_113
	.align	16, 0x90
.LBB39_89:                              # %if.then23.i143
                                        #   in Loop: Header=BB39_85 Depth=2
	incl	40(%rcx)
.LBB39_85:                              # %while.body2.preheader.i110
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_86 Depth 3
	movq	(%rbx), %rcx
	jmp	.LBB39_86
.LBB39_96:                              # %if.then84.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	%esi, 64(%rbx)
	.align	16, 0x90
.LBB39_86:                              # %while.body2.preheader.i110
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$0, 32(%rcx)
	je	.LBB39_45
# BB#87:                                # %if.end.i121
                                        #   in Loop: Header=BB39_86 Depth=3
	cmpl	$0, 16(%rbx)
	je	.LBB39_90
# BB#88:                                # %if.end6.i139
                                        #   in Loop: Header=BB39_86 Depth=3
	movb	12(%rbx), %al
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movl	3184(%rbx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	shrl	$24, %eax
	movzbl	12(%rbx), %edx
	xorl	%eax, %edx
	xorl	BZ2_crc32Table(,%rdx,4), %ecx
	movl	%ecx, 3184(%rbx)
	decl	16(%rbx)
	movq	(%rbx), %rax
	incq	24(%rax)
	movq	(%rbx), %rax
	decl	32(%rax)
	movq	(%rbx), %rax
	incl	36(%rax)
	movq	(%rbx), %rcx
	cmpl	$0, 36(%rcx)
	jne	.LBB39_86
	jmp	.LBB39_89
	.align	16, 0x90
.LBB39_90:                              # %while.end.i146
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	1092(%rbx), %r10d
	movl	64080(%rbx), %ebp
	leal	1(%rbp), %eax
	cmpl	%eax, %r10d
	je	.LBB39_45
# BB#91:                                # %if.end30.i148
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	$-4, %eax
	jg	.LBB39_140
# BB#92:                                # %if.end37.i151
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	$1, 16(%rbx)
	movl	64(%rbx), %r9d
	movb	%r9b, 12(%rbx)
	movl	60(%rbx), %eax
	movq	3152(%rbx), %r8
	movl	(%r8,%rax,4), %esi
	movl	%esi, %edi
	shrl	$8, %edi
	movl	%edi, 60(%rbx)
	movq	24(%rbx), %rax
	movq	%rax, %r14
	shrq	$32, %r14
	testl	%eax, %eax
	jne	.LBB39_94
# BB#93:                                # %if.then50.i
                                        #   in Loop: Header=BB39_86 Depth=3
	sarq	$32, %rax
	movl	BZ2_rNums(,%rax,4), %eax
	movl	%eax, 24(%rbx)
	incl	%r14d
	cmpl	$512, %r14d             # imm = 0x200
	movl	$0, %edx
	cmovel	%edx, %r14d
	movl	%r14d, 28(%rbx)
.LBB39_94:                              # %if.end62.i
                                        #   in Loop: Header=BB39_86 Depth=3
	decl	%eax
	movl	%eax, 24(%rbx)
	leal	1(%r10), %r15d
	movl	%r15d, 1092(%rbx)
	cmpl	%ebp, %r10d
	je	.LBB39_86
# BB#95:                                # %if.end79.i
                                        #   in Loop: Header=BB39_86 Depth=3
	cmpl	$1, %eax
	sete	%dl
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	xorl	%edx, %esi
	cmpl	%r9d, %esi
	jne	.LBB39_96
# BB#97:                                # %if.end87.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	$2, 16(%rbx)
	movl	%edi, %edx
	movl	(%r8,%rdx,4), %esi
	movl	%esi, %edi
	shrl	$8, %edi
	movl	%edi, 60(%rbx)
	testl	%eax, %eax
	jne	.LBB39_99
# BB#98:                                # %if.then102.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movslq	%r14d, %r14
	movl	BZ2_rNums(,%r14,4), %eax
	movl	%eax, 24(%rbx)
	incl	%r14d
	cmpl	$512, %r14d             # imm = 0x200
	movl	$0, %edx
	cmovel	%edx, %r14d
	movl	%r14d, 28(%rbx)
.LBB39_99:                              # %if.end115.i
                                        #   in Loop: Header=BB39_86 Depth=3
	decl	%eax
	movl	%eax, 24(%rbx)
	leal	2(%r10), %r11d
	movl	%r11d, 1092(%rbx)
	cmpl	%ebp, %r15d
	je	.LBB39_86
# BB#100:                               # %if.end133.i
                                        #   in Loop: Header=BB39_86 Depth=3
	cmpl	$1, %eax
	sete	%dl
	movzbl	%dl, %r15d
	movzbl	%sil, %edx
	xorl	%r15d, %edx
	cmpl	%r9d, %edx
	jne	.LBB39_101
# BB#102:                               # %if.end141.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	$3, 16(%rbx)
	movl	%edi, %edx
	movl	(%r8,%rdx,4), %esi
	movl	%esi, %r15d
	shrl	$8, %r15d
	movl	%r15d, 60(%rbx)
	testl	%eax, %eax
	jne	.LBB39_104
# BB#103:                               # %if.then156.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movslq	%r14d, %r14
	movl	BZ2_rNums(,%r14,4), %eax
	movl	%eax, 24(%rbx)
	incl	%r14d
	cmpl	$512, %r14d             # imm = 0x200
	movl	$0, %edx
	cmovel	%edx, %r14d
	movl	%r14d, 28(%rbx)
.LBB39_104:                             # %if.end169.i
                                        #   in Loop: Header=BB39_86 Depth=3
	decl	%eax
	movl	%eax, 24(%rbx)
	leal	3(%r10), %edi
	movl	%edi, 1092(%rbx)
	cmpl	%ebp, %r11d
	je	.LBB39_86
# BB#105:                               # %if.end187.i
                                        #   in Loop: Header=BB39_86 Depth=3
	cmpl	$1, %eax
	sete	%dl
	movzbl	%dl, %edx
	movzbl	%sil, %esi
	xorl	%edx, %esi
	cmpl	%r9d, %esi
	jne	.LBB39_106
# BB#107:                               # %if.end195.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	%r15d, %edx
	movl	(%r8,%rdx,4), %ebp
	movl	%ebp, %esi
	shrl	$8, %esi
	movl	%esi, 60(%rbx)
	testl	%eax, %eax
	jne	.LBB39_109
# BB#108:                               # %if.then209.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movslq	%r14d, %r14
	movl	BZ2_rNums(,%r14,4), %eax
	movl	%eax, 24(%rbx)
	incl	%r14d
	cmpl	$512, %r14d             # imm = 0x200
	movl	$0, %edx
	cmovel	%edx, %r14d
	movl	%r14d, 28(%rbx)
.LBB39_109:                             # %if.end222.i
                                        #   in Loop: Header=BB39_86 Depth=3
	leal	-1(%rax), %edi
	movl	%edi, 24(%rbx)
	cmpl	$1, %edi
	sete	%dl
	movzbl	%dl, %edx
	leal	4(%r10), %edi
	movl	%edi, 1092(%rbx)
	movzbl	%bpl, %edi
	xorl	%edx, %edi
	addl	$4, %edi
	movl	%edi, 16(%rbx)
	movl	%esi, %edx
	movl	(%r8,%rdx,4), %esi
	movzbl	%sil, %edx
	shrl	$8, %esi
	decl	%eax
	movl	%edx, 64(%rbx)
	movl	%esi, 60(%rbx)
	jne	.LBB39_111
# BB#110:                               # %if.then252.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movslq	%r14d, %rsi
	movl	BZ2_rNums(,%rsi,4), %eax
	movl	%eax, 24(%rbx)
	incl	%esi
	cmpl	$512, %esi              # imm = 0x200
	movl	$0, %edi
	cmovel	%edi, %esi
	movl	%esi, 28(%rbx)
.LBB39_111:                             # %if.end265.i
                                        #   in Loop: Header=BB39_86 Depth=3
	decl	%eax
	movl	%eax, 24(%rbx)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%edx, %eax
	movl	%eax, 64(%rbx)
	addl	$5, %r10d
	movl	%r10d, 1092(%rbx)
	jmp	.LBB39_86
.LBB39_101:                             # %if.then138.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	%edx, 64(%rbx)
	jmp	.LBB39_86
.LBB39_106:                             # %if.then192.i
                                        #   in Loop: Header=BB39_86 Depth=3
	movl	%esi, 64(%rbx)
	jmp	.LBB39_86
.LBB39_58:                              # %while.body342.preheader.i
                                        #   in Loop: Header=BB39_4 Depth=1
	testl	%eax, %eax
	je	.LBB39_45
	.align	16, 0x90
.LBB39_59:                              # %if.end348.i
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_65 Depth 3
                                        #       Child Loop BB39_70 Depth 3
                                        #       Child Loop BB39_75 Depth 3
                                        #       Child Loop BB39_79 Depth 3
                                        #       Child Loop BB39_81 Depth 3
	cmpl	$0, 16(%rbx)
	je	.LBB39_62
# BB#60:                                # %if.end353.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movb	12(%rbx), %al
	movq	24(%r13), %rcx
	movb	%al, (%rcx)
	movl	3184(%rbx), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	shrl	$24, %eax
	movzbl	12(%rbx), %edx
	xorl	%eax, %edx
	xorl	BZ2_crc32Table(,%rdx,4), %ecx
	movl	%ecx, 3184(%rbx)
	decl	16(%rbx)
	movq	(%rbx), %rax
	incq	24(%rax)
	movq	(%rbx), %rax
	decl	32(%rax)
	movq	(%rbx), %rax
	incl	36(%rax)
	movq	(%rbx), %r13
	cmpl	$0, 36(%r13)
	jne	.LBB39_83
# BB#61:                                # %if.then383.i
                                        #   in Loop: Header=BB39_59 Depth=2
	incl	40(%r13)
	movq	(%rbx), %r13
	jmp	.LBB39_83
	.align	16, 0x90
.LBB39_62:                              # %while.end388.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	1092(%rbx), %r14d
	movl	64080(%rbx), %r15d
	leal	1(%r15), %eax
	cmpl	%eax, %r14d
	je	.LBB39_45
# BB#63:                                # %if.end395.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	$-4, %eax
	jg	.LBB39_140
# BB#64:                                # %if.end402.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	$1, 16(%rbx)
	movl	64(%rbx), %r11d
	movb	%r11b, 12(%rbx)
	movl	60(%rbx), %ecx
	xorl	%edi, %edi
	movl	$256, %eax              # imm = 0x100
	.align	16, 0x90
.LBB39_65:                              # %do.body.i870.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rax), %edx
	sarl	%edx
	movslq	%edx, %rdx
	cmpl	%ecx, 1096(%rbx,%rdx,4)
	cmovgl	%edx, %eax
	cmovlel	%edx, %edi
	movl	%eax, %edx
	subl	%edi, %edx
	cmpl	$1, %edx
	jne	.LBB39_65
# BB#66:                                # %BZ2_indexIntoF.exit871.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movq	3160(%rbx), %r10
	movq	3168(%rbx), %r9
	movzwl	(%r10,%rcx,2), %eax
	movl	%ecx, %edx
	shrl	%edx
	movzbl	(%r9,%rdx), %edx
	leal	(,%rcx,4), %ecx
	andb	$4, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%eax, %edx
	movl	%edx, 60(%rbx)
	leal	1(%r14), %esi
	movl	%esi, 1092(%rbx)
	cmpl	%r15d, %r14d
	je	.LBB39_83
# BB#67:                                # %if.end439.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movzbl	%dil, %ecx
	cmpl	%r11d, %ecx
	jne	.LBB39_68
# BB#69:                                # %if.end447.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	$2, 16(%rbx)
	xorl	%edi, %edi
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB39_70:                              # %do.body.i857.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rcx), %ebp
	sarl	%ebp
	movslq	%ebp, %rbp
	cmpl	%edx, 1096(%rbx,%rbp,4)
	cmovgl	%ebp, %ecx
	cmovlel	%ebp, %edi
	movl	%ecx, %ebp
	subl	%edi, %ebp
	cmpl	$1, %ebp
	jne	.LBB39_70
# BB#71:                                # %BZ2_indexIntoF.exit858.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%edx, %ecx
	movzwl	(%r10,%rcx,2), %r8d
	shrl	%edx
	movzbl	(%r9,%rdx), %edx
	shll	$2, %eax
	andb	$4, %al
	movb	%al, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%r8d, %edx
	movl	%edx, 60(%rbx)
	leal	2(%r14), %eax
	movl	%eax, 1092(%rbx)
	cmpl	%r15d, %esi
	je	.LBB39_83
# BB#72:                                # %if.end481.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movzbl	%dil, %ecx
	cmpl	%r11d, %ecx
	jne	.LBB39_73
# BB#74:                                # %if.end489.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	$3, 16(%rbx)
	xorl	%edi, %edi
	movl	$256, %ecx              # imm = 0x100
	.align	16, 0x90
.LBB39_75:                              # %do.body.i844.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %rsi
	cmpl	%edx, 1096(%rbx,%rsi,4)
	cmovgl	%esi, %ecx
	cmovlel	%esi, %edi
	movl	%ecx, %esi
	subl	%edi, %esi
	cmpl	$1, %esi
	jne	.LBB39_75
# BB#76:                                # %BZ2_indexIntoF.exit845.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%edx, %ecx
	movzwl	(%r10,%rcx,2), %esi
	shrl	%edx
	movzbl	(%r9,%rdx), %edx
	shll	$2, %r8d
	andb	$4, %r8b
	movb	%r8b, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%esi, %edx
	movl	%edx, 60(%rbx)
	leal	3(%r14), %ecx
	movl	%ecx, 1092(%rbx)
	cmpl	%r15d, %eax
	je	.LBB39_83
# BB#77:                                # %if.end523.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movzbl	%dil, %eax
	cmpl	%r11d, %eax
	jne	.LBB39_142
# BB#78:                                #   in Loop: Header=BB39_59 Depth=2
	xorl	%edi, %edi
	movl	$256, %eax              # imm = 0x100
.LBB39_79:                              # %do.body.i831.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rdi,%rax), %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	cmpl	%edx, 1096(%rbx,%rcx,4)
	cmovgl	%ecx, %eax
	cmovlel	%ecx, %edi
	movl	%eax, %ecx
	subl	%edi, %ecx
	cmpl	$1, %ecx
	jne	.LBB39_79
# BB#80:                                # %BZ2_indexIntoF.exit832.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%edx, %eax
	movzwl	(%r10,%rax,2), %r8d
	shrl	%edx
	movzbl	(%r9,%rdx), %eax
	shll	$2, %esi
	andb	$4, %sil
	movb	%sil, %cl
	shrl	%cl, %eax
	andl	$15, %eax
	shll	$16, %eax
	orl	%r8d, %eax
	movl	%eax, 60(%rbx)
	leal	4(%r14), %ecx
	movl	%ecx, 1092(%rbx)
	movzbl	%dil, %ecx
	addl	$4, %ecx
	movl	%ecx, 16(%rbx)
	xorl	%ecx, %ecx
	movl	$256, %edx              # imm = 0x100
.LBB39_81:                              # %do.body.i818.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_59 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rcx,%rdx), %esi
	sarl	%esi
	movslq	%esi, %rsi
	cmpl	%eax, 1096(%rbx,%rsi,4)
	cmovgl	%esi, %edx
	cmovlel	%esi, %ecx
	movl	%edx, %esi
	subl	%ecx, %esi
	cmpl	$1, %esi
	jne	.LBB39_81
# BB#82:                                # %BZ2_indexIntoF.exit819.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%ecx, 64(%rbx)
	movl	%eax, %ecx
	movzwl	(%r10,%rcx,2), %edx
	shrl	%eax
	movzbl	(%r9,%rax), %eax
	shll	$2, %r8d
	andb	$4, %r8b
	movb	%r8b, %cl
	shrl	%cl, %eax
	andl	$15, %eax
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, 60(%rbx)
	addl	$5, %r14d
	movl	%r14d, 1092(%rbx)
	jmp	.LBB39_83
.LBB39_68:                              # %if.then444.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%ecx, 64(%rbx)
	jmp	.LBB39_83
.LBB39_73:                              # %if.then486.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%ecx, 64(%rbx)
	jmp	.LBB39_83
.LBB39_142:                             # %if.then528.i
                                        #   in Loop: Header=BB39_59 Depth=2
	movl	%eax, 64(%rbx)
	.align	16, 0x90
.LBB39_83:                              # %while.body342.backedge.i
                                        #   in Loop: Header=BB39_59 Depth=2
	cmpl	$0, 32(%r13)
	jne	.LBB39_59
	jmp	.LBB39_45
.LBB39_138:                             # %if.end385.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	%r12d, %eax
	movl	(%r10,%rax,4), %eax
	movzbl	%al, %r9d
	shrl	$8, %eax
	addl	$4, %r9d
	movl	(%r10,%rax,4), %r12d
	movzbl	%r12b, %r8d
	shrl	$8, %r12d
	addl	$5, %edi
	movl	%edi, %r11d
.LBB39_113:                             # %while.body290.i
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_118 Depth 3
	testl	%r9d, %r9d
	jle	.LBB39_114
# BB#115:                               # %while.body295.preheader.i
                                        #   in Loop: Header=BB39_113 Depth=2
	xorl	%esi, %esi
	testl	%ebp, %ebp
	je	.LBB39_116
# BB#117:                               # %if.end299.lr.ph.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movzbl	%cl, %eax
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movl	%ebp, %ebp
	movl	%r9d, %edx
	decq	%rdx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB39_118:                             # %if.end299.i
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	%edi, %edx
	je	.LBB39_124
# BB#119:                               # %if.end303.i
                                        #   in Loop: Header=BB39_118 Depth=3
	movb	%al, (%r14,%rdi)
	movl	%r13d, %esi
	shll	$8, %esi
	shrl	$24, %r13d
	movl	%r13d, %r10d
	xorl	%eax, %r10d
	movl	%esi, %r13d
	xorl	BZ2_crc32Table(,%r10,4), %r13d
	incq	%rdi
	cmpl	%edi, %ebp
	jne	.LBB39_118
	jmp	.LBB39_120
.LBB39_114:                             #   in Loop: Header=BB39_113 Depth=2
	movb	%cl, %dl
	movl	%r11d, %edi
	movl	%r8d, %ecx
	jmp	.LBB39_128
.LBB39_124:                             # %s_state_out_len_eq_one.i.loopexit
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	8(%rsp), %ebp           # 4-byte Reload
	subl	%edi, %ebp
	addq	%rdi, %r14
	movq	16(%rsp), %r10          # 8-byte Reload
.LBB39_125:                             # %s_state_out_len_eq_one.i
                                        #   in Loop: Header=BB39_113 Depth=2
	testl	%ebp, %ebp
	je	.LBB39_126
# BB#127:                               # %if.end318.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movb	%cl, (%r14)
	movl	%r13d, %eax
	shll	$8, %eax
	shrl	$24, %r13d
	movzbl	%cl, %edx
	xorl	%r13d, %edx
	xorl	BZ2_crc32Table(,%rdx,4), %eax
	incq	%r14
	decl	%ebp
	movb	%cl, %dl
	movl	%r11d, %edi
	movl	%r8d, %ecx
	movl	%eax, %r13d
.LBB39_128:                             # %if.end328.i159
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	$-4, %eax
	cmpl	%r15d, %edi
	jg	.LBB39_140
# BB#129:                               # %if.end332.i
                                        #   in Loop: Header=BB39_113 Depth=2
	xorl	%r9d, %r9d
	cmpl	%r15d, %edi
	je	.LBB39_130
# BB#131:                               # %if.end336.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	%r12d, %eax
	movl	(%r10,%rax,4), %r12d
	movzbl	%r12b, %r8d
	shrl	$8, %r12d
	leal	1(%rdi), %r11d
	cmpl	%ecx, %r8d
	jne	.LBB39_125
# BB#132:                               # %if.end349.i
                                        #   in Loop: Header=BB39_113 Depth=2
	cmpl	%r15d, %r11d
	jne	.LBB39_134
# BB#133:                               #   in Loop: Header=BB39_113 Depth=2
	movl	%r15d, %r11d
	movl	%ecx, %r8d
	jmp	.LBB39_125
.LBB39_134:                             # %if.end353.i162
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	%r12d, %eax
	movl	(%r10,%rax,4), %eax
	movl	%eax, %r12d
	shrl	$8, %r12d
	leal	2(%rdi), %edx
	movl	$2, %r9d
	cmpl	%r15d, %edx
	movl	%r15d, %r11d
	movl	%ecx, %r8d
	je	.LBB39_113
# BB#135:                               # %if.end363.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movzbl	%al, %r8d
	cmpl	%ecx, %r8d
	movl	%edx, %r11d
	jne	.LBB39_113
# BB#136:                               # %if.end369.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movl	%r12d, %eax
	movl	(%r10,%rax,4), %eax
	movl	%eax, %r12d
	shrl	$8, %r12d
	leal	3(%rdi), %edx
	movl	$3, %r9d
	cmpl	%r15d, %edx
	movl	%r15d, %r11d
	movl	%ecx, %r8d
	je	.LBB39_113
# BB#137:                               # %if.end379.i
                                        #   in Loop: Header=BB39_113 Depth=2
	movzbl	%al, %r8d
	cmpl	%ecx, %r8d
	movl	%edx, %r11d
	jne	.LBB39_113
	jmp	.LBB39_138
.LBB39_120:                             # %return_notr.i.loopexit
                                        #   in Loop: Header=BB39_4 Depth=1
	addq	%rdi, %r14
	subl	%edi, %r9d
	movb	%cl, %dl
	movq	16(%rsp), %r10          # 8-byte Reload
	movl	12(%rsp), %edi          # 4-byte Reload
	xorl	%esi, %esi
	jmp	.LBB39_121
.LBB39_126:                             #   in Loop: Header=BB39_4 Depth=1
	xorl	%esi, %esi
	movl	$1, %r9d
.LBB39_116:                             #   in Loop: Header=BB39_4 Depth=1
	movb	%cl, %dl
	movl	12(%rsp), %edi          # 4-byte Reload
	jmp	.LBB39_121
.LBB39_130:                             #   in Loop: Header=BB39_4 Depth=1
	movl	%r15d, %r11d
	movl	%ecx, %r8d
	movl	%ebp, %esi
	movl	12(%rsp), %edi          # 4-byte Reload
.LBB39_121:                             # %return_notr.i
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	(%rbx), %rax
	movl	36(%rax), %ecx
	subl	%esi, %edi
	addl	%ecx, %edi
	movl	%edi, 36(%rax)
	movq	(%rbx), %rax
	cmpl	%ecx, 36(%rax)
	jae	.LBB39_123
# BB#122:                               # %if.then410.i
                                        #   in Loop: Header=BB39_4 Depth=1
	incl	40(%rax)
	movq	(%rbx), %rax
.LBB39_123:                             #   in Loop: Header=BB39_4 Depth=1
	movl	%r13d, 3184(%rbx)
	movb	%dl, 12(%rbx)
	movl	%r9d, 16(%rbx)
	movl	%r11d, 1092(%rbx)
	movl	%r8d, 64(%rbx)
	movq	%r10, 3152(%rbx)
	movl	%r12d, 60(%rbx)
	movq	%r14, 24(%rax)
	movq	(%rbx), %rax
	movl	%esi, 32(%rax)
	.align	16, 0x90
.LBB39_45:                              # %if.end20
                                        #   in Loop: Header=BB39_4 Depth=1
	movl	64080(%rbx), %ecx
	incl	%ecx
	xorl	%eax, %eax
	cmpl	%ecx, 1092(%rbx)
	jne	.LBB39_140
# BB#46:                                # %land.lhs.true
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	$0, 16(%rbx)
	jne	.LBB39_140
# BB#47:                                # %if.then23
                                        #   in Loop: Header=BB39_4 Depth=1
	movl	3184(%rbx), %ecx
	notl	%ecx
	movl	%ecx, 3184(%rbx)
	movl	52(%rbx), %eax
	cmpl	$3, %eax
	jge	.LBB39_48
.LBB39_49:                              # %if.end29
                                        #   in Loop: Header=BB39_4 Depth=1
	cmpl	$2, %eax
	jge	.LBB39_50
.LBB39_51:                              # %if.end34
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	3184(%rbx), %rcx
	movl	$-4, %eax
	cmpl	3176(%rbx), %ecx
	jne	.LBB39_140
# BB#52:                                # %if.end47.thread
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	%rcx, %rax
	shrq	$31, %rax
	andl	$-2, %eax
	movq	%rcx, %rdx
	shrq	$63, %rdx
	orl	%eax, %edx
	xorl	%edx, %ecx
	movl	%ecx, 3188(%rbx)
	movl	$14, 8(%rbx)
.LBB39_53:                              # %if.then50
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	%rbx, %rdi
	callq	BZ2_decompress
	cmpl	$4, %eax
	je	.LBB39_54
# BB#139:                               # %cleanup
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	8(%rbx), %rcx
	movl	$2, %edx
	cmpl	$2, %ecx
	je	.LBB39_4
	jmp	.LBB39_140
.LBB39_48:                              # %if.then26
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	stderr(%rip), %rdi
	movl	3176(%rbx), %edx
	movl	$.L.str.2.37, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	52(%rbx), %eax
	jmp	.LBB39_49
.LBB39_50:                              # %if.then32
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	stderr(%rip), %rsi
	movl	$93, %edi
	callq	fputc
	jmp	.LBB39_51
	.align	16, 0x90
.LBB39_4:                               # %while.body.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_6 Depth 2
                                        #     Child Loop BB39_10 Depth 2
                                        #       Child Loop BB39_16 Depth 3
                                        #       Child Loop BB39_23 Depth 3
                                        #       Child Loop BB39_30 Depth 3
                                        #       Child Loop BB39_36 Depth 3
                                        #       Child Loop BB39_40 Depth 3
                                        #     Child Loop BB39_59 Depth 2
                                        #       Child Loop BB39_65 Depth 3
                                        #       Child Loop BB39_70 Depth 3
                                        #       Child Loop BB39_75 Depth 3
                                        #       Child Loop BB39_79 Depth 3
                                        #       Child Loop BB39_81 Depth 3
                                        #     Child Loop BB39_85 Depth 2
                                        #       Child Loop BB39_86 Depth 3
                                        #     Child Loop BB39_113 Depth 2
                                        #       Child Loop BB39_118 Depth 3
	cmpl	$2, %edx
	je	.LBB39_7
# BB#5:                                 # %while.body.outer
                                        #   in Loop: Header=BB39_4 Depth=1
	movl	$-1, %eax
	cmpl	$1, %edx
	jne	.LBB39_6
	jmp	.LBB39_140
.LBB39_54:                              # %if.then53
	cmpl	$2, 52(%rbx)
	jg	.LBB39_55
.LBB39_56:                              # %cleanup.thread
	movl	3188(%rbx), %ecx
	movl	$4, %eax
	cmpl	3180(%rbx), %ecx
	je	.LBB39_140
# BB#57:                                # %select.false
	movl	$-4, %eax
.LBB39_140:                             # %cleanup71
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB39_55:                              # %if.then56
	movq	stderr(%rip), %rdi
	movl	3180(%rbx), %edx
	movl	3188(%rbx), %ecx
	movl	$.L.str.4.38, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB39_56
.Lfunc_end39:
	.size	BZ2_bzDecompress, .Lfunc_end39-BZ2_bzDecompress
	.cfi_endproc

	.globl	BZ2_bzDecompressEnd
	.align	16, 0x90
	.type	BZ2_bzDecompressEnd,@function
BZ2_bzDecompressEnd:                    # @BZ2_bzDecompressEnd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp200:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp202:
	.cfi_def_cfa_offset 32
.Ltmp203:
	.cfi_offset %rbx, -24
.Ltmp204:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	$-2, %eax
	testq	%rbx, %rbx
	je	.LBB40_10
# BB#1:                                 # %if.end
	movq	48(%rbx), %r14
	testq	%r14, %r14
	je	.LBB40_10
# BB#2:                                 # %if.end3
	cmpq	%rbx, (%r14)
	jne	.LBB40_10
# BB#3:                                 # %if.end7
	movq	3152(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB40_5
# BB#4:                                 # %if.then9
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB40_5:                               # %if.end11
	movq	3160(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB40_7
# BB#6:                                 # %if.then13
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB40_7:                               # %if.end17
	movq	3168(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB40_9
# BB#8:                                 # %if.then19
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
.LBB40_9:                               # %if.end23
	movq	48(%rbx), %rsi
	movq	72(%rbx), %rdi
	callq	*64(%rbx)
	movq	$0, 48(%rbx)
	xorl	%eax, %eax
.LBB40_10:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end40:
	.size	BZ2_bzDecompressEnd, .Lfunc_end40-BZ2_bzDecompressEnd
	.cfi_endproc

	.globl	BZ2_bzWriteOpen
	.align	16, 0x90
	.type	BZ2_bzWriteOpen,@function
BZ2_bzWriteOpen:                        # @BZ2_bzWriteOpen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp205:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp206:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp207:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp208:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp209:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp211:
	.cfi_def_cfa_offset 64
.Ltmp212:
	.cfi_offset %rbx, -56
.Ltmp213:
	.cfi_offset %r12, -48
.Ltmp214:
	.cfi_offset %r13, -40
.Ltmp215:
	.cfi_offset %r14, -32
.Ltmp216:
	.cfi_offset %r15, -24
.Ltmp217:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %r13d
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB41_2
# BB#1:                                 # %if.then
	movl	$0, (%r14)
.LBB41_2:                               # %if.end3
	cmpl	$4, %r12d
	ja	.LBB41_6
# BB#3:                                 # %if.end3
	cmpl	$250, %ebp
	ja	.LBB41_6
# BB#4:                                 # %if.end3
	testl	%r13d, %r13d
	je	.LBB41_6
# BB#5:                                 # %if.end3
	leal	-1(%r15), %eax
	cmpl	$9, %eax
	jae	.LBB41_6
# BB#8:                                 # %if.end24
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB41_9
# BB#11:                                # %if.end34
	testq	%r14, %r14
	je	.LBB41_13
# BB#12:                                # %if.then36
	movl	$0, (%r14)
.LBB41_13:                              # %if.end41
	movl	$0, 5096(%rbx)
	movb	$0, 5100(%rbx)
	movl	$0, 5004(%rbx)
	movl	%r13d, (%rbx)
	movb	$1, 5008(%rbx)
	movq	%rbx, %rdi
	addq	$5016, %rdi             # imm = 0x1398
	testl	%ebp, %ebp
	movl	$30, %ecx
	cmovnel	%ebp, %ecx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5072(%rbx)
	movq	$0, 5088(%rbx)
	movl	%r15d, %esi
	movl	%r12d, %edx
	callq	BZ2_bzCompressInit
	testl	%eax, %eax
	je	.LBB41_17
# BB#14:                                # %if.then50
	testq	%r14, %r14
	je	.LBB41_16
# BB#15:                                # %if.then52
	movl	%eax, (%r14)
.LBB41_16:                              # %if.end57
	movq	%rbx, %rdi
	callq	free
	xorl	%ebx, %ebx
	jmp	.LBB41_18
.LBB41_6:                               # %if.then16
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB41_18
# BB#7:                                 # %if.then18
	movl	$-2, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB41_18
.LBB41_9:                               # %if.then26
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB41_18
# BB#10:                                # %if.then28
	movl	$-3, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB41_18
.LBB41_17:                              # %if.end58
	movl	$0, 5024(%rbx)
	movb	$1, 5100(%rbx)
.LBB41_18:                              # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	BZ2_bzWriteOpen, .Lfunc_end41-BZ2_bzWriteOpen
	.cfi_endproc

	.globl	BZ2_bzWrite
	.align	16, 0x90
	.type	BZ2_bzWrite,@function
BZ2_bzWrite:                            # @BZ2_bzWrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp218:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp219:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp220:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp221:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp222:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp223:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp224:
	.cfi_def_cfa_offset 64
.Ltmp225:
	.cfi_offset %rbx, -56
.Ltmp226:
	.cfi_offset %r12, -48
.Ltmp227:
	.cfi_offset %r13, -40
.Ltmp228:
	.cfi_offset %r14, -32
.Ltmp229:
	.cfi_offset %r15, -24
.Ltmp230:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$0, (%r14)
.LBB42_2:                               # %if.end
	testq	%rbx, %rbx
	je	.LBB42_5
# BB#3:                                 # %if.end3
	movl	$0, 5096(%rbx)
	testq	%rdx, %rdx
	je	.LBB42_5
# BB#4:                                 # %if.end3
	testl	%ecx, %ecx
	js	.LBB42_5
# BB#9:                                 # %if.end16
	cmpb	$0, 5008(%rbx)
	je	.LBB42_10
# BB#13:                                # %if.end25
	testl	%ecx, %ecx
	je	.LBB42_31
# BB#14:                                # %if.end35
	leaq	5016(%rbx), %r15
	movl	%ecx, 5024(%rbx)
	movq	%rdx, 5016(%rbx)
	leaq	4(%rbx), %r12
	movl	$-1, %r13d
	.align	16, 0x90
.LBB42_15:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$5000, 5048(%rbx)       # imm = 0x1388
	movq	%r12, 5040(%rbx)
	movq	5064(%rbx), %rax
	movl	$-2, %ebp
	testq	%rax, %rax
	je	.LBB42_21
# BB#16:                                # %if.end3.i
                                        #   in Loop: Header=BB42_15 Depth=1
	cmpq	%r15, (%rax)
	jne	.LBB42_21
# BB#17:                                # %preswitch.preheader.i
                                        #   in Loop: Header=BB42_15 Depth=1
	movl	8(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB42_18
# BB#20:                                # %sw.bb8.i
                                        #   in Loop: Header=BB42_15 Depth=1
	movq	%r15, %rdi
	callq	handle_compress
	testb	%al, %al
	je	.LBB42_21
# BB#25:                                # %if.end50
                                        #   in Loop: Header=BB42_15 Depth=1
	movl	5048(%rbx), %eax
	cmpl	$4999, %eax             # imm = 0x1387
	ja	.LBB42_30
# BB#26:                                # %if.then54
                                        #   in Loop: Header=BB42_15 Depth=1
	movl	$5000, %ebp             # imm = 0x1388
	subl	%eax, %ebp
	movl	(%rbx), %ecx
	movl	$1, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	spec_fwrite
	cmpl	%eax, %ebp
	jne	.LBB42_27
.LBB42_30:                              # %if.end70
                                        #   in Loop: Header=BB42_15 Depth=1
	cmpl	$0, 5024(%rbx)
	jne	.LBB42_15
.LBB42_31:                              # %if.then74
	testq	%r14, %r14
	je	.LBB42_33
# BB#32:                                # %if.then76
	movl	$0, (%r14)
.LBB42_33:                              # %if.then79
	movl	$0, 5096(%rbx)
	jmp	.LBB42_34
.LBB42_5:                               # %if.then8
	testq	%r14, %r14
	je	.LBB42_7
# BB#6:                                 # %if.then10
	movl	$-2, (%r14)
.LBB42_7:                               # %if.end11
	testq	%rbx, %rbx
	je	.LBB42_34
# BB#8:                                 # %if.then13
	movl	$-2, 5096(%rbx)
	jmp	.LBB42_34
.LBB42_10:                              # %if.then17
	testq	%r14, %r14
	je	.LBB42_12
# BB#11:                                # %if.then19
	movl	$-1, (%r14)
.LBB42_12:                              # %if.then22
	movl	$-1, 5096(%rbx)
	jmp	.LBB42_34
.LBB42_18:                              # %preswitch.preheader.i
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB42_22
# BB#19:                                # %preswitch.preheader.i
	xorl	%ebp, %ebp
	cmpl	$1, %eax
	je	.LBB42_22
.LBB42_21:                              # %if.then42.loopexit
	movl	%ebp, %r13d
.LBB42_22:                              # %if.then42
	testq	%r14, %r14
	je	.LBB42_24
# BB#23:                                # %if.then44
	movl	%r13d, (%r14)
.LBB42_24:                              # %if.then47
	movl	%r13d, 5096(%rbx)
.LBB42_34:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_27:                              # %if.then61
	testq	%r14, %r14
	je	.LBB42_29
# BB#28:                                # %if.then63
	movl	$-6, (%r14)
.LBB42_29:                              # %if.then66
	movl	$-6, 5096(%rbx)
	jmp	.LBB42_34
.Lfunc_end42:
	.size	BZ2_bzWrite, .Lfunc_end42-BZ2_bzWrite
	.cfi_endproc

	.globl	BZ2_bzWriteClose
	.align	16, 0x90
	.type	BZ2_bzWriteClose,@function
BZ2_bzWriteClose:                       # @BZ2_bzWriteClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp231:
	.cfi_def_cfa_offset 16
	movq	%r8, %rax
	movq	$0, (%rsp)
	xorl	%r8d, %r8d
	movq	%rax, %r9
	callq	BZ2_bzWriteClose64
	popq	%rax
	retq
.Lfunc_end43:
	.size	BZ2_bzWriteClose, .Lfunc_end43-BZ2_bzWriteClose
	.cfi_endproc

	.globl	BZ2_bzWriteClose64
	.align	16, 0x90
	.type	BZ2_bzWriteClose64,@function
BZ2_bzWriteClose64:                     # @BZ2_bzWriteClose64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp235:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp236:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp238:
	.cfi_def_cfa_offset 96
.Ltmp239:
	.cfi_offset %rbx, -56
.Ltmp240:
	.cfi_offset %r12, -48
.Ltmp241:
	.cfi_offset %r13, -40
.Ltmp242:
	.cfi_offset %r14, -32
.Ltmp243:
	.cfi_offset %r15, -24
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%r8, %r12
	movq	%rcx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB44_1
# BB#3:                                 # %if.end6
	cmpb	$0, 5008(%rbx)
	je	.LBB44_4
# BB#7:                                 # %if.end15
	movq	96(%rsp), %rcx
	testq	%r13, %r13
	je	.LBB44_9
# BB#8:                                 # %if.then17
	movl	$0, (%r13)
.LBB44_9:                               # %if.end18
	testq	%r12, %r12
	je	.LBB44_11
# BB#10:                                # %if.then20
	movl	$0, (%r12)
.LBB44_11:                              # %if.end21
	testq	%r9, %r9
	je	.LBB44_13
# BB#12:                                # %if.then23
	movl	$0, (%r9)
.LBB44_13:                              # %if.end24
	testq	%rcx, %rcx
	je	.LBB44_15
# BB#14:                                # %if.then26
	movl	$0, (%rcx)
.LBB44_15:                              # %if.end27
	testl	%edx, %edx
	jne	.LBB44_42
# BB#16:                                # %land.lhs.true
	cmpl	$0, 5096(%rbx)
	jne	.LBB44_42
# BB#17:                                # %while.body.preheader
	leaq	5016(%rbx), %rdx
	leaq	4(%rbx), %rdi
.LBB44_18:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB44_21 Depth 2
	movl	$5000, 5048(%rbx)       # imm = 0x1388
	movq	%rdi, 5040(%rbx)
	movq	5064(%rbx), %rbp
	movl	$-2, %r15d
	testq	%rbp, %rbp
	je	.LBB44_38
# BB#19:                                # %if.end3.i
                                        #   in Loop: Header=BB44_18 Depth=1
	cmpq	%rdx, (%rbp)
	jne	.LBB44_38
# BB#20:                                # %preswitch.preheader.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	8(%rbp), %eax
	jmp	.LBB44_21
	.align	16, 0x90
.LBB44_23:                              # %sw.bb8.i
                                        #   in Loop: Header=BB44_21 Depth=2
	movl	5024(%rbx), %eax
	movl	%eax, 16(%rbp)
	movl	$4, 8(%rbp)
	movl	$4, %eax
.LBB44_21:                              # %preswitch.i
                                        #   Parent Loop BB44_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB44_37
# BB#22:                                # %preswitch.i
                                        #   in Loop: Header=BB44_21 Depth=2
	movl	$-1, %r15d
	jmpq	*.LJTI44_0(,%rax,8)
.LBB44_24:                              # %sw.bb47.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movl	16(%rbp), %eax
	cmpl	5024(%rbx), %eax
	jne	.LBB44_38
# BB#25:                                # %if.end58.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	handle_compress
	testb	%al, %al
	movq	24(%rsp), %rdi          # 8-byte Reload
	je	.LBB44_38
# BB#26:                                # %if.end62.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	$3, %ecx
	cmpl	$0, 16(%rbp)
	jne	.LBB44_31
# BB#27:                                # %lor.lhs.false66.i
                                        #   in Loop: Header=BB44_18 Depth=1
	cmpl	$255, 92(%rbp)
	ja	.LBB44_29
# BB#28:                                # %land.lhs.true.i115.i
                                        #   in Loop: Header=BB44_18 Depth=1
	cmpl	$0, 96(%rbp)
	jg	.LBB44_31
.LBB44_29:                              # %lor.lhs.false69.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	120(%rbp), %eax
	cmpl	116(%rbp), %eax
	jl	.LBB44_31
# BB#30:                                # %if.end75.i
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	$1, 8(%rbp)
	movl	$4, %ecx
.LBB44_31:                              # %if.end45
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	5048(%rbx), %eax
	cmpl	$4999, %eax             # imm = 0x1387
	ja	.LBB44_41
# BB#32:                                # %if.then49
                                        #   in Loop: Header=BB44_18 Depth=1
	movl	$5000, %r15d            # imm = 0x1388
	subl	%eax, %r15d
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	(%rbx), %ecx
	movl	$1, %esi
	movq	%rdi, %rbp
	movl	%r15d, %edx
	callq	spec_fwrite
	movl	4(%rsp), %ecx           # 4-byte Reload
	movq	%rbp, %rdi
	cmpl	%eax, %r15d
	jne	.LBB44_33
.LBB44_41:                              # %if.end65
                                        #   in Loop: Header=BB44_18 Depth=1
	cmpl	$4, %ecx
	movq	16(%rsp), %r9           # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	jne	.LBB44_18
.LBB44_42:                              # %if.end69
	testq	%r13, %r13
	je	.LBB44_44
# BB#43:                                # %if.then74
	movl	5028(%rbx), %eax
	movl	%eax, (%r13)
.LBB44_44:                              # %if.end76
	testq	%r12, %r12
	je	.LBB44_46
# BB#45:                                # %if.then78
	movl	5032(%rbx), %eax
	movl	%eax, (%r12)
.LBB44_46:                              # %if.end80
	testq	%r9, %r9
	je	.LBB44_48
# BB#47:                                # %if.then82
	movl	5052(%rbx), %eax
	movl	%eax, (%r9)
.LBB44_48:                              # %if.end84
	testq	%rcx, %rcx
	je	.LBB44_50
# BB#49:                                # %if.then86
	movl	5056(%rbx), %eax
	movl	%eax, (%rcx)
.LBB44_50:                              # %if.end88
	testq	%r14, %r14
	je	.LBB44_52
# BB#51:                                # %if.then90
	movl	$0, (%r14)
.LBB44_52:                              # %if.end95
	movl	$0, 5096(%rbx)
	movq	5064(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB44_61
# BB#53:                                # %if.end3.i164
	leaq	5016(%rbx), %rax
	cmpq	%rax, (%rbp)
	jne	.LBB44_61
# BB#54:                                # %if.end7.i
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB44_56
# BB#55:                                # %if.then9.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB44_56:                              # %if.end11.i
	movq	32(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB44_58
# BB#57:                                # %if.then13.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB44_58:                              # %if.end17.i
	movq	40(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB44_60
# BB#59:                                # %if.then19.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB44_60:                              # %if.end23.i
	movq	5064(%rbx), %rsi
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB44_61:                              # %BZ2_bzCompressEnd.exit
	movq	%rbx, %rdi
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB44_1:                               # %if.then
	testq	%r14, %r14
	je	.LBB44_36
# BB#2:                                 # %if.then2
	movl	$0, (%r14)
	jmp	.LBB44_36
.LBB44_4:                               # %if.then7
	testq	%r14, %r14
	je	.LBB44_6
# BB#5:                                 # %if.then9
	movl	$-1, (%r14)
.LBB44_6:                               # %if.then12
	movl	$-1, 5096(%rbx)
	jmp	.LBB44_36
.LBB44_37:                              # %if.then37.loopexit
	xorl	%r15d, %r15d
.LBB44_38:                              # %if.then37
	testq	%r14, %r14
	je	.LBB44_40
# BB#39:                                # %if.then39
	movl	%r15d, (%r14)
.LBB44_40:                              # %if.then42
	movl	%r15d, 5096(%rbx)
.LBB44_36:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_33:                              # %if.then56
	testq	%r14, %r14
	je	.LBB44_35
# BB#34:                                # %if.then58
	movl	$-6, (%r14)
.LBB44_35:                              # %if.then61
	movl	$-6, 5096(%rbx)
	jmp	.LBB44_36
.Lfunc_end44:
	.size	BZ2_bzWriteClose64, .Lfunc_end44-BZ2_bzWriteClose64
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI44_0:
	.quad	.LBB44_38
	.quad	.LBB44_23
	.quad	.LBB44_38
	.quad	.LBB44_24

	.text
	.globl	BZ2_bzReadOpen
	.align	16, 0x90
	.type	BZ2_bzReadOpen,@function
BZ2_bzReadOpen:                         # @BZ2_bzReadOpen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp246:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp247:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp248:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp249:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp250:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp251:
	.cfi_def_cfa_offset 64
.Ltmp252:
	.cfi_offset %rbx, -56
.Ltmp253:
	.cfi_offset %r12, -48
.Ltmp254:
	.cfi_offset %r13, -40
.Ltmp255:
	.cfi_offset %r14, -32
.Ltmp256:
	.cfi_offset %r15, -24
.Ltmp257:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, %rbp
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %r12
	testq	%r12, %r12
	je	.LBB45_2
# BB#1:                                 # %if.then
	movl	$0, (%r12)
.LBB45_2:                               # %if.end3
	testl	%r15d, %r15d
	je	.LBB45_9
# BB#3:                                 # %lor.lhs.false
	cmpl	$4, %r14d
	ja	.LBB45_9
# BB#4:                                 # %lor.lhs.false
	cmpl	$1, %ecx
	ja	.LBB45_9
# BB#5:                                 # %lor.lhs.false11
	testq	%rbp, %rbp
	jne	.LBB45_7
# BB#6:                                 # %lor.lhs.false11
	testl	%ebx, %ebx
	jne	.LBB45_9
.LBB45_7:                               # %lor.lhs.false15
	testq	%rbp, %rbp
	je	.LBB45_11
# BB#8:                                 # %lor.lhs.false15
	cmpl	$5001, %ebx             # imm = 0x1389
	jb	.LBB45_11
.LBB45_9:                               # %if.then21
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB45_28
# BB#10:                                # %if.then23
	movl	$-2, (%r12)
	xorl	%r13d, %r13d
.LBB45_28:                              # %cleanup
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_11:                              # %if.end29
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB45_12
# BB#14:                                # %if.end39
	testq	%r12, %r12
	je	.LBB45_16
# BB#15:                                # %if.then41
	movl	$0, (%r12)
.LBB45_16:                              # %if.end46
	movl	$0, 5096(%r13)
	movb	$0, 5100(%r13)
	movl	%r15d, (%r13)
	movl	$0, 5004(%r13)
	movb	$0, 5008(%r13)
	leaq	5072(%r13), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5072(%r13)
	movq	$0, 5088(%r13)
	testl	%ebx, %ebx
	jle	.LBB45_19
# BB#17:                                # %while.body.lr.ph
	incl	%ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB45_18:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbp), %dl
	movslq	%ecx, %rcx
	movb	%dl, 4(%r13,%rcx)
	movl	5004(%r13), %ecx
	incl	%ecx
	movl	%ecx, 5004(%r13)
	incq	%rbp
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB45_18
.LBB45_19:                              # %if.end10.i
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB45_21
# BB#20:                                # %if.then12.i
	movq	$default_bzalloc, (%rax)
	movl	$default_bzalloc, %ecx
.LBB45_21:                              # %if.end14.i
	cmpq	$0, 5080(%r13)
	jne	.LBB45_23
# BB#22:                                # %if.then16.i
	movq	$default_bzfree, 5080(%r13)
.LBB45_23:                              # %if.end18.i
	movq	5088(%r13), %rdi
	movl	$64144, %esi            # imm = 0xFA90
	movl	$1, %edx
	callq	*%rcx
	testq	%rax, %rax
	je	.LBB45_24
# BB#27:                                # %if.end63
	leaq	5016(%r13), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 5064(%r13)
	movl	$10, 8(%rax)
	movl	$0, 36(%rax)
	movl	$0, 32(%rax)
	movl	$0, 3188(%rax)
	movl	$0, 5028(%r13)
	movl	$0, 5032(%r13)
	movl	$0, 5052(%r13)
	movl	$0, 5056(%r13)
	movl	4(%rsp), %ecx           # 4-byte Reload
	movb	%cl, 44(%rax)
	movl	$0, 48(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 3152(%rax)
	movq	$0, 3168(%rax)
	movl	%r14d, 52(%rax)
	movl	5004(%r13), %eax
	movl	%eax, 5024(%r13)
	movq	%r13, %rax
	addq	$4, %rax
	movq	%rax, 5016(%r13)
	movb	$1, 5100(%r13)
	jmp	.LBB45_28
.LBB45_12:                              # %if.then31
	xorl	%r13d, %r13d
	testq	%r12, %r12
	je	.LBB45_28
# BB#13:                                # %if.then33
	movl	$-3, (%r12)
	xorl	%r13d, %r13d
	jmp	.LBB45_28
.LBB45_24:                              # %if.then55
	testq	%r12, %r12
	je	.LBB45_26
# BB#25:                                # %if.then57
	movl	$-3, (%r12)
.LBB45_26:                              # %if.end62
	movq	%r13, %rdi
	callq	free
	xorl	%r13d, %r13d
	jmp	.LBB45_28
.Lfunc_end45:
	.size	BZ2_bzReadOpen, .Lfunc_end45-BZ2_bzReadOpen
	.cfi_endproc

	.globl	BZ2_bzReadClose
	.align	16, 0x90
	.type	BZ2_bzReadClose,@function
BZ2_bzReadClose:                        # @BZ2_bzReadClose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp260:
	.cfi_def_cfa_offset 32
.Ltmp261:
	.cfi_offset %rbx, -24
.Ltmp262:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB46_2
# BB#1:                                 # %if.then
	movl	$0, (%rdi)
.LBB46_2:                               # %if.end
	testq	%rbx, %rbx
	je	.LBB46_3
# BB#5:                                 # %if.end13
	movl	$0, 5096(%rbx)
	cmpb	$0, 5008(%rbx)
	je	.LBB46_10
# BB#6:                                 # %if.then14
	testq	%rdi, %rdi
	je	.LBB46_8
# BB#7:                                 # %if.then16
	movl	$-1, (%rdi)
.LBB46_8:                               # %if.then19
	movl	$-1, 5096(%rbx)
	jmp	.LBB46_9
.LBB46_3:                               # %if.then5
	testq	%rdi, %rdi
	je	.LBB46_9
# BB#4:                                 # %if.then7
	movl	$0, (%rdi)
.LBB46_9:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB46_10:                              # %if.end22
	cmpb	$0, 5100(%rbx)
	je	.LBB46_20
# BB#11:                                # %if.then24
	movq	5064(%rbx), %r14
	testq	%r14, %r14
	je	.LBB46_20
# BB#12:                                # %if.end3.i
	leaq	5016(%rbx), %rax
	cmpq	%rax, (%r14)
	jne	.LBB46_20
# BB#13:                                # %if.end7.i
	movq	3152(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB46_15
# BB#14:                                # %if.then9.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB46_15:                              # %if.end11.i
	movq	3160(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB46_17
# BB#16:                                # %if.then13.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB46_17:                              # %if.end17.i
	movq	3168(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB46_19
# BB#18:                                # %if.then19.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB46_19:                              # %if.end23.i
	movq	5064(%rbx), %rsi
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB46_20:                              # %if.end25
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	free                    # TAILCALL
.Lfunc_end46:
	.size	BZ2_bzReadClose, .Lfunc_end46-BZ2_bzReadClose
	.cfi_endproc

	.globl	BZ2_bzRead
	.align	16, 0x90
	.type	BZ2_bzRead,@function
BZ2_bzRead:                             # @BZ2_bzRead
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp263:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp264:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp265:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp266:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp267:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp268:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp269:
	.cfi_def_cfa_offset 64
.Ltmp270:
	.cfi_offset %rbx, -56
.Ltmp271:
	.cfi_offset %r12, -48
.Ltmp272:
	.cfi_offset %r13, -40
.Ltmp273:
	.cfi_offset %r14, -32
.Ltmp274:
	.cfi_offset %r15, -24
.Ltmp275:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r13
	testq	%r13, %r13
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$0, (%r13)
.LBB47_2:                               # %if.end
	testq	%rbx, %rbx
	je	.LBB47_5
# BB#3:                                 # %if.end3
	movl	$0, 5096(%rbx)
	testq	%rdx, %rdx
	je	.LBB47_5
# BB#4:                                 # %if.end3
	testl	%r14d, %r14d
	js	.LBB47_5
# BB#9:                                 # %if.end16
	cmpb	$0, 5008(%rbx)
	je	.LBB47_13
# BB#10:                                # %if.then17
	testq	%r13, %r13
	je	.LBB47_12
# BB#11:                                # %if.then19
	movl	$-1, (%r13)
.LBB47_12:                              # %if.then22
	movl	$-1, 5096(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB47_40
.LBB47_5:                               # %if.then8
	testq	%r13, %r13
	je	.LBB47_7
# BB#6:                                 # %if.then10
	movl	$-2, (%r13)
.LBB47_7:                               # %if.end11
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB47_40
# BB#8:                                 # %if.then13
	movl	$-2, 5096(%rbx)
.LBB47_40:                              # %cleanup
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB47_13:                              # %if.end25
	testl	%r14d, %r14d
	je	.LBB47_14
# BB#17:                                # %if.end35
	leaq	5016(%rbx), %r15
	movl	%r14d, 5048(%rbx)
	movq	%rdx, 5040(%rbx)
	leaq	4(%rbx), %r12
	.align	16, 0x90
.LBB47_18:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 5024(%rbx)
	jne	.LBB47_21
# BB#19:                                # %land.lhs.true
                                        #   in Loop: Header=BB47_18 Depth=1
	movl	(%rbx), %ebp
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	je	.LBB47_21
# BB#20:                                # %if.then40
                                        #   in Loop: Header=BB47_18 Depth=1
	movzbl	%al, %edi
	movl	%ebp, %esi
	callq	spec_ungetc
	movl	(%rbx), %ecx
	movl	$1, %esi
	movl	$5000, %edx             # imm = 0x1388
	movq	%r12, %rdi
	callq	spec_fread
	movl	%eax, 5004(%rbx)
	movl	%eax, 5024(%rbx)
	movq	%r12, 5016(%rbx)
.LBB47_21:                              # %if.end50
                                        #   in Loop: Header=BB47_18 Depth=1
	movq	%r15, %rdi
	callq	BZ2_bzDecompress
	testl	%eax, %eax
	jne	.LBB47_22
# BB#26:                                # %land.lhs.true66
                                        #   in Loop: Header=BB47_18 Depth=1
	movl	(%rbx), %ebp
	movl	%ebp, %edi
	callq	spec_getc
	cmpl	$-1, %eax
	je	.LBB47_32
# BB#27:                                # %myfeof.exit193.thread
                                        #   in Loop: Header=BB47_18 Depth=1
	movzbl	%al, %edi
	movl	%ebp, %esi
	callq	spec_ungetc
	jmp	.LBB47_28
	.align	16, 0x90
.LBB47_32:                              # %land.lhs.true70
                                        #   in Loop: Header=BB47_18 Depth=1
	cmpl	$0, 5024(%rbx)
	je	.LBB47_33
.LBB47_28:                              # %if.end105
                                        #   in Loop: Header=BB47_18 Depth=1
	cmpl	$0, 5048(%rbx)
	jne	.LBB47_18
.LBB47_29:                              # %if.then110
	testq	%r13, %r13
	je	.LBB47_31
# BB#30:                                # %if.then113
	movl	$0, (%r13)
.LBB47_31:                              # %if.then117
	movl	$0, 5096(%rbx)
	jmp	.LBB47_40
.LBB47_14:                              # %if.then27
	testq	%r13, %r13
	je	.LBB47_16
# BB#15:                                # %if.then29
	movl	$0, (%r13)
.LBB47_16:                              # %if.then32
	movl	$0, 5096(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB47_40
.LBB47_22:                              # %if.end50
	cmpl	$4, %eax
	jne	.LBB47_23
# BB#37:                                # %if.then93
	testq	%r13, %r13
	je	.LBB47_39
# BB#38:                                # %if.then96
	movl	$4, (%r13)
.LBB47_39:                              # %if.end102
	movl	$4, 5096(%rbx)
	subl	5048(%rbx), %r14d
	jmp	.LBB47_40
.LBB47_23:                              # %if.then56
	testq	%r13, %r13
	je	.LBB47_25
# BB#24:                                # %if.then58
	movl	%eax, (%r13)
.LBB47_25:                              # %if.then61
	movl	%eax, 5096(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB47_40
.LBB47_33:                              # %land.lhs.true75
	cmpl	$0, 5048(%rbx)
	je	.LBB47_29
# BB#34:                                # %if.then80
	testq	%r13, %r13
	je	.LBB47_36
# BB#35:                                # %if.then83
	movl	$-7, (%r13)
.LBB47_36:                              # %if.then87
	movl	$-7, 5096(%rbx)
	xorl	%r14d, %r14d
	jmp	.LBB47_40
.Lfunc_end47:
	.size	BZ2_bzRead, .Lfunc_end47-BZ2_bzRead
	.cfi_endproc

	.globl	BZ2_bzReadGetUnused
	.align	16, 0x90
	.type	BZ2_bzReadGetUnused,@function
BZ2_bzReadGetUnused:                    # @BZ2_bzReadGetUnused
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB48_1
# BB#3:                                 # %if.end6
	cmpl	$4, 5096(%rsi)
	jne	.LBB48_4
# BB#7:                                 # %if.end17
	testq	%rdx, %rdx
	je	.LBB48_9
# BB#8:                                 # %if.end17
	testq	%rcx, %rcx
	je	.LBB48_9
# BB#12:                                # %if.end28
	testq	%rdi, %rdi
	je	.LBB48_14
# BB#13:                                # %if.then30
	movl	$0, (%rdi)
.LBB48_14:                              # %if.end35
	movl	$0, 5096(%rsi)
	movl	5024(%rsi), %eax
	movl	%eax, (%rcx)
	movq	5016(%rsi), %rax
	movq	%rax, (%rdx)
	jmp	.LBB48_15
.LBB48_1:                               # %if.then
	testq	%rdi, %rdi
	je	.LBB48_15
# BB#2:                                 # %if.then2
	movl	$-2, (%rdi)
	retq
.LBB48_4:                               # %if.then9
	testq	%rdi, %rdi
	je	.LBB48_6
# BB#5:                                 # %if.then11
	movl	$-1, (%rdi)
.LBB48_6:                               # %if.then14
	movl	$-1, 5096(%rsi)
	retq
.LBB48_15:                              # %cleanup
	retq
.LBB48_9:                               # %if.then20
	testq	%rdi, %rdi
	je	.LBB48_11
# BB#10:                                # %if.then22
	movl	$-2, (%rdi)
.LBB48_11:                              # %if.then25
	movl	$-2, 5096(%rsi)
	retq
.Lfunc_end48:
	.size	BZ2_bzReadGetUnused, .Lfunc_end48-BZ2_bzReadGetUnused
	.cfi_endproc

	.globl	BZ2_bzBuffToBuffCompress
	.align	16, 0x90
	.type	BZ2_bzBuffToBuffCompress,@function
BZ2_bzBuffToBuffCompress:               # @BZ2_bzBuffToBuffCompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp277:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp278:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp279:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp280:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp281:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp282:
	.cfi_def_cfa_offset 144
.Ltmp283:
	.cfi_offset %rbx, -56
.Ltmp284:
	.cfi_offset %r12, -48
.Ltmp285:
	.cfi_offset %r13, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movl	144(%rsp), %eax
	cmpl	$250, %eax
	movl	$-2, %ebx
	ja	.LBB49_33
# BB#1:                                 # %entry
	cmpl	$4, %r9d
	ja	.LBB49_33
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB49_33
# BB#3:                                 # %entry
	testq	%r14, %r14
	je	.LBB49_33
# BB#4:                                 # %entry
	testq	%r13, %r13
	je	.LBB49_33
# BB#5:                                 # %entry
	leal	-1(%r8), %ecx
	cmpl	$8, %ecx
	ja	.LBB49_33
# BB#6:                                 # %if.end
	testl	%eax, %eax
	movl	$30, %ecx
	cmovnel	%eax, %ecx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	leaq	8(%rsp), %r15
	movq	%r15, %rdi
	movl	%r8d, %esi
	movl	%r9d, %edx
	callq	BZ2_bzCompressInit
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB49_33
# BB#7:                                 # %if.end21
	movq	%r13, 8(%rsp)
	movq	%rbp, 32(%rsp)
	movl	%r12d, 16(%rsp)
	movl	(%r14), %eax
	movl	%eax, 40(%rsp)
	movq	56(%rsp), %rbp
	testq	%rbp, %rbp
	movl	$-2, %ebx
	je	.LBB49_33
# BB#8:                                 # %if.end3.i
	movl	$-2, %ebx
	cmpq	%r15, (%rbp)
	jne	.LBB49_24
# BB#9:                                 # %preswitch.preheader.i
	movl	8(%rbp), %eax
	jmp	.LBB49_10
	.align	16, 0x90
.LBB49_12:                              # %sw.bb8.i
                                        #   in Loop: Header=BB49_10 Depth=1
	movl	16(%rsp), %eax
	movl	%eax, 16(%rbp)
	movl	$4, 8(%rbp)
	movl	$4, %eax
.LBB49_10:                              # %preswitch.i
                                        # =>This Inner Loop Header: Depth=1
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB49_23
# BB#11:                                # %preswitch.i
                                        #   in Loop: Header=BB49_10 Depth=1
	movl	$-1, %ebx
	jmpq	*.LJTI49_0(,%rax,8)
.LBB49_13:                              # %sw.bb47.i
	movl	16(%rbp), %eax
	cmpl	16(%rsp), %eax
	jne	.LBB49_24
# BB#14:                                # %if.end58.i
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	callq	handle_compress
	testb	%al, %al
	je	.LBB49_24
# BB#15:                                # %if.end62.i
	cmpl	$0, 16(%rbp)
	jne	.LBB49_22
# BB#16:                                # %lor.lhs.false66.i
	cmpl	$255, 92(%rbp)
	ja	.LBB49_18
# BB#17:                                # %land.lhs.true.i115.i
	cmpl	$0, 96(%rbp)
	jg	.LBB49_22
.LBB49_18:                              # %lor.lhs.false69.i
	movl	120(%rbp), %eax
	cmpl	116(%rbp), %eax
	jge	.LBB49_19
.LBB49_22:                              # %output_overflow
	movq	56(%rsp), %rbp
	movl	$-8, %ebx
.LBB49_20:                              # %if.end28
	testq	%rbp, %rbp
	je	.LBB49_33
# BB#21:                                # %if.end3.i61
	cmpq	%r12, (%rbp)
	jne	.LBB49_33
	jmp	.LBB49_26
.LBB49_23:                              # %errhandler.loopexit
	xorl	%ebx, %ebx
.LBB49_24:                              # %errhandler
	movq	56(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB49_33
# BB#25:                                # %if.end3.i97
	cmpq	%r15, (%rbp)
	jne	.LBB49_33
.LBB49_26:                              # %if.end7.i100
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB49_28
# BB#27:                                # %if.then9.i103
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB49_28:                              # %if.end11.i106
	movq	32(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB49_30
# BB#29:                                # %if.then13.i109
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB49_30:                              # %if.end17.i113
	movq	40(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB49_32
# BB#31:                                # %if.then19.i117
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB49_32:                              # %if.end23.i119
	movq	56(%rsp), %rsi
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
	movq	$0, 56(%rsp)
.LBB49_33:                              # %cleanup
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB49_19:                              # %if.end28
	movl	$1, 8(%rbp)
	movl	40(%rsp), %eax
	subl	%eax, (%r14)
	movq	56(%rsp), %rbp
	xorl	%ebx, %ebx
	jmp	.LBB49_20
.Lfunc_end49:
	.size	BZ2_bzBuffToBuffCompress, .Lfunc_end49-BZ2_bzBuffToBuffCompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI49_0:
	.quad	.LBB49_24
	.quad	.LBB49_12
	.quad	.LBB49_24
	.quad	.LBB49_13

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI50_0:
	.zero	16
	.text
	.globl	BZ2_bzBuffToBuffDecompress
	.align	16, 0x90
	.type	BZ2_bzBuffToBuffDecompress,@function
BZ2_bzBuffToBuffDecompress:             # @BZ2_bzBuffToBuffDecompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp292:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp293:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp295:
	.cfi_def_cfa_offset 144
.Ltmp296:
	.cfi_offset %rbx, -56
.Ltmp297:
	.cfi_offset %r12, -48
.Ltmp298:
	.cfi_offset %r13, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %r13
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	movl	$-2, %r15d
	je	.LBB50_30
# BB#1:                                 # %entry
	testq	%r13, %r13
	je	.LBB50_30
# BB#2:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB50_30
# BB#3:                                 # %lor.lhs.false4
	cmpl	$1, %r14d
	ja	.LBB50_30
# BB#4:                                 # %lor.lhs.false4
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	cmpl	$4, %r12d
	ja	.LBB50_30
# BB#5:                                 # %if.end18.i
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rsp)
	movq	$0, 80(%rsp)
	movq	$default_bzalloc, 64(%rsp)
	movq	$default_bzfree, 72(%rsp)
	movl	$64144, %edi            # imm = 0xFA90
	callq	malloc
	movl	$-3, %r15d
	testq	%rax, %rax
	je	.LBB50_30
# BB#6:                                 # %if.end13
	leaq	8(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	%rax, 56(%rsp)
	movl	$10, 8(%rax)
	movl	$0, 36(%rax)
	movl	$0, 32(%rax)
	movl	$0, 3188(%rax)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 48(%rsp)
	movb	%r14b, 44(%rax)
	movq	%rcx, %r14
	movl	$0, 48(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 3152(%rax)
	movq	$0, 3168(%rax)
	movl	%r12d, 52(%rax)
	movq	%rbp, 8(%rsp)
	movq	%rbx, 32(%rsp)
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	(%r13), %eax
	movl	%eax, 40(%rsp)
	movq	%r14, %rdi
	callq	BZ2_bzDecompress
	movl	%eax, %r15d
	testl	%r15d, %r15d
	je	.LBB50_9
# BB#7:                                 # %if.end13
	cmpl	$4, %r15d
	jne	.LBB50_20
# BB#8:                                 # %if.end20
	movl	40(%rsp), %eax
	subl	%eax, (%r13)
	movq	56(%rsp), %rbx
	xorl	%r15d, %r15d
	jmp	.LBB50_21
.LBB50_9:                               # %output_overflow_or_eof
	movl	40(%rsp), %ebx
	movq	56(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB50_18
# BB#10:                                # %if.end3.i57
	cmpq	%r14, (%rbp)
	jne	.LBB50_18
# BB#11:                                # %if.end7.i60
	movq	3152(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB50_13
# BB#12:                                # %if.then9.i63
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_13:                              # %if.end11.i66
	movq	3160(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB50_15
# BB#14:                                # %if.then13.i69
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_15:                              # %if.end17.i73
	movq	3168(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB50_17
# BB#16:                                # %if.then19.i77
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_17:                              # %if.end23.i79
	movq	56(%rsp), %rsi
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
	movq	$0, 56(%rsp)
.LBB50_18:                              # %BZ2_bzDecompressEnd.exit81
	movl	$-8, %r15d
	testl	%ebx, %ebx
	je	.LBB50_30
# BB#19:                                # %select.false
	movl	$-7, %r15d
	jmp	.LBB50_30
.LBB50_20:                              # %errhandler
	movq	56(%rsp), %rbx
.LBB50_21:                              # %errhandler
	testq	%rbx, %rbx
	je	.LBB50_30
# BB#22:                                # %if.end3.i86
	cmpq	%r14, (%rbx)
	jne	.LBB50_30
# BB#23:                                # %if.end7.i89
	movq	3152(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB50_25
# BB#24:                                # %if.then9.i92
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_25:                              # %if.end11.i95
	movq	3160(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB50_27
# BB#26:                                # %if.then13.i98
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_27:                              # %if.end17.i102
	movq	3168(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB50_29
# BB#28:                                # %if.then19.i106
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
.LBB50_29:                              # %if.end23.i108
	movq	56(%rsp), %rsi
	movq	80(%rsp), %rdi
	callq	*72(%rsp)
	movq	$0, 56(%rsp)
.LBB50_30:                              # %cleanup
	movl	%r15d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	BZ2_bzBuffToBuffDecompress, .Lfunc_end50-BZ2_bzBuffToBuffDecompress
	.cfi_endproc

	.globl	BZ2_bzopen
	.align	16, 0x90
	.type	BZ2_bzopen,@function
BZ2_bzopen:                             # @BZ2_bzopen
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	jmp	bzopen_or_bzdopen       # TAILCALL
.Lfunc_end51:
	.size	BZ2_bzopen, .Lfunc_end51-BZ2_bzopen
	.cfi_endproc

	.align	16, 0x90
	.type	bzopen_or_bzdopen,@function
bzopen_or_bzdopen:                      # @bzopen_or_bzdopen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp306:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp307:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp308:
	.cfi_def_cfa_offset 80
.Ltmp309:
	.cfi_offset %rbx, -56
.Ltmp310:
	.cfi_offset %r12, -48
.Ltmp311:
	.cfi_offset %r13, -40
.Ltmp312:
	.cfi_offset %r14, -32
.Ltmp313:
	.cfi_offset %r15, -24
.Ltmp314:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movw	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	xorl	%r13d, %r13d
	testq	%rbx, %rbx
	movl	$0, %eax
	je	.LBB52_19
# BB#1:                                 # %while.cond.preheader
	movq	%rdi, (%rsp)            # 8-byte Spill
	movb	(%rbx), %al
	movl	$9, %r12d
	testb	%al, %al
	je	.LBB52_10
# BB#2:                                 # %while.body.preheader
	incq	%rbx
	xorl	%r13d, %r13d
	movl	$9, %r12d
	.align	16, 0x90
.LBB52_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%al, %ebp
	cmpl	$114, %ebp
	je	.LBB52_4
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB52_3 Depth=1
	cmpl	$115, %ebp
	je	.LBB52_9
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB52_3 Depth=1
	cmpl	$119, %ebp
	jne	.LBB52_8
# BB#7:                                 # %sw.bb1
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	$1, %r13d
	jmp	.LBB52_9
	.align	16, 0x90
.LBB52_4:                               #   in Loop: Header=BB52_3 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB52_9
	.align	16, 0x90
.LBB52_8:                               # %sw.default
                                        #   in Loop: Header=BB52_3 Depth=1
	movslq	%ebp, %r14
	callq	__ctype_b_loc
	movq	(%rax), %rax
	addl	$-48, %ebp
	testb	$8, 1(%rax,%r14,2)
	cmovnel	%ebp, %r12d
.LBB52_9:                               # %sw.epilog
                                        #   in Loop: Header=BB52_3 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	jne	.LBB52_3
.LBB52_10:                              # %while.end
	leaq	8(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	testl	%r13d, %r13d
	movw	$119, %cx
	movw	$114, %dx
	cmovnew	%cx, %dx
	movw	%dx, 8(%rsp,%rax)
	movq	%rbx, %rdi
	callq	strlen
	movw	$98, 8(%rsp,%rax)
	xorl	%eax, %eax
	testl	%r15d, %r15d
	movq	(%rsp), %rcx            # 8-byte Reload
	jne	.LBB52_19
# BB#11:                                # %if.then15
	testq	%rcx, %rcx
	je	.LBB52_13
# BB#12:                                # %if.end58
	xorl	%eax, %eax
	cmpb	$0, (%rcx)
	jne	.LBB52_19
.LBB52_13:                              # %if.end70
	xorl	%eax, %eax
	testl	%r13d, %r13d
	setne	%r14b
	je	.LBB52_19
# BB#14:                                # %if.then76
	testl	%r12d, %r12d
	movl	$1, %eax
	cmovgl	%r12d, %eax
	cmpl	$9, %eax
	movl	$9, %ebx
	cmovlel	%eax, %ebx
	leal	-1(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	$8, %ecx
	ja	.LBB52_19
# BB#15:                                # %if.end24.i
	movl	$5104, %edi             # imm = 0x13F0
	callq	malloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB52_19
# BB#16:                                # %if.end34.i
	movzbl	%r14b, %eax
	movl	$0, 5096(%rbp)
	movb	$0, 5100(%rbp)
	movl	$0, 5004(%rbp)
	movl	%eax, (%rbp)
	movb	$1, 5008(%rbp)
	movq	%rbp, %rdi
	addq	$5016, %rdi             # imm = 0x1398
	xorps	%xmm0, %xmm0
	movups	%xmm0, 5072(%rbp)
	movq	$0, 5088(%rbp)
	xorl	%edx, %edx
	movl	$30, %ecx
	movl	%ebx, %esi
	callq	BZ2_bzCompressInit
	testl	%eax, %eax
	je	.LBB52_18
# BB#17:                                # %if.then50.i
	movq	%rbp, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB52_19
.LBB52_18:                              # %if.end58.i
	movl	$0, 5024(%rbp)
	movb	$1, 5100(%rbp)
	movq	%rbp, %rax
.LBB52_19:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	bzopen_or_bzdopen, .Lfunc_end52-bzopen_or_bzdopen
	.cfi_endproc

	.globl	BZ2_bzdopen
	.align	16, 0x90
	.type	BZ2_bzdopen,@function
BZ2_bzdopen:                            # @BZ2_bzdopen
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edi, %edi
	movl	$1, %edx
	jmp	bzopen_or_bzdopen       # TAILCALL
.Lfunc_end53:
	.size	BZ2_bzdopen, .Lfunc_end53-BZ2_bzdopen
	.cfi_endproc

	.globl	BZ2_bzread
	.align	16, 0x90
	.type	BZ2_bzread,@function
BZ2_bzread:                             # @BZ2_bzread
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	xorl	%eax, %eax
	cmpl	$4, 5096(%rdx)
	je	.LBB54_2
# BB#1:                                 # %if.end
	pushq	%rax
.Ltmp315:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movl	%r8d, %ecx
	callq	BZ2_bzRead
	movl	%eax, %ecx
	movl	4(%rsp), %eax
	orl	$4, %eax
	cmpl	$4, %eax
	movl	$-1, %eax
	cmovel	%ecx, %eax
	addq	$8, %rsp
.LBB54_2:                               # %cleanup
	retq
.Lfunc_end54:
	.size	BZ2_bzread, .Lfunc_end54-BZ2_bzread
	.cfi_endproc

	.globl	BZ2_bzwrite
	.align	16, 0x90
	.type	BZ2_bzwrite,@function
BZ2_bzwrite:                            # @BZ2_bzwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp316:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp317:
	.cfi_def_cfa_offset 32
.Ltmp318:
	.cfi_offset %rbx, -16
	movl	%edx, %ebx
	movq	%rsi, %rax
	movq	%rdi, %rcx
	leaq	12(%rsp), %rdi
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	callq	BZ2_bzWrite
	cmpl	$0, 12(%rsp)
	je	.LBB55_2
# BB#1:                                 # %select.false
	movl	$-1, %ebx
.LBB55_2:                               # %select.end
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end55:
	.size	BZ2_bzwrite, .Lfunc_end55-BZ2_bzwrite
	.cfi_endproc

	.globl	BZ2_bzflush
	.align	16, 0x90
	.type	BZ2_bzflush,@function
BZ2_bzflush:                            # @BZ2_bzflush
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end56:
	.size	BZ2_bzflush, .Lfunc_end56-BZ2_bzflush
	.cfi_endproc

	.globl	BZ2_bzclose
	.align	16, 0x90
	.type	BZ2_bzclose,@function
BZ2_bzclose:                            # @BZ2_bzclose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp320:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp321:
	.cfi_def_cfa_offset 48
.Ltmp322:
	.cfi_offset %rbx, -24
.Ltmp323:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB57_16
# BB#1:                                 # %if.end
	cmpb	$0, 5008(%rbx)
	je	.LBB57_15
# BB#2:                                 # %if.then1
	movq	$0, (%rsp)
	leaq	20(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rsi
	callq	BZ2_bzWriteClose64
	cmpl	$0, 20(%rsp)
	je	.LBB57_16
# BB#3:                                 # %if.end6.i
	cmpb	$0, 5008(%rbx)
	je	.LBB57_4
# BB#5:                                 # %if.end15.i
	movl	$0, 5096(%rbx)
	movq	5064(%rbx), %r14
	testq	%r14, %r14
	je	.LBB57_14
# BB#6:                                 # %if.end3.i164.i
	leaq	5016(%rbx), %rax
	cmpq	%rax, (%r14)
	jne	.LBB57_14
# BB#7:                                 # %if.end7.i.i
	movq	24(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB57_9
# BB#8:                                 # %if.then9.i.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB57_9:                               # %if.end11.i.i
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB57_11
# BB#10:                                # %if.then13.i.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB57_11:                              # %if.end17.i.i
	movq	40(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB57_13
# BB#12:                                # %if.then19.i.i
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB57_13:                              # %if.end23.i.i
	movq	5064(%rbx), %rsi
	movq	5088(%rbx), %rdi
	callq	*5080(%rbx)
.LBB57_14:                              # %BZ2_bzCompressEnd.exit.i
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB57_16
.LBB57_15:                              # %if.else
	leaq	20(%rsp), %rdi
	movq	%rbx, %rsi
	callq	BZ2_bzReadClose
	jmp	.LBB57_16
.LBB57_4:                               # %if.then7.i
	movl	$-1, 5096(%rbx)
.LBB57_16:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end57:
	.size	BZ2_bzclose, .Lfunc_end57-BZ2_bzclose
	.cfi_endproc

	.globl	BZ2_bzerror
	.align	16, 0x90
	.type	BZ2_bzerror,@function
BZ2_bzerror:                            # @BZ2_bzerror
	.cfi_startproc
# BB#0:                                 # %entry
	movl	5096(%rdi), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, (%rsi)
	negl	%ecx
	movslq	%ecx, %rax
	movq	bzerrorstrings(,%rax,8), %rax
	retq
.Lfunc_end58:
	.size	BZ2_bzerror, .Lfunc_end58-BZ2_bzerror
	.cfi_endproc

	.globl	BZ2_bsInitWrite
	.align	16, 0x90
	.type	BZ2_bsInitWrite,@function
BZ2_bsInitWrite:                        # @BZ2_bsInitWrite
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 640(%rdi)
	retq
.Lfunc_end59:
	.size	BZ2_bsInitWrite, .Lfunc_end59-BZ2_bsInitWrite
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI60_0:
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	2                       # 0x2
	.byte	3                       # 0x3
	.byte	4                       # 0x4
	.byte	5                       # 0x5
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	8                       # 0x8
	.byte	9                       # 0x9
	.byte	10                      # 0xa
	.byte	11                      # 0xb
	.byte	12                      # 0xc
	.byte	13                      # 0xd
	.byte	14                      # 0xe
	.byte	15                      # 0xf
.LCPI60_2:
	.quad	14                      # 0xe
	.quad	15                      # 0xf
.LCPI60_3:
	.quad	12                      # 0xc
	.quad	13                      # 0xd
.LCPI60_4:
	.quad	10                      # 0xa
	.quad	11                      # 0xb
.LCPI60_5:
	.quad	8                       # 0x8
	.quad	9                       # 0x9
.LCPI60_6:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI60_7:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI60_8:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI60_9:
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
	.long	2147483648              # 0x80000000
	.long	0                       # 0x0
.LCPI60_10:
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
	.short	255                     # 0xff
.LCPI60_11:
	.zero	16,128
.LCPI60_12:
	.zero	16,15
.LCPI60_13:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI60_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	BZ2_compressBlock
	.align	16, 0x90
	.type	BZ2_compressBlock,@function
BZ2_compressBlock:                      # @BZ2_compressBlock
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp324:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp325:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp326:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp327:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp328:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp329:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp330:
	.cfi_def_cfa_offset 576
.Ltmp331:
	.cfi_offset %rbx, -56
.Ltmp332:
	.cfi_offset %r12, -48
.Ltmp333:
	.cfi_offset %r13, -40
.Ltmp334:
	.cfi_offset %r14, -32
.Ltmp335:
	.cfi_offset %r15, -24
.Ltmp336:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %r12
	movl	108(%r12), %r9d
	testl	%r9d, %r9d
	jle	.LBB60_6
# BB#1:                                 # %if.then
	movq	648(%r12), %r8
	movl	%r8d, %ecx
	notl	%ecx
	movl	%ecx, 648(%r12)
	movq	%r8, %rax
	shrq	$31, %rax
	andl	$-2, %eax
	shrq	$63, %r8
	orl	%eax, %r8d
	xorl	%ecx, %r8d
	movl	%r8d, 652(%r12)
	cmpl	$2, 660(%r12)
	jl	.LBB60_3
# BB#2:                                 # %if.then7
	movl	$0, 116(%r12)
.LBB60_3:                               # %if.end
	movq	656(%r12), %rdx
	cmpl	$2, %edx
	jge	.LBB60_4
.LBB60_5:                               # %if.end14
	movq	%r12, %rdi
	callq	BZ2_blockSort
	movl	108(%r12), %r9d
.LBB60_6:                               # %if.end15
	movslq	%r9d, %rax
	addq	32(%r12), %rax
	movq	%rax, 80(%r12)
	cmpl	$1, 660(%r12)
	jne	.LBB60_21
# BB#7:                                 # %if.then19
	movq	$0, 640(%r12)
	movl	$1107296256, 640(%r12)  # imm = 0x42000000
	movl	$8, 644(%r12)
	movb	$1, %cl
	testb	%cl, %cl
	je	.LBB60_8
# BB#9:                                 # %while.body.lr.ph.i.i279
	movl	$1107296256, %ecx       # imm = 0x42000000
	shrl	$24, %ecx
	movslq	116(%r12), %rdx
	movb	%cl, (%rax,%rdx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$8, %eax
	jl	.LBB60_10
	.align	16, 0x90
.LBB60_11:                              # %while.body.i.i288.while.body.i.i288_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r12), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %esi
	jg	.LBB60_11
	jmp	.LBB60_12
.LBB60_8:                               # %entry.while.end_crit_edge.i.i274
	movl	$8, %esi
	movq	640(%r12), %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	jmp	.LBB60_12
.LBB60_10:
	movl	%eax, %esi
.LBB60_12:                              # %bsPutUChar.exit295
	movl	$24, %ecx
	subl	%esi, %ecx
	movl	$90, %esi
	shll	%cl, %esi
	orl	%edx, %esi
	movl	%esi, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_13
# BB#14:                                # %while.body.lr.ph.i.i305
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_15:                              # %while.body.i.i314
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_15
	jmp	.LBB60_16
.LBB60_13:                              # %entry.while.end_crit_edge.i.i300
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_16:                              # %bsPutUChar.exit321
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$104, %eax
	shll	%cl, %eax
	orl	%esi, %eax
	movl	%eax, 640(%r12)
	addl	$8, %edx
	movl	%edx, 644(%r12)
	movl	664(%r12), %ecx
	addl	$48, %ecx
	movzbl	%cl, %esi
	cmpl	$7, %edx
	jle	.LBB60_17
# BB#18:                                # %while.body.lr.ph.i.i332
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_19:                              # %while.body.i.i341
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movq	80(%r12), %rdx
	movb	%al, (%rdx,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdi
	movl	%edi, %eax
	shll	$8, %eax
	movl	%eax, 640(%r12)
	shrq	$32, %rdi
	addl	$-8, %edi
	movl	%edi, 644(%r12)
	cmpl	$7, %edi
	movl	%edi, %edx
	jg	.LBB60_19
	jmp	.LBB60_20
.LBB60_17:                              # %entry.while.end_crit_edge.i.i327
	movq	640(%r12), %rax
	movq	%rax, %rdi
	shrq	$32, %rdi
.LBB60_20:                              # %bsPutUChar.exit348
	movl	$24, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%eax, %esi
	movl	%esi, 640(%r12)
	addl	$8, %edi
	movl	%edi, 644(%r12)
	movl	108(%r12), %r9d
.LBB60_21:                              # %if.end20
	testl	%r9d, %r9d
	jle	.LBB60_479
# BB#22:                                # %if.then24
	movl	644(%r12), %esi
	cmpl	$7, %esi
	jle	.LBB60_23
# BB#24:                                # %while.body.lr.ph.i.i358
	movl	640(%r12), %edx
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_25:                              # %while.body.i.i367
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edx
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %esi
	jg	.LBB60_25
	jmp	.LBB60_26
.LBB60_23:                              # %entry.while.end_crit_edge.i.i353
	movq	640(%r12), %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
.LBB60_26:                              # %bsPutUChar.exit374
	movl	$24, %ecx
	subl	%esi, %ecx
	movl	$49, %esi
	shll	%cl, %esi
	orl	%edx, %esi
	movl	%esi, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_27
# BB#28:                                # %while.body.lr.ph.i.i384
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_29:                              # %while.body.i.i393
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_29
	jmp	.LBB60_30
.LBB60_27:                              # %entry.while.end_crit_edge.i.i379
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_30:                              # %bsPutUChar.exit400
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$65, %edi
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	$8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	jle	.LBB60_31
# BB#32:                                # %while.body.lr.ph.i.i410
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_33:                              # %while.body.i.i419
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_33
	jmp	.LBB60_34
.LBB60_31:                              # %entry.while.end_crit_edge.i.i405
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_34:                              # %bsPutUChar.exit426
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	$89, %esi
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_35
# BB#36:                                # %while.body.lr.ph.i.i436
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_37:                              # %while.body.i.i445
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_37
	jmp	.LBB60_38
.LBB60_35:                              # %entry.while.end_crit_edge.i.i431
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_38:                              # %bsPutUChar.exit452
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$38, %edi
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	$8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	jle	.LBB60_39
# BB#40:                                # %while.body.lr.ph.i.i462
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_41:                              # %while.body.i.i471
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_41
	jmp	.LBB60_42
.LBB60_39:                              # %entry.while.end_crit_edge.i.i457
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_42:                              # %bsPutUChar.exit478
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	$83, %edx
	shll	%cl, %edx
	orl	%edi, %edx
	movl	%edx, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_43
# BB#44:                                # %while.body.lr.ph.i.i488
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_45:                              # %while.body.i.i497
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edx
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %eax
	jg	.LBB60_45
	jmp	.LBB60_46
.LBB60_43:                              # %entry.while.end_crit_edge.i.i483
	movq	640(%r12), %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
.LBB60_46:                              # %bsPutUChar.exit504
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$89, %eax
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, 640(%r12)
	addl	$8, %esi
	movl	%esi, 644(%r12)
	movl	648(%r12), %esi
	movq	%r12, %rdi
	callq	bsPutUInt32
	cmpl	$7, 644(%r12)
	jle	.LBB60_47
# BB#48:                                # %while.body.lr.ph.i1397
	movl	640(%r12), %eax
	movl	116(%r12), %edx
	.align	16, 0x90
.LBB60_49:                              # %while.body.i1406
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %eax
	movslq	%edx, %rcx
	movq	80(%r12), %rdx
	movb	%al, (%rdx,%rcx)
	movl	116(%r12), %edx
	incl	%edx
	movl	%edx, 116(%r12)
	movq	640(%r12), %rcx
	movl	%ecx, %eax
	shll	$8, %eax
	movl	%eax, 640(%r12)
	shrq	$32, %rcx
	addl	$-8, %ecx
	movl	%ecx, 644(%r12)
	cmpl	$7, %ecx
	jg	.LBB60_49
	jmp	.LBB60_50
.LBB60_47:                              # %entry.while.end_crit_edge.i1392
	movq	640(%r12), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
.LBB60_50:                              # %bsW.exit1411
	movl	%eax, 640(%r12)
	leal	1(%rcx), %edi
	movl	%edi, 644(%r12)
	movl	48(%r12), %edx
	cmpl	$6, %ecx
	jle	.LBB60_51
# BB#52:                                # %while.body.lr.ph.i1807
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_53:                              # %while.body.i1816
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movq	80(%r12), %rsi
	movb	%al, (%rsi,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %eax
	shll	$8, %eax
	movl	%eax, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %edi
	jg	.LBB60_53
	jmp	.LBB60_54
.LBB60_51:                              # %entry.while.end_crit_edge.i1802
	movl	%ebx, 28(%rsp)          # 4-byte Spill
	movq	640(%r12), %rax
	movq	%rax, %rsi
	shrq	$32, %rsi
.LBB60_54:                              # %bsW.exit1823
	movl	$8, %ecx
	subl	%edi, %ecx
	shll	%cl, %edx
	orl	%eax, %edx
	movl	%edx, 640(%r12)
	addl	$24, %esi
	movl	%esi, 644(%r12)
	movq	56(%r12), %r15
	movq	64(%r12), %r14
	movq	72(%r12), %r13
	movl	$0, 124(%r12)
	xorl	%ebp, %ebp
	movq	$-256, %rax
	.align	16, 0x90
.LBB60_55:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 384(%r12,%rax)
	je	.LBB60_57
# BB#56:                                # %if.then.i.i
                                        #   in Loop: Header=BB60_55 Depth=1
	movb	%bpl, 640(%r12,%rax)
	movl	124(%r12), %ebp
	incl	%ebp
	movl	%ebp, 124(%r12)
.LBB60_57:                              # %for.inc.i.i
                                        #   in Loop: Header=BB60_55 Depth=1
	incq	%rax
	jne	.LBB60_55
# BB#58:                                # %makeMaps_e.exit.i
	leal	1(%rbp), %r11d
	cmpl	$-1, %ebp
	jl	.LBB60_65
# BB#59:                                # %for.cond4.preheader.i1829
	leaq	672(%r12), %rdi
	movl	%r11d, %eax
	leaq	4(,%rax,4), %rdx
	xorl	%esi, %esi
	movl	%r11d, %ebx
	callq	memset
	movl	%ebx, %r11d
	testl	%ebp, %ebp
	jle	.LBB60_65
# BB#60:                                # %for.body7.lr.ph.i
	movslq	%ebp, %rax
	xorl	%edx, %edx
	cmpl	$16, %ebp
	jb	.LBB60_510
# BB#61:                                # %min.iters.checked
	xorl	%edx, %edx
	movq	%rax, %rcx
	andq	$-16, %rcx
	je	.LBB60_510
# BB#62:                                # %vector.body.preheader
	movq	%rax, %rdx
	andq	$-16, %rdx
	xorl	%esi, %esi
	movdqa	.LCPI60_0(%rip), %xmm0  # xmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	.align	16, 0x90
.LBB60_63:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%esi, %xmm1
	punpcklbw	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm1, %xmm1      # xmm1 = xmm1[0,1,0,3]
	pshuflw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	paddb	%xmm0, %xmm1
	movdqa	%xmm1, 256(%rsp,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB60_63
# BB#64:                                # %middle.block
	cmpq	%rcx, %rax
	movq	%rcx, %rdx
	je	.LBB60_65
	.align	16, 0x90
.LBB60_510:                             # %for.body7.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, 256(%rsp,%rdx)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB60_510
.LBB60_65:                              # %for.cond13.preheader.i
	movl	108(%r12), %edi
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LBB60_90
# BB#66:                                # %for.body16.lr.ph.i
	xorl	%edx, %edx
	leaq	257(%rsp), %r8
	leaq	256(%rsp), %r9
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB60_67:                              # %for.body16.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_72 Depth 2
                                        #     Child Loop BB60_79 Depth 2
	movl	(%r15,%rdx,4), %esi
	leal	-1(%rsi), %ebp
	sarl	$31, %ebp
	andl	%edi, %ebp
	leal	-1(%rbp,%rsi), %esi
	movslq	%esi, %rsi
	movzbl	(%r14,%rsi), %esi
	movzbl	384(%r12,%rsi), %r10d
	movzwl	256(%rsp), %ebp
	movzbl	%bpl, %ebx
	cmpl	%r10d, %ebx
	jne	.LBB60_69
# BB#68:                                # %if.then32.i
                                        #   in Loop: Header=BB60_67 Depth=1
	incl	%ecx
	jmp	.LBB60_81
	.align	16, 0x90
.LBB60_69:                              # %if.else.i1833
                                        #   in Loop: Header=BB60_67 Depth=1
	testl	%ecx, %ecx
	jle	.LBB60_70
# BB#71:                                # %if.then36.i
                                        #   in Loop: Header=BB60_67 Depth=1
	decl	%ecx
	cltq
	jmp	.LBB60_72
	.align	16, 0x90
.LBB60_76:                              # %if.end55.i
                                        #   in Loop: Header=BB60_72 Depth=2
	leal	-2(%rcx), %edi
	shrl	$31, %edi
	leal	-2(%rcx,%rdi), %ecx
	sarl	%ecx
	incq	%rax
.LBB60_72:                              # %while.body.i1836
                                        #   Parent Loop BB60_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %cl
	jne	.LBB60_73
# BB#74:                                # %if.else44.i
                                        #   in Loop: Header=BB60_72 Depth=2
	movw	$0, (%r13,%rax,2)
	incl	672(%r12)
	jmp	.LBB60_75
	.align	16, 0x90
.LBB60_73:                              # %if.then37.i
                                        #   in Loop: Header=BB60_72 Depth=2
	movw	$1, (%r13,%rax,2)
	incl	676(%r12)
.LBB60_75:                              # %if.end51.i
                                        #   in Loop: Header=BB60_72 Depth=2
	cmpl	$2, %ecx
	jge	.LBB60_76
# BB#77:                                # %if.end57.loopexit.i
                                        #   in Loop: Header=BB60_67 Depth=1
	movb	256(%rsp), %bpl
	movb	257(%rsp), %sil
	incl	%eax
	xorl	%ecx, %ecx
	jmp	.LBB60_78
.LBB60_70:                              #   in Loop: Header=BB60_67 Depth=1
	movl	%ebp, %esi
	shrl	$8, %esi
.LBB60_78:                              # %if.end57.i
                                        #   in Loop: Header=BB60_67 Depth=1
	movb	%bpl, 257(%rsp)
	movzbl	%sil, %ebp
	movzbl	%r10b, %ebx
	cmpl	%ebp, %ebx
	movq	%r8, %rbp
	je	.LBB60_80
	.align	16, 0x90
.LBB60_79:                              # %while.body67.i
                                        #   Parent Loop BB60_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rbp), %edi
	movb	%sil, 1(%rbp)
	incq	%rbp
	cmpl	%edi, %ebx
	movb	%dil, %sil
	jne	.LBB60_79
.LBB60_80:                              # %while.end68.i
                                        #   in Loop: Header=BB60_67 Depth=1
	movb	%r10b, 256(%rsp)
	subq	%r9, %rbp
	leal	1(%rbp), %esi
	cltq
	movw	%si, (%r13,%rax,2)
	incl	%eax
	movslq	%ebp, %rsi
	incl	676(%r12,%rsi,4)
	movl	108(%r12), %edi
.LBB60_81:                              # %if.end82.i
                                        #   in Loop: Header=BB60_67 Depth=1
	incq	%rdx
	movslq	%edi, %rsi
	cmpq	%rsi, %rdx
	jl	.LBB60_67
# BB#82:                                # %for.end85.i
	testl	%ecx, %ecx
	jle	.LBB60_90
# BB#83:                                # %if.then88.i
	decl	%ecx
	cltq
	jmp	.LBB60_84
	.align	16, 0x90
.LBB60_88:                              # %if.end112.i
                                        #   in Loop: Header=BB60_84 Depth=1
	leal	-2(%rcx), %edx
	shrl	$31, %edx
	leal	-2(%rcx,%rdx), %ecx
	sarl	%ecx
	incq	%rax
.LBB60_84:                              # %while.body91.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	jne	.LBB60_85
# BB#86:                                # %if.else101.i
                                        #   in Loop: Header=BB60_84 Depth=1
	movw	$0, (%r13,%rax,2)
	incl	672(%r12)
	jmp	.LBB60_87
	.align	16, 0x90
.LBB60_85:                              # %if.then94.i
                                        #   in Loop: Header=BB60_84 Depth=1
	movw	$1, (%r13,%rax,2)
	incl	676(%r12)
.LBB60_87:                              # %if.end108.i
                                        #   in Loop: Header=BB60_84 Depth=1
	cmpl	$2, %ecx
	jge	.LBB60_88
# BB#89:                                # %generateMTFValues.exit.loopexit
	incl	%eax
.LBB60_90:                              # %generateMTFValues.exit
	movslq	%eax, %rcx
	movw	%r11w, (%r13,%rcx,2)
	incl	%ecx
	movslq	%r11d, %rax
	incl	672(%r12,%rax,4)
	movl	%ecx, 668(%r12)
	movq	72(%r12), %r15
	movq	%r15, 184(%rsp)         # 8-byte Spill
	cmpl	$3, 656(%r12)
	jge	.LBB60_91
.LBB60_92:                              # %if.end.i
	movslq	124(%r12), %r8
	movq	%r8, 104(%rsp)          # 8-byte Spill
	leal	2(%r8), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	$1, %ecx
	cmovgl	%eax, %ecx
	decl	%ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	1(%rcx), %r14
	leaq	37708(%r12), %rax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB60_93:                              # %for.cond4.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-1, %r8d
	jl	.LBB60_95
# BB#94:                                # %for.body6.lr.ph.i
                                        #   in Loop: Header=BB60_93 Depth=1
	leaq	(%rax,%rbx), %rdi
	movl	$15, %esi
	movq	%r14, %rdx
	movq	%r8, %rbp
	movq	%rax, %r13
	callq	memset
	movq	%r13, %rax
	movq	%rbp, %r8
.LBB60_95:                              # %for.inc9.i
                                        #   in Loop: Header=BB60_93 Depth=1
	addq	$258, %rbx              # imm = 0x102
	cmpq	$1548, %rbx             # imm = 0x60C
	jne	.LBB60_93
# BB#96:                                # %for.end11.i
	movl	668(%r12), %r11d
	testl	%r11d, %r11d
	jg	.LBB60_98
# BB#97:                                # %if.then14.i
	movl	$3001, %edi             # imm = 0xBB9
	movq	%r15, %rbx
	movq	%r8, %rbp
	movq	%rax, %r14
	callq	BZ2_bz__AssertH__fail
	movq	%r14, %rax
	movq	%rbp, %r8
	movq	%rbx, %r15
	movl	668(%r12), %r11d
.LBB60_98:                              # %if.end15.i
	movq	%r15, 184(%rsp)         # 8-byte Spill
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$2, %eax
	cmpl	$200, %r11d
	jl	.LBB60_102
# BB#99:                                # %if.else.i
	movl	$3, %eax
	cmpl	$600, %r11d             # imm = 0x258
	jl	.LBB60_102
# BB#100:                               # %if.else22.i
	movl	$4, %eax
	cmpl	$1200, %r11d            # imm = 0x4B0
	jl	.LBB60_102
# BB#101:                               # %if.else26.i
	cmpl	$2399, %r11d            # imm = 0x95F
	setg	%al
	movzbl	%al, %eax
	addl	$5, %eax
.LBB60_102:                             # %if.end34.i
	movslq	84(%rsp), %r10          # 4-byte Folded Reload
	movq	%r10, 136(%rsp)         # 8-byte Spill
	movl	%eax, %r13d
	movq	%r13, 120(%rsp)         # 8-byte Spill
	leal	2(%r8), %eax
	cltq
	testq	%rax, %rax
	movl	$1, %ecx
	cmovleq	%rcx, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	672(%r12), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	andq	$-16, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	imulq	$258, %r13, %rax        # imm = 0x102
	leaq	37450(%rax,%r12), %r15
	xorl	%r14d, %r14d
	movdqa	.LCPI60_2(%rip), %xmm2  # xmm2 = [14,15]
	movdqa	.LCPI60_3(%rip), %xmm1  # xmm1 = [12,13]
	movdqa	.LCPI60_4(%rip), %xmm3  # xmm3 = [10,11]
	movdqa	.LCPI60_5(%rip), %xmm4  # xmm4 = [8,9]
	movdqa	.LCPI60_6(%rip), %xmm5  # xmm5 = [2,3]
	movdqa	.LCPI60_9(%rip), %xmm6  # xmm6 = [2147483648,0,2147483648,0]
	movq	%r13, %r9
	jmp	.LBB60_103
.LBB60_116:                             # %if.then61.i
                                        #   in Loop: Header=BB60_103 Depth=1
	movq	stderr(%rip), %rdi
	cvtsi2ssl	%ebx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI60_1(%rip), %xmm0
	cvtsi2ssl	668(%r12), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movl	$.L.str.3.68, %esi
	movb	$1, %al
	movl	%r9d, %edx
	movl	%r14d, %ecx
	movl	%ebp, %r8d
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movl	%ebx, %r9d
	movl	%r11d, 160(%rsp)        # 4-byte Spill
	callq	fprintf
	movq	88(%rsp), %r9           # 8-byte Reload
	movdqa	.LCPI60_6(%rip), %xmm5  # xmm5 = [2,3]
	movdqa	.LCPI60_5(%rip), %xmm4  # xmm4 = [8,9]
	movdqa	.LCPI60_4(%rip), %xmm3  # xmm3 = [10,11]
	movdqa	.LCPI60_3(%rip), %xmm1  # xmm1 = [12,13]
	movdqa	.LCPI60_2(%rip), %xmm9  # xmm9 = [14,15]
	movdqa	%xmm9, %xmm2
	movdqa	.LCPI60_9(%rip), %xmm6  # xmm6 = [2147483648,0,2147483648,0]
	movl	160(%rsp), %r11d        # 4-byte Reload
	movq	136(%rsp), %r10         # 8-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	jmp	.LBB60_117
	.align	16, 0x90
.LBB60_103:                             # %while.body.i241
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_108 Depth 2
                                        #     Child Loop BB60_121 Depth 2
                                        #     Child Loop BB60_123 Depth 2
	movl	%r11d, %eax
	cltd
	idivl	%r9d
	leal	-1(%r14), %ebp
	cmpl	%r8d, %ebp
	jg	.LBB60_104
# BB#105:                               # %while.body.i241
                                        #   in Loop: Header=BB60_103 Depth=1
	testl	%eax, %eax
	jle	.LBB60_106
# BB#107:                               # %while.body41.preheader.i
                                        #   in Loop: Header=BB60_103 Depth=1
	movslq	%ebp, %rbp
	movslq	%r14d, %rcx
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB60_108:                             # %while.body41.i
                                        #   Parent Loop BB60_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	(%rcx), %ebx
	cmpq	%r8, %rbp
	leaq	1(%rbp), %rbp
	jge	.LBB60_110
# BB#109:                               # %while.body41.i
                                        #   in Loop: Header=BB60_108 Depth=2
	addq	$4, %rcx
	cmpl	%eax, %ebx
	jl	.LBB60_108
	jmp	.LBB60_110
	.align	16, 0x90
.LBB60_104:                             #   in Loop: Header=BB60_103 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB60_110
	.align	16, 0x90
.LBB60_106:                             #   in Loop: Header=BB60_103 Depth=1
	xorl	%ebx, %ebx
.LBB60_110:                             # %while.end.i
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpl	%r14d, %ebp
	jle	.LBB60_115
# BB#111:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpl	%r9d, %r13d
	je	.LBB60_115
# BB#112:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpl	$1, %r9d
	je	.LBB60_115
# BB#113:                               # %land.lhs.true50.i
                                        #   in Loop: Header=BB60_103 Depth=1
	movl	%r13d, %eax
	subl	%r9d, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	subl	%ecx, %eax
	cmpl	$1, %eax
	jne	.LBB60_115
# BB#114:                               # %if.then53.i
                                        #   in Loop: Header=BB60_103 Depth=1
	movslq	%ebp, %rax
	subl	672(%r12,%rax,4), %ebx
	decl	%ebp
	.align	16, 0x90
.LBB60_115:                             # %if.end58.i
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpl	$3, 656(%r12)
	jge	.LBB60_116
.LBB60_117:                             # %for.cond69.preheader.i
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpl	$-1, %r8d
	jl	.LBB60_128
# BB#118:                               # %for.body72.lr.ph.i
                                        #   in Loop: Header=BB60_103 Depth=1
	movslq	%ebp, %rax
	movslq	%r14d, %rcx
	cmpq	$16, 128(%rsp)          # 8-byte Folded Reload
	movl	$0, %esi
	jb	.LBB60_123
# BB#119:                               # %min.iters.checked2051
                                        #   in Loop: Header=BB60_103 Depth=1
	movq	128(%rsp), %r14         # 8-byte Reload
	andq	$-16, %r14
	movl	$0, %esi
	je	.LBB60_123
# BB#120:                               # %vector.ph2055
                                        #   in Loop: Header=BB60_103 Depth=1
	movq	%r9, 88(%rsp)           # 8-byte Spill
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, 160(%rsp)        # 16-byte Spill
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	%xmm0, 144(%rsp)        # 16-byte Spill
	movq	%r15, %rsi
	xorl	%edi, %edi
	movl	$1, %r9d
	movq	72(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB60_121:                             # %vector.body2047
                                        #   Parent Loop BB60_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movd	%r9, %xmm9
	pslldq	$8, %xmm9               # xmm9 = zero,zero,zero,zero,zero,zero,zero,zero,xmm9[0,1,2,3,4,5,6,7]
	paddq	%xmm0, %xmm9
	movdqa	%xmm0, %xmm11
	paddq	%xmm2, %xmm11
	movdqa	%xmm0, %xmm12
	paddq	%xmm1, %xmm12
	movdqa	%xmm0, %xmm13
	paddq	%xmm3, %xmm13
	movdqa	%xmm0, %xmm14
	paddq	%xmm4, %xmm14
	movdqa	%xmm0, %xmm15
	paddq	%xmm5, %xmm15
	movdqa	%xmm0, %xmm1
	movdqa	.LCPI60_7(%rip), %xmm2  # xmm2 = [4,5]
	paddq	%xmm2, %xmm1
	paddq	.LCPI60_8(%rip), %xmm0
	pxor	%xmm6, %xmm0
	movdqa	160(%rsp), %xmm8        # 16-byte Reload
	pxor	%xmm6, %xmm8
	movdqa	%xmm8, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pshufd	$160, %xmm3, %xmm5      # xmm5 = xmm3[0,0,2,2]
	movdqa	%xmm8, %xmm2
	pcmpeqd	%xmm0, %xmm2
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pand	%xmm5, %xmm2
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pxor	%xmm6, %xmm1
	movdqa	%xmm8, %xmm3
	pcmpgtd	%xmm1, %xmm3
	pshufd	$160, %xmm3, %xmm7      # xmm7 = xmm3[0,0,2,2]
	movdqa	%xmm8, %xmm5
	pcmpeqd	%xmm1, %xmm5
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pand	%xmm7, %xmm5
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0]
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm10     # xmm10 = xmm2[0,2,2,3]
	pxor	%xmm6, %xmm15
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm15, %xmm2
	pshufd	$160, %xmm2, %xmm3      # xmm3 = xmm2[0,0,2,2]
	movdqa	%xmm8, %xmm5
	pcmpeqd	%xmm15, %xmm5
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	pand	%xmm3, %xmm5
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	por	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pxor	%xmm6, %xmm9
	movdqa	%xmm8, %xmm3
	pcmpgtd	%xmm9, %xmm3
	pshufd	$160, %xmm3, %xmm5      # xmm5 = xmm3[0,0,2,2]
	movdqa	%xmm8, %xmm7
	pcmpeqd	%xmm9, %xmm7
	pshufd	$245, %xmm7, %xmm7      # xmm7 = xmm7[1,1,3,3]
	pand	%xmm5, %xmm7
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0]
	pslld	$31, %xmm3
	psrad	$31, %xmm3
	pshuflw	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm3      # xmm3 = xmm2[0,2,2,3]
	punpcklqdq	%xmm10, %xmm3   # xmm3 = xmm3[0],xmm10[0]
	pxor	%xmm6, %xmm14
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm14, %xmm2
	pshufd	$160, %xmm2, %xmm5      # xmm5 = xmm2[0,0,2,2]
	movdqa	%xmm8, %xmm7
	pcmpeqd	%xmm14, %xmm7
	pshufd	$245, %xmm7, %xmm7      # xmm7 = xmm7[1,1,3,3]
	pand	%xmm5, %xmm7
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	por	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pxor	%xmm6, %xmm13
	movdqa	%xmm8, %xmm5
	pcmpgtd	%xmm13, %xmm5
	pshufd	$160, %xmm5, %xmm7      # xmm7 = xmm5[0,0,2,2]
	movdqa	%xmm8, %xmm4
	pcmpeqd	%xmm13, %xmm4
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pand	%xmm7, %xmm4
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	por	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm4      # xmm4 = xmm5[0,2,2,3]
	punpcklqdq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0]
	pxor	%xmm6, %xmm12
	movdqa	%xmm8, %xmm4
	pcmpgtd	%xmm12, %xmm4
	pshufd	$160, %xmm4, %xmm5      # xmm5 = xmm4[0,0,2,2]
	movdqa	%xmm8, %xmm7
	pcmpeqd	%xmm12, %xmm7
	pshufd	$245, %xmm7, %xmm7      # xmm7 = xmm7[1,1,3,3]
	pand	%xmm5, %xmm7
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	por	%xmm7, %xmm4
	pxor	%xmm6, %xmm11
	movdqa	%xmm8, %xmm5
	pcmpgtd	%xmm11, %xmm5
	pshufd	$160, %xmm5, %xmm10     # xmm10 = xmm5[0,0,2,2]
	pcmpeqd	%xmm11, %xmm8
	pshufd	$245, %xmm8, %xmm7      # xmm7 = xmm8[1,1,3,3]
	pand	%xmm10, %xmm7
	pshufd	$245, %xmm5, %xmm5      # xmm5 = xmm5[1,1,3,3]
	por	%xmm7, %xmm5
	movdqa	.LCPI60_10(%rip), %xmm7 # xmm7 = [255,255,255,255,255,255,255,255]
	psllw	$15, %xmm3
	psraw	$15, %xmm3
	pand	%xmm7, %xmm3
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	punpcklqdq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0]
	pslld	$31, %xmm4
	psrad	$31, %xmm4
	pshuflw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4      # xmm4 = xmm4[0,2,2,3]
	punpcklqdq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0]
	psllw	$15, %xmm2
	psraw	$15, %xmm2
	pand	%xmm7, %xmm2
	packuswb	%xmm2, %xmm3
	psllw	$7, %xmm3
	movdqa	.LCPI60_11(%rip), %xmm8 # xmm8 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	pand	%xmm8, %xmm3
	pxor	%xmm10, %xmm10
	pcmpgtb	%xmm3, %xmm10
	movdqa	144(%rsp), %xmm2        # 16-byte Reload
	pxor	%xmm6, %xmm2
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pshufd	$160, %xmm3, %xmm4      # xmm4 = xmm3[0,0,2,2]
	pcmpeqd	%xmm2, %xmm0
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pand	%xmm4, %xmm0
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm0, %xmm3
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pshufd	$160, %xmm0, %xmm4      # xmm4 = xmm0[0,0,2,2]
	pcmpeqd	%xmm2, %xmm1
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pand	%xmm4, %xmm1
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	por	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpcklqdq	%xmm3, %xmm0    # xmm0 = xmm0[0],xmm3[0]
	movdqa	%xmm15, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm3      # xmm3 = xmm1[0,0,2,2]
	pcmpeqd	%xmm2, %xmm15
	pshufd	$245, %xmm15, %xmm4     # xmm4 = xmm15[1,1,3,3]
	pand	%xmm3, %xmm4
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	por	%xmm4, %xmm1
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pshufd	$160, %xmm3, %xmm4      # xmm4 = xmm3[0,0,2,2]
	pcmpeqd	%xmm2, %xmm9
	pshufd	$245, %xmm9, %xmm5      # xmm5 = xmm9[1,1,3,3]
	pand	%xmm4, %xmm5
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm5, %xmm3
	pslld	$31, %xmm0
	psrad	$31, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm4      # xmm4 = xmm0[0,2,2,3]
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	pshufd	$232, %xmm3, %xmm1      # xmm1 = xmm3[0,2,2,3]
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	pslld	$31, %xmm1
	psrad	$31, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpcklqdq	%xmm4, %xmm0    # xmm0 = xmm0[0],xmm4[0]
	movdqa	%xmm14, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm3      # xmm3 = xmm1[0,0,2,2]
	pcmpeqd	%xmm2, %xmm14
	pshufd	$245, %xmm14, %xmm4     # xmm4 = xmm14[1,1,3,3]
	pand	%xmm3, %xmm4
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	por	%xmm4, %xmm1
	movdqa	%xmm13, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pshufd	$160, %xmm3, %xmm4      # xmm4 = xmm3[0,0,2,2]
	pcmpeqd	%xmm2, %xmm13
	pshufd	$245, %xmm13, %xmm5     # xmm5 = xmm13[1,1,3,3]
	pand	%xmm4, %xmm5
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm1    # xmm1 = xmm1[0],xmm3[0]
	movdqa	%xmm12, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pshufd	$160, %xmm3, %xmm4      # xmm4 = xmm3[0,0,2,2]
	pcmpeqd	%xmm2, %xmm12
	pshufd	$245, %xmm12, %xmm5     # xmm5 = xmm12[1,1,3,3]
	pand	%xmm4, %xmm5
	pshufd	$245, %xmm3, %xmm3      # xmm3 = xmm3[1,1,3,3]
	por	%xmm5, %xmm3
	movdqa	%xmm11, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pcmpeqd	%xmm11, %xmm2
	pshufd	$160, %xmm4, %xmm5      # xmm5 = xmm4[0,0,2,2]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pand	%xmm5, %xmm2
	movdqa	.LCPI60_6(%rip), %xmm5  # xmm5 = [2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	por	%xmm2, %xmm4
	pshufd	$232, %xmm3, %xmm2      # xmm2 = xmm3[0,2,2,3]
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	movdqa	.LCPI60_5(%rip), %xmm4  # xmm4 = [8,9]
	punpcklqdq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0]
	movdqa	.LCPI60_4(%rip), %xmm3  # xmm3 = [10,11]
	pslld	$31, %xmm1
	psrad	$31, %xmm1
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pslld	$31, %xmm2
	psrad	$31, %xmm2
	pshuflw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	psllw	$15, %xmm0
	psraw	$15, %xmm0
	pand	%xmm7, %xmm0
	psllw	$15, %xmm1
	psraw	$15, %xmm1
	pand	%xmm7, %xmm1
	movdqa	.LCPI60_12(%rip), %xmm2 # xmm2 = [15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15]
	packuswb	%xmm1, %xmm0
	psllw	$7, %xmm0
	pand	%xmm8, %xmm0
	pxor	%xmm1, %xmm1
	pcmpgtb	%xmm0, %xmm1
	por	%xmm10, %xmm1
	pand	%xmm2, %xmm1
	movdqu	%xmm1, (%rsi)
	movdqa	.LCPI60_3(%rip), %xmm1  # xmm1 = [12,13]
	movdqa	.LCPI60_2(%rip), %xmm2  # xmm2 = [14,15]
	addq	$16, %rdi
	addq	$16, %rsi
	cmpq	%rdi, %rdx
	jne	.LBB60_121
# BB#122:                               # %middle.block2048
                                        #   in Loop: Header=BB60_103 Depth=1
	cmpq	%r14, 128(%rsp)         # 8-byte Folded Reload
	movq	%r14, %rsi
	movq	88(%rsp), %r9           # 8-byte Reload
	je	.LBB60_128
	.align	16, 0x90
.LBB60_123:                             # %for.body72.i
                                        #   Parent Loop BB60_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rax, %rsi
	movb	$15, %dl
	movb	$15, %dil
	jg	.LBB60_125
# BB#124:                               # %for.body72.i
                                        #   in Loop: Header=BB60_123 Depth=2
	xorl	%edi, %edi
.LBB60_125:                             # %for.body72.i
                                        #   in Loop: Header=BB60_123 Depth=2
	cmpq	%rcx, %rsi
	jl	.LBB60_127
# BB#126:                               # %for.body72.i
                                        #   in Loop: Header=BB60_123 Depth=2
	movb	%dil, %dl
.LBB60_127:                             # %for.body72.i
                                        #   in Loop: Header=BB60_123 Depth=2
	movb	%dl, (%r15,%rsi)
	incq	%rsi
	cmpq	%r10, %rsi
	jl	.LBB60_123
.LBB60_128:                             # %for.end95.i
                                        #   in Loop: Header=BB60_103 Depth=1
	incl	%ebp
	subl	%ebx, %r11d
	addq	$-258, %r15             # imm = 0xFFFFFFFFFFFFFEFE
	cmpq	$1, %r9
	leaq	-1(%r9), %r9
	movl	%ebp, %r14d
	jg	.LBB60_103
# BB#129:                               # %for.cond100.preheader.i
	movq	%r10, 136(%rsp)         # 8-byte Spill
	leal	-1(%r13), %eax
	leaq	4(,%rax,4), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	4(,%rcx,4), %r15
	movq	%r15, 64(%rsp)          # 8-byte Spill
	leaq	2(%rax,%rax), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	cmpl	$6, %r13d
	setne	%al
	cmpl	$-1, %r8d
	movq	%r8, 104(%rsp)          # 8-byte Spill
	setl	%cl
	orb	%al, %cl
	movb	%cl, 48(%rsp)           # 1-byte Spill
	leaq	45448(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	51648(%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	jmp	.LBB60_130
.LBB60_155:                             # %if.then1671.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movl	%ebp, 160(%rsp)         # 4-byte Spill
	movq	stderr(%rip), %rdi
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %edx
	movl	%r10d, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	addl	%r10d, %ecx
	sarl	$3, %ecx
	movl	$.L.str.4.69, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB60_156:                             # %for.body1678.i
                                        #   Parent Loop BB60_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	256(%rsp,%rbx,4), %edx
	movl	$.L.str.5.70, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	fprintf
	incq	%rbx
	movq	stderr(%rip), %rcx
	cmpq	%r13, %rbx
	jl	.LBB60_156
# BB#157:                               # %for.end1684.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movl	$10, %edi
	movq	%rcx, %rsi
	callq	fputc
	jmp	.LBB60_158
	.align	16, 0x90
.LBB60_130:                             # %for.cond104.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_131 Depth 2
                                        #     Child Loop BB60_511 Depth 2
                                        #     Child Loop BB60_136 Depth 2
                                        #       Child Loop BB60_142 Depth 3
                                        #         Child Loop BB60_143 Depth 4
                                        #       Child Loop BB60_146 Depth 3
                                        #       Child Loop BB60_150 Depth 3
                                        #     Child Loop BB60_156 Depth 2
                                        #     Child Loop BB60_159 Depth 2
	xorl	%esi, %esi
	leaq	256(%rsp), %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	memset
	movq	88(%rsp), %rbp          # 8-byte Reload
	xorl	%ebx, %ebx
	movq	104(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB60_131:                             # %for.cond117.preheader.i
                                        #   Parent Loop BB60_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-1, %eax
	jl	.LBB60_133
# BB#132:                               # %for.body120.lr.ph.i
                                        #   in Loop: Header=BB60_131 Depth=2
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r15, %rdx
	movq	%rax, %r14
	callq	memset
	movq	%r14, %rax
.LBB60_133:                             # %for.inc128.i
                                        #   in Loop: Header=BB60_131 Depth=2
	incq	%rbx
	addq	$1032, %rbp             # imm = 0x408
	cmpq	%r13, %rbx
	jl	.LBB60_131
# BB#134:                               # %for.end130.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpb	$0, 48(%rsp)            # 1-byte Folded Reload
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	$0, %ecx
	movq	136(%rsp), %rdi         # 8-byte Reload
	jne	.LBB60_135
	.align	16, 0x90
.LBB60_511:                             # %for.body137.i
                                        #   Parent Loop BB60_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	37966(%r12,%rcx), %edx
	shll	$16, %edx
	movzbl	37708(%r12,%rcx), %esi
	orl	%edx, %esi
	movl	%esi, -8(%rax)
	movzbl	38482(%r12,%rcx), %edx
	shll	$16, %edx
	movzbl	38224(%r12,%rcx), %esi
	orl	%edx, %esi
	movl	%esi, -4(%rax)
	movzbl	38998(%r12,%rcx), %edx
	shll	$16, %edx
	movzbl	38740(%r12,%rcx), %esi
	orl	%edx, %esi
	movl	%esi, (%rax)
	incq	%rcx
	addq	$16, %rax
	cmpq	%rdi, %rcx
	jl	.LBB60_511
.LBB60_135:                             # %while.body188.preheader.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movl	668(%r12), %ebx
	xorl	%r10d, %r10d
	testl	%ebx, %ebx
	movl	$0, %eax
	movl	$0, %ecx
	movl	$0, %ebp
	jle	.LBB60_153
	.align	16, 0x90
.LBB60_136:                             # %if.end193.i
                                        #   Parent Loop BB60_130 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_142 Depth 3
                                        #         Child Loop BB60_143 Depth 4
                                        #       Child Loop BB60_146 Depth 3
                                        #       Child Loop BB60_150 Depth 3
	movq	%r10, 160(%rsp)         # 8-byte Spill
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	cmpl	$6, %r13d
	sete	%r15b
	leal	49(%rax), %r13d
	leal	-1(%rbx), %r14d
	xorl	%esi, %esi
	leaq	244(%rsp), %rdi
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	%rax, %rbp
	callq	memset
	movl	%r13d, %r11d
	cmpl	%ebx, %r11d
	cmovll	%r11d, %r14d
	movl	%r14d, %eax
	subl	%ebp, %eax
	cmpl	$49, %eax
	sete	%r8b
	andb	%r15b, %r8b
	je	.LBB60_137
# BB#140:                               # %if.then219.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movslq	%ebp, %rdi
	movq	184(%rsp), %r9          # 8-byte Reload
	movzwl	(%r9,%rdi,2), %eax
	shlq	$4, %rax
	movzwl	2(%r9,%rdi,2), %ecx
	shlq	$4, %rcx
	movl	51640(%r12,%rcx), %esi
	movl	51644(%r12,%rcx), %edx
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	movl	51648(%r12,%rcx), %ecx
	addl	51648(%r12,%rax), %ecx
	movzwl	4(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	6(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	8(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	10(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	12(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	14(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	16(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	18(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	20(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	22(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	24(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	26(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	28(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	30(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	32(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	34(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	36(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	38(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	40(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	42(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	44(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	46(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	48(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	50(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	52(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	54(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	56(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	58(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	60(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	62(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	64(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	66(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	68(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	70(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	72(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	74(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	76(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	78(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	80(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	82(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	84(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	86(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	88(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	90(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	92(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	94(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movzwl	96(%r9,%rdi,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movslq	%r11d, %rax
	movzwl	(%r9,%rax,2), %eax
	shlq	$4, %rax
	addl	51640(%r12,%rax), %esi
	addl	51644(%r12,%rax), %edx
	addl	51648(%r12,%rax), %ecx
	movw	%si, 244(%rsp)
	shrl	$16, %esi
	movw	%si, 246(%rsp)
	movw	%dx, 248(%rsp)
	shrl	$16, %edx
	movw	%dx, 250(%rsp)
	movw	%cx, 252(%rsp)
	shrl	$16, %ecx
	movw	%cx, 254(%rsp)
	movl	$999999999, %ecx        # imm = 0x3B9AC9FF
	movl	$-1, %edx
	xorl	%esi, %esi
	jmp	.LBB60_139
	.align	16, 0x90
.LBB60_137:                             # %for.cond1137.preheader.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movl	$999999999, %ecx        # imm = 0x3B9AC9FF
	movl	$-1, %edx
	cmpl	%ebp, %r14d
	jge	.LBB60_141
# BB#138:                               #   in Loop: Header=BB60_136 Depth=2
	xorl	%esi, %esi
	movq	184(%rsp), %r9          # 8-byte Reload
.LBB60_139:                             # %for.body1169.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movq	160(%rsp), %r10         # 8-byte Reload
	movl	144(%rsp), %ebx         # 4-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	jmp	.LBB60_146
	.align	16, 0x90
.LBB60_141:                             # %for.body1140.preheader.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movslq	%ebp, %rsi
	movq	%rbp, %r15
	movslq	%r14d, %r10
	movq	184(%rsp), %r9          # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB60_142:                             # %for.body1140.i
                                        #   Parent Loop BB60_130 Depth=1
                                        #     Parent Loop BB60_136 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB60_143 Depth 4
	movzwl	(%r9,%rsi,2), %ebx
	addq	%rdi, %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB60_143:                             # %for.body1147.i
                                        #   Parent Loop BB60_130 Depth=1
                                        #     Parent Loop BB60_136 Depth=2
                                        #       Parent Loop BB60_142 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbx), %ebp
	addw	%bp, 244(%rsp,%rax,2)
	incq	%rax
	addq	$258, %rbx              # imm = 0x102
	cmpq	%r13, %rax
	jl	.LBB60_143
# BB#144:                               # %for.end1161.i
                                        #   in Loop: Header=BB60_142 Depth=3
	cmpq	%r10, %rsi
	leaq	1(%rsi), %rsi
	jl	.LBB60_142
# BB#145:                               #   in Loop: Header=BB60_136 Depth=2
	xorl	%esi, %esi
	movq	160(%rsp), %r10         # 8-byte Reload
	movl	144(%rsp), %ebx         # 4-byte Reload
	movq	%r15, %rbp
	.align	16, 0x90
.LBB60_146:                             # %for.body1169.i
                                        #   Parent Loop BB60_130 Depth=1
                                        #     Parent Loop BB60_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	244(%rsp,%rsi,2), %eax
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	cmovll	%esi, %edx
	incq	%rsi
	cmpq	%r13, %rsi
	jl	.LBB60_146
# BB#147:                               # %for.end1182.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movslq	%edx, %rsi
	incl	256(%rsp,%rsi,4)
	movb	%sil, 1704(%r12,%r10)
	testb	$1, %r8b
	je	.LBB60_148
# BB#512:                               # %if.then1198.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movslq	%ebp, %rdx
	movzwl	(%r9,%rdx,2), %edi
	imulq	$1032, %rsi, %rax       # imm = 0x408
	addq	%r12, %rax
	incl	45448(%rax,%rdi,4)
	movzwl	2(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	4(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	6(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	8(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	10(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	12(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	14(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	16(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	18(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	20(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	22(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	24(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	26(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	28(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	30(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	32(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	34(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	36(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	38(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	40(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	42(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	44(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	46(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	48(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	50(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	52(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	54(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	56(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	58(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	60(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	62(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	64(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	66(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	68(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	70(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	72(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	74(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	76(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	78(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	80(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	82(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	84(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	86(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	88(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	90(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	92(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	94(%r9,%rdx,2), %esi
	incl	45448(%rax,%rsi,4)
	movzwl	96(%r9,%rdx,2), %edx
	incl	45448(%rax,%rdx,4)
	movslq	%r11d, %rdx
	movzwl	(%r9,%rdx,2), %edx
	incl	45448(%rax,%rdx,4)
	jmp	.LBB60_151
	.align	16, 0x90
.LBB60_148:                             # %for.cond1650.preheader.i
                                        #   in Loop: Header=BB60_136 Depth=2
	cmpl	%ebp, %r14d
	jl	.LBB60_151
# BB#149:                               # %for.body1653.preheader.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movslq	%r14d, %rax
	movslq	%ebp, %rdx
	decq	%rdx
	.align	16, 0x90
.LBB60_150:                             # %for.body1653.i
                                        #   Parent Loop BB60_130 Depth=1
                                        #     Parent Loop BB60_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	2(%r9,%rdx,2), %edi
	imulq	$1032, %rsi, %rbp       # imm = 0x408
	addq	%r12, %rbp
	incl	45448(%rbp,%rdi,4)
	incq	%rdx
	cmpq	%rax, %rdx
	jl	.LBB60_150
.LBB60_151:                             # %if.end1665.i
                                        #   in Loop: Header=BB60_136 Depth=2
	movq	%r9, 184(%rsp)          # 8-byte Spill
	addl	%ebx, %ecx
	incq	%r10
	incl	%r14d
	movl	668(%r12), %ebx
	cmpl	%ebx, %r14d
	movl	%r14d, %eax
	jl	.LBB60_136
# BB#152:                               # %while.end1667.loopexit.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movl	%r10d, %ebp
	movl	%ecx, %r10d
.LBB60_153:                             # %while.end1667.i
                                        #   in Loop: Header=BB60_130 Depth=1
	cmpl	$3, 656(%r12)
	jge	.LBB60_155
# BB#154:                               #   in Loop: Header=BB60_130 Depth=1
	movl	%ebp, 160(%rsp)         # 4-byte Spill
.LBB60_158:                             # %for.body1690.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	movq	88(%rsp), %r14          # 8-byte Reload
	xorl	%ebx, %ebx
	movl	84(%rsp), %ebp          # 4-byte Reload
	.align	16, 0x90
.LBB60_159:                             # %for.body1690.i
                                        #   Parent Loop BB60_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$17, %ecx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	BZ2_hbMakeCodeLengths
	incq	%rbx
	addq	$1032, %r14             # imm = 0x408
	addq	$258, %r15              # imm = 0x102
	cmpq	%r13, %rbx
	jl	.LBB60_159
# BB#160:                               # %for.inc1702.i
                                        #   in Loop: Header=BB60_130 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	cmpl	$4, %eax
	movq	64(%rsp), %r15          # 8-byte Reload
	jne	.LBB60_130
# BB#161:                               # %if.end1708.i
	movl	160(%rsp), %r14d        # 4-byte Reload
	cmpl	$18003, %r14d           # imm = 0x4653
	jl	.LBB60_163
# BB#162:                               # %if.then1714.i
	movl	$3003, %edi             # imm = 0xBBB
	callq	BZ2_bz__AssertH__fail
.LBB60_163:                             # %if.end1715.i
	xorl	%eax, %eax
	.align	16, 0x90
.LBB60_164:                             # %for.body1719.i
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, 224(%rsp,%rax)
	incq	%rax
	cmpq	%r13, %rax
	jl	.LBB60_164
# BB#165:                               # %for.cond1726.preheader.i
	testl	%r14d, %r14d
	movq	104(%rsp), %rbp         # 8-byte Reload
	jle	.LBB60_170
# BB#166:                               # %for.body1729.preheader.i
	movb	224(%rsp), %al
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB60_167:                             # %for.body1729.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_168 Depth 2
	movb	%al, %bl
	movzbl	1704(%r12,%rcx), %eax
	movzbl	%bl, %esi
	xorl	%edx, %edx
	cmpl	%esi, %eax
	je	.LBB60_169
	.align	16, 0x90
.LBB60_168:                             # %while.body1740.i
                                        #   Parent Loop BB60_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	225(%rsp,%rdx), %esi
	movb	%bl, 225(%rsp,%rdx)
	incq	%rdx
	movzbl	%al, %edi
	cmpl	%esi, %edi
	movb	%sil, %bl
	jne	.LBB60_168
.LBB60_169:                             # %while.end1746.i
                                        #   in Loop: Header=BB60_167 Depth=1
	movb	%al, 224(%rsp)
	movb	%dl, 19706(%r12,%rcx)
	incq	%rcx
	cmpl	%r14d, %ecx
	jne	.LBB60_167
.LBB60_170:                             # %for.end1753.i
	leal	2(%rbp), %eax
	cltq
	testq	%rax, %rax
	movl	$1, %ecx
	cmovgq	%rax, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%rcx, %rax
	andq	$-4, %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	movl	84(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB60_171:                             # %for.cond1758.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_175 Depth 2
                                        #     Child Loop BB60_177 Depth 2
	movl	$32, %r14d
	cmpl	$-1, %ebp
	movl	$0, %ebp
	jl	.LBB60_184
# BB#172:                               # %for.body1761.i.preheader
                                        #   in Loop: Header=BB60_171 Depth=1
	xorl	%ecx, %ecx
	movl	$32, %r14d
	cmpq	$4, 144(%rsp)           # 8-byte Folded Reload
	pxor	%xmm5, %xmm5
	jae	.LBB60_174
# BB#173:                               #   in Loop: Header=BB60_171 Depth=1
	xorl	%ebp, %ebp
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	112(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB60_177
	.align	16, 0x90
.LBB60_174:                             # %min.iters.checked2097
                                        #   in Loop: Header=BB60_171 Depth=1
	xorl	%ecx, %ecx
	movq	144(%rsp), %rax         # 8-byte Reload
	andq	$-4, %rax
	pxor	%xmm1, %xmm1
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	128(%rsp), %rsi         # 8-byte Reload
	movdqa	.LCPI60_13(%rip), %xmm0 # xmm0 = [32,32,32,32]
	movl	$0, %ebp
	movq	136(%rsp), %rdi         # 8-byte Reload
	je	.LBB60_177
	.align	16, 0x90
.LBB60_175:                             # %vector.body2092
                                        #   Parent Loop BB60_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm2    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1],xmm2[2],xmm5[2],xmm2[3],xmm5[3],xmm2[4],xmm5[4],xmm2[5],xmm5[5],xmm2[6],xmm5[6],xmm2[7],xmm5[7]
	punpcklwd	%xmm5, %xmm2    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1],xmm2[2],xmm5[2],xmm2[3],xmm5[3]
	movdqa	%xmm2, %xmm3
	pcmpgtd	%xmm1, %xmm3
	movdqa	%xmm2, %xmm4
	pand	%xmm3, %xmm4
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm2
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm2, %xmm0
	addq	$4, %rdx
	addq	$-4, %rsi
	jne	.LBB60_175
# BB#176:                               # %middle.block2093
                                        #   in Loop: Header=BB60_171 Depth=1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm1, %xmm3
	pshufd	$229, %xmm3, %xmm1      # xmm1 = xmm3[1,1,2,3]
	movd	%xmm3, %ecx
	pcmpgtd	%xmm1, %xmm3
	movdqa	%xmm3, 192(%rsp)
	testb	$1, 192(%rsp)
	movd	%xmm1, %ebp
	cmovnel	%ecx, %ebp
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm0, %ecx
	pcmpgtd	%xmm2, %xmm0
	movdqa	%xmm0, 208(%rsp)
	movd	%xmm2, %r14d
	testb	$1, 208(%rsp)
	cmovel	%ecx, %r14d
	cmpq	%rax, 144(%rsp)         # 8-byte Folded Reload
	movq	%rax, %rcx
	je	.LBB60_178
	.align	16, 0x90
.LBB60_177:                             # %for.body1761.i
                                        #   Parent Loop BB60_171 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx,%rcx), %eax
	cmpl	%ebp, %eax
	cmovgel	%eax, %ebp
	cmpl	%r14d, %eax
	cmovlel	%eax, %r14d
	incq	%rcx
	cmpq	%rdi, %rcx
	jl	.LBB60_177
.LBB60_178:                             # %for.end1796.i
                                        #   in Loop: Header=BB60_171 Depth=1
	cmpl	$18, %ebp
	jl	.LBB60_180
# BB#179:                               # %if.then1799.i
                                        #   in Loop: Header=BB60_171 Depth=1
	movl	$3004, %edi             # imm = 0xBBC
	callq	BZ2_bz__AssertH__fail
	movq	136(%rsp), %rdi         # 8-byte Reload
.LBB60_180:                             # %if.end1800.i
                                        #   in Loop: Header=BB60_171 Depth=1
	testl	%r14d, %r14d
	jle	.LBB60_182
# BB#181:                               #   in Loop: Header=BB60_171 Depth=1
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	jmp	.LBB60_183
.LBB60_182:                             # %if.then1803.i
                                        #   in Loop: Header=BB60_171 Depth=1
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	movl	$3005, %edi             # imm = 0xBBD
	callq	BZ2_bz__AssertH__fail
.LBB60_183:                             # %if.end1804.i
                                        #   in Loop: Header=BB60_171 Depth=1
	movl	84(%rsp), %ebx          # 4-byte Reload
.LBB60_184:                             # %if.end1804.i
                                        #   in Loop: Header=BB60_171 Depth=1
	imulq	$1032, %r15, %rax       # imm = 0x408
	leaq	39256(%r12,%rax), %rdi
	imulq	$258, %r15, %rax        # imm = 0x102
	leaq	37708(%r12,%rax), %rsi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	BZ2_hbAssignCodes
	incq	%r15
	addq	$258, 112(%rsp)         # 8-byte Folded Spill
                                        # imm = 0x102
	cmpq	%r13, %r15
	movq	104(%rsp), %rbp         # 8-byte Reload
	jl	.LBB60_171
# BB#185:                               # %for.end1814.i
	movq	%rbp, %r15
	movq	%r12, %rax
	subq	$-128, %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB60_186:                             # %for.body1819.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_187 Depth 2
	movb	$0, 224(%rsp,%rcx)
	movq	%rax, %rdx
	movl	$16, %esi
	.align	16, 0x90
.LBB60_187:                             # %for.body1825.i
                                        #   Parent Loop BB60_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%rdx)
	je	.LBB60_189
# BB#188:                               # %if.then1830.i
                                        #   in Loop: Header=BB60_187 Depth=2
	movb	$1, 224(%rsp,%rcx)
.LBB60_189:                             # %for.inc1834.i
                                        #   in Loop: Header=BB60_187 Depth=2
	incq	%rdx
	decq	%rsi
	jne	.LBB60_187
# BB#190:                               # %for.inc1837.i
                                        #   in Loop: Header=BB60_186 Depth=1
	incq	%rcx
	addq	$16, %rax
	cmpq	$16, %rcx
	jne	.LBB60_186
# BB#191:                               # %for.end1839.i
	movl	116(%r12), %r8d
	movl	644(%r12), %eax
	xorl	%r9d, %r9d
	movl	%r8d, %ebp
	xorl	%esi, %esi
	.align	16, 0x90
.LBB60_192:                             # %for.body1843.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_196 Depth 2
                                        #     Child Loop BB60_201 Depth 2
	cmpb	$0, 224(%rsp,%rsi)
	je	.LBB60_198
# BB#193:                               # %if.then1847.i
                                        #   in Loop: Header=BB60_192 Depth=1
	cmpl	$7, %eax
	jle	.LBB60_194
# BB#195:                               # %while.body.lr.ph.i.i255
                                        #   in Loop: Header=BB60_192 Depth=1
	movl	640(%r12), %edx
	.align	16, 0x90
.LBB60_196:                             # %while.body.i.i264
                                        #   Parent Loop BB60_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edx
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rbx
	movl	%ebx, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rbx
	addl	$-8, %ebx
	movl	%ebx, 644(%r12)
	cmpl	$7, %ebx
	movl	%ebx, %eax
	jg	.LBB60_196
	jmp	.LBB60_197
	.align	16, 0x90
.LBB60_198:                             # %if.else1848.i
                                        #   in Loop: Header=BB60_192 Depth=1
	cmpl	$7, %eax
	jle	.LBB60_199
# BB#200:                               # %while.body.lr.ph.i1756
                                        #   in Loop: Header=BB60_192 Depth=1
	movl	640(%r12), %edi
	.align	16, 0x90
.LBB60_201:                             # %while.body.i1765
                                        #   Parent Loop BB60_192 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jg	.LBB60_201
	jmp	.LBB60_202
	.align	16, 0x90
.LBB60_194:                             # %entry.while.end_crit_edge.i.i252
                                        #   in Loop: Header=BB60_192 Depth=1
	movq	640(%r12), %rdx
	movq	%rdx, %rbx
	shrq	$32, %rbx
.LBB60_197:                             # %bsW.exit.i
                                        #   in Loop: Header=BB60_192 Depth=1
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%ebx, %eax
	jmp	.LBB60_202
.LBB60_199:                             # %entry.while.end_crit_edge.i1751
                                        #   in Loop: Header=BB60_192 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
	.align	16, 0x90
.LBB60_202:                             # %for.inc1850.i
                                        #   in Loop: Header=BB60_192 Depth=1
	movl	%edi, 640(%r12)
	incl	%eax
	movl	%eax, 644(%r12)
	incq	%rsi
	cmpq	$16, %rsi
	jne	.LBB60_192
# BB#203:
	movl	160(%rsp), %r14d        # 4-byte Reload
	.align	16, 0x90
.LBB60_204:                             # %for.body1856.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_206 Depth 2
                                        #       Child Loop BB60_209 Depth 3
                                        #       Child Loop BB60_213 Depth 3
	cmpb	$0, 224(%rsp,%r9)
	je	.LBB60_215
# BB#205:                               # %for.cond1861.preheader.i
                                        #   in Loop: Header=BB60_204 Depth=1
	movq	%r9, %rdx
	shlq	$4, %rdx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB60_206:                             # %for.body1864.i
                                        #   Parent Loop BB60_204 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_209 Depth 3
                                        #       Child Loop BB60_213 Depth 3
	leaq	(%rbx,%rdx), %rcx
	cmpb	$0, 128(%r12,%rcx)
	je	.LBB60_211
# BB#207:                               # %if.then1871.i
                                        #   in Loop: Header=BB60_206 Depth=2
	cmpl	$7, %eax
	jle	.LBB60_208
	.align	16, 0x90
.LBB60_209:                             # %while.body.i1739
                                        #   Parent Loop BB60_204 Depth=1
                                        #     Parent Loop BB60_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shrl	$24, %edi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %eax
	jg	.LBB60_209
	jmp	.LBB60_210
	.align	16, 0x90
.LBB60_211:                             # %if.else1872.i
                                        #   in Loop: Header=BB60_206 Depth=2
	cmpl	$7, %eax
	jle	.LBB60_212
	.align	16, 0x90
.LBB60_213:                             # %while.body.i1715
                                        #   Parent Loop BB60_204 Depth=1
                                        #     Parent Loop BB60_206 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shrl	$24, %edi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jg	.LBB60_213
	jmp	.LBB60_214
	.align	16, 0x90
.LBB60_208:                             # %entry.while.end_crit_edge.i1725
                                        #   in Loop: Header=BB60_206 Depth=2
	movq	640(%r12), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
.LBB60_210:                             # %bsW.exit1746
                                        #   in Loop: Header=BB60_206 Depth=2
	movl	$31, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shll	%cl, %eax
	orl	%eax, %edi
	movl	%esi, %eax
	jmp	.LBB60_214
.LBB60_212:                             # %entry.while.end_crit_edge.i1701
                                        #   in Loop: Header=BB60_206 Depth=2
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
	.align	16, 0x90
.LBB60_214:                             # %for.inc1874.i
                                        #   in Loop: Header=BB60_206 Depth=2
	movl	%edi, 640(%r12)
	incl	%eax
	movl	%eax, 644(%r12)
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB60_206
.LBB60_215:                             # %for.inc1878.i
                                        #   in Loop: Header=BB60_204 Depth=1
	incq	%r9
	cmpq	$16, %r9
	jne	.LBB60_204
# BB#216:                               # %for.end1880.i
	cmpl	$3, 656(%r12)
	jge	.LBB60_217
.LBB60_218:                             # %if.end1888.i
	cmpl	$7, %eax
	jle	.LBB60_219
# BB#220:                               # %while.body.lr.ph.i1653
	movl	640(%r12), %edi
	movl	%ebp, %edx
	.align	16, 0x90
.LBB60_221:                             # %while.body.i1662
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edi
	movslq	%edx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %edx
	incl	%edx
	movl	%edx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %eax
	jg	.LBB60_221
	jmp	.LBB60_222
.LBB60_219:                             # %entry.while.end_crit_edge.i1648
	movq	640(%r12), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movl	%ebp, %edx
.LBB60_222:                             # %bsW.exit1669
	movl	$29, %ecx
	subl	%eax, %ecx
	movl	%r13d, %r8d
	shll	%cl, %r8d
	orl	%edi, %r8d
	movl	%r8d, 640(%r12)
	addl	$3, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	jle	.LBB60_223
	.align	16, 0x90
.LBB60_224:                             # %while.body.i1636
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %r8d
	movslq	%edx, %rax
	movq	80(%r12), %rcx
	movb	%r8b, (%rcx,%rax)
	movl	116(%r12), %edx
	incl	%edx
	movl	%edx, 116(%r12)
	movq	640(%r12), %r11
	movl	%r11d, %r8d
	shll	$8, %r8d
	movl	%r8d, 640(%r12)
	shrq	$32, %r11
	addl	$-8, %r11d
	movl	%r11d, 644(%r12)
	cmpl	$7, %r11d
	movl	%r11d, %esi
	jg	.LBB60_224
	jmp	.LBB60_225
.LBB60_223:                             # %entry.while.end_crit_edge.i1622
	movq	640(%r12), %r8
	movq	%r8, %r11
	shrq	$32, %r11
.LBB60_225:                             # %bsW.exit1643
	movl	$17, %ecx
	subl	%esi, %ecx
	movl	%r14d, %edi
	shll	%cl, %edi
	orl	%r8d, %edi
	movl	%edi, 640(%r12)
	addl	$15, %r11d
	movl	%r11d, 644(%r12)
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	jle	.LBB60_235
	.align	16, 0x90
.LBB60_226:                             # %for.cond1894.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_227 Depth 2
                                        #       Child Loop BB60_229 Depth 3
                                        #     Child Loop BB60_233 Depth 2
	xorl	%eax, %eax
	cmpb	$0, 19706(%r12,%r8)
	je	.LBB60_231
	.align	16, 0x90
.LBB60_227:                             # %for.body1901.i
                                        #   Parent Loop BB60_226 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_229 Depth 3
	cmpl	$7, %r11d
	jle	.LBB60_228
	.align	16, 0x90
.LBB60_229:                             # %while.body.i1610
                                        #   Parent Loop BB60_226 Depth=1
                                        #     Parent Loop BB60_227 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shrl	$24, %edi
	movslq	%edx, %rcx
	movq	80(%r12), %rdx
	movb	%dil, (%rdx,%rcx)
	movl	116(%r12), %edx
	incl	%edx
	movl	%edx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %r11d
	jg	.LBB60_229
	jmp	.LBB60_230
	.align	16, 0x90
.LBB60_228:                             # %entry.while.end_crit_edge.i1596
                                        #   in Loop: Header=BB60_227 Depth=2
	movq	640(%r12), %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
.LBB60_230:                             # %bsW.exit1617
                                        #   in Loop: Header=BB60_227 Depth=2
	movl	$31, %ecx
	subl	%r11d, %ecx
	movl	$1, %ebx
	shll	%cl, %ebx
	orl	%ebx, %edi
	movl	%edi, 640(%r12)
	incl	%esi
	movl	%esi, 644(%r12)
	incl	%eax
	movzbl	19706(%r12,%r8), %ecx
	cmpl	%ecx, %eax
	movl	%esi, %r11d
	jl	.LBB60_227
.LBB60_231:                             # %for.end1904.i
                                        #   in Loop: Header=BB60_226 Depth=1
	cmpl	$7, %r11d
	jle	.LBB60_232
	.align	16, 0x90
.LBB60_233:                             # %while.body.i1586
                                        #   Parent Loop BB60_226 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%edx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %edx
	incl	%edx
	movl	%edx, 116(%r12)
	movq	640(%r12), %r11
	movl	%r11d, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %r11
	addl	$-8, %r11d
	movl	%r11d, 644(%r12)
	cmpl	$7, %r11d
	jg	.LBB60_233
	jmp	.LBB60_234
	.align	16, 0x90
.LBB60_232:                             # %entry.while.end_crit_edge.i1572
                                        #   in Loop: Header=BB60_226 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %r11
	shrq	$32, %r11
.LBB60_234:                             # %bsW.exit1591
                                        #   in Loop: Header=BB60_226 Depth=1
	movl	%edi, 640(%r12)
	incl	%r11d
	movl	%r11d, 644(%r12)
	incq	%r8
	cmpl	%r14d, %r8d
	jne	.LBB60_226
.LBB60_235:                             # %for.end1907.i
	cmpl	$3, 656(%r12)
	jge	.LBB60_236
.LBB60_237:                             # %if.end1915.i
	xorl	%r8d, %r8d
	movl	%edx, %ebp
	.align	16, 0x90
.LBB60_238:                             # %for.body1920.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_241 Depth 2
                                        #     Child Loop BB60_243 Depth 2
                                        #       Child Loop BB60_247 Depth 3
                                        #         Child Loop BB60_249 Depth 4
                                        #       Child Loop BB60_245 Depth 3
                                        #         Child Loop BB60_251 Depth 4
                                        #       Child Loop BB60_255 Depth 3
	imulq	$258, %r8, %r9          # imm = 0x102
	movzbl	37708(%r12,%r9), %edi
	cmpl	$7, %r11d
	jle	.LBB60_239
# BB#240:                               # %while.body.lr.ph.i1524
                                        #   in Loop: Header=BB60_238 Depth=1
	movl	640(%r12), %r10d
	.align	16, 0x90
.LBB60_241:                             # %while.body.i1533
                                        #   Parent Loop BB60_238 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %r10d
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%r10b, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rbx
	movl	%ebx, %r10d
	shll	$8, %r10d
	movl	%r10d, 640(%r12)
	shrq	$32, %rbx
	addl	$-8, %ebx
	movl	%ebx, 644(%r12)
	cmpl	$7, %ebx
	movl	%ebx, %r11d
	jg	.LBB60_241
	jmp	.LBB60_242
	.align	16, 0x90
.LBB60_239:                             # %entry.while.end_crit_edge.i1519
                                        #   in Loop: Header=BB60_238 Depth=1
	movq	640(%r12), %r10
	movq	%r10, %rbx
	shrq	$32, %rbx
.LBB60_242:                             # %bsW.exit1540
                                        #   in Loop: Header=BB60_238 Depth=1
	movl	$27, %ecx
	subl	%r11d, %ecx
	movl	%edi, %esi
	shll	%cl, %esi
	orl	%r10d, %esi
	movl	%esi, 640(%r12)
	addl	$5, %ebx
	movl	%ebx, 644(%r12)
	cmpl	$-1, %r15d
	movl	$0, %r10d
	jl	.LBB60_257
	.align	16, 0x90
.LBB60_243:                             # %while.cond1931.preheader.i
                                        #   Parent Loop BB60_238 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_247 Depth 3
                                        #         Child Loop BB60_249 Depth 4
                                        #       Child Loop BB60_245 Depth 3
                                        #         Child Loop BB60_251 Depth 4
                                        #       Child Loop BB60_255 Depth 3
	leaq	(%r12,%r9), %rax
	leaq	37708(%r10,%rax), %r11
	movzbl	37708(%r10,%rax), %ecx
	cmpl	%ecx, %edi
	jge	.LBB60_244
	.align	16, 0x90
.LBB60_247:                             # %while.body1940.i
                                        #   Parent Loop BB60_238 Depth=1
                                        #     Parent Loop BB60_243 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB60_249 Depth 4
	cmpl	$7, %ebx
	jle	.LBB60_248
	.align	16, 0x90
.LBB60_249:                             # %while.body.i1507
                                        #   Parent Loop BB60_238 Depth=1
                                        #     Parent Loop BB60_243 Depth=2
                                        #       Parent Loop BB60_247 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	shrl	$24, %esi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %ebx
	jg	.LBB60_249
	jmp	.LBB60_250
	.align	16, 0x90
.LBB60_248:                             # %entry.while.end_crit_edge.i1493
                                        #   in Loop: Header=BB60_247 Depth=3
	movq	640(%r12), %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
.LBB60_250:                             # %bsW.exit1514
                                        #   in Loop: Header=BB60_247 Depth=3
	movl	$30, %ecx
	subl	%ebx, %ecx
	movl	$2, %ebx
	shll	%cl, %ebx
	orl	%ebx, %esi
	movl	%esi, 640(%r12)
	addl	$2, %eax
	movl	%eax, 644(%r12)
	incl	%edi
	movzbl	(%r11), %ecx
	cmpl	%ecx, %edi
	movl	%eax, %ebx
	jl	.LBB60_247
.LBB60_244:                             # %while.cond1943.preheader.i
                                        #   in Loop: Header=BB60_243 Depth=2
	movzbl	%cl, %eax
	cmpl	%eax, %edi
	jle	.LBB60_253
	.align	16, 0x90
.LBB60_245:                             # %while.body1952.i
                                        #   Parent Loop BB60_238 Depth=1
                                        #     Parent Loop BB60_243 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB60_251 Depth 4
	cmpl	$7, %ebx
	jle	.LBB60_246
	.align	16, 0x90
.LBB60_251:                             # %while.body.i1481
                                        #   Parent Loop BB60_238 Depth=1
                                        #     Parent Loop BB60_243 Depth=2
                                        #       Parent Loop BB60_245 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	shrl	$24, %esi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %ebx
	jg	.LBB60_251
	jmp	.LBB60_252
	.align	16, 0x90
.LBB60_246:                             # %entry.while.end_crit_edge.i1467
                                        #   in Loop: Header=BB60_245 Depth=3
	movq	640(%r12), %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
.LBB60_252:                             # %bsW.exit1488
                                        #   in Loop: Header=BB60_245 Depth=3
	movl	$30, %ecx
	subl	%ebx, %ecx
	movl	$3, %ebx
	shll	%cl, %ebx
	orl	%ebx, %esi
	movl	%esi, 640(%r12)
	addl	$2, %eax
	movl	%eax, 644(%r12)
	decl	%edi
	movzbl	(%r11), %ecx
	cmpl	%ecx, %edi
	movl	%eax, %ebx
	jg	.LBB60_245
.LBB60_253:                             # %while.end1954.i
                                        #   in Loop: Header=BB60_243 Depth=2
	cmpl	$7, %ebx
	jle	.LBB60_513
# BB#254:                               #   in Loop: Header=BB60_243 Depth=2
	movq	136(%rsp), %r11         # 8-byte Reload
	.align	16, 0x90
.LBB60_255:                             # %while.body.i1457
                                        #   Parent Loop BB60_238 Depth=1
                                        #     Parent Loop BB60_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shrl	$24, %esi
	movslq	%ebp, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ebp
	incl	%ebp
	movl	%ebp, 116(%r12)
	movq	640(%r12), %rbx
	movl	%ebx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rbx
	addl	$-8, %ebx
	movl	%ebx, 644(%r12)
	cmpl	$7, %ebx
	jg	.LBB60_255
	jmp	.LBB60_256
	.align	16, 0x90
.LBB60_513:                             # %entry.while.end_crit_edge.i1443
                                        #   in Loop: Header=BB60_243 Depth=2
	movq	640(%r12), %rsi
	movq	%rsi, %rbx
	shrq	$32, %rbx
	movq	136(%rsp), %r11         # 8-byte Reload
.LBB60_256:                             # %bsW.exit1462
                                        #   in Loop: Header=BB60_243 Depth=2
	movq	%r11, 136(%rsp)         # 8-byte Spill
	movl	%esi, 640(%r12)
	incl	%ebx
	movl	%ebx, 644(%r12)
	incq	%r10
	cmpq	%r11, %r10
	jl	.LBB60_243
.LBB60_257:                             # %for.end1957.i
                                        #   in Loop: Header=BB60_238 Depth=1
	incq	%r8
	cmpq	%r13, %r8
	movl	%ebx, %r11d
	jl	.LBB60_238
# BB#258:                               # %for.end1960.i
	cmpl	$3, 656(%r12)
	jge	.LBB60_259
.LBB60_260:                             # %if.end1968.i
	movq	184(%rsp), %r11         # 8-byte Reload
	movl	668(%r12), %eax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jle	.LBB60_475
# BB#261:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB60_262:                             # %if.end1976.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB60_268 Depth 2
                                        #       Child Loop BB60_472 Depth 3
                                        #     Child Loop BB60_273 Depth 2
                                        #     Child Loop BB60_277 Depth 2
                                        #     Child Loop BB60_281 Depth 2
                                        #     Child Loop BB60_285 Depth 2
                                        #     Child Loop BB60_289 Depth 2
                                        #     Child Loop BB60_293 Depth 2
                                        #     Child Loop BB60_297 Depth 2
                                        #     Child Loop BB60_301 Depth 2
                                        #     Child Loop BB60_305 Depth 2
                                        #     Child Loop BB60_309 Depth 2
                                        #     Child Loop BB60_313 Depth 2
                                        #     Child Loop BB60_317 Depth 2
                                        #     Child Loop BB60_321 Depth 2
                                        #     Child Loop BB60_325 Depth 2
                                        #     Child Loop BB60_329 Depth 2
                                        #     Child Loop BB60_333 Depth 2
                                        #     Child Loop BB60_337 Depth 2
                                        #     Child Loop BB60_341 Depth 2
                                        #     Child Loop BB60_345 Depth 2
                                        #     Child Loop BB60_349 Depth 2
                                        #     Child Loop BB60_353 Depth 2
                                        #     Child Loop BB60_357 Depth 2
                                        #     Child Loop BB60_361 Depth 2
                                        #     Child Loop BB60_365 Depth 2
                                        #     Child Loop BB60_369 Depth 2
                                        #     Child Loop BB60_373 Depth 2
                                        #     Child Loop BB60_377 Depth 2
                                        #     Child Loop BB60_381 Depth 2
                                        #     Child Loop BB60_385 Depth 2
                                        #     Child Loop BB60_389 Depth 2
                                        #     Child Loop BB60_393 Depth 2
                                        #     Child Loop BB60_397 Depth 2
                                        #     Child Loop BB60_401 Depth 2
                                        #     Child Loop BB60_405 Depth 2
                                        #     Child Loop BB60_409 Depth 2
                                        #     Child Loop BB60_413 Depth 2
                                        #     Child Loop BB60_417 Depth 2
                                        #     Child Loop BB60_421 Depth 2
                                        #     Child Loop BB60_425 Depth 2
                                        #     Child Loop BB60_429 Depth 2
                                        #     Child Loop BB60_433 Depth 2
                                        #     Child Loop BB60_437 Depth 2
                                        #     Child Loop BB60_441 Depth 2
                                        #     Child Loop BB60_445 Depth 2
                                        #     Child Loop BB60_449 Depth 2
                                        #     Child Loop BB60_453 Depth 2
                                        #     Child Loop BB60_457 Depth 2
                                        #     Child Loop BB60_461 Depth 2
                                        #     Child Loop BB60_465 Depth 2
                                        #     Child Loop BB60_469 Depth 2
	leal	49(%rbx), %ecx
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	leal	-1(%rax), %r15d
	cmpl	%eax, %ecx
	cmovll	%ecx, %r15d
	movzbl	1704(%r12,%r14), %eax
	cmpl	%r13d, %eax
	jb	.LBB60_264
# BB#263:                               # %if.then1992.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$3006, %edi             # imm = 0xBBE
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movl	%r15d, %r14d
	movq	%r11, %r15
	callq	BZ2_bz__AssertH__fail
	movq	%r15, %r11
	movl	%r14d, %r15d
	movq	136(%rsp), %r14         # 8-byte Reload
.LBB60_264:                             # %if.end1993.i
                                        #   in Loop: Header=BB60_262 Depth=1
	cmpl	$6, %r13d
	jne	.LBB60_266
# BB#265:                               # %if.end1993.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	%r15d, %eax
	subl	%ebx, %eax
	cmpl	$49, %eax
	jne	.LBB60_266
# BB#270:                               # %if.then2001.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movzbl	1704(%r12,%r14), %ecx
	movslq	%ebx, %r8
	movzwl	(%r11,%r8,2), %edx
	imulq	$258, %rcx, %r9         # imm = 0x102
	addq	%r12, %r9
	movzbl	37708(%rdx,%r9), %eax
	imulq	$1032, %rcx, %r10       # imm = 0x408
	addq	%r12, %r10
	movl	39256(%r10,%rdx,4), %edi
	movl	644(%r12), %ebx
	cmpl	$7, %ebx
	jle	.LBB60_271
# BB#272:                               # %while.body.lr.ph.i1370
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	640(%r12), %esi
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_273:                             # %while.body.i1379
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rcx
	movq	80(%r12), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %ebx
	jg	.LBB60_273
	jmp	.LBB60_274
	.align	16, 0x90
.LBB60_266:                             # %for.cond2420.preheader.i
                                        #   in Loop: Header=BB60_262 Depth=1
	cmpl	%ebx, %r15d
	jl	.LBB60_474
# BB#267:                               # %for.body2423.preheader.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movslq	%ebx, %rax
	movslq	%r15d, %r8
	movl	644(%r12), %esi
	.align	16, 0x90
.LBB60_268:                             # %for.body2423.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB60_472 Depth 3
	movzwl	(%r11,%rax,2), %ecx
	movzbl	1704(%r12,%r14), %edx
	imulq	$258, %rdx, %rdi        # imm = 0x102
	addq	%r12, %rdi
	movzbl	37708(%rcx,%rdi), %r9d
	imulq	$1032, %rdx, %rdx       # imm = 0x408
	addq	%r12, %rdx
	movl	39256(%rdx,%rcx,4), %edi
	cmpl	$7, %esi
	jle	.LBB60_269
# BB#471:                               # %while.body.lr.ph.i3913.i
                                        #   in Loop: Header=BB60_268 Depth=2
	movl	640(%r12), %edx
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_472:                             # %while.body.i3922.i
                                        #   Parent Loop BB60_262 Depth=1
                                        #     Parent Loop BB60_268 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movq	80(%r12), %rsi
	movb	%dl, (%rsi,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rbx
	movl	%ebx, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rbx
	addl	$-8, %ebx
	movl	%ebx, 644(%r12)
	cmpl	$7, %ebx
	movl	%ebx, %esi
	jg	.LBB60_472
	jmp	.LBB60_473
	.align	16, 0x90
.LBB60_269:                             # %entry.while.end_crit_edge.i3908.i
                                        #   in Loop: Header=BB60_268 Depth=2
	movq	640(%r12), %rdx
	movq	%rdx, %rbx
	shrq	$32, %rbx
.LBB60_473:                             # %bsW.exit3928.i
                                        #   in Loop: Header=BB60_268 Depth=2
	movl	$32, %ecx
	subl	%r9d, %ecx
	subl	%esi, %ecx
	shll	%cl, %edi
	orl	%edx, %edi
	movl	%edi, 640(%r12)
	addl	%r9d, %ebx
	movl	%ebx, 644(%r12)
	cmpq	%r8, %rax
	leaq	1(%rax), %rax
	movl	%ebx, %esi
	jl	.LBB60_268
	jmp	.LBB60_474
	.align	16, 0x90
.LBB60_271:                             # %entry.while.end_crit_edge.i1365
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_274:                             # %bsW.exit1387
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%eax, %ecx
	subl	%ebx, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%eax, %edx
	movl	%edx, 644(%r12)
	movzwl	2(%r11,%r8,2), %eax
	movq	%r11, %rbx
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_275
# BB#276:                               # %while.body.lr.ph.i1343
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_277:                             # %while.body.i1352
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_277
	jmp	.LBB60_278
	.align	16, 0x90
.LBB60_275:                             # %entry.while.end_crit_edge.i1338
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_278:                             # %bsW.exit1360
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	4(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_279
# BB#280:                               # %while.body.lr.ph.i1316
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_281:                             # %while.body.i1325
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_281
	jmp	.LBB60_282
	.align	16, 0x90
.LBB60_279:                             # %entry.while.end_crit_edge.i1311
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_282:                             # %bsW.exit1333
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	6(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_283
# BB#284:                               # %while.body.lr.ph.i1289
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_285:                             # %while.body.i1298
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_285
	jmp	.LBB60_286
	.align	16, 0x90
.LBB60_283:                             # %entry.while.end_crit_edge.i1284
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_286:                             # %bsW.exit1306
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	8(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_287
# BB#288:                               # %while.body.lr.ph.i1262
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_289:                             # %while.body.i1271
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_289
	jmp	.LBB60_290
	.align	16, 0x90
.LBB60_287:                             # %entry.while.end_crit_edge.i1257
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_290:                             # %bsW.exit1279
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	10(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_291
# BB#292:                               # %while.body.lr.ph.i1235
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_293:                             # %while.body.i1244
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_293
	jmp	.LBB60_294
	.align	16, 0x90
.LBB60_291:                             # %entry.while.end_crit_edge.i1230
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_294:                             # %bsW.exit1252
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	12(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_295
# BB#296:                               # %while.body.lr.ph.i1208
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_297:                             # %while.body.i1217
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_297
	jmp	.LBB60_298
	.align	16, 0x90
.LBB60_295:                             # %entry.while.end_crit_edge.i1203
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_298:                             # %bsW.exit1225
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	14(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_299
# BB#300:                               # %while.body.lr.ph.i1181
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_301:                             # %while.body.i1190
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_301
	jmp	.LBB60_302
	.align	16, 0x90
.LBB60_299:                             # %entry.while.end_crit_edge.i1176
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_302:                             # %bsW.exit1198
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	16(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_303
# BB#304:                               # %while.body.lr.ph.i1154
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_305:                             # %while.body.i1163
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_305
	jmp	.LBB60_306
	.align	16, 0x90
.LBB60_303:                             # %entry.while.end_crit_edge.i1149
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_306:                             # %bsW.exit1171
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	18(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_307
# BB#308:                               # %while.body.lr.ph.i1127
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_309:                             # %while.body.i1136
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_309
	jmp	.LBB60_310
	.align	16, 0x90
.LBB60_307:                             # %entry.while.end_crit_edge.i1122
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_310:                             # %bsW.exit1144
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	20(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_311
# BB#312:                               # %while.body.lr.ph.i1100
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_313:                             # %while.body.i1109
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_313
	jmp	.LBB60_314
	.align	16, 0x90
.LBB60_311:                             # %entry.while.end_crit_edge.i1095
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_314:                             # %bsW.exit1117
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	22(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_315
# BB#316:                               # %while.body.lr.ph.i1073
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_317:                             # %while.body.i1082
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_317
	jmp	.LBB60_318
	.align	16, 0x90
.LBB60_315:                             # %entry.while.end_crit_edge.i1068
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_318:                             # %bsW.exit1090
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	24(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_319
# BB#320:                               # %while.body.lr.ph.i1046
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_321:                             # %while.body.i1055
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_321
	jmp	.LBB60_322
	.align	16, 0x90
.LBB60_319:                             # %entry.while.end_crit_edge.i1041
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_322:                             # %bsW.exit1063
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	26(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_323
# BB#324:                               # %while.body.lr.ph.i1019
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_325:                             # %while.body.i1028
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_325
	jmp	.LBB60_326
	.align	16, 0x90
.LBB60_323:                             # %entry.while.end_crit_edge.i1014
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_326:                             # %bsW.exit1036
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	28(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_327
# BB#328:                               # %while.body.lr.ph.i992
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_329:                             # %while.body.i1001
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_329
	jmp	.LBB60_330
	.align	16, 0x90
.LBB60_327:                             # %entry.while.end_crit_edge.i987
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_330:                             # %bsW.exit1009
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	30(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_331
# BB#332:                               # %while.body.lr.ph.i965
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_333:                             # %while.body.i974
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_333
	jmp	.LBB60_334
	.align	16, 0x90
.LBB60_331:                             # %entry.while.end_crit_edge.i960
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_334:                             # %bsW.exit982
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	32(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_335
# BB#336:                               # %while.body.lr.ph.i938
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_337:                             # %while.body.i947
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_337
	jmp	.LBB60_338
	.align	16, 0x90
.LBB60_335:                             # %entry.while.end_crit_edge.i933
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_338:                             # %bsW.exit955
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	34(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_339
# BB#340:                               # %while.body.lr.ph.i911
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_341:                             # %while.body.i920
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_341
	jmp	.LBB60_342
	.align	16, 0x90
.LBB60_339:                             # %entry.while.end_crit_edge.i906
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_342:                             # %bsW.exit928
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	36(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_343
# BB#344:                               # %while.body.lr.ph.i884
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_345:                             # %while.body.i893
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_345
	jmp	.LBB60_346
	.align	16, 0x90
.LBB60_343:                             # %entry.while.end_crit_edge.i879
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_346:                             # %bsW.exit901
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	38(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_347
# BB#348:                               # %while.body.lr.ph.i857
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_349:                             # %while.body.i866
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_349
	jmp	.LBB60_350
	.align	16, 0x90
.LBB60_347:                             # %entry.while.end_crit_edge.i852
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_350:                             # %bsW.exit874
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	40(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_351
# BB#352:                               # %while.body.lr.ph.i830
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_353:                             # %while.body.i839
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_353
	jmp	.LBB60_354
	.align	16, 0x90
.LBB60_351:                             # %entry.while.end_crit_edge.i825
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_354:                             # %bsW.exit847
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	42(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_355
# BB#356:                               # %while.body.lr.ph.i803
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_357:                             # %while.body.i812
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_357
	jmp	.LBB60_358
	.align	16, 0x90
.LBB60_355:                             # %entry.while.end_crit_edge.i798
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_358:                             # %bsW.exit820
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	44(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_359
# BB#360:                               # %while.body.lr.ph.i776
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_361:                             # %while.body.i785
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_361
	jmp	.LBB60_362
	.align	16, 0x90
.LBB60_359:                             # %entry.while.end_crit_edge.i771
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_362:                             # %bsW.exit793
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	46(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_363
# BB#364:                               # %while.body.lr.ph.i749
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_365:                             # %while.body.i758
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_365
	jmp	.LBB60_366
	.align	16, 0x90
.LBB60_363:                             # %entry.while.end_crit_edge.i744
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_366:                             # %bsW.exit766
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	48(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_367
# BB#368:                               # %while.body.lr.ph.i722
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_369:                             # %while.body.i731
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_369
	jmp	.LBB60_370
	.align	16, 0x90
.LBB60_367:                             # %entry.while.end_crit_edge.i717
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_370:                             # %bsW.exit739
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	50(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_371
# BB#372:                               # %while.body.lr.ph.i695
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_373:                             # %while.body.i704
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_373
	jmp	.LBB60_374
	.align	16, 0x90
.LBB60_371:                             # %entry.while.end_crit_edge.i690
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_374:                             # %bsW.exit712
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	52(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_375
# BB#376:                               # %while.body.lr.ph.i668
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_377:                             # %while.body.i677
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_377
	jmp	.LBB60_378
	.align	16, 0x90
.LBB60_375:                             # %entry.while.end_crit_edge.i663
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_378:                             # %bsW.exit685
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	54(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_379
# BB#380:                               # %while.body.lr.ph.i641
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_381:                             # %while.body.i650
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_381
	jmp	.LBB60_382
	.align	16, 0x90
.LBB60_379:                             # %entry.while.end_crit_edge.i636
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_382:                             # %bsW.exit658
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	56(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_383
# BB#384:                               # %while.body.lr.ph.i614
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_385:                             # %while.body.i623
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_385
	jmp	.LBB60_386
	.align	16, 0x90
.LBB60_383:                             # %entry.while.end_crit_edge.i609
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_386:                             # %bsW.exit631
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	58(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_387
# BB#388:                               # %while.body.lr.ph.i587
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_389:                             # %while.body.i596
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_389
	jmp	.LBB60_390
	.align	16, 0x90
.LBB60_387:                             # %entry.while.end_crit_edge.i582
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_390:                             # %bsW.exit604
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	60(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_391
# BB#392:                               # %while.body.lr.ph.i560
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_393:                             # %while.body.i569
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_393
	jmp	.LBB60_394
	.align	16, 0x90
.LBB60_391:                             # %entry.while.end_crit_edge.i555
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_394:                             # %bsW.exit577
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	62(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_395
# BB#396:                               # %while.body.lr.ph.i533
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_397:                             # %while.body.i542
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_397
	jmp	.LBB60_398
	.align	16, 0x90
.LBB60_395:                             # %entry.while.end_crit_edge.i528
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_398:                             # %bsW.exit550
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	64(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_399
# BB#400:                               # %while.body.lr.ph.i511
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_401:                             # %while.body.i520
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_401
	jmp	.LBB60_402
	.align	16, 0x90
.LBB60_399:                             # %entry.while.end_crit_edge.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_402:                             # %bsW.exit
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	66(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_403
# BB#404:                               # %while.body.lr.ph.i1421
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_405:                             # %while.body.i1430
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_405
	jmp	.LBB60_406
	.align	16, 0x90
.LBB60_403:                             # %entry.while.end_crit_edge.i1416
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_406:                             # %bsW.exit1438
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	68(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_407
# BB#408:                               # %while.body.lr.ph.i1550
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_409:                             # %while.body.i1559
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_409
	jmp	.LBB60_410
	.align	16, 0x90
.LBB60_407:                             # %entry.while.end_crit_edge.i1545
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_410:                             # %bsW.exit1567
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	70(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_411
# BB#412:                               # %while.body.lr.ph.i1679
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_413:                             # %while.body.i1688
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_413
	jmp	.LBB60_414
	.align	16, 0x90
.LBB60_411:                             # %entry.while.end_crit_edge.i1674
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_414:                             # %bsW.exit1696
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	72(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_415
# BB#416:                               # %while.body.lr.ph.i1780
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_417:                             # %while.body.i1789
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_417
	jmp	.LBB60_418
	.align	16, 0x90
.LBB60_415:                             # %entry.while.end_crit_edge.i1775
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_418:                             # %bsW.exit1797
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	74(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_419
# BB#420:                               # %while.body.lr.ph.i1933
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_421:                             # %while.body.i1942
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_421
	jmp	.LBB60_422
	.align	16, 0x90
.LBB60_419:                             # %entry.while.end_crit_edge.i1928
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_422:                             # %bsW.exit1950
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	76(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_423
# BB#424:                               # %while.body.lr.ph.i1906
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_425:                             # %while.body.i1915
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_425
	jmp	.LBB60_426
	.align	16, 0x90
.LBB60_423:                             # %entry.while.end_crit_edge.i1901
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_426:                             # %bsW.exit1923
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	78(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_427
# BB#428:                               # %while.body.lr.ph.i1879
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_429:                             # %while.body.i1888
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_429
	jmp	.LBB60_430
	.align	16, 0x90
.LBB60_427:                             # %entry.while.end_crit_edge.i1874
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_430:                             # %bsW.exit1896
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	80(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_431
# BB#432:                               # %while.body.lr.ph.i1852
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_433:                             # %while.body.i1861
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_433
	jmp	.LBB60_434
	.align	16, 0x90
.LBB60_431:                             # %entry.while.end_crit_edge.i1847
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_434:                             # %bsW.exit1869
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	82(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_435
# BB#436:                               # %while.body.lr.ph.i4146.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_437:                             # %while.body.i4155.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_437
	jmp	.LBB60_438
	.align	16, 0x90
.LBB60_435:                             # %entry.while.end_crit_edge.i4141.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_438:                             # %bsW.exit4162.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	84(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_439
# BB#440:                               # %while.body.lr.ph.i4120.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_441:                             # %while.body.i4129.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_441
	jmp	.LBB60_442
	.align	16, 0x90
.LBB60_439:                             # %entry.while.end_crit_edge.i4115.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_442:                             # %bsW.exit4136.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	86(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_443
# BB#444:                               # %while.body.lr.ph.i4094.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_445:                             # %while.body.i4103.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_445
	jmp	.LBB60_446
	.align	16, 0x90
.LBB60_443:                             # %entry.while.end_crit_edge.i4089.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_446:                             # %bsW.exit4110.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	88(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r11d
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %eax
	jle	.LBB60_447
# BB#448:                               # %while.body.lr.ph.i4068.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_449:                             # %while.body.i4077.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_449
	jmp	.LBB60_450
	.align	16, 0x90
.LBB60_447:                             # %entry.while.end_crit_edge.i4063.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_450:                             # %bsW.exit4084.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	%r11d, %edx
	movl	%edx, 644(%r12)
	movzwl	90(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %r11d
	movl	39256(%r10,%rax,4), %esi
	cmpl	$7, %edx
	jle	.LBB60_451
# BB#452:                               # %while.body.lr.ph.i4042.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_453:                             # %while.body.i4051.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_453
	jmp	.LBB60_454
	.align	16, 0x90
.LBB60_451:                             # %entry.while.end_crit_edge.i4037.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_454:                             # %bsW.exit4058.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r11d, %ecx
	subl	%edx, %ecx
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	%r11d, %eax
	movl	%eax, 644(%r12)
	movzwl	92(%rbx,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %edi
	movl	39256(%r10,%rcx,4), %r11d
	cmpl	$7, %eax
	jle	.LBB60_455
# BB#456:                               # %while.body.lr.ph.i4016.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_457:                             # %while.body.i4025.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_457
	jmp	.LBB60_458
	.align	16, 0x90
.LBB60_455:                             # %entry.while.end_crit_edge.i4011.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_458:                             # %bsW.exit4032.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%edi, %ecx
	subl	%eax, %ecx
	shll	%cl, %r11d
	orl	%esi, %r11d
	movl	%r11d, 640(%r12)
	addl	%edi, %edx
	movl	%edx, 644(%r12)
	movzwl	94(%rbx,%r8,2), %eax
	movzbl	37708(%rax,%r9), %esi
	movl	39256(%r10,%rax,4), %eax
	cmpl	$7, %edx
	jle	.LBB60_459
# BB#460:                               # %while.body.lr.ph.i3990.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_461:                             # %while.body.i3999.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %r11d
	movslq	%ecx, %rcx
	movq	80(%r12), %rdx
	movb	%r11b, (%rdx,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdi
	movl	%edi, %r11d
	shll	$8, %r11d
	movl	%r11d, 640(%r12)
	shrq	$32, %rdi
	addl	$-8, %edi
	movl	%edi, 644(%r12)
	cmpl	$7, %edi
	movl	%edi, %edx
	jg	.LBB60_461
	jmp	.LBB60_462
	.align	16, 0x90
.LBB60_459:                             # %entry.while.end_crit_edge.i3985.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %r11
	movq	%r11, %rdi
	shrq	$32, %rdi
.LBB60_462:                             # %bsW.exit4006.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%esi, %ecx
	subl	%edx, %ecx
	shll	%cl, %eax
	orl	%r11d, %eax
	movl	%eax, 640(%r12)
	addl	%esi, %edi
	movl	%edi, 644(%r12)
	movq	%rbx, %r11
	movzwl	96(%r11,%r8,2), %ecx
	movzbl	37708(%rcx,%r9), %r8d
	movl	39256(%r10,%rcx,4), %ebx
	cmpl	$7, %edi
	jle	.LBB60_463
# BB#464:                               # %while.body.lr.ph.i3964.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_465:                             # %while.body.i3973.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movq	80(%r12), %rdx
	movb	%al, (%rdx,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %eax
	shll	$8, %eax
	movl	%eax, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %edi
	jg	.LBB60_465
	jmp	.LBB60_466
	.align	16, 0x90
.LBB60_463:                             # %entry.while.end_crit_edge.i3959.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
.LBB60_466:                             # %bsW.exit3980.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%r8d, %ecx
	subl	%edi, %ecx
	shll	%cl, %ebx
	orl	%eax, %ebx
	movl	%ebx, 640(%r12)
	addl	%r8d, %edx
	movl	%edx, 644(%r12)
	movslq	144(%rsp), %rax         # 4-byte Folded Reload
	movzwl	(%r11,%rax,2), %ecx
	movzbl	37708(%rcx,%r9), %eax
	movl	39256(%r10,%rcx,4), %edi
	cmpl	$7, %edx
	jle	.LBB60_467
# BB#468:                               # %while.body.lr.ph.i3938.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_469:                             # %while.body.i3947.i
                                        #   Parent Loop BB60_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	shrl	$24, %ebx
	movslq	%ecx, %rcx
	movq	80(%r12), %rdx
	movb	%bl, (%rdx,%rcx)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %ebx
	shll	$8, %ebx
	movl	%ebx, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %edx
	jg	.LBB60_469
	jmp	.LBB60_470
	.align	16, 0x90
.LBB60_467:                             # %entry.while.end_crit_edge.i3933.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movq	640(%r12), %rbx
	movq	%rbx, %rsi
	shrq	$32, %rsi
.LBB60_470:                             # %bsW.exit3954.i
                                        #   in Loop: Header=BB60_262 Depth=1
	movl	$32, %ecx
	subl	%eax, %ecx
	subl	%edx, %ecx
	shll	%cl, %edi
	orl	%ebx, %edi
	movl	%edi, 640(%r12)
	addl	%eax, %esi
	movl	%esi, 644(%r12)
.LBB60_474:                             # %if.end2448.i
                                        #   in Loop: Header=BB60_262 Depth=1
	incl	%r15d
	incq	%r14
	movl	668(%r12), %eax
	cmpl	%eax, %r15d
	movl	%r15d, %ebx
	jl	.LBB60_262
.LBB60_475:                             # %while.end2451.loopexit.i
	movl	28(%rsp), %ebx          # 4-byte Reload
	cmpl	160(%rsp), %r14d        # 4-byte Folded Reload
	je	.LBB60_477
# BB#476:                               # %if.then2454.i
	movl	$3007, %edi             # imm = 0xBBF
	callq	BZ2_bz__AssertH__fail
.LBB60_477:                             # %if.end2455.i
	cmpl	$3, 656(%r12)
	jge	.LBB60_478
.LBB60_479:                             # %if.end26
	testb	%bl, %bl
	je	.LBB60_509
# BB#480:                               # %if.then27
	movl	644(%r12), %esi
	cmpl	$7, %esi
	jle	.LBB60_481
# BB#482:                               # %while.body.lr.ph.i.i223
	movl	640(%r12), %edx
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_483:                             # %while.body.i.i232
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edx
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %esi
	jg	.LBB60_483
	jmp	.LBB60_484
.LBB60_481:                             # %entry.while.end_crit_edge.i.i218
	movq	640(%r12), %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
.LBB60_484:                             # %bsPutUChar.exit238
	movl	$24, %ecx
	subl	%esi, %ecx
	movl	$23, %esi
	shll	%cl, %esi
	orl	%edx, %esi
	movl	%esi, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_485
# BB#486:                               # %while.body.lr.ph.i.i198
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_487:                             # %while.body.i.i207
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_487
	jmp	.LBB60_488
.LBB60_485:                             # %entry.while.end_crit_edge.i.i193
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_488:                             # %bsPutUChar.exit213
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$114, %edi
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	$8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	jle	.LBB60_489
# BB#490:                               # %while.body.lr.ph.i.i173
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_491:                             # %while.body.i.i182
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_491
	jmp	.LBB60_492
.LBB60_489:                             # %entry.while.end_crit_edge.i.i168
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_492:                             # %bsPutUChar.exit188
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	$69, %esi
	shll	%cl, %esi
	orl	%edi, %esi
	movl	%esi, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_493
# BB#494:                               # %while.body.lr.ph.i.i148
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_495:                             # %while.body.i.i157
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %esi
	shll	$8, %esi
	movl	%esi, 640(%r12)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB60_495
	jmp	.LBB60_496
.LBB60_493:                             # %entry.while.end_crit_edge.i.i143
	movq	640(%r12), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
.LBB60_496:                             # %bsPutUChar.exit163
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$56, %edi
	shll	%cl, %edi
	orl	%esi, %edi
	movl	%edi, 640(%r12)
	addl	$8, %edx
	movl	%edx, 644(%r12)
	cmpl	$7, %edx
	jle	.LBB60_497
# BB#498:                               # %while.body.lr.ph.i.i123
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_499:                             # %while.body.i.i132
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edi
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dil, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rax
	movl	%eax, %edi
	shll	$8, %edi
	movl	%edi, 640(%r12)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	movl	%eax, %edx
	jg	.LBB60_499
	jmp	.LBB60_500
.LBB60_497:                             # %entry.while.end_crit_edge.i.i118
	movq	640(%r12), %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
.LBB60_500:                             # %bsPutUChar.exit138
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	$80, %edx
	shll	%cl, %edx
	orl	%edi, %edx
	movl	%edx, 640(%r12)
	addl	$8, %eax
	movl	%eax, 644(%r12)
	cmpl	$7, %eax
	jle	.LBB60_501
# BB#502:                               # %while.body.lr.ph.i.i98
	movl	116(%r12), %ecx
	.align	16, 0x90
.LBB60_503:                             # %while.body.i.i107
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edx
	movslq	%ecx, %rax
	movq	80(%r12), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%r12), %ecx
	incl	%ecx
	movl	%ecx, 116(%r12)
	movq	640(%r12), %rsi
	movl	%esi, %edx
	shll	$8, %edx
	movl	%edx, 640(%r12)
	shrq	$32, %rsi
	addl	$-8, %esi
	movl	%esi, 644(%r12)
	cmpl	$7, %esi
	movl	%esi, %eax
	jg	.LBB60_503
	jmp	.LBB60_504
.LBB60_501:                             # %entry.while.end_crit_edge.i.i93
	movq	640(%r12), %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
.LBB60_504:                             # %bsPutUChar.exit113
	movl	$24, %ecx
	subl	%eax, %ecx
	movl	$144, %eax
	shll	%cl, %eax
	orl	%edx, %eax
	movl	%eax, 640(%r12)
	addl	$8, %esi
	movl	%esi, 644(%r12)
	movl	652(%r12), %esi
	movq	%r12, %rdi
	callq	bsPutUInt32
	cmpl	$2, 656(%r12)
	jge	.LBB60_505
.LBB60_506:                             # %if.end35
	cmpl	$0, 644(%r12)
	jle	.LBB60_509
# BB#507:                               # %while.body.lr.ph.i
	movl	640(%r12), %ecx
	movl	116(%r12), %eax
	.align	16, 0x90
.LBB60_508:                             # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %ecx
	cltq
	movq	80(%r12), %rdx
	movb	%cl, (%rdx,%rax)
	movl	116(%r12), %eax
	incl	%eax
	movl	%eax, 116(%r12)
	movq	640(%r12), %rdx
	movl	%edx, %ecx
	shll	$8, %ecx
	movl	%ecx, 640(%r12)
	shrq	$32, %rdx
	leal	-8(%rdx), %esi
	movl	%esi, 644(%r12)
	cmpl	$8, %edx
	jg	.LBB60_508
.LBB60_509:                             # %if.end36
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB60_4:                               # %if.then9
	shrq	$32, %rdx
	movq	stderr(%rip), %rdi
	movl	$.L.str.66, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB60_5
.LBB60_91:                              # %if.then.i
	movq	stderr(%rip), %rdi
	movl	108(%r12), %edx
	movl	124(%r12), %r8d
	movl	$.L.str.2.67, %esi
	xorl	%eax, %eax
	movq	%r15, %rbx
	callq	fprintf
	movq	%rbx, %r15
	jmp	.LBB60_92
.LBB60_217:                             # %if.then1884.i
	movq	stderr(%rip), %rdi
	subl	%r8d, %ebp
	movl	$.L.str.7.71, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	movl	116(%r12), %ebp
	movl	644(%r12), %eax
	jmp	.LBB60_218
.LBB60_236:                             # %if.then1911.i
	movq	stderr(%rip), %rdi
	subl	%ebp, %edx
	movl	$.L.str.8.72, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	116(%r12), %edx
	movl	644(%r12), %r11d
	jmp	.LBB60_237
.LBB60_259:                             # %if.then1964.i
	movq	stderr(%rip), %rdi
	subl	%edx, %ebp
	movl	$.L.str.9.73, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	fprintf
	movl	116(%r12), %ebp
	jmp	.LBB60_260
.LBB60_478:                             # %if.then2459.i
	movq	stderr(%rip), %rdi
	movl	116(%r12), %edx
	subl	%ebp, %edx
	movl	$.L.str.10.74, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB60_479
.LBB60_505:                             # %if.then32
	movq	stderr(%rip), %rdi
	movl	652(%r12), %edx
	movl	$.L.str.1.75, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB60_506
.Lfunc_end60:
	.size	BZ2_compressBlock, .Lfunc_end60-BZ2_compressBlock
	.cfi_endproc

	.align	16, 0x90
	.type	bsPutUInt32,@function
bsPutUInt32:                            # @bsPutUInt32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp337:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp338:
	.cfi_def_cfa_offset 24
.Ltmp339:
	.cfi_offset %rbx, -24
.Ltmp340:
	.cfi_offset %rbp, -16
	movl	%esi, %edx
	movl	%esi, %ebx
	shrl	$24, %edx
	movl	644(%rdi), %ebp
	cmpl	$7, %ebp
	jle	.LBB61_1
# BB#2:                                 # %while.body.lr.ph.i
	movl	640(%rdi), %esi
	movl	116(%rdi), %ecx
	.align	16, 0x90
.LBB61_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%rdi), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 116(%rdi)
	movq	640(%rdi), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movl	%esi, 640(%rdi)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%rdi)
	cmpl	$7, %eax
	movl	%eax, %ebp
	jg	.LBB61_3
	jmp	.LBB61_4
.LBB61_1:                               # %entry.while.end_crit_edge.i
	movq	640(%rdi), %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
.LBB61_4:                               # %bsW.exit
	movl	$24, %ecx
	subl	%ebp, %ecx
	shll	%cl, %edx
	orl	%esi, %edx
	movl	%edx, 640(%rdi)
	addl	$8, %eax
	movl	%eax, 644(%rdi)
	movl	%ebx, %ecx
	movl	%ebx, %ebp
	shrl	$16, %ecx
	movzbl	%cl, %esi
	cmpl	$7, %eax
	jle	.LBB61_5
# BB#6:                                 # %while.body.lr.ph.i78
	movl	116(%rdi), %ecx
	.align	16, 0x90
.LBB61_7:                               # %while.body.i87
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %edx
	movslq	%ecx, %rax
	movq	80(%rdi), %rcx
	movb	%dl, (%rcx,%rax)
	movl	116(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 116(%rdi)
	movq	640(%rdi), %rbx
	movl	%ebx, %edx
	shll	$8, %edx
	movl	%edx, 640(%rdi)
	shrq	$32, %rbx
	addl	$-8, %ebx
	movl	%ebx, 644(%rdi)
	cmpl	$7, %ebx
	movl	%ebx, %eax
	jg	.LBB61_7
	jmp	.LBB61_8
.LBB61_5:                               # %entry.while.end_crit_edge.i73
	movq	640(%rdi), %rdx
	movq	%rdx, %rbx
	shrq	$32, %rbx
.LBB61_8:                               # %bsW.exit93
	movl	$24, %ecx
	subl	%eax, %ecx
	shll	%cl, %esi
	orl	%edx, %esi
	movl	%esi, 640(%rdi)
	addl	$8, %ebx
	movl	%ebx, 644(%rdi)
	movl	%ebp, %eax
	movzbl	%ah, %ebp  # NOREX
	movl	%eax, %edx
	cmpl	$7, %ebx
	jle	.LBB61_9
# BB#10:                                # %while.body.lr.ph.i53
	movl	116(%rdi), %ecx
	.align	16, 0x90
.LBB61_11:                              # %while.body.i62
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %esi
	movslq	%ecx, %rax
	movq	80(%rdi), %rcx
	movb	%sil, (%rcx,%rax)
	movl	116(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 116(%rdi)
	movq	640(%rdi), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movl	%esi, 640(%rdi)
	shrq	$32, %rax
	addl	$-8, %eax
	movl	%eax, 644(%rdi)
	cmpl	$7, %eax
	movl	%eax, %ebx
	jg	.LBB61_11
	jmp	.LBB61_12
.LBB61_9:                               # %entry.while.end_crit_edge.i48
	movq	640(%rdi), %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
.LBB61_12:                              # %bsW.exit68
	movl	$24, %ecx
	subl	%ebx, %ecx
	shll	%cl, %ebp
	orl	%esi, %ebp
	movl	%ebp, 640(%rdi)
	addl	$8, %eax
	movl	%eax, 644(%rdi)
	movzbl	%dl, %esi
	cmpl	$7, %eax
	jle	.LBB61_13
# BB#14:                                # %while.body.lr.ph.i28
	movl	116(%rdi), %ecx
	.align	16, 0x90
.LBB61_15:                              # %while.body.i37
                                        # =>This Inner Loop Header: Depth=1
	shrl	$24, %ebp
	movslq	%ecx, %rax
	movq	80(%rdi), %rcx
	movb	%bpl, (%rcx,%rax)
	movl	116(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 116(%rdi)
	movq	640(%rdi), %rdx
	movl	%edx, %ebp
	shll	$8, %ebp
	movl	%ebp, 640(%rdi)
	shrq	$32, %rdx
	addl	$-8, %edx
	movl	%edx, 644(%rdi)
	cmpl	$7, %edx
	movl	%edx, %eax
	jg	.LBB61_15
	jmp	.LBB61_16
.LBB61_13:                              # %entry.while.end_crit_edge.i23
	movq	640(%rdi), %rbp
	movq	%rbp, %rdx
	shrq	$32, %rdx
.LBB61_16:                              # %bsW.exit43
	movl	$24, %ecx
	subl	%eax, %ecx
	shll	%cl, %esi
	orl	%ebp, %esi
	movl	%esi, 640(%rdi)
	addl	$8, %edx
	movl	%edx, 644(%rdi)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end61:
	.size	bsPutUInt32, .Lfunc_end61-bsPutUInt32
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI62_0:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
.LCPI62_1:
	.long	4294967284              # 0xfffffff4
	.long	4294967283              # 0xfffffff3
	.long	4294967282              # 0xfffffff2
	.long	4294967281              # 0xfffffff1
.LCPI62_2:
	.long	4294967288              # 0xfffffff8
	.long	4294967287              # 0xfffffff7
	.long	4294967286              # 0xfffffff6
	.long	4294967285              # 0xfffffff5
.LCPI62_3:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967294              # 0xfffffffe
	.long	4294967293              # 0xfffffffd
.LCPI62_4:
	.long	4294967292              # 0xfffffffc
	.long	4294967291              # 0xfffffffb
	.long	4294967290              # 0xfffffffa
	.long	4294967289              # 0xfffffff9
.LCPI62_5:
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.globl	BZ2_decompress
	.align	16, 0x90
	.type	BZ2_decompress,@function
BZ2_decompress:                         # @BZ2_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp341:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp342:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp343:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp344:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp345:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp346:
	.cfi_def_cfa_offset 56
	subq	$520, %rsp              # imm = 0x208
.Ltmp347:
	.cfi_def_cfa_offset 576
.Ltmp348:
	.cfi_offset %rbx, -56
.Ltmp349:
	.cfi_offset %r12, -48
.Ltmp350:
	.cfi_offset %r13, -40
.Ltmp351:
	.cfi_offset %r14, -32
.Ltmp352:
	.cfi_offset %r15, -24
.Ltmp353:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	movq	(%r12), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movl	8(%r12), %eax
	leaq	64036(%r12), %rcx
	cmpl	$10, %eax
	jne	.LBB62_5
# BB#1:                                 # %if.end.thread
	leaq	64040(%r12), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	64048(%r12), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	64056(%r12), %r8
	leaq	64064(%r12), %r11
	leaq	64072(%r12), %r10
	leaq	64080(%r12), %rbp
	leaq	64088(%r12), %rbx
	leaq	64096(%r12), %rax
	movq	%rax, 312(%rsp)         # 8-byte Spill
	leaq	64104(%r12), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	leaq	64112(%r12), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	leaq	64120(%r12), %rax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	leaq	64128(%r12), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	64136(%r12), %rdi
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 92(%rcx)
	movdqu	%xmm0, 80(%rcx)
	movdqu	%xmm0, 64(%rcx)
	movdqu	%xmm0, 48(%rcx)
	movdqu	%xmm0, 32(%rcx)
	movdqu	%xmm0, 16(%rcx)
	movdqu	%xmm0, (%rcx)
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	leaq	64044(%r12), %r9
	movl	$10, 8(%r12)
	movl	36(%r12), %ecx
	cmpl	$7, %ecx
	leaq	64052(%r12), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	leaq	64060(%r12), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	64068(%r12), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	64076(%r12), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	64084(%r12), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	leaq	64092(%r12), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	leaq	64100(%r12), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	leaq	64108(%r12), %r15
	leaq	64116(%r12), %r14
	leaq	36(%r12), %r13
	jg	.LBB62_22
# BB#2:                                 # %if.end33.lr.ph
	movq	144(%rsp), %rax         # 8-byte Reload
	jmp	.LBB62_3
	.align	16, 0x90
.LBB62_26:                              # %while.body.backedge.if.end33_crit_edge
                                        #   in Loop: Header=BB62_3 Depth=1
	movq	(%r12), %rax
.LBB62_3:                               # %if.end33.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%rax)
	je	.LBB62_4
# BB#23:                                # %if.end38
                                        #   in Loop: Header=BB62_3 Depth=1
	movq	32(%r12), %rcx
	movl	%ecx, %edx
	shll	$8, %edx
	movq	(%rax), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rcx
	addl	$8, %ecx
	movl	%ecx, 36(%r12)
	incq	(%rax)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_25
# BB#24:                                # %if.then53
                                        #   in Loop: Header=BB62_3 Depth=1
	incl	16(%rax)
.LBB62_25:                              # %while.body.backedge
                                        #   in Loop: Header=BB62_3 Depth=1
	movl	(%r13), %ecx
	cmpl	$7, %ecx
	jle	.LBB62_26
.LBB62_22:                              # %if.then29
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, 36(%r12)
	movzbl	%al, %edx
	movl	$-5, %eax
	xorl	%esi, %esi
	movq	%rsi, 304(%rsp)         # 8-byte Spill
	cmpl	$66, %edx
	movl	$0, %ebx
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
	movl	$0, 104(%rsp)           # 4-byte Folded Spill
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	movl	$0, %ebp
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	movl	$0, %edi
	movl	$0, %edx
	movq	%rdx, 296(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 288(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 464(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 384(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 392(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 352(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 424(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 472(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	$0, %edx
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	movq	%r10, 280(%rsp)         # 8-byte Spill
	movq	%r11, %r10
	movq	%r8, %rdx
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movq	%rdx, %r9
	je	.LBB62_28
	jmp	.LBB62_521
.LBB62_5:                               # %if.end
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	movq	64040(%r12), %rcx
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movq	64048(%r12), %rcx
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	movq	64056(%r12), %rcx
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	64064(%r12), %rcx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movq	64072(%r12), %rcx
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	movq	64080(%r12), %rcx
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	movq	64088(%r12), %rcx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	movq	64096(%r12), %rcx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movq	64104(%r12), %rcx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	movq	64112(%r12), %rcx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	addl	$-11, %eax
	cmpl	$39, %eax
	movl	64036(%r12), %ecx
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	leaq	64040(%r12), %r11
	leaq	64048(%r12), %r8
	leaq	64056(%r12), %r9
	leaq	64064(%r12), %r10
	leaq	64072(%r12), %rdx
	leaq	64080(%r12), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	leaq	64088(%r12), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	64096(%r12), %rsi
	leaq	64104(%r12), %rcx
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	leaq	64112(%r12), %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	leaq	64120(%r12), %rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movq	64120(%r12), %rdi
	leaq	64128(%r12), %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movq	64128(%r12), %rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	leaq	64136(%r12), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	64136(%r12), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	leaq	64044(%r12), %rbx
	leaq	64052(%r12), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	64060(%r12), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	64068(%r12), %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leaq	64076(%r12), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	leaq	64084(%r12), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	64092(%r12), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	64100(%r12), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	64108(%r12), %r15
	leaq	64116(%r12), %r14
	ja	.LBB62_517
# BB#6:                                 # %if.end
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	jmpq	*.LJTI62_0(,%rax,8)
.LBB62_27:                              # %if.end.sw.bb62_crit_edge
	movq	456(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	movq	400(%rsp), %rax         # 8-byte Reload
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movq	416(%rsp), %rax         # 8-byte Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	472(%rsp), %rax         # 8-byte Reload
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	384(%rsp), %rax         # 8-byte Reload
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	336(%rsp), %rax         # 8-byte Reload
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	432(%rsp), %rax         # 8-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	448(%rsp), %rax         # 8-byte Reload
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	408(%rsp), %rax         # 8-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
.LBB62_28:                              # %sw.bb62
	movl	$11, 8(%r12)
	jmp	.LBB62_29
	.align	16, 0x90
.LBB62_35:                              # %while.body65.backedge
                                        #   in Loop: Header=BB62_29 Depth=1
	movl	(%r13), %ecx
.LBB62_29:                              # %sw.bb62
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_30
# BB#31:                                # %if.end79
                                        #   in Loop: Header=BB62_29 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_32
# BB#33:                                # %if.end85
                                        #   in Loop: Header=BB62_29 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_35
# BB#34:                                # %if.then108
                                        #   in Loop: Header=BB62_29 Depth=1
	incl	16(%rax)
	jmp	.LBB62_35
.LBB62_4:
	xorl	%eax, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 288(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	xorl	%eax, %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 464(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 448(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 376(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 472(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 416(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 400(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%r10, 280(%rsp)         # 8-byte Spill
	movq	%r11, %r10
	movq	%r8, %rcx
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	%r9, 152(%rsp)          # 8-byte Spill
	movq	%rcx, %r9
	jmp	.LBB62_521
.LBB62_30:                              # %if.then69
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, 36(%r12)
	movzbl	%al, %edx
	movl	$-5, %eax
	cmpl	$90, %edx
	movl	%ebp, %edx
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	movl	56(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 464(%rsp)         # 8-byte Spill
	movl	68(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	movl	72(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	movl	80(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	movl	84(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	movl	88(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movl	92(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 384(%rsp)         # 8-byte Spill
	movl	96(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 392(%rsp)         # 8-byte Spill
	movl	100(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	movl	104(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 352(%rsp)         # 8-byte Spill
	movl	108(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 424(%rsp)         # 8-byte Spill
	movl	112(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 472(%rsp)         # 8-byte Spill
	movl	116(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	movl	120(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	%ebx, %edx
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	je	.LBB62_37
	jmp	.LBB62_521
.LBB62_517:                             # %sw.default
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	$4001, %edi             # imm = 0xFA1
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%r10, %r13
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r9, %r14
	movq	%r15, %rbx
	movq	%r8, %r15
	movq	%r11, %r12
	callq	BZ2_bz__AssertH__fail
	movl	$4002, %edi             # imm = 0xFA2
	callq	BZ2_bz__AssertH__fail
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %r11
	movq	%r15, %r8
	movq	%rbx, %r15
	movq	%r14, %r9
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	%r13, %r10
	xorl	%eax, %eax
	jmp	.LBB62_521
.LBB62_36:                              # %if.end.sw.bb119_crit_edge
	movq	456(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	movq	400(%rsp), %rax         # 8-byte Reload
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movq	416(%rsp), %rax         # 8-byte Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	472(%rsp), %rax         # 8-byte Reload
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	384(%rsp), %rax         # 8-byte Reload
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	336(%rsp), %rax         # 8-byte Reload
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	432(%rsp), %rax         # 8-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	448(%rsp), %rax         # 8-byte Reload
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	408(%rsp), %rax         # 8-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
.LBB62_37:                              # %sw.bb119
	movl	$12, 8(%r12)
	jmp	.LBB62_38
	.align	16, 0x90
.LBB62_43:                              # %while.body122.backedge
                                        #   in Loop: Header=BB62_38 Depth=1
	movl	(%r13), %ecx
.LBB62_38:                              # %sw.bb119
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_39
# BB#40:                                # %if.end136
                                        #   in Loop: Header=BB62_38 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_32
# BB#41:                                # %if.end142
                                        #   in Loop: Header=BB62_38 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_43
# BB#42:                                # %if.then165
                                        #   in Loop: Header=BB62_38 Depth=1
	incl	16(%rax)
	jmp	.LBB62_43
.LBB62_39:                              # %if.then126
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, 36(%r12)
	movzbl	%al, %edx
	movl	$-5, %eax
	cmpl	$104, %edx
	movl	%ebp, %edx
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	movl	56(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 328(%rsp)         # 8-byte Spill
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 464(%rsp)         # 8-byte Spill
	movl	68(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	movl	72(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 440(%rsp)         # 8-byte Spill
	movl	76(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	movl	80(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	movl	84(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	movl	88(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 336(%rsp)         # 8-byte Spill
	movl	92(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 384(%rsp)         # 8-byte Spill
	movl	96(%rsp), %edx          # 4-byte Reload
	movq	%rdx, 392(%rsp)         # 8-byte Spill
	movl	100(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	movl	104(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 352(%rsp)         # 8-byte Spill
	movl	108(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 424(%rsp)         # 8-byte Spill
	movl	112(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 472(%rsp)         # 8-byte Spill
	movl	116(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 416(%rsp)         # 8-byte Spill
	movl	120(%rsp), %edx         # 4-byte Reload
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movl	%ebx, %edx
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	je	.LBB62_45
	jmp	.LBB62_521
.LBB62_44:                              # %if.end.sw.bb176_crit_edge
	movq	456(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	movq	400(%rsp), %rax         # 8-byte Reload
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movq	416(%rsp), %rax         # 8-byte Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	472(%rsp), %rax         # 8-byte Reload
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	384(%rsp), %rax         # 8-byte Reload
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	336(%rsp), %rax         # 8-byte Reload
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	432(%rsp), %rax         # 8-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	448(%rsp), %rax         # 8-byte Reload
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	408(%rsp), %rax         # 8-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
.LBB62_45:                              # %sw.bb176
	movl	$13, 8(%r12)
	jmp	.LBB62_46
	.align	16, 0x90
.LBB62_54:                              # %while.body179.backedge
                                        #   in Loop: Header=BB62_46 Depth=1
	movl	(%r13), %ecx
.LBB62_46:                              # %sw.bb176
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_47
# BB#51:                                # %if.end192
                                        #   in Loop: Header=BB62_46 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_32
# BB#52:                                # %if.end198
                                        #   in Loop: Header=BB62_46 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_54
# BB#53:                                # %if.then221
                                        #   in Loop: Header=BB62_46 Depth=1
	incl	16(%rax)
	jmp	.LBB62_54
.LBB62_47:                              # %if.then183
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	%ecx, 36(%r12)
	movl	%edx, 40(%r12)
	leal	-49(%rdx), %ecx
	movl	$-5, %eax
	cmpl	$8, %ecx
	ja	.LBB62_32
# BB#48:                                # %if.end234
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r11, 128(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	addl	$-48, %edx
	movl	%edx, 40(%r12)
	cmpb	$0, 44(%r12)
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	56(%rbx), %rax
	movq	72(%rbx), %rdi
	je	.LBB62_56
# BB#49:                                # %if.then237
	imull	$200000, %edx, %esi     # imm = 0x30D40
	movl	$1, %edx
	callq	*%rax
	movq	%rax, 3160(%r12)
	movq	72(%rbx), %rdi
	imull	$100000, 40(%r12), %esi # imm = 0x186A0
	sarl	%esi
	movl	$1, %edx
	callq	*56(%rbx)
	movq	%rax, 3168(%r12)
	testq	%rax, %rax
	movl	$-3, %eax
	je	.LBB62_50
# BB#55:                                # %if.then237
	movq	3160(%r12), %rcx
	jmp	.LBB62_57
.LBB62_7:                               # %if.end.sw.bb275_crit_edge
	movq	456(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebx
	movq	400(%rsp), %rax         # 8-byte Reload
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movq	416(%rsp), %rax         # 8-byte Reload
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movq	472(%rsp), %rax         # 8-byte Reload
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movq	424(%rsp), %rax         # 8-byte Reload
	movl	%eax, 108(%rsp)         # 4-byte Spill
	movq	352(%rsp), %rax         # 8-byte Reload
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	384(%rsp), %rax         # 8-byte Reload
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movq	336(%rsp), %rax         # 8-byte Reload
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movq	432(%rsp), %rax         # 8-byte Reload
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	440(%rsp), %rax         # 8-byte Reload
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	448(%rsp), %rax         # 8-byte Reload
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movq	464(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	408(%rsp), %rax         # 8-byte Reload
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movl	%eax, 52(%rsp)          # 4-byte Spill
	leaq	36(%r12), %r13
	jmp	.LBB62_58
.LBB62_66:                              # %if.end.sw.bb337_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_67
.LBB62_74:                              # %if.end.sw.bb394_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_75
.LBB62_82:                              # %if.end.sw.bb451_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_83
.LBB62_90:                              # %if.end.sw.bb508_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_91
.LBB62_98:                              # %if.end.sw.bb565_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_99
.LBB62_8:                               # %if.end.sw.bb629_crit_edge
	leaq	36(%r12), %rbx
	jmp	.LBB62_9
.LBB62_112:                             # %if.end.sw.bb686_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_113
.LBB62_120:                             # %if.end.sw.bb743_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_121
.LBB62_128:                             # %if.end.sw.bb800_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_129
.LBB62_136:                             # %if.end.sw.bb857_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_137
.LBB62_144:                             # %if.end.sw.bb909_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_145
.LBB62_152:                             # %if.end.sw.bb966_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_153
.LBB62_160:                             # %if.end.sw.bb1023_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_161
.LBB62_205:                             # %if.end.sw.bb1312_crit_edge
	leaq	36(%r12), %rdx
	movl	36(%r12), %ecx
.LBB62_206:                             # %sw.bb1312
	movl	$31, 8(%r12)
	cmpl	$14, %ecx
	movq	312(%rsp), %rbx         # 8-byte Reload
	jg	.LBB62_207
.LBB62_215:                             # %if.end1328
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_216
# BB#217:                               # %if.end1334
                                        #   in Loop: Header=BB62_215 Depth=1
	movq	%rdi, %rbp
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rcx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_219
# BB#218:                               # %if.then1357
                                        #   in Loop: Header=BB62_215 Depth=1
	incl	16(%rax)
.LBB62_219:                             # %while.body1315.backedge
                                        #   in Loop: Header=BB62_215 Depth=1
	movl	(%rdx), %ecx
	cmpl	$14, %ecx
	movq	%rbp, %rdi
	jle	.LBB62_215
.LBB62_207:                             # %if.then1319
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movl	32(%r12), %esi
	addl	$-15, %ecx
	shrl	%cl, %esi
	xorl	%edx, %edx
	andl	$32767, %esi            # imm = 0x7FFF
	movl	%ecx, 36(%r12)
	movl	$-4, %eax
	movl	$0, %ecx
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	jne	.LBB62_208
	jmp	.LBB62_521
.LBB62_259:                             # %if.end.sw.bb1609_crit_edge
	leaq	36(%r12), %rcx
	movl	36(%r12), %eax
	movq	312(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB62_260
.LBB62_16:                              # %if.end.sw.bb1878_crit_edge
	leaq	36(%r12), %rcx
	movl	36(%r12), %edx
	jmp	.LBB62_296
.LBB62_17:                              # %if.end.sw.bb2073_crit_edge
	leaq	36(%r12), %rcx
	movl	36(%r12), %edx
	jmp	.LBB62_18
.LBB62_21:                              # %if.end.sw.bb2499_crit_edge
	leaq	36(%r12), %rcx
	movl	36(%r12), %edx
	jmp	.LBB62_395
.LBB62_448:                             # %if.end.sw.bb2965_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_449
.LBB62_456:                             # %if.end.sw.bb3023_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_457
.LBB62_464:                             # %if.end.sw.bb3081_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_465
.LBB62_472:                             # %if.end.sw.bb3139_crit_edge
	leaq	36(%r12), %r13
	movl	36(%r12), %ecx
	jmp	.LBB62_473
.LBB62_480:                             # %if.end.sw.bb3197_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_481
.LBB62_12:                              # %if.end.sw.bb3255_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_13
.LBB62_493:                             # %if.end.sw.bb3313_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_494
.LBB62_501:                             # %if.end.sw.bb3371_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_502
.LBB62_509:                             # %if.end.sw.bb3429_crit_edge
	leaq	36(%r12), %rbx
	movl	36(%r12), %ecx
	jmp	.LBB62_510
.LBB62_56:                              # %if.else
	imull	$400000, %edx, %esi     # imm = 0x61A80
	movl	$1, %edx
	callq	*%rax
	movq	%rax, %rcx
	movq	%rcx, 3152(%r12)
	movl	$-3, %eax
.LBB62_57:                              # %if.else
	testq	%rcx, %rcx
	movl	%ebp, %ecx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	movl	56(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	movl	64(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movl	72(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	movl	80(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	movl	88(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	movl	96(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movl	104(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movl	112(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	movl	120(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movl	20(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %ecx
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	movq	40(%rsp), %rdi          # 8-byte Reload
	je	.LBB62_521
.LBB62_58:                              # %sw.bb275
	movl	$14, 8(%r12)
	jmp	.LBB62_59
.LBB62_65:                              # %if.then321
                                        #   in Loop: Header=BB62_59 Depth=1
	incl	16(%rax)
.LBB62_59:                              # %sw.bb275
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r13), %ecx
	cmpl	$7, %ecx
	jg	.LBB62_60
# BB#63:                                # %if.end292
                                        #   in Loop: Header=BB62_59 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_32
# BB#64:                                # %if.end298
                                        #   in Loop: Header=BB62_59 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_59
	jmp	.LBB62_65
.LBB62_32:
	movl	%ebp, %ecx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	movl	56(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	movl	64(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movl	72(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	movl	80(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	movl	88(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	movl	96(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movl	104(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movl	112(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	movl	120(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movl	%ebx, %ecx
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_60:                              # %if.then282
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %eax
	cmpl	$23, %eax
	je	.LBB62_61
# BB#62:                                # %if.then282
	cmpl	$49, %eax
	movl	%ebx, %eax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movl	120(%rsp), %eax         # 4-byte Reload
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movl	116(%rsp), %eax         # 4-byte Reload
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movl	112(%rsp), %eax         # 4-byte Reload
	movq	%rax, 472(%rsp)         # 8-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movl	104(%rsp), %eax         # 4-byte Reload
	movq	%rax, 352(%rsp)         # 8-byte Spill
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	96(%rsp), %eax          # 4-byte Reload
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	92(%rsp), %eax          # 4-byte Reload
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movl	88(%rsp), %eax          # 4-byte Reload
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movl	80(%rsp), %eax          # 4-byte Reload
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movl	72(%rsp), %eax          # 4-byte Reload
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movl	68(%rsp), %eax          # 4-byte Reload
	movq	%rax, 448(%rsp)         # 8-byte Spill
	movl	64(%rsp), %eax          # 4-byte Reload
	movq	%rax, 464(%rsp)         # 8-byte Spill
	movl	60(%rsp), %eax          # 4-byte Reload
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	56(%rsp), %eax          # 4-byte Reload
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	movq	%rax, 360(%rsp)         # 8-byte Spill
	movl	$-4, %eax
	jne	.LBB62_521
.LBB62_67:                              # %sw.bb337
	movl	$15, 8(%r12)
	jmp	.LBB62_68
.LBB62_73:                              # %while.body340.backedge
                                        #   in Loop: Header=BB62_68 Depth=1
	movl	(%r13), %ecx
.LBB62_68:                              # %sw.bb337
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_69
# BB#70:                                # %if.end354
                                        #   in Loop: Header=BB62_68 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#71:                                # %if.end360
                                        #   in Loop: Header=BB62_68 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_73
# BB#72:                                # %if.then383
                                        #   in Loop: Header=BB62_68 Depth=1
	incl	16(%rax)
	jmp	.LBB62_73
.LBB62_69:                              # %if.then344
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$65, %edx
	jne	.LBB62_521
.LBB62_75:                              # %sw.bb394
	movl	$16, 8(%r12)
	jmp	.LBB62_76
.LBB62_81:                              # %while.body397.backedge
                                        #   in Loop: Header=BB62_76 Depth=1
	movl	(%r13), %ecx
.LBB62_76:                              # %sw.bb394
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_77
# BB#78:                                # %if.end411
                                        #   in Loop: Header=BB62_76 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#79:                                # %if.end417
                                        #   in Loop: Header=BB62_76 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_81
# BB#80:                                # %if.then440
                                        #   in Loop: Header=BB62_76 Depth=1
	incl	16(%rax)
	jmp	.LBB62_81
.LBB62_77:                              # %if.then401
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$89, %edx
	jne	.LBB62_521
.LBB62_83:                              # %sw.bb451
	movl	$17, 8(%r12)
	jmp	.LBB62_84
.LBB62_89:                              # %while.body454.backedge
                                        #   in Loop: Header=BB62_84 Depth=1
	movl	(%r13), %ecx
.LBB62_84:                              # %sw.bb451
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_85
# BB#86:                                # %if.end468
                                        #   in Loop: Header=BB62_84 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#87:                                # %if.end474
                                        #   in Loop: Header=BB62_84 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_89
# BB#88:                                # %if.then497
                                        #   in Loop: Header=BB62_84 Depth=1
	incl	16(%rax)
	jmp	.LBB62_89
.LBB62_85:                              # %if.then458
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$38, %edx
	jne	.LBB62_521
.LBB62_91:                              # %sw.bb508
	movl	$18, 8(%r12)
	jmp	.LBB62_92
.LBB62_97:                              # %while.body511.backedge
                                        #   in Loop: Header=BB62_92 Depth=1
	movl	(%r13), %ecx
.LBB62_92:                              # %sw.bb508
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_93
# BB#94:                                # %if.end525
                                        #   in Loop: Header=BB62_92 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#95:                                # %if.end531
                                        #   in Loop: Header=BB62_92 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_97
# BB#96:                                # %if.then554
                                        #   in Loop: Header=BB62_92 Depth=1
	incl	16(%rax)
	jmp	.LBB62_97
.LBB62_93:                              # %if.then515
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movq	%r13, %rbx
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$83, %edx
	jne	.LBB62_521
.LBB62_99:                              # %sw.bb565
	movl	$19, 8(%r12)
	jmp	.LBB62_100
.LBB62_108:                             # %while.body568.backedge
                                        #   in Loop: Header=BB62_100 Depth=1
	movl	(%rbx), %ecx
.LBB62_100:                             # %sw.bb565
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_101
# BB#105:                               # %if.end582
                                        #   in Loop: Header=BB62_100 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#106:                               # %if.end588
                                        #   in Loop: Header=BB62_100 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_108
# BB#107:                               # %if.then611
                                        #   in Loop: Header=BB62_100 Depth=1
	incl	16(%rax)
	jmp	.LBB62_108
.LBB62_101:                             # %if.then572
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movzbl	%al, %ecx
	movl	$-4, %eax
	cmpl	$89, %ecx
	jne	.LBB62_521
# BB#102:                               # %if.end621
	movq	48(%r12), %rax
	leal	1(%rax), %edx
	movl	%edx, 48(%r12)
	shrq	$32, %rax
	cmpl	$2, %eax
	jge	.LBB62_103
.LBB62_104:                             # %if.end628
	movl	$0, 3176(%r12)
.LBB62_9:                               # %sw.bb629
	movl	$20, 8(%r12)
	jmp	.LBB62_10
.LBB62_111:                             # %if.then675
                                        #   in Loop: Header=BB62_10 Depth=1
	incl	16(%rax)
.LBB62_10:                              # %sw.bb629
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	cmpl	$7, %ecx
	jg	.LBB62_11
# BB#109:                               # %if.end646
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#110:                               # %if.end652
                                        #   in Loop: Header=BB62_10 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_10
	jmp	.LBB62_111
.LBB62_11:                              # %if.then636
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3176(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%r12)
.LBB62_113:                             # %sw.bb686
	movl	$21, 8(%r12)
	jmp	.LBB62_114
	.align	16, 0x90
.LBB62_119:                             # %while.body689.backedge
                                        #   in Loop: Header=BB62_114 Depth=1
	movl	(%rbx), %ecx
.LBB62_114:                             # %sw.bb686
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_115
# BB#116:                               # %if.end703
                                        #   in Loop: Header=BB62_114 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#117:                               # %if.end709
                                        #   in Loop: Header=BB62_114 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_119
# BB#118:                               # %if.then732
                                        #   in Loop: Header=BB62_114 Depth=1
	incl	16(%rax)
	jmp	.LBB62_119
.LBB62_115:                             # %if.then693
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3176(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%r12)
.LBB62_121:                             # %sw.bb743
	movl	$22, 8(%r12)
	jmp	.LBB62_122
	.align	16, 0x90
.LBB62_127:                             # %while.body746.backedge
                                        #   in Loop: Header=BB62_122 Depth=1
	movl	(%rbx), %ecx
.LBB62_122:                             # %sw.bb743
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_123
# BB#124:                               # %if.end760
                                        #   in Loop: Header=BB62_122 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#125:                               # %if.end766
                                        #   in Loop: Header=BB62_122 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_127
# BB#126:                               # %if.then789
                                        #   in Loop: Header=BB62_122 Depth=1
	incl	16(%rax)
	jmp	.LBB62_127
.LBB62_123:                             # %if.then750
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3176(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%r12)
.LBB62_129:                             # %sw.bb800
	movl	$23, 8(%r12)
	jmp	.LBB62_130
	.align	16, 0x90
.LBB62_135:                             # %while.body803.backedge
                                        #   in Loop: Header=BB62_130 Depth=1
	movl	(%rbx), %ecx
.LBB62_130:                             # %sw.bb800
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_131
# BB#132:                               # %if.end817
                                        #   in Loop: Header=BB62_130 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#133:                               # %if.end823
                                        #   in Loop: Header=BB62_130 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_135
# BB#134:                               # %if.then846
                                        #   in Loop: Header=BB62_130 Depth=1
	incl	16(%rax)
	jmp	.LBB62_135
.LBB62_131:                             # %if.then807
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3176(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%r12)
.LBB62_137:                             # %sw.bb857
	movl	$24, 8(%r12)
	jmp	.LBB62_138
	.align	16, 0x90
.LBB62_143:                             # %while.body860.backedge
                                        #   in Loop: Header=BB62_138 Depth=1
	movl	(%rbx), %ecx
.LBB62_138:                             # %sw.bb857
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jg	.LBB62_139
# BB#140:                               # %if.end874
                                        #   in Loop: Header=BB62_138 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#141:                               # %if.end880
                                        #   in Loop: Header=BB62_138 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_143
# BB#142:                               # %if.then903
                                        #   in Loop: Header=BB62_138 Depth=1
	incl	16(%rax)
	jmp	.LBB62_143
.LBB62_139:                             # %if.then864
	movl	32(%r12), %eax
	decl	%ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	andb	$1, %al
	movb	%al, 20(%r12)
	movl	$0, 56(%r12)
.LBB62_145:                             # %sw.bb909
	movl	$25, 8(%r12)
	jmp	.LBB62_146
	.align	16, 0x90
.LBB62_151:                             # %while.body912.backedge
                                        #   in Loop: Header=BB62_146 Depth=1
	movl	(%rbx), %ecx
.LBB62_146:                             # %sw.bb909
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_147
# BB#148:                               # %if.end926
                                        #   in Loop: Header=BB62_146 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#149:                               # %if.end932
                                        #   in Loop: Header=BB62_146 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_151
# BB#150:                               # %if.then955
                                        #   in Loop: Header=BB62_146 Depth=1
	incl	16(%rax)
	jmp	.LBB62_151
.LBB62_147:                             # %if.then916
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	56(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 56(%r12)
.LBB62_153:                             # %sw.bb966
	movl	$26, 8(%r12)
	jmp	.LBB62_154
	.align	16, 0x90
.LBB62_159:                             # %while.body969.backedge
                                        #   in Loop: Header=BB62_154 Depth=1
	movl	(%rbx), %ecx
.LBB62_154:                             # %sw.bb966
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_155
# BB#156:                               # %if.end983
                                        #   in Loop: Header=BB62_154 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#157:                               # %if.end989
                                        #   in Loop: Header=BB62_154 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_159
# BB#158:                               # %if.then1012
                                        #   in Loop: Header=BB62_154 Depth=1
	incl	16(%rax)
	jmp	.LBB62_159
.LBB62_155:                             # %if.then973
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	56(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 56(%r12)
.LBB62_161:                             # %sw.bb1023
	movl	$27, 8(%r12)
	jmp	.LBB62_162
	.align	16, 0x90
.LBB62_172:                             # %while.body1026.backedge
                                        #   in Loop: Header=BB62_162 Depth=1
	movl	(%rbx), %ecx
.LBB62_162:                             # %sw.bb1023
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_163
# BB#169:                               # %if.end1040
                                        #   in Loop: Header=BB62_162 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#170:                               # %if.end1046
                                        #   in Loop: Header=BB62_162 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_172
# BB#171:                               # %if.then1069
                                        #   in Loop: Header=BB62_162 Depth=1
	incl	16(%rax)
	jmp	.LBB62_172
.LBB62_163:                             # %if.then1030
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	56(%r12), %ecx
	shll	$8, %ecx
	movzbl	%al, %edx
	orl	%ecx, %edx
	movl	%edx, 56(%r12)
	movl	$-4, %eax
	testl	%edx, %edx
	js	.LBB62_521
# BB#164:                               # %if.end1084
	imull	$100000, 40(%r12), %esi # imm = 0x186A0
	orl	$10, %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %edx
	jg	.LBB62_521
	jmp	.LBB62_165
.LBB62_61:
	movl	%ebx, %eax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movl	120(%rsp), %eax         # 4-byte Reload
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movl	116(%rsp), %eax         # 4-byte Reload
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movl	112(%rsp), %eax         # 4-byte Reload
	movq	%rax, 472(%rsp)         # 8-byte Spill
	movl	108(%rsp), %eax         # 4-byte Reload
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movl	104(%rsp), %eax         # 4-byte Reload
	movq	%rax, 352(%rsp)         # 8-byte Spill
	movl	100(%rsp), %eax         # 4-byte Reload
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	96(%rsp), %eax          # 4-byte Reload
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	92(%rsp), %eax          # 4-byte Reload
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movl	88(%rsp), %eax          # 4-byte Reload
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movl	80(%rsp), %eax          # 4-byte Reload
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movl	76(%rsp), %eax          # 4-byte Reload
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movl	72(%rsp), %eax          # 4-byte Reload
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movl	68(%rsp), %eax          # 4-byte Reload
	movq	%rax, 448(%rsp)         # 8-byte Spill
	movl	64(%rsp), %eax          # 4-byte Reload
	movq	%rax, 464(%rsp)         # 8-byte Spill
	movl	60(%rsp), %eax          # 4-byte Reload
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	56(%rsp), %eax          # 4-byte Reload
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movl	52(%rsp), %eax          # 4-byte Reload
	movq	%rax, 360(%rsp)         # 8-byte Spill
.LBB62_449:                             # %sw.bb2965
	movl	$42, 8(%r12)
	jmp	.LBB62_450
.LBB62_455:                             # %while.body2968.backedge
                                        #   in Loop: Header=BB62_450 Depth=1
	movl	(%r13), %ecx
.LBB62_450:                             # %sw.bb2965
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_451
# BB#452:                               # %if.end2983
                                        #   in Loop: Header=BB62_450 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#453:                               # %if.end2989
                                        #   in Loop: Header=BB62_450 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_455
# BB#454:                               # %if.then3012
                                        #   in Loop: Header=BB62_450 Depth=1
	incl	16(%rax)
	jmp	.LBB62_455
.LBB62_451:                             # %if.then2972
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$114, %edx
	jne	.LBB62_521
.LBB62_457:                             # %sw.bb3023
	movl	$43, 8(%r12)
	jmp	.LBB62_458
.LBB62_463:                             # %while.body3026.backedge
                                        #   in Loop: Header=BB62_458 Depth=1
	movl	(%r13), %ecx
.LBB62_458:                             # %sw.bb3023
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_459
# BB#460:                               # %if.end3041
                                        #   in Loop: Header=BB62_458 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#461:                               # %if.end3047
                                        #   in Loop: Header=BB62_458 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_463
# BB#462:                               # %if.then3070
                                        #   in Loop: Header=BB62_458 Depth=1
	incl	16(%rax)
	jmp	.LBB62_463
.LBB62_459:                             # %if.then3030
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$69, %edx
	jne	.LBB62_521
.LBB62_465:                             # %sw.bb3081
	movl	$44, 8(%r12)
	jmp	.LBB62_466
.LBB62_471:                             # %while.body3084.backedge
                                        #   in Loop: Header=BB62_466 Depth=1
	movl	(%r13), %ecx
.LBB62_466:                             # %sw.bb3081
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_467
# BB#468:                               # %if.end3099
                                        #   in Loop: Header=BB62_466 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#469:                               # %if.end3105
                                        #   in Loop: Header=BB62_466 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_471
# BB#470:                               # %if.then3128
                                        #   in Loop: Header=BB62_466 Depth=1
	incl	16(%rax)
	jmp	.LBB62_471
.LBB62_467:                             # %if.then3088
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$56, %edx
	jne	.LBB62_521
.LBB62_473:                             # %sw.bb3139
	movl	$45, 8(%r12)
	jmp	.LBB62_474
.LBB62_479:                             # %while.body3142.backedge
                                        #   in Loop: Header=BB62_474 Depth=1
	movl	(%r13), %ecx
.LBB62_474:                             # %sw.bb3139
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_475
# BB#476:                               # %if.end3157
                                        #   in Loop: Header=BB62_474 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#477:                               # %if.end3163
                                        #   in Loop: Header=BB62_474 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%r13)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_479
# BB#478:                               # %if.then3186
                                        #   in Loop: Header=BB62_474 Depth=1
	incl	16(%rax)
	jmp	.LBB62_479
.LBB62_475:                             # %if.then3146
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%r13)
	movq	%r13, %rbx
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$80, %edx
	jne	.LBB62_521
.LBB62_481:                             # %sw.bb3197
	movl	$46, 8(%r12)
	jmp	.LBB62_482
.LBB62_488:                             # %while.body3200.backedge
                                        #   in Loop: Header=BB62_482 Depth=1
	movl	(%rbx), %ecx
.LBB62_482:                             # %sw.bb3197
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_483
# BB#485:                               # %if.end3215
                                        #   in Loop: Header=BB62_482 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#486:                               # %if.end3221
                                        #   in Loop: Header=BB62_482 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_488
# BB#487:                               # %if.then3244
                                        #   in Loop: Header=BB62_482 Depth=1
	incl	16(%rax)
	jmp	.LBB62_488
.LBB62_483:                             # %if.then3204
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movzbl	%al, %edx
	movl	$-4, %eax
	cmpl	$144, %edx
	jne	.LBB62_521
# BB#484:                               # %if.end3254
	movl	$0, 3180(%r12)
.LBB62_13:                              # %sw.bb3255
	movl	$47, 8(%r12)
	jmp	.LBB62_14
.LBB62_492:                             # %while.body3258.backedge
                                        #   in Loop: Header=BB62_14 Depth=1
	movl	(%rbx), %ecx
.LBB62_14:                              # %sw.bb3255
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_15
# BB#489:                               # %if.end3273
                                        #   in Loop: Header=BB62_14 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#490:                               # %if.end3279
                                        #   in Loop: Header=BB62_14 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_492
# BB#491:                               # %if.then3302
                                        #   in Loop: Header=BB62_14 Depth=1
	incl	16(%rax)
	jmp	.LBB62_492
.LBB62_15:                              # %if.then3262
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3180(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%r12)
.LBB62_494:                             # %sw.bb3313
	movl	$48, 8(%r12)
	jmp	.LBB62_495
	.align	16, 0x90
.LBB62_500:                             # %while.body3316.backedge
                                        #   in Loop: Header=BB62_495 Depth=1
	movl	(%rbx), %ecx
.LBB62_495:                             # %sw.bb3313
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_496
# BB#497:                               # %if.end3331
                                        #   in Loop: Header=BB62_495 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#498:                               # %if.end3337
                                        #   in Loop: Header=BB62_495 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_500
# BB#499:                               # %if.then3360
                                        #   in Loop: Header=BB62_495 Depth=1
	incl	16(%rax)
	jmp	.LBB62_500
.LBB62_496:                             # %if.then3320
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3180(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%r12)
.LBB62_502:                             # %sw.bb3371
	movl	$49, 8(%r12)
	jmp	.LBB62_503
	.align	16, 0x90
.LBB62_508:                             # %while.body3374.backedge
                                        #   in Loop: Header=BB62_503 Depth=1
	movl	(%rbx), %ecx
.LBB62_503:                             # %sw.bb3371
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_504
# BB#505:                               # %if.end3389
                                        #   in Loop: Header=BB62_503 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#506:                               # %if.end3395
                                        #   in Loop: Header=BB62_503 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_508
# BB#507:                               # %if.then3418
                                        #   in Loop: Header=BB62_503 Depth=1
	incl	16(%rax)
	jmp	.LBB62_508
.LBB62_504:                             # %if.then3378
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3180(%r12), %edx
	shll	$8, %edx
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%r12)
.LBB62_510:                             # %sw.bb3429
	movl	$50, 8(%r12)
	jmp	.LBB62_511
	.align	16, 0x90
.LBB62_516:                             # %while.body3432.backedge
                                        #   in Loop: Header=BB62_511 Depth=1
	movl	(%rbx), %ecx
.LBB62_511:                             # %sw.bb3429
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ecx
	jg	.LBB62_512
# BB#513:                               # %if.end3447
                                        #   in Loop: Header=BB62_511 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#514:                               # %if.end3453
                                        #   in Loop: Header=BB62_511 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, (%rbx)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_516
# BB#515:                               # %if.then3476
                                        #   in Loop: Header=BB62_511 Depth=1
	incl	16(%rax)
	jmp	.LBB62_516
.LBB62_512:                             # %if.then3436
	movl	32(%r12), %eax
	addl	$-8, %ecx
	shrl	%cl, %eax
	movl	%ecx, (%rbx)
	movl	3180(%r12), %ecx
	shll	$8, %ecx
	movzbl	%al, %eax
	orl	%ecx, %eax
	movl	%eax, 3180(%r12)
	movl	$1, 8(%r12)
	movl	$4, %eax
	jmp	.LBB62_521
.LBB62_216:
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_50:
	movl	%ebp, %ecx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	movl	52(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 360(%rsp)         # 8-byte Spill
	movl	56(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	movl	60(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	movl	64(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movl	72(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	movl	76(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	movl	80(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	movl	88(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	movl	92(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	movl	96(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movl	104(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movl	112(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 472(%rsp)         # 8-byte Spill
	movl	116(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	movl	120(%rsp), %ecx         # 4-byte Reload
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movl	20(%rsp), %ecx          # 4-byte Reload
	movq	%rcx, 456(%rsp)         # 8-byte Spill
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	jmp	.LBB62_520
.LBB62_103:                             # %if.then625
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	stderr(%rip), %rdi
	movl	$.L.str.80, %esi
	xorl	%eax, %eax
	movq	%r10, 32(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r14, %r15
	movq	%r8, %r14
	movq	%r11, %rbp
	callq	fprintf
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %r11
	movq	%r14, %r8
	movq	%r15, %r14
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	32(%rsp), %r10          # 8-byte Reload
	jmp	.LBB62_104
.LBB62_18:                              # %sw.bb2073
	movq	%rdi, %rbp
	movq	312(%rsp), %rbx         # 8-byte Reload
	movl	$39, 8(%r12)
	jmp	.LBB62_19
.LBB62_335:                             # %while.body2076.backedge
                                        #   in Loop: Header=BB62_19 Depth=1
	movl	(%rcx), %edx
.LBB62_19:                              # %sw.bb2073
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jg	.LBB62_20
# BB#331:                               # %if.end2090
                                        #   in Loop: Header=BB62_19 Depth=1
	movq	(%r12), %rdx
	xorl	%eax, %eax
	cmpl	$0, 8(%rdx)
	je	.LBB62_332
# BB#333:                               # %if.end2096
                                        #   in Loop: Header=BB62_19 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rdx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rdx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_335
# BB#334:                               # %if.then2119
                                        #   in Loop: Header=BB62_19 Depth=1
	incl	16(%rax)
	jmp	.LBB62_335
.LBB62_20:                              # %if.then2080
	movl	32(%r12), %eax
	decl	%edx
	movb	%dl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	movq	464(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,2), %ecx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	movq	448(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_324
.LBB62_332:
	movq	%rbp, %rdi
	jmp	.LBB62_521
.LBB62_165:                             # %for.cond
	cmpl	$16, %ecx
	jge	.LBB62_177
# BB#166:
	movq	%rcx, 304(%rsp)         # 8-byte Spill
.LBB62_167:                             # %sw.bb1095
	movl	$28, 8(%r12)
	movl	36(%r12), %eax
	testl	%eax, %eax
	movq	304(%rsp), %rbx         # 8-byte Reload
	jg	.LBB62_168
	.align	16, 0x90
.LBB62_173:                             # %if.end1112
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#174:                               # %if.end1118
                                        #   in Loop: Header=BB62_173 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_176
# BB#175:                               # %if.then1141
                                        #   in Loop: Header=BB62_173 Depth=1
	incl	16(%rax)
.LBB62_176:                             # %while.body1098.backedge
                                        #   in Loop: Header=BB62_173 Depth=1
	movl	36(%r12), %eax
	testl	%eax, %eax
	jle	.LBB62_173
.LBB62_168:                             # %if.then1102
	movl	32(%r12), %edx
	decl	%eax
	movl	%eax, 36(%r12)
	movslq	%ebx, %rcx
	btl	%eax, %edx
	setb	%al
	movb	%al, 3452(%r12,%rcx)
	incl	%ecx
	jmp	.LBB62_165
.LBB62_177:                             # %for.body1160.preheader
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 3436(%r12)
	movdqu	%xmm0, 3420(%r12)
	movdqu	%xmm0, 3404(%r12)
	movdqu	%xmm0, 3388(%r12)
	movdqu	%xmm0, 3372(%r12)
	movdqu	%xmm0, 3356(%r12)
	movdqu	%xmm0, 3340(%r12)
	movdqu	%xmm0, 3324(%r12)
	movdqu	%xmm0, 3308(%r12)
	movdqu	%xmm0, 3292(%r12)
	movdqu	%xmm0, 3276(%r12)
	movdqu	%xmm0, 3260(%r12)
	movdqu	%xmm0, 3244(%r12)
	movdqu	%xmm0, 3228(%r12)
	movdqu	%xmm0, 3212(%r12)
	movdqu	%xmm0, 3196(%r12)
	xorl	%edx, %edx
.LBB62_178:                             # %for.cond1166
	cmpl	$15, %edx
	jg	.LBB62_190
# BB#179:                               # %for.body1169
	movslq	%edx, %rcx
	movq	%rdx, 304(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpb	$0, 3452(%r12,%rcx)
	jne	.LBB62_180
	jmp	.LBB62_189
.LBB62_190:                             # %for.end1247
	movl	$0, 3192(%r12)
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB62_191:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, 3196(%r12,%rax)
	je	.LBB62_193
# BB#192:                               # %if.then.i
                                        #   in Loop: Header=BB62_191 Depth=1
	movslq	%ecx, %rcx
	movb	%al, 3468(%r12,%rcx)
	movl	3192(%r12), %ecx
	incl	%ecx
	movl	%ecx, 3192(%r12)
.LBB62_193:                             # %for.inc.i
                                        #   in Loop: Header=BB62_191 Depth=1
	incq	%rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB62_191
# BB#194:                               # %makeMaps_d.exit
	movq	%rdx, 304(%rsp)         # 8-byte Spill
	movl	$-4, %eax
	testl	%ecx, %ecx
	je	.LBB62_521
# BB#195:                               # %if.end1251
	addl	$2, %ecx
	movq	%rcx, 416(%rsp)         # 8-byte Spill
.LBB62_196:                             # %sw.bb1254
	movl	$30, 8(%r12)
	leaq	36(%r12), %rdx
	movl	36(%r12), %ecx
	cmpl	$2, %ecx
	movq	312(%rsp), %rbx         # 8-byte Reload
	jg	.LBB62_197
	.align	16, 0x90
.LBB62_200:                             # %if.end1270
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_201
# BB#202:                               # %if.end1276
                                        #   in Loop: Header=BB62_200 Depth=1
	movq	%rdi, %rbp
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rcx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_204
# BB#203:                               # %if.then1299
                                        #   in Loop: Header=BB62_200 Depth=1
	incl	16(%rax)
.LBB62_204:                             # %while.body1257.backedge
                                        #   in Loop: Header=BB62_200 Depth=1
	movl	(%rdx), %ecx
	cmpl	$2, %ecx
	movq	%rbp, %rdi
	jle	.LBB62_200
.LBB62_197:                             # %if.then1261
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movl	32(%r12), %ebx
	addl	$-3, %ecx
	shrl	%cl, %ebx
	andl	$7, %ebx
	movl	%ecx, 36(%r12)
	cmpl	$7, %ebx
	ja	.LBB62_198
# BB#199:                               # %if.then1261
	movl	$-4, %eax
	movl	$131, %esi
	btl	%ebx, %esi
	movq	%rbx, 472(%rsp)         # 8-byte Spill
	jb	.LBB62_521
	jmp	.LBB62_206
.LBB62_201:
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_198:
	movq	%rbx, 472(%rsp)         # 8-byte Spill
	jmp	.LBB62_206
.LBB62_180:                             # %for.cond1175
	cmpl	$15, %eax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	jg	.LBB62_189
.LBB62_181:                             # %sw.bb1179
	movl	$29, 8(%r12)
	movl	36(%r12), %eax
	testl	%eax, %eax
	movq	304(%rsp), %rbx         # 8-byte Reload
	jg	.LBB62_182
	.align	16, 0x90
.LBB62_185:                             # %if.end1196
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#186:                               # %if.end1202
                                        #   in Loop: Header=BB62_185 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_188
# BB#187:                               # %if.then1225
                                        #   in Loop: Header=BB62_185 Depth=1
	incl	16(%rax)
.LBB62_188:                             # %while.body1182.backedge
                                        #   in Loop: Header=BB62_185 Depth=1
	movl	36(%r12), %eax
	testl	%eax, %eax
	jle	.LBB62_185
.LBB62_182:                             # %if.then1186
	movl	32(%r12), %ecx
	decl	%eax
	movl	%eax, 36(%r12)
	btl	%eax, %ecx
	movq	456(%rsp), %rcx         # 8-byte Reload
	jae	.LBB62_184
# BB#183:                               # %if.then1234
	movl	%ebx, %eax
	shll	$4, %eax
	addl	%ecx, %eax
	cltq
	movb	$1, 3196(%r12,%rax)
.LBB62_184:                             # %for.inc1241
	incl	%ecx
	movl	%ecx, %eax
	jmp	.LBB62_180
.LBB62_189:                             # %for.inc1245
	movq	304(%rsp), %rdx         # 8-byte Reload
	incl	%edx
	jmp	.LBB62_178
.LBB62_208:                             # %for.cond1367
	movl	%esi, %r13d
	cmpl	%r13d, %edx
	jge	.LBB62_225
# BB#209:
	movl	%r13d, %eax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 456(%rsp)         # 8-byte Spill
	movq	%rdx, 304(%rsp)         # 8-byte Spill
.LBB62_210:                             # %sw.bb1373.preheader
	movl	36(%r12), %ecx
	movq	304(%rsp), %rbx         # 8-byte Reload
	movq	472(%rsp), %rbp         # 8-byte Reload
.LBB62_211:                             # %sw.bb1373
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_212 Depth 2
	movl	$32, 8(%r12)
	jmp	.LBB62_212
	.align	16, 0x90
.LBB62_223:                             # %while.body1376.backedge
                                        #   in Loop: Header=BB62_212 Depth=2
	movl	36(%r12), %ecx
.LBB62_212:                             # %sw.bb1373
                                        #   Parent Loop BB62_211 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ecx, %ecx
	jg	.LBB62_213
# BB#220:                               # %if.end1390
                                        #   in Loop: Header=BB62_212 Depth=2
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#221:                               # %if.end1396
                                        #   in Loop: Header=BB62_212 Depth=2
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_223
# BB#222:                               # %if.then1419
                                        #   in Loop: Header=BB62_212 Depth=2
	incl	16(%rax)
	jmp	.LBB62_223
.LBB62_213:                             # %if.then1380
                                        #   in Loop: Header=BB62_211 Depth=1
	movl	32(%r12), %eax
	decl	%ecx
	movl	%ecx, 36(%r12)
	btl	%ecx, %eax
	jae	.LBB62_224
# BB#214:                               # %if.end1429
                                        #   in Loop: Header=BB62_211 Depth=1
	movq	456(%rsp), %rdx         # 8-byte Reload
	incl	%edx
	movq	%rdx, 456(%rsp)         # 8-byte Spill
	movl	$-4, %eax
	cmpl	%ebp, %edx
	jl	.LBB62_211
	jmp	.LBB62_521
.LBB62_225:                             # %for.end1441
	movq	472(%rsp), %rbp         # 8-byte Reload
	testl	%ebp, %ebp
	jle	.LBB62_228
# BB#226:
	movb	$1, %al
.LBB62_227:                             # %for.body1448
                                        # =>This Inner Loop Header: Depth=1
	movzbl	%al, %ecx
	decb	%al
	movzbl	%al, %eax
	movb	%al, 514(%rsp,%rax)
	movb	%cl, %al
	incb	%al
	cmpl	%ebp, %ecx
	jl	.LBB62_227
.LBB62_228:                             # %for.cond1454.preheader
	xorl	%edx, %edx
	testl	%r13d, %r13d
	movl	$0, %ecx
	jle	.LBB62_234
# BB#229:
	xorl	%eax, %eax
.LBB62_230:                             # %for.body1457
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_231 Depth 2
	movzbl	25886(%r12,%rax), %ecx
	testq	%rcx, %rcx
	movb	514(%rsp,%rcx), %dl
	je	.LBB62_232
	.align	16, 0x90
.LBB62_231:                             # %while.body1467
                                        #   Parent Loop BB62_230 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	513(%rsp,%rcx), %bl
	movb	%bl, 514(%rsp,%rcx)
	decq	%rcx
	testb	%cl, %cl
	jne	.LBB62_231
.LBB62_232:                             # %while.end1475
                                        #   in Loop: Header=BB62_230 Depth=1
	movb	%dl, 514(%rsp)
	movb	%dl, 7884(%r12,%rax)
	incq	%rax
	cmpl	%r13d, %eax
	jne	.LBB62_230
# BB#233:
	movl	%r13d, %ecx
	xorl	%edx, %edx
.LBB62_234:                             # %for.end1481
	movq	440(%rsp), %rax         # 8-byte Reload
	jmp	.LBB62_235
.LBB62_224:                             # %while.end1435
	movslq	%ebx, %rdx
	movq	456(%rsp), %rax         # 8-byte Reload
	movb	%al, 25886(%r12,%rdx)
	incl	%edx
	movq	424(%rsp), %rax         # 8-byte Reload
	movl	%eax, %esi
	jmp	.LBB62_208
.LBB62_235:                             # %for.cond1482
	movq	%rbp, 472(%rsp)         # 8-byte Spill
	cmpl	%ebp, %edx
	jge	.LBB62_245
# BB#236:
	movq	%rdx, 400(%rsp)         # 8-byte Spill
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 424(%rsp)         # 8-byte Spill
.LBB62_237:                             # %sw.bb1486
	movl	$33, 8(%r12)
	movl	36(%r12), %ecx
	cmpl	$4, %ecx
	movq	472(%rsp), %rbp         # 8-byte Reload
	jg	.LBB62_238
	.align	16, 0x90
.LBB62_250:                             # %if.end1503
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#251:                               # %if.end1509
                                        #   in Loop: Header=BB62_250 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_253
# BB#252:                               # %if.then1532
                                        #   in Loop: Header=BB62_250 Depth=1
	incl	16(%rax)
.LBB62_253:                             # %while.body1489.backedge
                                        #   in Loop: Header=BB62_250 Depth=1
	movl	36(%r12), %ecx
	cmpl	$4, %ecx
	jle	.LBB62_250
.LBB62_238:                             # %if.then1493
	movl	32(%r12), %eax
	addl	$-5, %ecx
	shrl	%cl, %eax
	andl	$31, %eax
	movl	%ecx, 36(%r12)
	xorl	%ecx, %ecx
	jmp	.LBB62_239
.LBB62_245:                             # %for.cond1682.preheader
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r11, 128(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB62_278
# BB#246:                               # %for.cond1686.preheader.lr.ph
	movl	%r13d, 400(%rsp)        # 4-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	416(%rsp), %rbx         # 8-byte Reload
	leal	-1(%rbx), %eax
	incq	%rax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rcx, %rax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	leaq	43888(%r12), %r14
	movl	%ebx, %r13d
	xorl	%r15d, %r15d
	pxor	%xmm5, %xmm5
	.align	16, 0x90
.LBB62_247:                             # %for.cond1686.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_273 Depth 2
                                        #     Child Loop BB62_275 Depth 2
	movl	$32, %ebp
	testl	%ebx, %ebx
	movl	$0, %r9d
	jle	.LBB62_276
# BB#248:                               # %for.body1689.preheader
                                        #   in Loop: Header=BB62_247 Depth=1
	xorl	%ecx, %ecx
	movl	$32, %ebp
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpq	$4, %rax
	jae	.LBB62_272
# BB#249:                               #   in Loop: Header=BB62_247 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB62_275
.LBB62_272:                             # %min.iters.checked
                                        #   in Loop: Header=BB62_247 Depth=1
	xorl	%ecx, %ecx
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rax
	pxor	%xmm1, %xmm1
	movq	%r14, %rdx
	movq	424(%rsp), %rsi         # 8-byte Reload
	movdqa	.LCPI62_0(%rip), %xmm0  # xmm0 = [32,32,32,32]
	movl	$0, %r9d
	je	.LBB62_275
	.align	16, 0x90
.LBB62_273:                             # %vector.body
                                        #   Parent Loop BB62_247 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%rdx), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm5, %xmm2    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1],xmm2[2],xmm5[2],xmm2[3],xmm5[3],xmm2[4],xmm5[4],xmm2[5],xmm5[5],xmm2[6],xmm5[6],xmm2[7],xmm5[7]
	punpcklwd	%xmm5, %xmm2    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1],xmm2[2],xmm5[2],xmm2[3],xmm5[3]
	movdqa	%xmm2, %xmm3
	pcmpgtd	%xmm1, %xmm3
	movdqa	%xmm2, %xmm4
	pand	%xmm3, %xmm4
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm0, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm2
	pandn	%xmm0, %xmm3
	movdqa	%xmm3, %xmm0
	por	%xmm2, %xmm0
	addq	$4, %rdx
	addq	$-4, %rsi
	jne	.LBB62_273
# BB#274:                               # %middle.block
                                        #   in Loop: Header=BB62_247 Depth=1
	pshufd	$78, %xmm1, %xmm2       # xmm2 = xmm1[2,3,0,1]
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm1, %xmm3
	pshufd	$229, %xmm3, %xmm1      # xmm1 = xmm3[1,1,2,3]
	movd	%xmm3, %ecx
	pcmpgtd	%xmm1, %xmm3
	movdqa	%xmm3, 480(%rsp)
	testb	$1, 480(%rsp)
	movd	%xmm1, %r9d
	cmovnel	%ecx, %r9d
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm0, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm0, %ecx
	pcmpgtd	%xmm2, %xmm0
	movdqa	%xmm0, 496(%rsp)
	movd	%xmm2, %ebp
	testb	$1, 496(%rsp)
	cmovel	%ecx, %ebp
	cmpq	%rax, 432(%rsp)         # 8-byte Folded Reload
	movq	%rax, %rcx
	je	.LBB62_276
	.align	16, 0x90
.LBB62_275:                             # %for.body1689
                                        #   Parent Loop BB62_247 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rcx), %eax
	cmpl	%r9d, %eax
	cmovgel	%eax, %r9d
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	incq	%rcx
	cmpl	%ecx, %r13d
	jne	.LBB62_275
.LBB62_276:                             # %for.end1724
                                        #   in Loop: Header=BB62_247 Depth=1
	imulq	$1032, %r15, %rax       # imm = 0x408
	leaq	45436(%r12,%rax), %rdi
	leaq	51628(%r12,%rax), %rsi
	leaq	57820(%r12,%rax), %rdx
	imulq	$258, %r15, %rax        # imm = 0x102
	leaq	43888(%r12,%rax), %rcx
	movl	%ebx, (%rsp)
	movl	%ebp, %r8d
	callq	BZ2_hbCreateDecodeTables
	pxor	%xmm5, %xmm5
	movl	%ebp, 64012(%r12,%r15,4)
	incq	%r15
	addq	$258, %r14              # imm = 0x102
	movq	472(%rsp), %rbp         # 8-byte Reload
	cmpl	%ebp, %r15d
	jne	.LBB62_247
# BB#277:
	movq	%rbx, 416(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	120(%rsp), %r15         # 8-byte Reload
	movl	400(%rsp), %r13d        # 4-byte Reload
.LBB62_278:                             # %for.end1742
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movq	%rbp, 472(%rsp)         # 8-byte Spill
	movl	3192(%r12), %ebx
	leaq	68(%r12), %rdi
	imull	$100000, 40(%r12), %eax # imm = 0x186A0
	movq	%rax, 336(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movl	$1024, %edx             # imm = 0x400
	callq	memset
	incl	%ebx
	movq	%rbx, 352(%rsp)         # 8-byte Spill
	leaq	7804(%r12), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	movl	$15, %edx
	movdqa	.LCPI62_1(%rip), %xmm8  # xmm8 = [4294967284,4294967283,4294967282,4294967281]
	movdqa	.LCPI62_2(%rip), %xmm9  # xmm9 = [4294967288,4294967287,4294967286,4294967285]
	movdqa	.LCPI62_3(%rip), %xmm10 # xmm10 = [0,4294967295,4294967294,4294967293]
	movdqa	.LCPI62_4(%rip), %xmm3  # xmm3 = [4294967292,4294967291,4294967290,4294967289]
	movdqa	.LCPI62_5(%rip), %xmm4  # xmm4 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pxor	%xmm5, %xmm5
	movl	$4294967281, %ebx       # imm = 0xFFFFFFF1
	.align	16, 0x90
.LBB62_279:                             # %for.cond1763.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_280 Depth 2
	movq	%rdx, %rsi
	shlq	$4, %rsi
	movd	%esi, %xmm6
	pshufd	$0, %xmm6, %xmm6        # xmm6 = xmm6[0,0,0,0]
	movl	$15, %esi
	movq	%rax, %rdi
	movl	$16, %ebp
	.align	16, 0x90
.LBB62_280:                             # %vector.body7043
                                        #   Parent Loop BB62_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	%esi, %xmm7
	pshufd	$0, %xmm7, %xmm7        # xmm7 = xmm7[0,0,0,0]
	paddd	%xmm6, %xmm7
	movdqa	%xmm7, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm7, %xmm1
	paddd	%xmm9, %xmm1
	movdqa	%xmm7, %xmm2
	paddd	%xmm10, %xmm2
	paddd	%xmm3, %xmm7
	pand	%xmm4, %xmm7
	pand	%xmm4, %xmm2
	packuswb	%xmm7, %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm4, %xmm0
	packuswb	%xmm0, %xmm1
	packuswb	%xmm1, %xmm2
	movdqa	%xmm2, %xmm0
	punpcklbw	%xmm5, %xmm0    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3],xmm0[4],xmm5[4],xmm0[5],xmm5[5],xmm0[6],xmm5[6],xmm0[7],xmm5[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm5, %xmm2    # xmm2 = xmm2[8],xmm5[8],xmm2[9],xmm5[9],xmm2[10],xmm5[10],xmm2[11],xmm5[11],xmm2[12],xmm5[12],xmm2[13],xmm5[13],xmm2[14],xmm5[14],xmm2[15],xmm5[15]
	pshufd	$78, %xmm2, %xmm1       # xmm1 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, (%rdi)
	addl	$-16, %esi
	addq	$-16, %rdi
	addq	$-16, %rbp
	jne	.LBB62_280
# BB#281:                               # %for.end1775
                                        #   in Loop: Header=BB62_279 Depth=1
	leal	(%rcx,%rbx), %esi
	movl	%esi, 7820(%r12,%rdx,4)
	addq	$-16, %rcx
	addq	$-16, %rax
	testq	%rdx, %rdx
	leaq	-1(%rdx), %rdx
	jg	.LBB62_279
# BB#282:                               # %if.then1784
	testl	%r13d, %r13d
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	128(%rsp), %r11         # 8-byte Reload
	jle	.LBB62_283
# BB#284:                               # %if.end1789
	movzbl	7884(%r12), %eax
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movl	64012(%r12,%rax,4), %edx
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	imulq	$1032, %rax, %rax       # imm = 0x408
	leaq	45436(%r12,%rax), %rdi
	leaq	57820(%r12,%rax), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	leaq	51628(%r12,%rax), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movl	$256, %eax              # imm = 0x100
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movl	$49, %eax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movl	%r13d, %eax
	movq	%rax, 424(%rsp)         # 8-byte Spill
.LBB62_285:                             # %sw.bb1811
	movl	$36, 8(%r12)
	movl	36(%r12), %edx
	movq	448(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_286
.LBB62_293:                             # %while.body1814.backedge
                                        #   in Loop: Header=BB62_286 Depth=1
	movl	36(%r12), %edx
.LBB62_286:                             # %sw.bb1811
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %edx
	jge	.LBB62_287
# BB#290:                               # %if.end1830
                                        #   in Loop: Header=BB62_286 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#291:                               # %if.end1836
                                        #   in Loop: Header=BB62_286 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_293
# BB#292:                               # %if.then1859
                                        #   in Loop: Header=BB62_286 Depth=1
	incl	16(%rax)
	jmp	.LBB62_293
.LBB62_287:                             # %if.then1818
	movl	32(%r12), %eax
	subl	%ebp, %edx
	movb	%dl, %cl
	shrl	%cl, %eax
	movl	$1, %esi
	movb	%bpl, %cl
	shll	%cl, %esi
	decl	%esi
	andl	%eax, %esi
	movq	%rsi, 464(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	movq	312(%rsp), %rcx         # 8-byte Reload
	jmp	.LBB62_288
.LBB62_283:
	movl	$-4, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 432(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movl	%r13d, %ecx
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	jmp	.LBB62_520
.LBB62_239:                             # %for.cond1538
	movq	416(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB62_271
# BB#240:
	movq	%rbp, 472(%rsp)         # 8-byte Spill
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	jmp	.LBB62_241
.LBB62_271:                             # %for.inc1679
	movq	400(%rsp), %rdx         # 8-byte Reload
	incl	%edx
	movq	424(%rsp), %rsi         # 8-byte Reload
	movl	%esi, %r13d
	jmp	.LBB62_235
.LBB62_241:                             # %while.body1543
	movq	%rax, 440(%rsp)         # 8-byte Spill
	leal	-1(%rax), %ecx
	movl	$-4, %eax
	cmpl	$19, %ecx
	ja	.LBB62_521
.LBB62_242:                             # %sw.bb1551
	movl	$34, 8(%r12)
	leaq	36(%r12), %rcx
	movl	36(%r12), %eax
	testl	%eax, %eax
	movq	312(%rsp), %rbx         # 8-byte Reload
	jg	.LBB62_243
.LBB62_254:                             # %if.end1569
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rdx
	xorl	%eax, %eax
	cmpl	$0, 8(%rdx)
	je	.LBB62_255
# BB#256:                               # %if.end1575
                                        #   in Loop: Header=BB62_254 Depth=1
	movq	%rdi, %rbp
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rdx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rdx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_258
# BB#257:                               # %if.then1598
                                        #   in Loop: Header=BB62_254 Depth=1
	incl	16(%rax)
.LBB62_258:                             # %while.body1554.backedge
                                        #   in Loop: Header=BB62_254 Depth=1
	movl	(%rcx), %eax
	testl	%eax, %eax
	movq	%rbp, %rdi
	jle	.LBB62_254
.LBB62_243:                             # %if.then1558
	movl	32(%r12), %edx
	decl	%eax
	movl	%eax, 36(%r12)
	btl	%eax, %edx
	jae	.LBB62_244
.LBB62_260:                             # %sw.bb1609
	movq	%rdi, %rbp
	movl	$35, 8(%r12)
	jmp	.LBB62_261
.LBB62_269:                             # %while.body1612.backedge
                                        #   in Loop: Header=BB62_261 Depth=1
	movl	(%rcx), %eax
.LBB62_261:                             # %sw.bb1609
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jg	.LBB62_262
# BB#265:                               # %if.end1627
                                        #   in Loop: Header=BB62_261 Depth=1
	movq	(%r12), %rdx
	xorl	%eax, %eax
	cmpl	$0, 8(%rdx)
	je	.LBB62_266
# BB#267:                               # %if.end1633
                                        #   in Loop: Header=BB62_261 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rdx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rdx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_269
# BB#268:                               # %if.then1656
                                        #   in Loop: Header=BB62_261 Depth=1
	incl	16(%rax)
	jmp	.LBB62_269
.LBB62_262:                             # %if.then1616
	movl	32(%r12), %ecx
	decl	%eax
	movl	%eax, 36(%r12)
	btl	%eax, %ecx
	jae	.LBB62_263
# BB#270:                               # %if.else1667
	movq	440(%rsp), %rax         # 8-byte Reload
	decl	%eax
	jmp	.LBB62_264
.LBB62_244:                             # %while.end1670
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	movq	400(%rsp), %rax         # 8-byte Reload
	cltq
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%r12, %rax
	movq	440(%rsp), %rdx         # 8-byte Reload
	movb	%dl, 43888(%rcx,%rax)
	movq	%rdx, %rax
	incl	%ecx
	movq	472(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_239
.LBB62_263:                             # %if.then1665
	movq	440(%rsp), %rax         # 8-byte Reload
	incl	%eax
.LBB62_264:                             # %while.body1543
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	jmp	.LBB62_241
.LBB62_266:
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	jmp	.LBB62_521
.LBB62_255:
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_288:                             # %while.body1866
	movl	$-4, %eax
	cmpl	$20, %ebp
	jg	.LBB62_289
# BB#294:                               # %if.end1870
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	464(%rsp), %rbx         # 8-byte Reload
	cmpl	(%rdi,%rcx,4), %ebx
	jle	.LBB62_304
# BB#295:                               # %if.end1876
	incl	%ebp
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	leaq	36(%r12), %rcx
.LBB62_296:                             # %sw.bb1878
	movq	%rdi, %rbp
	movq	312(%rsp), %rbx         # 8-byte Reload
	movl	$37, 8(%r12)
	jmp	.LBB62_297
	.align	16, 0x90
.LBB62_303:                             # %while.body1881.backedge
                                        #   in Loop: Header=BB62_297 Depth=1
	movl	(%rcx), %edx
.LBB62_297:                             # %sw.bb1878
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jg	.LBB62_298
# BB#299:                               # %if.end1895
                                        #   in Loop: Header=BB62_297 Depth=1
	movq	(%r12), %rdx
	xorl	%eax, %eax
	cmpl	$0, 8(%rdx)
	je	.LBB62_300
# BB#301:                               # %if.end1901
                                        #   in Loop: Header=BB62_297 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rdx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rdx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_303
# BB#302:                               # %if.then1924
                                        #   in Loop: Header=BB62_297 Depth=1
	incl	16(%rax)
	jmp	.LBB62_303
.LBB62_298:                             # %if.then1885
	movl	32(%r12), %eax
	decl	%edx
	movb	%dl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	movq	464(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,2), %ecx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movq	%rbx, %rcx
	movq	%rbp, %rdi
	movq	448(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_288
.LBB62_300:
	movq	%rbp, %rdi
	jmp	.LBB62_521
.LBB62_289:
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_304:                             # %while.end1932
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rdx         # 8-byte Reload
	movslq	(%rdx,%rcx,4), %rdx
	movslq	%ebx, %rcx
	subq	%rdx, %rcx
	cmpl	$257, %ecx              # imm = 0x101
	ja	.LBB62_521
# BB#305:                               # %if.end1945
	movq	288(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rcx,4), %ebp
.LBB62_307:                             # %while.body1952
	movq	352(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebp
	jne	.LBB62_308
# BB#403:                               # %while.end2572
	movl	56(%r12), %ecx
	movl	$-4, %eax
	testl	%ecx, %ecx
	js	.LBB62_404
# BB#406:                               # %while.end2572
	movq	432(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB62_404
# BB#407:                               # %if.end2581
	leaq	1096(%r12), %r13
	movl	$0, 1096(%r12)
	movq	$-1024, %rcx            # imm = 0xFFFFFFFFFFFFFC00
.LBB62_408:                             # %vector.body7062
                                        # =>This Inner Loop Header: Depth=1
	movdqu	1092(%r12,%rcx), %xmm0
	movdqu	%xmm0, 2124(%r12,%rcx)
	addq	$16, %rcx
	jne	.LBB62_408
# BB#409:                               # %for.body2600.preheader
	movl	1096(%r12), %ecx
	xorl	%edx, %edx
.LBB62_410:                             # %for.body2600
                                        # =>This Inner Loop Header: Depth=1
	addl	1100(%r12,%rdx,4), %ecx
	movl	%ecx, 1100(%r12,%rdx,4)
	incq	%rdx
	cmpq	$256, %rdx              # imm = 0x100
	jne	.LBB62_410
# BB#411:                               # %for.body2615.preheader
	xorl	%edx, %edx
	movq	432(%rsp), %rsi         # 8-byte Reload
.LBB62_412:                             # %for.body2615
                                        # =>This Inner Loop Header: Depth=1
	movl	1096(%r12,%rdx,4), %ecx
	testl	%ecx, %ecx
	js	.LBB62_518
# BB#413:                               # %for.body2615
                                        #   in Loop: Header=BB62_412 Depth=1
	cmpl	%esi, %ecx
	jg	.LBB62_518
# BB#414:                               # %for.inc2629
                                        #   in Loop: Header=BB62_412 Depth=1
	incq	%rdx
	cmpq	$257, %rdx              # imm = 0x101
	jl	.LBB62_412
# BB#415:                               # %for.end2631
	movq	%r10, 32(%rsp)          # 8-byte Spill
	movl	$0, 16(%r12)
	movb	$0, 12(%r12)
	movl	$-1, 3184(%r12)
	movl	$2, 8(%r12)
	cmpl	$2, 52(%r12)
	jge	.LBB62_416
.LBB62_417:                             # %if.end2638
	cmpb	$0, 44(%r12)
	movq	280(%rsp), %rcx         # 8-byte Reload
	je	.LBB62_426
# BB#418:                               # %vector.body7076.preheader
	movq	$-1024, %rax            # imm = 0xFFFFFFFFFFFFFC00
.LBB62_419:                             # %vector.body7076
                                        # =>This Inner Loop Header: Depth=1
	movdqu	2120(%r12,%rax), %xmm0
	movdqu	%xmm0, 3148(%r12,%rax)
	addq	$16, %rax
	jne	.LBB62_419
# BB#420:                               # %for.body2645.preheader
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
.LBB62_421:                             # %for.body2645
                                        # =>This Inner Loop Header: Depth=1
	movl	2120(%r12,%rax,4), %ecx
	movl	%ecx, 3148(%r12,%rax,4)
	incq	%rax
	cmpq	$1, %rax
	jne	.LBB62_421
# BB#422:                               # %for.cond2654.preheader
	movq	432(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB62_434
# BB#423:                               # %for.body2657.preheader
	movq	432(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r8d
	xorl	%ecx, %ecx
.LBB62_424:                             # %for.body2657
                                        # =>This Inner Loop Header: Depth=1
	movq	3160(%r12), %rax
	movzbl	(%rax,%rcx,2), %edx
	movw	2124(%r12,%rdx,4), %si
	movw	%si, (%rax,%rcx,2)
	movl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	movq	3168(%r12), %rdi
	movzbl	(%rdi,%rsi), %ebp
	testb	$1, %cl
	jne	.LBB62_432
# BB#425:                               # %if.then2673
                                        #   in Loop: Header=BB62_424 Depth=1
	andl	$240, %ebp
	movl	2124(%r12,%rdx,4), %eax
	sarl	$16, %eax
	orl	%ebp, %eax
	jmp	.LBB62_433
.LBB62_432:                             # %if.else2690
                                        #   in Loop: Header=BB62_424 Depth=1
	andl	$15, %ebp
	movl	2124(%r12,%rdx,4), %eax
	sarl	$16, %eax
	shll	$4, %eax
	orl	%ebp, %eax
.LBB62_433:                             # %if.end2708
                                        #   in Loop: Header=BB62_424 Depth=1
	movb	%al, (%rdi,%rsi)
	incl	2124(%r12,%rdx,4)
	incq	%rcx
	cmpl	%ecx, %r8d
	jne	.LBB62_424
.LBB62_434:                             # %for.end2715
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movslq	56(%r12), %rax
	movq	3160(%r12), %rdx
	movq	3168(%r12), %rsi
	movzwl	(%rdx,%rax,2), %edi
	movl	%eax, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ebp
	leal	(,%rax,4), %ecx
	andb	$4, %cl
	shrl	%cl, %ebp
	andl	$15, %ebp
	shll	$16, %ebp
	orl	%edi, %ebp
	jmp	.LBB62_435
.LBB62_439:                             # %if.end2787.do.body2732_crit_edge
                                        #   in Loop: Header=BB62_435 Depth=1
	movq	3160(%r12), %rdx
	movq	3168(%r12), %rsi
	movl	%edi, %eax
.LBB62_435:                             # %do.body2732
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ecx
	movslq	%ecx, %rbx
	movq	%rcx, %r8
	movzwl	(%rdx,%rbx,2), %r10d
	movl	%ebx, %ecx
	sarl	%ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ebp
	leal	(,%rbx,4), %ecx
	andb	$4, %cl
	shrl	%cl, %ebp
	andl	$15, %ebp
	shll	$16, %ebp
	movw	%ax, (%rdx,%rbx,2)
	movq	3168(%r12), %rcx
	movzbl	(%rcx,%rdi), %edx
	testb	$1, %bl
	jne	.LBB62_437
# BB#436:                               # %if.then2758
                                        #   in Loop: Header=BB62_435 Depth=1
	andl	$240, %edx
	sarl	$16, %eax
	orl	%edx, %eax
	jmp	.LBB62_438
.LBB62_437:                             # %if.else2772
                                        #   in Loop: Header=BB62_435 Depth=1
	andl	$15, %edx
	sarl	$16, %eax
	shll	$4, %eax
	orl	%edx, %eax
.LBB62_438:                             # %if.end2787
                                        #   in Loop: Header=BB62_435 Depth=1
	orl	%r10d, %ebp
	movb	%al, (%rcx,%rdi)
	movq	%r8, %rdi
	cmpl	56(%r12), %edi
	jne	.LBB62_439
# BB#440:                               # %do.end2792
	movq	%r13, %rsi
	movq	%rbp, 456(%rsp)         # 8-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r11, %r13
	movq	%r9, %r15
	movl	%edi, 60(%r12)
	movl	$0, 1092(%r12)
	cmpb	$0, 20(%r12)
	je	.LBB62_445
# BB#441:                               # %if.then2796
	movq	$0, 24(%r12)
	movq	%rdi, 304(%rsp)         # 8-byte Spill
	callq	BZ2_indexIntoF
	movl	%eax, 64(%r12)
	movl	60(%r12), %edx
	movq	3160(%r12), %rcx
	movzwl	(%rcx,%rdx,2), %esi
	leal	(,%rdx,4), %ecx
	shrl	%edx
	movq	3168(%r12), %rdi
	movzbl	(%rdi,%rdx), %edx
	andb	$4, %cl
	shrl	%cl, %edx
	andl	$15, %edx
	shll	$16, %edx
	orl	%esi, %edx
	movl	%edx, 60(%r12)
	incl	1092(%r12)
	movq	24(%r12), %rcx
	testl	%ecx, %ecx
	movq	384(%rsp), %rdi         # 8-byte Reload
	jne	.LBB62_443
# BB#442:                               # %if.then2824
	movq	%rcx, %rdx
	shrq	$32, %rdx
	sarq	$32, %rcx
	movl	BZ2_rNums(,%rcx,4), %ecx
	movl	%ecx, 24(%r12)
	incl	%edx
	xorl	%esi, %esi
	cmpl	$512, %edx              # imm = 0x200
	cmovnel	%edx, %esi
	movl	%esi, 28(%r12)
.LBB62_443:                             # %if.end2837
	decl	%ecx
	movl	%ecx, 24(%r12)
	cmpl	$1, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	xorl	%eax, %ecx
	movl	%ecx, 64(%r12)
	xorl	%eax, %eax
	movq	%rdi, 352(%rsp)         # 8-byte Spill
	jmp	.LBB62_444
.LBB62_308:                             # %if.end1956
	movl	%ebp, %eax
	orl	$1, %eax
	cmpl	$1, %eax
	jne	.LBB62_350
# BB#309:
	movl	$-1, %eax
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movl	$1, %eax
	jmp	.LBB62_310
.LBB62_404:
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	jmp	.LBB62_405
.LBB62_350:                             # %if.else2197
	movl	$-4, %eax
	movq	336(%rsp), %rcx         # 8-byte Reload
	movq	432(%rsp), %rdx         # 8-byte Reload
	cmpl	%ecx, %edx
	jge	.LBB62_351
# BB#352:                               # %if.end2201
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r8, 136(%rsp)          # 8-byte Spill
	leal	-1(%rbp), %edx
	cmpl	$15, %edx
	ja	.LBB62_361
# BB#353:                               # %if.then2215
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movslq	7820(%r12), %rsi
	leal	(%rsi,%rdx), %ecx
	movb	3724(%r12,%rcx), %r8b
	cmpl	$4, %edx
	jb	.LBB62_357
# BB#354:                               # %while.body2225.preheader
	movq	%r15, %r14
	leal	3(%rbp), %edx
	movl	%ebp, %edi
	movq	%rbp, %r13
.LBB62_355:                             # %while.body2225
                                        # =>This Inner Loop Header: Depth=1
	leal	-2(%rsi,%rdi), %ecx
	movslq	%ecx, %rcx
	movb	3724(%r12,%rcx), %bl
	leal	-1(%rsi,%rdi), %ebp
	movslq	%ebp, %rbp
	movb	%bl, 3724(%r12,%rbp)
	leal	-3(%rsi,%rdi), %ebp
	movslq	%ebp, %rbp
	movb	3724(%r12,%rbp), %bl
	movb	%bl, 3724(%r12,%rcx)
	leal	-4(%rsi,%rdi), %ecx
	movslq	%ecx, %rcx
	movb	3724(%r12,%rcx), %bl
	movb	%bl, 3724(%r12,%rbp)
	leal	-5(%rsi,%rdi), %ebp
	movslq	%ebp, %rbp
	movb	3724(%r12,%rbp), %bl
	movb	%bl, 3724(%r12,%rcx)
	leal	-4(%rdi), %ecx
	addl	$-5, %edi
	cmpl	$3, %edi
	movl	%ecx, %edi
	ja	.LBB62_355
# BB#356:                               # %while.cond2261.preheader.loopexit
	andl	$3, %edx
	movq	%r14, %r15
	movq	%r13, %rbp
.LBB62_357:                             # %while.cond2261.preheader
	testl	%edx, %edx
	je	.LBB62_360
# BB#358:                               # %while.body2264.preheader
	movl	%edx, %edi
	negl	%edi
	leal	(%rsi,%rdx), %ecx
.LBB62_359:                             # %while.body2264
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	leal	-1(%rcx), %ecx
	movb	3724(%r12,%rcx), %bl
	movb	%bl, 3724(%r12,%rdx)
	incl	%edi
	jne	.LBB62_359
.LBB62_360:                             # %while.end2275
	movb	%r8b, 3724(%r12,%rsi)
	jmp	.LBB62_376
.LBB62_518:                             # %save_state_and_return.loopexit5247
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movq	%rdx, 304(%rsp)         # 8-byte Spill
.LBB62_405:                             # %save_state_and_return
	movl	%ebp, %ecx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_351:
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_361:                             # %if.else2279
	movq	%rbp, %r14
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movl	%edx, %esi
	shrl	$4, %esi
	movl	7820(%r12,%rsi,4), %edi
	movl	%edx, %ebp
	andl	$15, %ebp
	addl	%edi, %ebp
	movl	%edx, %ecx
	andl	$15, %ecx
	movslq	%ebp, %rbp
	movb	3724(%r12,%rbp), %r8b
	je	.LBB62_362
# BB#363:                               # %while.body2293.preheader
	addl	%edi, %ecx
	movslq	%ecx, %rbp
	leal	-1(%r14), %ecx
	andl	$15, %ecx
	leal	-1(%rdi,%rcx), %ecx
	movslq	%ecx, %rcx
.LBB62_364:                             # %while.body2293
                                        # =>This Inner Loop Header: Depth=1
	movb	3724(%r12,%rcx), %bl
	movb	%bl, 3724(%r12,%rbp)
	movl	7820(%r12,%rsi,4), %edi
	decq	%rbp
	decq	%rcx
	cmpl	%edi, %ebp
	jg	.LBB62_364
# BB#365:                               # %while.end2302
	incl	%edi
	movl	%edi, 7820(%r12,%rsi,4)
	testl	%esi, %esi
	jne	.LBB62_366
	jmp	.LBB62_369
.LBB62_426:                             # %for.cond2873.preheader
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	432(%rsp), %rbx         # 8-byte Reload
	testl	%ebx, %ebx
	movq	312(%rsp), %rsi         # 8-byte Reload
	jle	.LBB62_430
# BB#427:                               # %for.body2876.preheader
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rdi, %r10
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB62_428:                             # %for.body2876
                                        # =>This Inner Loop Header: Depth=1
	movq	3152(%r12), %rsi
	movzbl	(%rsi,%rdx,4), %edi
	movslq	1096(%r12,%rdi,4), %rbp
	orl	%ecx, (%rsi,%rbp,4)
	incl	1096(%r12,%rdi,4)
	incq	%rdx
	addl	$256, %ecx              # imm = 0x100
	cmpl	%edx, %eax
	jne	.LBB62_428
# BB#429:
	movl	%ebx, %eax
	movq	312(%rsp), %rsi         # 8-byte Reload
	movq	280(%rsp), %rcx         # 8-byte Reload
	movq	%r10, %rdi
	movq	384(%rsp), %rbp         # 8-byte Reload
.LBB62_430:                             # %for.end2896
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movslq	56(%r12), %rcx
	movq	3152(%r12), %rax
	movl	(%rax,%rcx,4), %ecx
	shrl	$8, %ecx
	movl	%ecx, 60(%r12)
	movl	$0, 1092(%r12)
	cmpb	$0, 20(%r12)
	je	.LBB62_446
# BB#431:                               # %if.end2939
	movq	$0, 24(%r12)
	movl	%ecx, %ecx
	movl	(%rax,%rcx,4), %eax
	movzbl	%al, %ecx
	movl	%ecx, 64(%r12)
	shrl	$8, %eax
	movl	%eax, 60(%r12)
	movl	$1, 1092(%r12)
	movl	BZ2_rNums(%rip), %eax
	movl	$1, 28(%r12)
	decl	%eax
	movl	%eax, 24(%r12)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	xorl	%ecx, %eax
	movl	%eax, 64(%r12)
	jmp	.LBB62_447
.LBB62_445:                             # %if.else2844
	movq	%rdi, 304(%rsp)         # 8-byte Spill
	callq	BZ2_indexIntoF
	movl	%eax, 64(%r12)
	movl	60(%r12), %eax
	movq	3160(%r12), %rcx
	movzwl	(%rcx,%rax,2), %edx
	leal	(,%rax,4), %ecx
	shrl	%eax
	movq	3168(%r12), %rsi
	movzbl	(%rsi,%rax), %eax
	andb	$4, %cl
	shrl	%cl, %eax
	andl	$15, %eax
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, 60(%r12)
	incl	1092(%r12)
	xorl	%eax, %eax
	movq	384(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 352(%rsp)         # 8-byte Spill
.LBB62_444:                             # %save_state_and_return
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	%r15, %r9
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	%r13, %r11
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	120(%rsp), %r15         # 8-byte Reload
	jmp	.LBB62_520
.LBB62_362:                             # %while.end2302.thread
	incl	%edi
	movl	%edi, 7820(%r12,%rsi,4)
.LBB62_366:                             # %while.body2310.preheader
	movslq	%edi, %rcx
	leaq	-1(%rcx), %rdi
	movl	%edi, 7820(%r12,%rsi,4)
	movslq	7816(%r12,%rsi,4), %rsi
	movb	3739(%rsi,%r12), %bl
	movb	%bl, 3723(%r12,%rcx)
	cmpl	$32, %edx
	jb	.LBB62_369
# BB#367:                               # %while.body2310.while.body2310_crit_edge.preheader
	leal	-1(%r14), %edx
	shrl	$4, %edx
.LBB62_368:                             # %while.body2310.while.body2310_crit_edge
                                        # =>This Inner Loop Header: Depth=1
	movslq	7816(%r12,%rdx,4), %rcx
	leaq	-1(%rcx), %rsi
	movl	%esi, 7816(%r12,%rdx,4)
	movslq	7812(%r12,%rdx,4), %rsi
	movb	3739(%rsi,%r12), %bl
	movb	%bl, 3723(%r12,%rcx)
	decq	%rdx
	cmpq	$1, %rdx
	jg	.LBB62_368
.LBB62_369:                             # %while.end2331
	movslq	7820(%r12), %rcx
	leaq	-1(%rcx), %rdx
	movl	%edx, 7820(%r12)
	movb	%r8b, 3723(%r12,%rcx)
	cmpl	$0, 7820(%r12)
	je	.LBB62_371
# BB#370:
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	%r14, %rbp
	jmp	.LBB62_376
.LBB62_371:                             # %for.cond2349.preheader.preheader
	movq	%r9, %r13
	leaq	7819(%r12), %rdx
	movl	$4095, %esi             # imm = 0xFFF
	movl	$15, %edi
	movl	$4294967281, %r9d       # imm = 0xFFFFFFF1
.LBB62_372:                             # %for.cond2349.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_373 Depth 2
	movl	$16, %ebp
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB62_373:                             # %for.body2352
                                        #   Parent Loop BB62_372 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	7820(%r12,%rdi,4), %ebx
	leal	-1(%rbp,%rbx), %ebx
	movslq	%ebx, %rbx
	movb	3724(%r12,%rbx), %bl
	movb	%bl, (%rcx)
	decq	%rcx
	decl	%ebp
	jg	.LBB62_373
# BB#374:                               # %for.end2366
                                        #   in Loop: Header=BB62_372 Depth=1
	leal	(%rsi,%r9), %ecx
	movl	%ecx, 7820(%r12,%rdi,4)
	addq	$-16, %rsi
	addq	$-16, %rdx
	testq	%rdi, %rdi
	leaq	-1(%rdi), %rdi
	jg	.LBB62_372
# BB#375:
	movq	120(%rsp), %r15         # 8-byte Reload
	movq	%r14, %rbp
	movq	%r13, %r9
.LBB62_376:                             # %if.end2375
	movzbl	%r8b, %ecx
	movzbl	3468(%r12,%rcx), %edx
	incl	68(%r12,%rdx,4)
	cmpb	$0, 44(%r12)
	movzbl	3468(%r12,%rcx), %ecx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	432(%rsp), %rbx         # 8-byte Reload
	je	.LBB62_378
# BB#377:                               # %if.then2385
	movslq	%ebx, %rdx
	movq	3160(%r12), %rsi
	movw	%cx, (%rsi,%rdx,2)
	jmp	.LBB62_379
.LBB62_378:                             # %if.else2393
	movzwl	%cx, %ecx
	movslq	%ebx, %rdx
	movq	3152(%r12), %rsi
	movl	%ecx, (%rsi,%rdx,4)
.LBB62_379:                             # %if.end2401
	movq	136(%rsp), %r8          # 8-byte Reload
	incl	%ebx
	movq	392(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	movq	144(%rsp), %r14         # 8-byte Reload
	je	.LBB62_381
# BB#380:
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	jmp	.LBB62_384
.LBB62_381:                             # %if.then2405
	movq	368(%rsp), %rcx         # 8-byte Reload
	movslq	%ecx, %rcx
	incq	%rcx
	movq	424(%rsp), %rdx         # 8-byte Reload
	cmpl	%edx, %ecx
	jge	.LBB62_382
# BB#383:                               # %if.end2410
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movzbl	7884(%r12,%rcx), %ecx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	movl	64012(%r12,%rcx,4), %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	imulq	$1032, %rcx, %rax       # imm = 0x408
	leaq	45436(%r12,%rax), %rdi
	leaq	57820(%r12,%rax), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	leaq	51628(%r12,%rax), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movl	$50, %ecx
.LBB62_384:                             # %if.end2430
	decl	%ecx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movq	%rax, 448(%rsp)         # 8-byte Spill
.LBB62_385:                             # %sw.bb2432
	movl	$40, 8(%r12)
	movl	36(%r12), %edx
	movq	448(%rsp), %rbp         # 8-byte Reload
	cmpl	%ebp, %edx
	movq	312(%rsp), %rbx         # 8-byte Reload
	jge	.LBB62_386
.LBB62_389:                             # %if.end2451
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#390:                               # %if.end2457
                                        #   in Loop: Header=BB62_389 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_392
# BB#391:                               # %if.then2480
                                        #   in Loop: Header=BB62_389 Depth=1
	incl	16(%rax)
.LBB62_392:                             # %while.body2435.backedge
                                        #   in Loop: Header=BB62_389 Depth=1
	movl	36(%r12), %edx
	cmpl	%ebp, %edx
	jl	.LBB62_389
.LBB62_386:                             # %if.then2439
	movl	32(%r12), %eax
	subl	%ebp, %edx
	movb	%dl, %cl
	shrl	%cl, %eax
	movl	$1, %esi
	movb	%bpl, %cl
	shll	%cl, %esi
	decl	%esi
	andl	%eax, %esi
	movq	%rsi, 464(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	jmp	.LBB62_387
.LBB62_382:
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_446:                             # %if.else2948
	movl	%ecx, %ecx
	movl	(%rax,%rcx,4), %eax
	movzbl	%al, %ecx
	movl	%ecx, 64(%r12)
	shrl	$8, %eax
	movl	%eax, 60(%r12)
	movl	$1, 1092(%r12)
.LBB62_447:                             # %save_state_and_return
	xorl	%eax, %eax
	movl	%ebp, %ecx
	movq	%rcx, 352(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	32(%rsp), %r10          # 8-byte Reload
	jmp	.LBB62_521
.LBB62_416:                             # %if.then2636
	movq	stderr(%rip), %rcx
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movl	$.L.str.1.81, %edi
	movl	$6, %esi
	movl	$1, %edx
	movq	%r15, 120(%rsp)         # 8-byte Spill
	movq	%r9, %r15
	movq	%r8, 136(%rsp)          # 8-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movq	%r11, %r14
	callq	fwrite
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %r11
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	136(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r9
	movq	120(%rsp), %r15         # 8-byte Reload
	jmp	.LBB62_417
.LBB62_306:                             # %while.body1952.loopexit18
	movq	%rbp, 432(%rsp)         # 8-byte Spill
	movq	%rdi, 376(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	464(%rsp), %rbx         # 8-byte Reload
	movq	384(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_307
.LBB62_310:                             # %do.body
	movq	392(%rsp), %rdx         # 8-byte Reload
	cmpl	$1, %ebp
	je	.LBB62_313
# BB#311:                               # %do.body
	testl	%ebp, %ebp
	jne	.LBB62_315
# BB#312:                               # %if.then1965
	movq	376(%rsp), %rcx         # 8-byte Reload
	addl	%eax, %ecx
	jmp	.LBB62_314
.LBB62_313:                             # %if.then1971
	movq	376(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax,2), %ecx
.LBB62_314:                             # %if.end1975
	movq	%rcx, 376(%rsp)         # 8-byte Spill
.LBB62_315:                             # %if.end1975
	addl	%eax, %eax
	testl	%edx, %edx
	je	.LBB62_317
# BB#316:
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	jmp	.LBB62_320
.LBB62_317:                             # %if.then1979
	movq	%rax, 344(%rsp)         # 8-byte Spill
	movq	368(%rsp), %rax         # 8-byte Reload
	cltq
	incq	%rax
	movq	424(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB62_318
# BB#319:                               # %if.end1984
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movzbl	7884(%r12,%rax), %ecx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	movl	64012(%r12,%rcx,4), %eax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	imulq	$1032, %rcx, %rax       # imm = 0x408
	leaq	45436(%r12,%rax), %rdi
	leaq	57820(%r12,%rax), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	leaq	51628(%r12,%rax), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movl	$50, %edx
.LBB62_320:                             # %if.end2004
	decl	%edx
	movq	%rdx, 392(%rsp)         # 8-byte Spill
	movq	360(%rsp), %rax         # 8-byte Reload
	movq	%rax, 448(%rsp)         # 8-byte Spill
.LBB62_321:                             # %sw.bb2006
	movl	$38, 8(%r12)
	movl	36(%r12), %edx
	movq	448(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_322
.LBB62_330:                             # %while.body2009.backedge
                                        #   in Loop: Header=BB62_322 Depth=1
	movl	36(%r12), %edx
.LBB62_322:                             # %sw.bb2006
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %edx
	jge	.LBB62_323
# BB#327:                               # %if.end2025
                                        #   in Loop: Header=BB62_322 Depth=1
	movq	(%r12), %rcx
	xorl	%eax, %eax
	cmpl	$0, 8(%rcx)
	je	.LBB62_521
# BB#328:                               # %if.end2031
                                        #   in Loop: Header=BB62_322 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %edx
	shll	$8, %edx
	movq	(%rcx), %rsi
	movzbl	(%rsi), %esi
	orl	%edx, %esi
	movl	%esi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rcx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_330
# BB#329:                               # %if.then2054
                                        #   in Loop: Header=BB62_322 Depth=1
	incl	16(%rax)
	jmp	.LBB62_330
.LBB62_323:                             # %if.then2013
	movl	32(%r12), %eax
	subl	%ebp, %edx
	movb	%dl, %cl
	shrl	%cl, %eax
	movl	$1, %esi
	movb	%bpl, %cl
	shll	%cl, %esi
	decl	%esi
	andl	%eax, %esi
	movq	%rsi, 464(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	movq	312(%rsp), %rcx         # 8-byte Reload
.LBB62_324:                             # %while.body2061
	movl	$-4, %eax
	cmpl	$20, %ebp
	jg	.LBB62_289
# BB#325:                               # %if.end2065
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	464(%rsp), %rbx         # 8-byte Reload
	cmpl	(%rdi,%rcx,4), %ebx
	jle	.LBB62_336
# BB#326:                               # %if.end2071
	incl	%ebp
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	leaq	36(%r12), %rcx
	jmp	.LBB62_18
.LBB62_336:                             # %while.end2127
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rdx         # 8-byte Reload
	movslq	(%rdx,%rcx,4), %rdx
	movslq	%ebx, %rcx
	subq	%rdx, %rcx
	cmpl	$257, %ecx              # imm = 0x101
	ja	.LBB62_521
# BB#337:                               # %if.end2140
	movq	288(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx,%rcx,4), %ebp
	movl	%ebp, %ecx
	orl	$1, %ecx
	cmpl	$1, %ecx
	jne	.LBB62_339
# BB#338:
	movq	344(%rsp), %rax         # 8-byte Reload
	jmp	.LBB62_310
.LBB62_318:
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rbx, 464(%rsp)         # 8-byte Spill
	movl	$-4, %eax
	xorl	%ecx, %ecx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_339:                             # %do.end
	movq	376(%rsp), %rsi         # 8-byte Reload
	leal	1(%rsi), %ecx
	movslq	7820(%r12), %rdx
	movzbl	3724(%r12,%rdx), %edx
	movzbl	3468(%r12,%rdx), %edx
	addl	%ecx, 68(%r12,%rdx,4)
	cmpb	$0, 44(%r12)
	je	.LBB62_342
# BB#340:                               # %while.cond2165.preheader
	testl	%esi, %esi
	js	.LBB62_341
# BB#344:                               # %while.body2168.lr.ph
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	432(%rsp), %rbp         # 8-byte Reload
	movslq	%ebp, %rbp
	movq	336(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %rsi
.LBB62_345:                             # %while.body2168
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rbp
	jge	.LBB62_519
# BB#346:                               # %if.end2172
                                        #   in Loop: Header=BB62_345 Depth=1
	movq	3160(%r12), %rdi
	movw	%dx, (%rdi,%rbp,2)
	leal	-1(%rcx), %edi
	incq	%rbp
	cmpl	$1, %ecx
	movl	%edi, %ecx
	jg	.LBB62_345
	jmp	.LBB62_306
.LBB62_342:                             # %while.cond2181.preheader
	testl	%esi, %esi
	js	.LBB62_343
# BB#347:                               # %while.body2184.lr.ph
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movzwl	%dx, %edx
	movq	432(%rsp), %rbp         # 8-byte Reload
	movslq	%ebp, %rbp
	movq	336(%rsp), %rsi         # 8-byte Reload
	movslq	%esi, %rsi
.LBB62_348:                             # %while.body2184
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rbp
	jge	.LBB62_519
# BB#349:                               # %if.end2188
                                        #   in Loop: Header=BB62_348 Depth=1
	movq	3152(%r12), %rdi
	movl	%edx, (%rdi,%rbp,4)
	leal	-1(%rcx), %edi
	incq	%rbp
	cmpl	$1, %ecx
	movl	%edi, %ecx
	jg	.LBB62_348
	jmp	.LBB62_306
.LBB62_519:                             # %save_state_and_return.loopexit5250
	movq	%rbp, 432(%rsp)         # 8-byte Spill
	movq	%rcx, 376(%rsp)         # 8-byte Spill
.LBB62_520:                             # %save_state_and_return
	movq	40(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB62_521
.LBB62_341:
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	jmp	.LBB62_307
.LBB62_343:
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	jmp	.LBB62_307
.LBB62_387:                             # %while.body2487
	movl	$-4, %eax
	cmpl	$20, %ebp
	jle	.LBB62_393
# BB#388:
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	jmp	.LBB62_521
.LBB62_393:                             # %if.end2491
	movq	%rbx, 312(%rsp)         # 8-byte Spill
	movslq	%ebp, %rcx
	movq	464(%rsp), %rbx         # 8-byte Reload
	cmpl	(%rdi,%rcx,4), %ebx
	jle	.LBB62_304
# BB#394:                               # %if.end2497
	incl	%ebp
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	leaq	36(%r12), %rcx
.LBB62_395:                             # %sw.bb2499
	movq	%rdi, %rbp
	movq	312(%rsp), %rbx         # 8-byte Reload
	movl	$41, 8(%r12)
	jmp	.LBB62_396
.LBB62_402:                             # %while.body2502.backedge
                                        #   in Loop: Header=BB62_396 Depth=1
	movl	(%rcx), %edx
.LBB62_396:                             # %sw.bb2499
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	jg	.LBB62_397
# BB#398:                               # %if.end2516
                                        #   in Loop: Header=BB62_396 Depth=1
	movq	(%r12), %rdx
	xorl	%eax, %eax
	cmpl	$0, 8(%rdx)
	je	.LBB62_399
# BB#400:                               # %if.end2522
                                        #   in Loop: Header=BB62_396 Depth=1
	movq	32(%r12), %rax
	movl	%eax, %esi
	shll	$8, %esi
	movq	(%rdx), %rdi
	movzbl	(%rdi), %edi
	orl	%esi, %edi
	movl	%edi, 32(%r12)
	shrq	$32, %rax
	addl	$8, %eax
	movl	%eax, 36(%r12)
	incq	(%rdx)
	movq	(%r12), %rax
	decl	8(%rax)
	movq	(%r12), %rax
	incl	12(%rax)
	movq	(%r12), %rax
	cmpl	$0, 12(%rax)
	jne	.LBB62_402
# BB#401:                               # %if.then2545
                                        #   in Loop: Header=BB62_396 Depth=1
	incl	16(%rax)
	jmp	.LBB62_402
.LBB62_397:                             # %if.then2506
	movl	32(%r12), %eax
	decl	%edx
	movb	%dl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	movl	%edx, 36(%r12)
	movq	464(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,2), %ecx
	movq	%rcx, 464(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	movq	448(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB62_387
.LBB62_399:
	movq	%rbp, %rdi
.LBB62_521:                             # %save_state_and_return
	movq	272(%rsp), %rcx         # 8-byte Reload
	movq	304(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	456(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r11)
	movq	400(%rsp), %rcx         # 8-byte Reload
	movq	152(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	416(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r8)
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	472(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	424(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r9)
	movq	192(%rsp), %rcx         # 8-byte Reload
	movq	352(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	368(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r10)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movq	392(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	280(%rsp), %rcx         # 8-byte Reload
	movq	384(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	336(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	432(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	376(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	176(%rsp), %rcx         # 8-byte Reload
	movq	344(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	224(%rsp), %rcx         # 8-byte Reload
	movq	440(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	320(%rsp), %rcx         # 8-byte Reload
	movq	312(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	232(%rsp), %rcx         # 8-byte Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	248(%rsp), %rcx         # 8-byte Reload
	movq	464(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	408(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r15)
	movq	256(%rsp), %rcx         # 8-byte Reload
	movq	328(%rsp), %rdx         # 8-byte Reload
	movl	%edx, (%rcx)
	movq	360(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, (%r14)
	movq	264(%rsp), %rcx         # 8-byte Reload
	movq	%rdi, (%rcx)
	movq	296(%rsp), %rcx         # 8-byte Reload
	movq	240(%rsp), %rdx         # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	288(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, (%rcx)
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	BZ2_decompress, .Lfunc_end62-BZ2_decompress
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI62_0:
	.quad	.LBB62_27
	.quad	.LBB62_36
	.quad	.LBB62_44
	.quad	.LBB62_7
	.quad	.LBB62_66
	.quad	.LBB62_74
	.quad	.LBB62_82
	.quad	.LBB62_90
	.quad	.LBB62_98
	.quad	.LBB62_8
	.quad	.LBB62_112
	.quad	.LBB62_120
	.quad	.LBB62_128
	.quad	.LBB62_136
	.quad	.LBB62_144
	.quad	.LBB62_152
	.quad	.LBB62_160
	.quad	.LBB62_167
	.quad	.LBB62_181
	.quad	.LBB62_196
	.quad	.LBB62_205
	.quad	.LBB62_210
	.quad	.LBB62_237
	.quad	.LBB62_242
	.quad	.LBB62_259
	.quad	.LBB62_285
	.quad	.LBB62_16
	.quad	.LBB62_321
	.quad	.LBB62_17
	.quad	.LBB62_385
	.quad	.LBB62_21
	.quad	.LBB62_448
	.quad	.LBB62_456
	.quad	.LBB62_464
	.quad	.LBB62_472
	.quad	.LBB62_480
	.quad	.LBB62_12
	.quad	.LBB62_493
	.quad	.LBB62_501
	.quad	.LBB62_509

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI63_0:
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.globl	BZ2_hbMakeCodeLengths
	.align	16, 0x90
	.type	BZ2_hbMakeCodeLengths,@function
BZ2_hbMakeCodeLengths:                  # @BZ2_hbMakeCodeLengths
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp354:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp355:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp356:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp357:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp358:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp359:
	.cfi_def_cfa_offset 56
	subq	$5256, %rsp             # imm = 0x1488
.Ltmp360:
	.cfi_def_cfa_offset 5312
.Ltmp361:
	.cfi_offset %rbx, -56
.Ltmp362:
	.cfi_offset %r12, -48
.Ltmp363:
	.cfi_offset %r13, -40
.Ltmp364:
	.cfi_offset %r14, -32
.Ltmp365:
	.cfi_offset %r15, -24
.Ltmp366:
	.cfi_offset %rbp, -16
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	%edx, %r14d
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB63_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %eax
	leaq	1(%rax), %rdx
	xorl	%ebx, %ebx
	cmpq	$4, %rdx
	jb	.LBB63_6
# BB#2:                                 # %min.iters.checked
	xorl	%ebx, %ebx
	movq	%rdx, %rcx
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rcx
	je	.LBB63_6
# BB#3:                                 # %vector.body.preheader
	incq	%rax
	movabsq	$8589934588, %rdi       # imm = 0x1FFFFFFFC
	andq	%rdi, %rax
	leaq	2148(%rsp), %rdi
	pxor	%xmm0, %xmm0
	movdqa	.LCPI63_0(%rip), %xmm1  # xmm1 = [256,256,256,256]
	movq	%rsi, %rbp
	.align	16, 0x90
.LBB63_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbp), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqd	%xmm0, %xmm3
	pslld	$8, %xmm2
	movdqa	%xmm3, %xmm4
	pandn	%xmm2, %xmm4
	pand	%xmm1, %xmm3
	por	%xmm4, %xmm3
	movdqu	%xmm3, (%rdi)
	addq	$16, %rdi
	addq	$16, %rbp
	addq	$-4, %rax
	jne	.LBB63_4
# BB#5:                                 # %middle.block
	cmpq	%rcx, %rdx
	movq	%rcx, %rbx
	je	.LBB63_8
.LBB63_6:                               # %for.body.preheader2
	movl	%r14d, %eax
	subl	%ebx, %eax
	leaq	2148(%rsp,%rbx,4), %rcx
	leaq	(%rsi,%rbx,4), %rdx
	movl	$256, %esi              # imm = 0x100
	.align	16, 0x90
.LBB63_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ebx
	movl	%ebx, %ebp
	shll	$8, %ebp
	testl	%ebx, %ebx
	cmovel	%esi, %ebp
	movl	%ebp, (%rcx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%eax
	jne	.LBB63_7
.LBB63_8:                               # %while.body.preheader
	testl	%r14d, %r14d
	movl	$0, 4208(%rsp)
	movl	$0, 2144(%rsp)
	movl	$-2, 80(%rsp)
	jle	.LBB63_56
# BB#9:                                 # %for.body11.preheader.lr.ph
	leal	1(%r14), %r15d
	movslq	%r14d, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	-1(%r14,%r14), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leal	-1(%r14), %eax
	incq	%rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rax, %rcx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movl	$1, %ecx
	.align	16, 0x90
.LBB63_11:                              # %for.body11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_12 Depth 2
                                        #     Child Loop BB63_17 Depth 2
                                        #       Child Loop BB63_19 Depth 3
                                        #       Child Loop BB63_27 Depth 3
                                        #       Child Loop BB63_34 Depth 3
                                        #     Child Loop BB63_41 Depth 2
                                        #       Child Loop BB63_42 Depth 3
                                        #     Child Loop BB63_51 Depth 2
                                        #     Child Loop BB63_54 Depth 2
	movl	$-1, 80(%rsp,%rcx,4)
	leaq	4212(%rsp,%rax,4), %rsi
	movl	%ecx, 4212(%rsp,%rax,4)
	incq	%rax
	movl	2144(%rsp,%rcx,4), %edx
	movl	%eax, %edi
	sarl	%edi
	movslq	%edi, %rbp
	movslq	4208(%rsp,%rbp,4), %rbp
	cmpl	2144(%rsp,%rbp,4), %edx
	jge	.LBB63_13
	.align	16, 0x90
.LBB63_12:                              # %while.body27
                                        #   Parent Loop BB63_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, (%rsi)
	movslq	%edi, %rsi
	sarl	%edi
	movslq	%edi, %rbp
	movslq	4208(%rsp,%rbp,4), %rbp
	cmpl	2144(%rsp,%rbp,4), %edx
	leaq	4208(%rsp,%rsi,4), %rsi
	jl	.LBB63_12
.LBB63_13:                              # %while.end
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	%ecx, (%rsi)
	incq	%rcx
	cmpl	%r14d, %eax
	jne	.LBB63_11
# BB#14:                                # %for.end38
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpl	$260, %r14d             # imm = 0x104
	jge	.LBB63_15
# BB#16:                                # %while.cond40.preheader
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpl	$2, %r14d
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %r9d
	movl	%r14d, %eax
	jl	.LBB63_37
	jmp	.LBB63_17
	.align	16, 0x90
.LBB63_15:                              # %while.cond40.preheader.thread
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	$2001, %edi             # imm = 0x7D1
	callq	BZ2_bz__AssertH__fail
	movq	40(%rsp), %rdx          # 8-byte Reload
	movl	%r14d, %r9d
	.align	16, 0x90
.LBB63_17:                              # %while.body42
                                        #   Parent Loop BB63_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB63_19 Depth 3
                                        #       Child Loop BB63_27 Depth 3
                                        #       Child Loop BB63_34 Depth 3
	movslq	4212(%rsp), %r8
	movl	4208(%rsp,%rdx,4), %r10d
	movl	%r10d, 4212(%rsp)
	leaq	-1(%rdx), %r14
	movl	$1, %ebx
	cmpq	$3, %rdx
	movl	$1, %ebp
	jl	.LBB63_25
# BB#18:                                # %if.end59.lr.ph
                                        #   in Loop: Header=BB63_17 Depth=2
	movslq	%r10d, %rax
	movl	2144(%rsp,%rax,4), %r11d
	movl	$1, %ecx
	movl	$2, %edi
	.align	16, 0x90
.LBB63_19:                              # %if.end59
                                        #   Parent Loop BB63_11 Depth=1
                                        #     Parent Loop BB63_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%edi, %rax
	cmpq	%r14, %rax
	jge	.LBB63_21
# BB#20:                                # %land.lhs.true
                                        #   in Loop: Header=BB63_19 Depth=3
	movl	%eax, %ebp
	orl	$1, %ebp
	movslq	%ebp, %rsi
	movslq	4208(%rsp,%rsi,4), %rsi
	movl	2144(%rsp,%rsi,4), %esi
	movslq	4208(%rsp,%rax,4), %rax
	cmpl	2144(%rsp,%rax,4), %esi
	jl	.LBB63_22
.LBB63_21:                              # %select.false
                                        #   in Loop: Header=BB63_19 Depth=3
	movl	%edi, %ebp
.LBB63_22:                              # %if.end73
                                        #   in Loop: Header=BB63_19 Depth=3
	movslq	%ebp, %rax
	movslq	4208(%rsp,%rax,4), %rax
	cmpl	2144(%rsp,%rax,4), %r11d
	jl	.LBB63_23
# BB#24:                                # %if.end82
                                        #   in Loop: Header=BB63_19 Depth=3
	movslq	%ecx, %rcx
	movl	%eax, 4208(%rsp,%rcx,4)
	leal	(%rbp,%rbp), %edi
	movslq	%edi, %rax
	cmpq	%rdx, %rax
	movl	%ebp, %ecx
	jl	.LBB63_19
	jmp	.LBB63_25
	.align	16, 0x90
.LBB63_23:                              #   in Loop: Header=BB63_17 Depth=2
	movl	%ecx, %ebp
.LBB63_25:                              # %while.end87
                                        #   in Loop: Header=BB63_17 Depth=2
	movslq	%ebp, %rax
	movl	%r10d, 4208(%rsp,%rax,4)
	movslq	4212(%rsp), %r10
	leaq	4208(%rsp,%r14,4), %rdi
	movl	4204(%rsp,%rdx,4), %r11d
	movl	%r11d, 4212(%rsp)
	addq	$-2, %rdx
	cmpq	$2, %rdx
	jl	.LBB63_33
# BB#26:                                # %if.end108.lr.ph
                                        #   in Loop: Header=BB63_17 Depth=2
	movslq	%r11d, %rax
	movl	2144(%rsp,%rax,4), %r13d
	movl	$1, %ebp
	movl	$2, %esi
	.align	16, 0x90
.LBB63_27:                              # %if.end108
                                        #   Parent Loop BB63_11 Depth=1
                                        #     Parent Loop BB63_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%esi, %rax
	cmpq	%rdx, %rax
	jge	.LBB63_29
# BB#28:                                # %land.lhs.true110
                                        #   in Loop: Header=BB63_27 Depth=3
	movl	%eax, %ebx
	orl	$1, %ebx
	movslq	%ebx, %r12
	movslq	4208(%rsp,%r12,4), %rcx
	movl	2144(%rsp,%rcx,4), %ecx
	movslq	4208(%rsp,%rax,4), %rax
	cmpl	2144(%rsp,%rax,4), %ecx
	jl	.LBB63_30
.LBB63_29:                              # %select.false50
                                        #   in Loop: Header=BB63_27 Depth=3
	movl	%esi, %ebx
.LBB63_30:                              # %if.end123
                                        #   in Loop: Header=BB63_27 Depth=3
	movslq	%ebx, %rax
	movslq	4208(%rsp,%rax,4), %rax
	cmpl	2144(%rsp,%rax,4), %r13d
	jl	.LBB63_31
# BB#32:                                # %if.end132
                                        #   in Loop: Header=BB63_27 Depth=3
	movslq	%ebp, %rcx
	movl	%eax, 4208(%rsp,%rcx,4)
	leal	(%rbx,%rbx), %esi
	movslq	%esi, %rax
	cmpq	%rdx, %rax
	movl	%ebx, %ebp
	jle	.LBB63_27
	jmp	.LBB63_33
	.align	16, 0x90
.LBB63_31:                              #   in Loop: Header=BB63_17 Depth=2
	movl	%ebp, %ebx
.LBB63_33:                              # %while.end137
                                        #   in Loop: Header=BB63_17 Depth=2
	movslq	%ebx, %rax
	movl	%r11d, 4208(%rsp,%rax,4)
	leal	1(%r9), %esi
	movl	%esi, 80(%rsp,%r10,4)
	movl	%esi, 80(%rsp,%r8,4)
	movl	2144(%rsp,%r8,4), %eax
	movl	%eax, %ecx
	andl	$-256, %ecx
	movl	2144(%rsp,%r10,4), %ebp
	movl	%ebp, %edx
	andl	$-256, %edx
	addl	%ecx, %edx
	movzbl	%al, %ecx
	movzbl	%bpl, %ebx
	cmpl	%ebx, %ecx
	cmovbel	%ebp, %eax
	movzbl	%al, %ecx
	incl	%ecx
	orl	%edx, %ecx
	movslq	%r9d, %rax
	movl	%ecx, 2148(%rsp,%rax,4)
	movl	$-1, 84(%rsp,%rax,4)
	movl	%esi, (%rdi)
	movl	%r14d, %edx
	sarl	%edx
	movslq	%edx, %rax
	movslq	4208(%rsp,%rax,4), %rbp
	cmpl	2144(%rsp,%rbp,4), %ecx
	jge	.LBB63_35
	.align	16, 0x90
.LBB63_34:                              # %while.body191
                                        #   Parent Loop BB63_11 Depth=1
                                        #     Parent Loop BB63_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebp, (%rdi)
	movslq	%edx, %rax
	sarl	%edx
	movslq	%edx, %rdi
	movslq	4208(%rsp,%rdi,4), %rbp
	cmpl	2144(%rsp,%rbp,4), %ecx
	leaq	4208(%rsp,%rax,4), %rdi
	jl	.LBB63_34
.LBB63_35:                              # %while.end198
                                        #   in Loop: Header=BB63_17 Depth=2
	movl	%esi, (%rdi)
	cmpq	$1, %r14
	movq	%r14, %rdx
	movl	%esi, %r9d
	jg	.LBB63_17
# BB#36:                                #   in Loop: Header=BB63_11 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
.LBB63_37:                              # %while.end201
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpl	$516, %eax              # imm = 0x204
	jl	.LBB63_39
# BB#38:                                # %if.then203
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	$2002, %edi             # imm = 0x7D2
	callq	BZ2_bz__AssertH__fail
.LBB63_39:                              # %for.cond205.preheader
                                        #   in Loop: Header=BB63_11 Depth=1
	movq	56(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	movl	68(%rsp), %ecx          # 4-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
	movdqa	.LCPI63_0(%rip), %xmm2  # xmm2 = [256,256,256,256]
	jle	.LBB63_56
# BB#40:                                #   in Loop: Header=BB63_11 Depth=1
	xorl	%edx, %edx
	movl	$1, %eax
	.align	16, 0x90
.LBB63_41:                              # %while.cond208.preheader
                                        #   Parent Loop BB63_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB63_42 Depth 3
	movb	%dl, %bl
	movl	$-1, %edx
	movl	%eax, %esi
	.align	16, 0x90
.LBB63_42:                              # %while.cond208
                                        #   Parent Loop BB63_11 Depth=1
                                        #     Parent Loop BB63_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%esi, %rsi
	movl	80(%rsp,%rsi,4), %esi
	incl	%edx
	testl	%esi, %esi
	jns	.LBB63_42
# BB#43:                                # %while.end216
                                        #   in Loop: Header=BB63_41 Depth=2
	movb	%dl, -1(%rax,%rdi)
	cmpl	%ecx, %edx
	movb	$1, %dl
	jg	.LBB63_45
# BB#44:                                # %while.end216
                                        #   in Loop: Header=BB63_41 Depth=2
	movb	%bl, %dl
.LBB63_45:                              # %while.end216
                                        #   in Loop: Header=BB63_41 Depth=2
	incq	%rax
	cmpl	%r15d, %eax
	jne	.LBB63_41
# BB#46:                                # %for.end225
                                        #   in Loop: Header=BB63_11 Depth=1
	testb	%dl, %dl
	je	.LBB63_56
# BB#47:                                # %for.cond228.preheader
                                        #   in Loop: Header=BB63_11 Depth=1
	testl	%r14d, %r14d
	jle	.LBB63_55
# BB#48:                                # %for.body231.preheader
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpq	$4, 72(%rsp)            # 8-byte Folded Reload
	movl	$1, %eax
	jb	.LBB63_53
# BB#49:                                # %min.iters.checked436
                                        #   in Loop: Header=BB63_11 Depth=1
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	andq	%rax, %rcx
	movl	$1, %eax
	je	.LBB63_53
# BB#50:                                #   in Loop: Header=BB63_11 Depth=1
	movq	%rdx, %rax
	orq	$1, %rax
	leaq	2148(%rsp), %rdx
	movq	24(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB63_51:                              # %vector.body432
                                        #   Parent Loop BB63_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdx), %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$8, %xmm1
	psrld	$31, %xmm0
	paddd	%xmm1, %xmm0
	psrad	$1, %xmm0
	pslld	$8, %xmm0
	paddd	%xmm2, %xmm0
	movdqu	%xmm0, (%rdx)
	addq	$16, %rdx
	addq	$-4, %rsi
	jne	.LBB63_51
# BB#52:                                # %middle.block433
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpq	%rcx, 72(%rsp)          # 8-byte Folded Reload
	je	.LBB63_10
	.align	16, 0x90
.LBB63_53:                              # %for.body231.preheader1
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	%r15d, %ecx
	subl	%eax, %ecx
	leaq	2144(%rsp,%rax,4), %rax
	.align	16, 0x90
.LBB63_54:                              # %for.body231
                                        #   Parent Loop BB63_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rax), %edx
	movl	%edx, %esi
	sarl	$8, %esi
	shrl	$31, %edx
	addl	%esi, %edx
	andl	$-2, %edx
	shll	$7, %edx
	addl	$256, %edx              # imm = 0x100
	movl	%edx, (%rax)
	addq	$4, %rax
	decl	%ecx
	jne	.LBB63_54
.LBB63_10:                              # %while.body.loopexit
                                        #   in Loop: Header=BB63_11 Depth=1
	testl	%r14d, %r14d
	movl	$0, 4208(%rsp)
	movl	$0, 2144(%rsp)
	movl	$-2, 80(%rsp)
	movl	$1, %ecx
	movl	$0, %eax
	jg	.LBB63_11
	jmp	.LBB63_56
.LBB63_55:                              # %while.end242.critedge
	movl	$0, 4208(%rsp)
	movl	$0, 2144(%rsp)
	movl	$-2, 80(%rsp)
.LBB63_56:                              # %while.end242
	addq	$5256, %rsp             # imm = 0x1488
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	BZ2_hbMakeCodeLengths, .Lfunc_end63-BZ2_hbMakeCodeLengths
	.cfi_endproc

	.globl	BZ2_hbAssignCodes
	.align	16, 0x90
	.type	BZ2_hbAssignCodes,@function
BZ2_hbAssignCodes:                      # @BZ2_hbAssignCodes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp367:
	.cfi_def_cfa_offset 16
.Ltmp368:
	.cfi_offset %rbx, -16
	cmpl	%ecx, %edx
	jg	.LBB64_7
# BB#1:                                 # %for.cond1.preheader.lr.ph
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB64_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB64_3 Depth 2
	testl	%r8d, %r8d
	movq	%rsi, %rax
	movq	%rdi, %r10
	movl	%r8d, %r11d
	jle	.LBB64_6
	.align	16, 0x90
.LBB64_3:                               # %for.body3
                                        #   Parent Loop BB64_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %ebx
	cmpl	%edx, %ebx
	jne	.LBB64_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB64_3 Depth=2
	movl	%r9d, (%r10)
	incl	%r9d
.LBB64_5:                               # %for.inc
                                        #   in Loop: Header=BB64_3 Depth=2
	addq	$4, %r10
	incq	%rax
	decl	%r11d
	jne	.LBB64_3
.LBB64_6:                               # %for.end
                                        #   in Loop: Header=BB64_2 Depth=1
	addl	%r9d, %r9d
	cmpl	%ecx, %edx
	leal	1(%rdx), %eax
	movl	%eax, %edx
	jl	.LBB64_2
.LBB64_7:                               # %for.end11
	popq	%rbx
	retq
.Lfunc_end64:
	.size	BZ2_hbAssignCodes, .Lfunc_end64-BZ2_hbAssignCodes
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI65_0:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.globl	BZ2_hbCreateDecodeTables
	.align	16, 0x90
	.type	BZ2_hbCreateDecodeTables,@function
BZ2_hbCreateDecodeTables:               # @BZ2_hbCreateDecodeTables
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp369:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp370:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp371:
	.cfi_def_cfa_offset 32
.Ltmp372:
	.cfi_offset %rbx, -32
.Ltmp373:
	.cfi_offset %r14, -24
.Ltmp374:
	.cfi_offset %rbp, -16
	movl	32(%rsp), %r10d
	cmpl	%r9d, %r8d
	jg	.LBB65_7
# BB#1:                                 # %for.cond1.preheader.lr.ph
	movl	%r10d, %r11d
	xorl	%eax, %eax
	movl	%r8d, %r14d
	.align	16, 0x90
.LBB65_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_3 Depth 2
	testl	%r10d, %r10d
	movl	$0, %ebx
	jle	.LBB65_6
	.align	16, 0x90
.LBB65_3:                               # %for.body3
                                        #   Parent Loop BB65_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx,%rbx), %ebp
	cmpl	%r14d, %ebp
	jne	.LBB65_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB65_3 Depth=2
	cltq
	movl	%ebx, (%rdx,%rax,4)
	incl	%eax
.LBB65_5:                               # %for.inc
                                        #   in Loop: Header=BB65_3 Depth=2
	incq	%rbx
	cmpl	%ebx, %r11d
	jne	.LBB65_3
.LBB65_6:                               # %for.inc9
                                        #   in Loop: Header=BB65_2 Depth=1
	cmpl	%r9d, %r14d
	leal	1(%r14), %ebx
	movl	%ebx, %r14d
	jl	.LBB65_2
.LBB65_7:                               # %for.body15.preheader
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 76(%rsi)
	movdqu	%xmm0, 64(%rsi)
	movdqu	%xmm0, 48(%rsi)
	movdqu	%xmm0, 32(%rsi)
	movdqu	%xmm0, 16(%rsi)
	movdqu	%xmm0, (%rsi)
	xorl	%eax, %eax
	movl	$1, %edx
	testl	%r10d, %r10d
	jle	.LBB65_10
# BB#8:
	movl	$1, %edx
	.align	16, 0x90
.LBB65_9:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx), %ebp
	incl	4(%rsi,%rbp,4)
	incq	%rcx
	decl	%r10d
	jne	.LBB65_9
	.align	16, 0x90
.LBB65_10:                              # %for.body37
                                        # =>This Inner Loop Header: Depth=1
	addl	(%rsi,%rdx,4), %eax
	movl	%eax, (%rsi,%rdx,4)
	incq	%rdx
	cmpq	$23, %rdx
	jne	.LBB65_10
# BB#11:                                # %for.body49.preheader
	cmpl	%r9d, %r8d
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 76(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 48(%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 16(%rdi)
	movdqu	%xmm0, (%rdi)
	jg	.LBB65_14
# BB#12:                                # %for.body58.preheader
	movslq	%r9d, %r10
	movslq	%r8d, %rcx
	decq	%rcx
	leal	1(%r8), %edx
	movslq	%edx, %rdx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB65_13:                              # %for.body58
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rdx), %ebp
	subl	4(%rsi,%rcx,4), %ebp
	leal	-1(%rbp,%rbx), %eax
	leal	(%rbp,%rbx), %ebp
	movl	%eax, 4(%rdi,%rcx,4)
	addl	%ebp, %ebp
	incq	%rcx
	addq	$4, %rdx
	cmpq	%r10, %rcx
	movl	%ebp, %ebx
	jl	.LBB65_13
.LBB65_14:                              # %for.cond73.preheader
	cmpl	%r9d, %r8d
	jge	.LBB65_24
# BB#15:                                # %for.body76.preheader
	movslq	%r8d, %rax
	leal	-1(%r9), %ecx
	subl	%r8d, %ecx
	leaq	1(%rcx), %r11
	cmpq	$4, %r11
	jb	.LBB65_22
# BB#16:                                # %min.iters.checked
	movabsq	$8589934588, %r14       # imm = 0x1FFFFFFFC
	movq	%r11, %r10
	andq	%r14, %r10
	je	.LBB65_22
# BB#17:                                # %vector.memcheck
	leaq	4(%rsi,%rax,4), %rbp
	leaq	(%rcx,%rax), %rbx
	leaq	(%rdi,%rbx,4), %rdx
	cmpq	%rdx, %rbp
	ja	.LBB65_19
# BB#18:                                # %vector.memcheck
	leaq	4(%rsi,%rbx,4), %rdx
	leaq	(%rdi,%rax,4), %rbx
	cmpq	%rdx, %rbx
	jbe	.LBB65_22
.LBB65_19:                              # %vector.body.preheader
	addq	%r10, %rax
	incq	%rcx
	andq	%r14, %rcx
	movslq	%r8d, %rdx
	leaq	4(%rsi,%rdx,4), %rbx
	leaq	(%rdi,%rdx,4), %rdx
	movdqa	.LCPI65_0(%rip), %xmm0  # xmm0 = [2,2,2,2]
	.align	16, 0x90
.LBB65_20:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rdx), %xmm1
	paddd	%xmm1, %xmm1
	paddd	%xmm0, %xmm1
	movdqu	(%rbx), %xmm2
	psubd	%xmm2, %xmm1
	movdqu	%xmm1, (%rbx)
	addq	$16, %rbx
	addq	$16, %rdx
	addq	$-4, %rcx
	jne	.LBB65_20
# BB#21:                                # %middle.block
	cmpq	%r10, %r11
	je	.LBB65_24
.LBB65_22:                              # %for.body76.preheader1
	leaq	(%rdi,%rax,4), %rcx
	subl	%eax, %r9d
	leaq	4(%rsi,%rax,4), %rax
	.align	16, 0x90
.LBB65_23:                              # %for.body76
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	leal	2(%rdx,%rdx), %edx
	subl	(%rax), %edx
	movl	%edx, (%rax)
	addq	$4, %rcx
	addq	$4, %rax
	decl	%r9d
	jne	.LBB65_23
.LBB65_24:                              # %for.end89
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end65:
	.size	BZ2_hbCreateDecodeTables, .Lfunc_end65-BZ2_hbCreateDecodeTables
	.cfi_endproc

	.type	dbglvl,@object          # @dbglvl
	.data
	.globl	dbglvl
	.align	4
dbglvl:
	.long	4                       # 0x4
	.size	dbglvl, 4

	.type	seedi,@object           # @seedi
	.comm	seedi,8,8
	.type	spec_fd,@object         # @spec_fd
	.comm	spec_fd,72,16
	.type	.Lstr.34,@object        # @str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.34:
	.asciz	"spec_init"
	.size	.Lstr.34, 10

	.type	.Lstr,@object           # @str
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr:
	.asciz	"spec_init: Error mallocing memory!"
	.size	.Lstr, 35

	.type	.Lstr.36,@object        # @str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.36:
	.asciz	"Creating Chunks"
	.size	.Lstr.36, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Creating Chunk %d\n"
	.size	.L.str.3, 19

	.type	.Lstr.35,@object        # @str.35
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr.35:
	.asciz	"Filling input file"
	.size	.Lstr.35, 19

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Can't open file %s: %s\n"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Error reading from %s: %s\n"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Duplicating %d bytes\n"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"spec_read: %d, %p, %d = "
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"spec_read: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.9, 34

	.type	.Lstr.39,@object        # @str.39
.Lstr.39:
	.asciz	"EOF"
	.size	.Lstr.39, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%d\n"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"spec_fread: %p, (%d x %d) fd %d ="
	.size	.L.str.12, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"spec_fread: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"spec_getc: %d = "
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"spec_ungetc: %d = "
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"spec_ungetc: pos %d <= 0\n"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"spec_ungetc: can't unget something that wasn't what was in the buffer!\n"
	.size	.L.str.17, 72

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"spec_write: %d, %p, %d = "
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"spec_write: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"spec_fwrite: %p, %d, %d, %d = "
	.size	.L.str.20, 31

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"spec_fwrite: fd=%d, > MAX_SPEC_FD!\n"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"spec_putc: %d, %d = "
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"input.combined"
	.size	.L.str.23, 15

	.type	.Lstr.43,@object        # @str.43
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr.43:
	.asciz	"Loading Input Data"
	.size	.Lstr.43, 19

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Input data %d bytes in length\n"
	.size	.L.str.25, 31

	.type	.Lstr.42,@object        # @str.42
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr.42:
	.asciz	"main: Error mallocing memory!"
	.size	.Lstr.42, 30

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"Compressing Input Data, level %d\n"
	.size	.L.str.27, 34

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Compressed data %d bytes in length\n"
	.size	.L.str.28, 36

	.type	.Lstr.41,@object        # @str.41
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr.41:
	.asciz	"Uncompressing Data"
	.size	.Lstr.41, 19

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"Uncompressed data %d bytes in length\n"
	.size	.L.str.30, 38

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Tested %dMB buffer: Miscompared!!\n"
	.size	.L.str.31, 35

	.type	.Lstr.40,@object        # @str.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
.Lstr.40:
	.asciz	"Uncompressed data compared correctly"
	.size	.Lstr.40, 37

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"Tested %dMB buffer: OK!\n"
	.size	.L.str.33, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"        bucket sorting ...\n"
	.size	.L.str.2, 28

	.type	.L.str.3.1,@object      # @.str.3.1
.L.str.3.1:
	.asciz	"        depth %6d has "
	.size	.L.str.3.1, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%6d unresolved strings\n"
	.size	.L.str.4, 24

	.type	.L.str.5.2,@object      # @.str.5.2
.L.str.5.2:
	.asciz	"        reconstructing block ...\n"
	.size	.L.str.5.2, 34

	.type	.L.str.6.3,@object      # @.str.6.3
.L.str.6.3:
	.asciz	"        main sort initialise ...\n"
	.size	.L.str.6.3, 34

	.type	.L.str.7.4,@object      # @.str.7.4
.L.str.7.4:
	.asciz	"        qsort [0x%x, 0x%x]   done %d   this %d\n"
	.size	.L.str.7.4, 48

	.type	incs,@object            # @incs
	.section	.rodata,"a",@progbits
	.align	16
incs:
	.long	1                       # 0x1
	.long	4                       # 0x4
	.long	13                      # 0xd
	.long	40                      # 0x28
	.long	121                     # 0x79
	.long	364                     # 0x16c
	.long	1093                    # 0x445
	.long	3280                    # 0xcd0
	.long	9841                    # 0x2671
	.long	29524                   # 0x7354
	.long	88573                   # 0x159fd
	.long	265720                  # 0x40df8
	.long	797161                  # 0xc29e9
	.long	2391484                 # 0x247dbc
	.size	incs, 56

	.type	.L.str.8.5,@object      # @.str.8.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8.5:
	.asciz	"        %d pointers, %d sorted, %d scanned\n"
	.size	.L.str.8.5, 44

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"      %d work, %d block, ratio %5.2f\n"
	.size	.L.str, 38

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"    too repetitive; using fallback sorting algorithm\n"
	.size	.L.str.1, 54

	.type	blockSize100k,@object   # @blockSize100k
	.comm	blockSize100k,4,4
	.type	verbosity,@object       # @verbosity
	.comm	verbosity,4,4
	.type	workFactor,@object      # @workFactor
	.comm	workFactor,4,4
	.type	outputHandleJustInCase,@object # @outputHandleJustInCase
	.comm	outputHandleJustInCase,4,4
	.type	smallMode,@object       # @smallMode
	.comm	smallMode,1,1
	.type	forceOverwrite,@object  # @forceOverwrite
	.comm	forceOverwrite,1,1
	.type	noisy,@object           # @noisy
	.comm	noisy,1,1
	.type	progName,@object        # @progName
	.comm	progName,8,8
	.type	inName,@object          # @inName
	.comm	inName,1034,16
	.type	keepInputFiles,@object  # @keepInputFiles
	.comm	keepInputFiles,1,1
	.type	deleteOutputOnInterrupt,@object # @deleteOutputOnInterrupt
	.comm	deleteOutputOnInterrupt,1,1
	.type	testFailsExist,@object  # @testFailsExist
	.comm	testFailsExist,1,1
	.type	unzFailsExist,@object   # @unzFailsExist
	.comm	unzFailsExist,1,1
	.type	numFileNames,@object    # @numFileNames
	.comm	numFileNames,4,4
	.type	numFilesProcessed,@object # @numFilesProcessed
	.comm	numFilesProcessed,4,4
	.type	exitValue,@object       # @exitValue
	.comm	exitValue,4,4
	.type	opMode,@object          # @opMode
	.comm	opMode,4,4
	.type	srcMode,@object         # @srcMode
	.comm	srcMode,4,4
	.type	longestFileName,@object # @longestFileName
	.comm	longestFileName,4,4
	.type	outName,@object         # @outName
	.comm	outName,1034,16
	.type	tmpName,@object         # @tmpName
	.comm	tmpName,1034,16
	.type	progNameReally,@object  # @progNameReally
	.comm	progNameReally,1034,16
	.type	.L.str.1.16,@object     # @.str.1.16
.L.str.1.16:
	.asciz	" no data compressed.\n"
	.size	.L.str.1.16, 22

	.type	.L.str.2.17,@object     # @.str.2.17
.L.str.2.17:
	.asciz	"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\n"
	.size	.L.str.2.17, 57

	.type	.L.str.17.18,@object    # @.str.17.18
.L.str.17.18:
	.asciz	"bzip2: I'm not configured correctly for this platform!\n\tI require Int32, Int16 and Char to have sizes\n\tof 4, 2 and 1 bytes to run properly, and they don't.\n\tProbably you can fix this by defining them correctly,\n\tand recompiling.  Bye!\n"
	.size	.L.str.17.18, 236

	.type	.L.str.16.19,@object    # @.str.16.19
.L.str.16.19:
	.asciz	"\n%s: couldn't allocate enough memory\n"
	.size	.L.str.16.19, 38

	.type	.L.str.11.20,@object    # @.str.11.20
.L.str.11.20:
	.asciz	"\tInput file = %s, output file = %s\n"
	.size	.L.str.11.20, 36

	.type	.L.str.15.21,@object    # @.str.15.21
.L.str.15.21:
	.asciz	"\n%s: I/O or other error, bailing out.  Possible reason follows.\n"
	.size	.L.str.15.21, 65

	.type	.L.str.3.22,@object     # @.str.3.22
.L.str.3.22:
	.asciz	"compress:unexpected error"
	.size	.L.str.3.22, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\n%s: PANIC -- internal consistency error:\n\t%s\n\tThis is probably a BUG, but it may be in your COMPILER.  Please do not bother\n\tthe original author.\n"
	.size	.L.str.10, 148

	.type	.L.str.5.25,@object     # @.str.5.25
.L.str.5.25:
	.asciz	"decompress:bzReadGetUnused"
	.size	.L.str.5.25, 27

	.type	.L.str.6.26,@object     # @.str.6.26
.L.str.6.26:
	.asciz	"\n    "
	.size	.L.str.6.26, 6

	.type	.L.str.12.27,@object    # @.str.12.27
.L.str.12.27:
	.asciz	"\n%s: Data integrity error when decompressing.\n"
	.size	.L.str.12.27, 47

	.type	.L.str.13.28,@object    # @.str.13.28
.L.str.13.28:
	.asciz	"\nIt is possible that the compressed file(s) have become corrupted.\nYou can use the -tvv option to test integrity of such files.\n\nYou can use the `bzip2recover' program to attempt to recover\ndata from undamaged sections of corrupted files.\n\n"
	.size	.L.str.13.28, 241

	.type	.L.str.14.29,@object    # @.str.14.29
.L.str.14.29:
	.asciz	"\n%s: Compressed file ends unexpectedly;\n\tperhaps it is corrupted?  *Possible* reason follows.\n"
	.size	.L.str.14.29, 95

	.type	.L.str.7.30,@object     # @.str.7.30
.L.str.7.30:
	.asciz	"\n%s: %s: trailing garbage after EOF ignored\n"
	.size	.L.str.7.30, 45

	.type	.L.str.8.31,@object     # @.str.8.31
.L.str.8.31:
	.asciz	"decompress:unexpected error"
	.size	.L.str.8.31, 28

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\n\nbzip2/libbzip2: internal error number %d.\nThis may be a bug in bzip2/libbzip2, %s.\nIt may also be a bug in your compiler.  Please do not bother the\noriginal author of bzip2 with a bug report for this.  He\ndoesn't know anything about bzip2 as it appears in CPU2006.\n\n"
	.size	.L.str.34, 269

	.type	.L.str.5.35,@object     # @.str.5.35
.L.str.5.35:
	.asciz	"1.0.3, 15-Feb-2005"
	.size	.L.str.5.35, 19

	.type	.L.str.1.36,@object     # @.str.1.36
.L.str.1.36:
	.asciz	"\n*** A special note about internal error number 1007 ***\n\nExperience suggests that a common cause of i.e. 1007\nis unreliable memory or other hardware.  The 1007 assertion\njust happens to cross-check the results of huge numbers of\nmemory reads/writes, and so acts (unintendedly) as a stress\ntest of your memory system.\n\nI suggest the following: try compressing the file again,\npossibly monitoring progress in detail with the -vv flag.\n\n* If the error cannot be reproduced, and/or happens at different\n  points in compression, you may have a flaky memory system.\n  Try a memory-test program.  I have used Memtest86\n  (www.memtest86.com).  At the time of writing it is free (GPLd).\n  Memtest86 tests memory much more thorougly than your BIOSs\n  power-on test, and may find failures that the BIOS doesn't.\n\n* If the error can be repeatably reproduced, this is a bug in\n  bzip2, and I would very much like to hear about it.  Please\n  let me know, and, ideally, save a copy of the file causing the\n  problem -- without which I will be unable to investigate it.\n\n"
	.size	.L.str.1.36, 1057

	.type	.L.str.2.37,@object     # @.str.2.37
.L.str.2.37:
	.asciz	" {0x%08x, 0x%08x}"
	.size	.L.str.2.37, 18

	.type	.L.str.4.38,@object     # @.str.4.38
.L.str.4.38:
	.asciz	"\n    combined CRCs: stored = 0x%08x, computed = 0x%08x"
	.size	.L.str.4.38, 55

	.type	bzerrorstrings,@object  # @bzerrorstrings
	.section	.rodata,"a",@progbits
	.align	16
bzerrorstrings:
	.quad	.L.str.10.53
	.quad	.L.str.11.54
	.quad	.L.str.12.55
	.quad	.L.str.13.56
	.quad	.L.str.14.57
	.quad	.L.str.15.58
	.quad	.L.str.16.59
	.quad	.L.str.17.60
	.quad	.L.str.18.61
	.quad	.L.str.19.62
	.quad	.L.str.20.63
	.quad	.L.str.20.63
	.quad	.L.str.20.63
	.quad	.L.str.20.63
	.quad	.L.str.20.63
	.quad	.L.str.20.63
	.size	bzerrorstrings, 128

	.type	.L.str.10.53,@object    # @.str.10.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10.53:
	.asciz	"OK"
	.size	.L.str.10.53, 3

	.type	.L.str.11.54,@object    # @.str.11.54
.L.str.11.54:
	.asciz	"SEQUENCE_ERROR"
	.size	.L.str.11.54, 15

	.type	.L.str.12.55,@object    # @.str.12.55
.L.str.12.55:
	.asciz	"PARAM_ERROR"
	.size	.L.str.12.55, 12

	.type	.L.str.13.56,@object    # @.str.13.56
.L.str.13.56:
	.asciz	"MEM_ERROR"
	.size	.L.str.13.56, 10

	.type	.L.str.14.57,@object    # @.str.14.57
.L.str.14.57:
	.asciz	"DATA_ERROR"
	.size	.L.str.14.57, 11

	.type	.L.str.15.58,@object    # @.str.15.58
.L.str.15.58:
	.asciz	"DATA_ERROR_MAGIC"
	.size	.L.str.15.58, 17

	.type	.L.str.16.59,@object    # @.str.16.59
.L.str.16.59:
	.asciz	"IO_ERROR"
	.size	.L.str.16.59, 9

	.type	.L.str.17.60,@object    # @.str.17.60
.L.str.17.60:
	.asciz	"UNEXPECTED_EOF"
	.size	.L.str.17.60, 15

	.type	.L.str.18.61,@object    # @.str.18.61
.L.str.18.61:
	.asciz	"OUTBUFF_FULL"
	.size	.L.str.18.61, 13

	.type	.L.str.19.62,@object    # @.str.19.62
.L.str.19.62:
	.asciz	"CONFIG_ERROR"
	.size	.L.str.19.62, 13

	.type	.L.str.20.63,@object    # @.str.20.63
.L.str.20.63:
	.asciz	"???"
	.size	.L.str.20.63, 4

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.size	.L.str.66, 62

	.type	.L.str.2.67,@object     # @.str.2.67
.L.str.2.67:
	.asciz	"      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.size	.L.str.2.67, 64

	.type	.L.str.3.68,@object     # @.str.3.68
.L.str.3.68:
	.asciz	"      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.size	.L.str.3.68, 59

	.type	.L.str.4.69,@object     # @.str.4.69
.L.str.4.69:
	.asciz	"      pass %d: size is %d, grp uses are "
	.size	.L.str.4.69, 41

	.type	.L.str.5.70,@object     # @.str.5.70
.L.str.5.70:
	.asciz	"%d "
	.size	.L.str.5.70, 4

	.type	.L.str.7.71,@object     # @.str.7.71
.L.str.7.71:
	.asciz	"      bytes: mapping %d, "
	.size	.L.str.7.71, 26

	.type	.L.str.8.72,@object     # @.str.8.72
.L.str.8.72:
	.asciz	"selectors %d, "
	.size	.L.str.8.72, 15

	.type	.L.str.9.73,@object     # @.str.9.73
.L.str.9.73:
	.asciz	"code lengths %d, "
	.size	.L.str.9.73, 18

	.type	.L.str.10.74,@object    # @.str.10.74
.L.str.10.74:
	.asciz	"codes %d\n"
	.size	.L.str.10.74, 10

	.type	.L.str.1.75,@object     # @.str.1.75
.L.str.1.75:
	.asciz	"    final combined CRC = 0x%08x\n   "
	.size	.L.str.1.75, 36

	.type	BZ2_crc32Table,@object  # @BZ2_crc32Table
	.data
	.globl	BZ2_crc32Table
	.align	16
BZ2_crc32Table:
	.long	0                       # 0x0
	.long	79764919                # 0x4c11db7
	.long	159529838               # 0x9823b6e
	.long	222504665               # 0xd4326d9
	.long	319059676               # 0x130476dc
	.long	398814059               # 0x17c56b6b
	.long	445009330               # 0x1a864db2
	.long	507990021               # 0x1e475005
	.long	638119352               # 0x2608edb8
	.long	583659535               # 0x22c9f00f
	.long	797628118               # 0x2f8ad6d6
	.long	726387553               # 0x2b4bcb61
	.long	890018660               # 0x350c9b64
	.long	835552979               # 0x31cd86d3
	.long	1015980042              # 0x3c8ea00a
	.long	944750013               # 0x384fbdbd
	.long	1276238704              # 0x4c11db70
	.long	1221641927              # 0x48d0c6c7
	.long	1167319070              # 0x4593e01e
	.long	1095957929              # 0x4152fda9
	.long	1595256236              # 0x5f15adac
	.long	1540665371              # 0x5bd4b01b
	.long	1452775106              # 0x569796c2
	.long	1381403509              # 0x52568b75
	.long	1780037320              # 0x6a1936c8
	.long	1859660671              # 0x6ed82b7f
	.long	1671105958              # 0x639b0da6
	.long	1733955601              # 0x675a1011
	.long	2031960084              # 0x791d4014
	.long	2111593891              # 0x7ddc5da3
	.long	1889500026              # 0x709f7b7a
	.long	1952343757              # 0x745e66cd
	.long	2552477408              # 0x9823b6e0
	.long	2632100695              # 0x9ce2ab57
	.long	2443283854              # 0x91a18d8e
	.long	2506133561              # 0x95609039
	.long	2334638140              # 0x8b27c03c
	.long	2414271883              # 0x8fe6dd8b
	.long	2191915858              # 0x82a5fb52
	.long	2254759653              # 0x8664e6e5
	.long	3190512472              # 0xbe2b5b58
	.long	3135915759              # 0xbaea46ef
	.long	3081330742              # 0xb7a96036
	.long	3009969537              # 0xb3687d81
	.long	2905550212              # 0xad2f2d84
	.long	2850959411              # 0xa9ee3033
	.long	2762807018              # 0xa4ad16ea
	.long	2691435357              # 0xa06c0b5d
	.long	3560074640              # 0xd4326d90
	.long	3505614887              # 0xd0f37027
	.long	3719321342              # 0xddb056fe
	.long	3648080713              # 0xd9714b49
	.long	3342211916              # 0xc7361b4c
	.long	3287746299              # 0xc3f706fb
	.long	3467911202              # 0xceb42022
	.long	3396681109              # 0xca753d95
	.long	4063920168              # 0xf23a8028
	.long	4143685023              # 0xf6fb9d9f
	.long	4223187782              # 0xfbb8bb46
	.long	4286162673              # 0xff79a6f1
	.long	3779000052              # 0xe13ef6f4
	.long	3858754371              # 0xe5ffeb43
	.long	3904687514              # 0xe8bccd9a
	.long	3967668269              # 0xec7dd02d
	.long	881225847               # 0x34867077
	.long	809987520               # 0x30476dc0
	.long	1023691545              # 0x3d044b19
	.long	969234094               # 0x39c556ae
	.long	662832811               # 0x278206ab
	.long	591600412               # 0x23431b1c
	.long	771767749               # 0x2e003dc5
	.long	717299826               # 0x2ac12072
	.long	311336399               # 0x128e9dcf
	.long	374308984               # 0x164f8078
	.long	453813921               # 0x1b0ca6a1
	.long	533576470               # 0x1fcdbb16
	.long	25881363                # 0x18aeb13
	.long	88864420                # 0x54bf6a4
	.long	134795389               # 0x808d07d
	.long	214552010               # 0xcc9cdca
	.long	2023205639              # 0x7897ab07
	.long	2086057648              # 0x7c56b6b0
	.long	1897238633              # 0x71159069
	.long	1976864222              # 0x75d48dde
	.long	1804852699              # 0x6b93dddb
	.long	1867694188              # 0x6f52c06c
	.long	1645340341              # 0x6211e6b5
	.long	1724971778              # 0x66d0fb02
	.long	1587496639              # 0x5e9f46bf
	.long	1516133128              # 0x5a5e5b08
	.long	1461550545              # 0x571d7dd1
	.long	1406951526              # 0x53dc6066
	.long	1302016099              # 0x4d9b3063
	.long	1230646740              # 0x495a2dd4
	.long	1142491917              # 0x44190b0d
	.long	1087903418              # 0x40d816ba
	.long	2896545431              # 0xaca5c697
	.long	2825181984              # 0xa864db20
	.long	2770861561              # 0xa527fdf9
	.long	2716262478              # 0xa1e6e04e
	.long	3215044683              # 0xbfa1b04b
	.long	3143675388              # 0xbb60adfc
	.long	3055782693              # 0xb6238b25
	.long	3001194130              # 0xb2e29692
	.long	2326604591              # 0x8aad2b2f
	.long	2389456536              # 0x8e6c3698
	.long	2200899649              # 0x832f1041
	.long	2280525302              # 0x87ee0df6
	.long	2578013683              # 0x99a95df3
	.long	2640855108              # 0x9d684044
	.long	2418763421              # 0x902b669d
	.long	2498394922              # 0x94ea7b2a
	.long	3769900519              # 0xe0b41de7
	.long	3832873040              # 0xe4750050
	.long	3912640137              # 0xe9362689
	.long	3992402750              # 0xedf73b3e
	.long	4088425275              # 0xf3b06b3b
	.long	4151408268              # 0xf771768c
	.long	4197601365              # 0xfa325055
	.long	4277358050              # 0xfef34de2
	.long	3334271071              # 0xc6bcf05f
	.long	3263032808              # 0xc27dede8
	.long	3476998961              # 0xcf3ecb31
	.long	3422541446              # 0xcbffd686
	.long	3585640067              # 0xd5b88683
	.long	3514407732              # 0xd1799b34
	.long	3694837229              # 0xdc3abded
	.long	3640369242              # 0xd8fba05a
	.long	1762451694              # 0x690ce0ee
	.long	1842216281              # 0x6dcdfd59
	.long	1619975040              # 0x608edb80
	.long	1682949687              # 0x644fc637
	.long	2047383090              # 0x7a089632
	.long	2127137669              # 0x7ec98b85
	.long	1938468188              # 0x738aad5c
	.long	2001449195              # 0x774bb0eb
	.long	1325665622              # 0x4f040d56
	.long	1271206113              # 0x4bc510e1
	.long	1183200824              # 0x46863638
	.long	1111960463              # 0x42472b8f
	.long	1543535498              # 0x5c007b8a
	.long	1489069629              # 0x58c1663d
	.long	1434599652              # 0x558240e4
	.long	1363369299              # 0x51435d53
	.long	622672798               # 0x251d3b9e
	.long	568075817               # 0x21dc2629
	.long	748617968               # 0x2c9f00f0
	.long	677256519               # 0x285e1d47
	.long	907627842               # 0x36194d42
	.long	853037301               # 0x32d850f5
	.long	1067152940              # 0x3f9b762c
	.long	995781531               # 0x3b5a6b9b
	.long	51762726                # 0x315d626
	.long	131386257               # 0x7d4cb91
	.long	177728840               # 0xa97ed48
	.long	240578815               # 0xe56f0ff
	.long	269590778               # 0x1011a0fa
	.long	349224269               # 0x14d0bd4d
	.long	429104020               # 0x19939b94
	.long	491947555               # 0x1d528623
	.long	4046411278              # 0xf12f560e
	.long	4126034873              # 0xf5ee4bb9
	.long	4172115296              # 0xf8ad6d60
	.long	4234965207              # 0xfc6c70d7
	.long	3794477266              # 0xe22b20d2
	.long	3874110821              # 0xe6ea3d65
	.long	3953728444              # 0xeba91bbc
	.long	4016571915              # 0xef68060b
	.long	3609705398              # 0xd727bbb6
	.long	3555108353              # 0xd3e6a601
	.long	3735388376              # 0xdea580d8
	.long	3664026991              # 0xda649d6f
	.long	3290680682              # 0xc423cd6a
	.long	3236090077              # 0xc0e2d0dd
	.long	3449943556              # 0xcda1f604
	.long	3378572211              # 0xc960ebb3
	.long	3174993278              # 0xbd3e8d7e
	.long	3120533705              # 0xb9ff90c9
	.long	3032266256              # 0xb4bcb610
	.long	2961025959              # 0xb07daba7
	.long	2923101090              # 0xae3afba2
	.long	2868635157              # 0xaafbe615
	.long	2813903052              # 0xa7b8c0cc
	.long	2742672763              # 0xa379dd7b
	.long	2604032198              # 0x9b3660c6
	.long	2683796849              # 0x9ff77d71
	.long	2461293480              # 0x92b45ba8
	.long	2524268063              # 0x9675461f
	.long	2284983834              # 0x8832161a
	.long	2364738477              # 0x8cf30bad
	.long	2175806836              # 0x81b02d74
	.long	2238787779              # 0x857130c3
	.long	1569362073              # 0x5d8a9099
	.long	1498123566              # 0x594b8d2e
	.long	1409854455              # 0x5408abf7
	.long	1355396672              # 0x50c9b640
	.long	1317987909              # 0x4e8ee645
	.long	1246755826              # 0x4a4ffbf2
	.long	1192025387              # 0x470cdd2b
	.long	1137557660              # 0x43cdc09c
	.long	2072149281              # 0x7b827d21
	.long	2135122070              # 0x7f436096
	.long	1912620623              # 0x7200464f
	.long	1992383480              # 0x76c15bf8
	.long	1753615357              # 0x68860bfd
	.long	1816598090              # 0x6c47164a
	.long	1627664531              # 0x61043093
	.long	1707420964              # 0x65c52d24
	.long	295390185               # 0x119b4be9
	.long	358241886               # 0x155a565e
	.long	404320391               # 0x18197087
	.long	483945776               # 0x1cd86d30
	.long	43990325                # 0x29f3d35
	.long	106832002               # 0x65e2082
	.long	186451547               # 0xb1d065b
	.long	266083308               # 0xfdc1bec
	.long	932423249               # 0x3793a651
	.long	861060070               # 0x3352bbe6
	.long	1041341759              # 0x3e119d3f
	.long	986742920               # 0x3ad08088
	.long	613929101               # 0x2497d08d
	.long	542559546               # 0x2056cd3a
	.long	756411363               # 0x2d15ebe3
	.long	701822548               # 0x29d4f654
	.long	3316196985              # 0xc5a92679
	.long	3244833742              # 0xc1683bce
	.long	3425377559              # 0xcc2b1d17
	.long	3370778784              # 0xc8ea00a0
	.long	3601682597              # 0xd6ad50a5
	.long	3530312978              # 0xd26c4d12
	.long	3744426955              # 0xdf2f6bcb
	.long	3689838204              # 0xdbee767c
	.long	3819031489              # 0xe3a1cbc1
	.long	3881883254              # 0xe760d676
	.long	3928223919              # 0xea23f0af
	.long	4007849240              # 0xeee2ed18
	.long	4037393693              # 0xf0a5bd1d
	.long	4100235434              # 0xf464a0aa
	.long	4180117107              # 0xf9278673
	.long	4259748804              # 0xfde69bc4
	.long	2310601993              # 0x89b8fd09
	.long	2373574846              # 0x8d79e0be
	.long	2151335527              # 0x803ac667
	.long	2231098320              # 0x84fbdbd0
	.long	2596047829              # 0x9abc8bd5
	.long	2659030626              # 0x9e7d9662
	.long	2470359227              # 0x933eb0bb
	.long	2550115596              # 0x97ffad0c
	.long	2947551409              # 0xafb010b1
	.long	2876312838              # 0xab710d06
	.long	2788305887              # 0xa6322bdf
	.long	2733848168              # 0xa2f33668
	.long	3165939309              # 0xbcb4666d
	.long	3094707162              # 0xb8757bda
	.long	3040238851              # 0xb5365d03
	.long	2985771188              # 0xb1f740b4
	.size	BZ2_crc32Table, 1024

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"\n    [%d: huff+mtf "
	.size	.L.str.80, 20

	.type	.L.str.1.81,@object     # @.str.1.81
.L.str.1.81:
	.asciz	"rt+rld"
	.size	.L.str.1.81, 7

	.type	BZ2_rNums,@object       # @BZ2_rNums
	.data
	.globl	BZ2_rNums
	.align	16
BZ2_rNums:
	.long	619                     # 0x26b
	.long	720                     # 0x2d0
	.long	127                     # 0x7f
	.long	481                     # 0x1e1
	.long	931                     # 0x3a3
	.long	816                     # 0x330
	.long	813                     # 0x32d
	.long	233                     # 0xe9
	.long	566                     # 0x236
	.long	247                     # 0xf7
	.long	985                     # 0x3d9
	.long	724                     # 0x2d4
	.long	205                     # 0xcd
	.long	454                     # 0x1c6
	.long	863                     # 0x35f
	.long	491                     # 0x1eb
	.long	741                     # 0x2e5
	.long	242                     # 0xf2
	.long	949                     # 0x3b5
	.long	214                     # 0xd6
	.long	733                     # 0x2dd
	.long	859                     # 0x35b
	.long	335                     # 0x14f
	.long	708                     # 0x2c4
	.long	621                     # 0x26d
	.long	574                     # 0x23e
	.long	73                      # 0x49
	.long	654                     # 0x28e
	.long	730                     # 0x2da
	.long	472                     # 0x1d8
	.long	419                     # 0x1a3
	.long	436                     # 0x1b4
	.long	278                     # 0x116
	.long	496                     # 0x1f0
	.long	867                     # 0x363
	.long	210                     # 0xd2
	.long	399                     # 0x18f
	.long	680                     # 0x2a8
	.long	480                     # 0x1e0
	.long	51                      # 0x33
	.long	878                     # 0x36e
	.long	465                     # 0x1d1
	.long	811                     # 0x32b
	.long	169                     # 0xa9
	.long	869                     # 0x365
	.long	675                     # 0x2a3
	.long	611                     # 0x263
	.long	697                     # 0x2b9
	.long	867                     # 0x363
	.long	561                     # 0x231
	.long	862                     # 0x35e
	.long	687                     # 0x2af
	.long	507                     # 0x1fb
	.long	283                     # 0x11b
	.long	482                     # 0x1e2
	.long	129                     # 0x81
	.long	807                     # 0x327
	.long	591                     # 0x24f
	.long	733                     # 0x2dd
	.long	623                     # 0x26f
	.long	150                     # 0x96
	.long	238                     # 0xee
	.long	59                      # 0x3b
	.long	379                     # 0x17b
	.long	684                     # 0x2ac
	.long	877                     # 0x36d
	.long	625                     # 0x271
	.long	169                     # 0xa9
	.long	643                     # 0x283
	.long	105                     # 0x69
	.long	170                     # 0xaa
	.long	607                     # 0x25f
	.long	520                     # 0x208
	.long	932                     # 0x3a4
	.long	727                     # 0x2d7
	.long	476                     # 0x1dc
	.long	693                     # 0x2b5
	.long	425                     # 0x1a9
	.long	174                     # 0xae
	.long	647                     # 0x287
	.long	73                      # 0x49
	.long	122                     # 0x7a
	.long	335                     # 0x14f
	.long	530                     # 0x212
	.long	442                     # 0x1ba
	.long	853                     # 0x355
	.long	695                     # 0x2b7
	.long	249                     # 0xf9
	.long	445                     # 0x1bd
	.long	515                     # 0x203
	.long	909                     # 0x38d
	.long	545                     # 0x221
	.long	703                     # 0x2bf
	.long	919                     # 0x397
	.long	874                     # 0x36a
	.long	474                     # 0x1da
	.long	882                     # 0x372
	.long	500                     # 0x1f4
	.long	594                     # 0x252
	.long	612                     # 0x264
	.long	641                     # 0x281
	.long	801                     # 0x321
	.long	220                     # 0xdc
	.long	162                     # 0xa2
	.long	819                     # 0x333
	.long	984                     # 0x3d8
	.long	589                     # 0x24d
	.long	513                     # 0x201
	.long	495                     # 0x1ef
	.long	799                     # 0x31f
	.long	161                     # 0xa1
	.long	604                     # 0x25c
	.long	958                     # 0x3be
	.long	533                     # 0x215
	.long	221                     # 0xdd
	.long	400                     # 0x190
	.long	386                     # 0x182
	.long	867                     # 0x363
	.long	600                     # 0x258
	.long	782                     # 0x30e
	.long	382                     # 0x17e
	.long	596                     # 0x254
	.long	414                     # 0x19e
	.long	171                     # 0xab
	.long	516                     # 0x204
	.long	375                     # 0x177
	.long	682                     # 0x2aa
	.long	485                     # 0x1e5
	.long	911                     # 0x38f
	.long	276                     # 0x114
	.long	98                      # 0x62
	.long	553                     # 0x229
	.long	163                     # 0xa3
	.long	354                     # 0x162
	.long	666                     # 0x29a
	.long	933                     # 0x3a5
	.long	424                     # 0x1a8
	.long	341                     # 0x155
	.long	533                     # 0x215
	.long	870                     # 0x366
	.long	227                     # 0xe3
	.long	730                     # 0x2da
	.long	475                     # 0x1db
	.long	186                     # 0xba
	.long	263                     # 0x107
	.long	647                     # 0x287
	.long	537                     # 0x219
	.long	686                     # 0x2ae
	.long	600                     # 0x258
	.long	224                     # 0xe0
	.long	469                     # 0x1d5
	.long	68                      # 0x44
	.long	770                     # 0x302
	.long	919                     # 0x397
	.long	190                     # 0xbe
	.long	373                     # 0x175
	.long	294                     # 0x126
	.long	822                     # 0x336
	.long	808                     # 0x328
	.long	206                     # 0xce
	.long	184                     # 0xb8
	.long	943                     # 0x3af
	.long	795                     # 0x31b
	.long	384                     # 0x180
	.long	383                     # 0x17f
	.long	461                     # 0x1cd
	.long	404                     # 0x194
	.long	758                     # 0x2f6
	.long	839                     # 0x347
	.long	887                     # 0x377
	.long	715                     # 0x2cb
	.long	67                      # 0x43
	.long	618                     # 0x26a
	.long	276                     # 0x114
	.long	204                     # 0xcc
	.long	918                     # 0x396
	.long	873                     # 0x369
	.long	777                     # 0x309
	.long	604                     # 0x25c
	.long	560                     # 0x230
	.long	951                     # 0x3b7
	.long	160                     # 0xa0
	.long	578                     # 0x242
	.long	722                     # 0x2d2
	.long	79                      # 0x4f
	.long	804                     # 0x324
	.long	96                      # 0x60
	.long	409                     # 0x199
	.long	713                     # 0x2c9
	.long	940                     # 0x3ac
	.long	652                     # 0x28c
	.long	934                     # 0x3a6
	.long	970                     # 0x3ca
	.long	447                     # 0x1bf
	.long	318                     # 0x13e
	.long	353                     # 0x161
	.long	859                     # 0x35b
	.long	672                     # 0x2a0
	.long	112                     # 0x70
	.long	785                     # 0x311
	.long	645                     # 0x285
	.long	863                     # 0x35f
	.long	803                     # 0x323
	.long	350                     # 0x15e
	.long	139                     # 0x8b
	.long	93                      # 0x5d
	.long	354                     # 0x162
	.long	99                      # 0x63
	.long	820                     # 0x334
	.long	908                     # 0x38c
	.long	609                     # 0x261
	.long	772                     # 0x304
	.long	154                     # 0x9a
	.long	274                     # 0x112
	.long	580                     # 0x244
	.long	184                     # 0xb8
	.long	79                      # 0x4f
	.long	626                     # 0x272
	.long	630                     # 0x276
	.long	742                     # 0x2e6
	.long	653                     # 0x28d
	.long	282                     # 0x11a
	.long	762                     # 0x2fa
	.long	623                     # 0x26f
	.long	680                     # 0x2a8
	.long	81                      # 0x51
	.long	927                     # 0x39f
	.long	626                     # 0x272
	.long	789                     # 0x315
	.long	125                     # 0x7d
	.long	411                     # 0x19b
	.long	521                     # 0x209
	.long	938                     # 0x3aa
	.long	300                     # 0x12c
	.long	821                     # 0x335
	.long	78                      # 0x4e
	.long	343                     # 0x157
	.long	175                     # 0xaf
	.long	128                     # 0x80
	.long	250                     # 0xfa
	.long	170                     # 0xaa
	.long	774                     # 0x306
	.long	972                     # 0x3cc
	.long	275                     # 0x113
	.long	999                     # 0x3e7
	.long	639                     # 0x27f
	.long	495                     # 0x1ef
	.long	78                      # 0x4e
	.long	352                     # 0x160
	.long	126                     # 0x7e
	.long	857                     # 0x359
	.long	956                     # 0x3bc
	.long	358                     # 0x166
	.long	619                     # 0x26b
	.long	580                     # 0x244
	.long	124                     # 0x7c
	.long	737                     # 0x2e1
	.long	594                     # 0x252
	.long	701                     # 0x2bd
	.long	612                     # 0x264
	.long	669                     # 0x29d
	.long	112                     # 0x70
	.long	134                     # 0x86
	.long	694                     # 0x2b6
	.long	363                     # 0x16b
	.long	992                     # 0x3e0
	.long	809                     # 0x329
	.long	743                     # 0x2e7
	.long	168                     # 0xa8
	.long	974                     # 0x3ce
	.long	944                     # 0x3b0
	.long	375                     # 0x177
	.long	748                     # 0x2ec
	.long	52                      # 0x34
	.long	600                     # 0x258
	.long	747                     # 0x2eb
	.long	642                     # 0x282
	.long	182                     # 0xb6
	.long	862                     # 0x35e
	.long	81                      # 0x51
	.long	344                     # 0x158
	.long	805                     # 0x325
	.long	988                     # 0x3dc
	.long	739                     # 0x2e3
	.long	511                     # 0x1ff
	.long	655                     # 0x28f
	.long	814                     # 0x32e
	.long	334                     # 0x14e
	.long	249                     # 0xf9
	.long	515                     # 0x203
	.long	897                     # 0x381
	.long	955                     # 0x3bb
	.long	664                     # 0x298
	.long	981                     # 0x3d5
	.long	649                     # 0x289
	.long	113                     # 0x71
	.long	974                     # 0x3ce
	.long	459                     # 0x1cb
	.long	893                     # 0x37d
	.long	228                     # 0xe4
	.long	433                     # 0x1b1
	.long	837                     # 0x345
	.long	553                     # 0x229
	.long	268                     # 0x10c
	.long	926                     # 0x39e
	.long	240                     # 0xf0
	.long	102                     # 0x66
	.long	654                     # 0x28e
	.long	459                     # 0x1cb
	.long	51                      # 0x33
	.long	686                     # 0x2ae
	.long	754                     # 0x2f2
	.long	806                     # 0x326
	.long	760                     # 0x2f8
	.long	493                     # 0x1ed
	.long	403                     # 0x193
	.long	415                     # 0x19f
	.long	394                     # 0x18a
	.long	687                     # 0x2af
	.long	700                     # 0x2bc
	.long	946                     # 0x3b2
	.long	670                     # 0x29e
	.long	656                     # 0x290
	.long	610                     # 0x262
	.long	738                     # 0x2e2
	.long	392                     # 0x188
	.long	760                     # 0x2f8
	.long	799                     # 0x31f
	.long	887                     # 0x377
	.long	653                     # 0x28d
	.long	978                     # 0x3d2
	.long	321                     # 0x141
	.long	576                     # 0x240
	.long	617                     # 0x269
	.long	626                     # 0x272
	.long	502                     # 0x1f6
	.long	894                     # 0x37e
	.long	679                     # 0x2a7
	.long	243                     # 0xf3
	.long	440                     # 0x1b8
	.long	680                     # 0x2a8
	.long	879                     # 0x36f
	.long	194                     # 0xc2
	.long	572                     # 0x23c
	.long	640                     # 0x280
	.long	724                     # 0x2d4
	.long	926                     # 0x39e
	.long	56                      # 0x38
	.long	204                     # 0xcc
	.long	700                     # 0x2bc
	.long	707                     # 0x2c3
	.long	151                     # 0x97
	.long	457                     # 0x1c9
	.long	449                     # 0x1c1
	.long	797                     # 0x31d
	.long	195                     # 0xc3
	.long	791                     # 0x317
	.long	558                     # 0x22e
	.long	945                     # 0x3b1
	.long	679                     # 0x2a7
	.long	297                     # 0x129
	.long	59                      # 0x3b
	.long	87                      # 0x57
	.long	824                     # 0x338
	.long	713                     # 0x2c9
	.long	663                     # 0x297
	.long	412                     # 0x19c
	.long	693                     # 0x2b5
	.long	342                     # 0x156
	.long	606                     # 0x25e
	.long	134                     # 0x86
	.long	108                     # 0x6c
	.long	571                     # 0x23b
	.long	364                     # 0x16c
	.long	631                     # 0x277
	.long	212                     # 0xd4
	.long	174                     # 0xae
	.long	643                     # 0x283
	.long	304                     # 0x130
	.long	329                     # 0x149
	.long	343                     # 0x157
	.long	97                      # 0x61
	.long	430                     # 0x1ae
	.long	751                     # 0x2ef
	.long	497                     # 0x1f1
	.long	314                     # 0x13a
	.long	983                     # 0x3d7
	.long	374                     # 0x176
	.long	822                     # 0x336
	.long	928                     # 0x3a0
	.long	140                     # 0x8c
	.long	206                     # 0xce
	.long	73                      # 0x49
	.long	263                     # 0x107
	.long	980                     # 0x3d4
	.long	736                     # 0x2e0
	.long	876                     # 0x36c
	.long	478                     # 0x1de
	.long	430                     # 0x1ae
	.long	305                     # 0x131
	.long	170                     # 0xaa
	.long	514                     # 0x202
	.long	364                     # 0x16c
	.long	692                     # 0x2b4
	.long	829                     # 0x33d
	.long	82                      # 0x52
	.long	855                     # 0x357
	.long	953                     # 0x3b9
	.long	676                     # 0x2a4
	.long	246                     # 0xf6
	.long	369                     # 0x171
	.long	970                     # 0x3ca
	.long	294                     # 0x126
	.long	750                     # 0x2ee
	.long	807                     # 0x327
	.long	827                     # 0x33b
	.long	150                     # 0x96
	.long	790                     # 0x316
	.long	288                     # 0x120
	.long	923                     # 0x39b
	.long	804                     # 0x324
	.long	378                     # 0x17a
	.long	215                     # 0xd7
	.long	828                     # 0x33c
	.long	592                     # 0x250
	.long	281                     # 0x119
	.long	565                     # 0x235
	.long	555                     # 0x22b
	.long	710                     # 0x2c6
	.long	82                      # 0x52
	.long	896                     # 0x380
	.long	831                     # 0x33f
	.long	547                     # 0x223
	.long	261                     # 0x105
	.long	524                     # 0x20c
	.long	462                     # 0x1ce
	.long	293                     # 0x125
	.long	465                     # 0x1d1
	.long	502                     # 0x1f6
	.long	56                      # 0x38
	.long	661                     # 0x295
	.long	821                     # 0x335
	.long	976                     # 0x3d0
	.long	991                     # 0x3df
	.long	658                     # 0x292
	.long	869                     # 0x365
	.long	905                     # 0x389
	.long	758                     # 0x2f6
	.long	745                     # 0x2e9
	.long	193                     # 0xc1
	.long	768                     # 0x300
	.long	550                     # 0x226
	.long	608                     # 0x260
	.long	933                     # 0x3a5
	.long	378                     # 0x17a
	.long	286                     # 0x11e
	.long	215                     # 0xd7
	.long	979                     # 0x3d3
	.long	792                     # 0x318
	.long	961                     # 0x3c1
	.long	61                      # 0x3d
	.long	688                     # 0x2b0
	.long	793                     # 0x319
	.long	644                     # 0x284
	.long	986                     # 0x3da
	.long	403                     # 0x193
	.long	106                     # 0x6a
	.long	366                     # 0x16e
	.long	905                     # 0x389
	.long	644                     # 0x284
	.long	372                     # 0x174
	.long	567                     # 0x237
	.long	466                     # 0x1d2
	.long	434                     # 0x1b2
	.long	645                     # 0x285
	.long	210                     # 0xd2
	.long	389                     # 0x185
	.long	550                     # 0x226
	.long	919                     # 0x397
	.long	135                     # 0x87
	.long	780                     # 0x30c
	.long	773                     # 0x305
	.long	635                     # 0x27b
	.long	389                     # 0x185
	.long	707                     # 0x2c3
	.long	100                     # 0x64
	.long	626                     # 0x272
	.long	958                     # 0x3be
	.long	165                     # 0xa5
	.long	504                     # 0x1f8
	.long	920                     # 0x398
	.long	176                     # 0xb0
	.long	193                     # 0xc1
	.long	713                     # 0x2c9
	.long	857                     # 0x359
	.long	265                     # 0x109
	.long	203                     # 0xcb
	.long	50                      # 0x32
	.long	668                     # 0x29c
	.long	108                     # 0x6c
	.long	645                     # 0x285
	.long	990                     # 0x3de
	.long	626                     # 0x272
	.long	197                     # 0xc5
	.long	510                     # 0x1fe
	.long	357                     # 0x165
	.long	358                     # 0x166
	.long	850                     # 0x352
	.long	858                     # 0x35a
	.long	364                     # 0x16c
	.long	936                     # 0x3a8
	.long	638                     # 0x27e
	.size	BZ2_rNums, 2048


	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
