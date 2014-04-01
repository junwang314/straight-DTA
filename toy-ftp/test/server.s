	.file	"server.bc"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.file	1 "../../straightDFA/init.c"
	.file	2 "/usr/include/libio.h"
	.file	3 "/usr/include/x86_64-linux-gnu/bits/time.h"
	.file	4 "../../straightDFA/log.c"
	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	callq	_StraightTaint_log
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	popq	%rax
	ret
.Ltmp2:
	.size	__cxx_global_var_init, .Ltmp2-__cxx_global_var_init
	.cfi_endproc

	.text
	.globl	_Z8myListenv
	.align	16, 0x90
	.type	_Z8myListenv,@function
_Z8myListenv:                           # @_Z8myListenv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movl	$2, %edi
	callq	_StraightTaint_log
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, -20(%rbp)
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$3472328296227680304, %rax # imm = 0x3030303030303030
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
	movw	$2, -40(%rbp)
	xorl	%edi, %edi
	callq	htonl
	movl	%eax, -36(%rbp)
	movl	$5000, %edi             # imm = 0x1388
	callq	htons
	movw	%ax, -38(%rbp)
	movl	-20(%rbp), %edi
	leaq	-40(%rbp), %rsi
	movl	$16, %edx
	callq	bind
	movl	-20(%rbp), %edi
	movl	$10, %esi
	callq	listen
	cmpl	$-1, %eax
	je	.LBB1_13
# BB#1:                                 # %if.end
	movl	$4, %edi
	callq	_StraightTaint_log
	movl	$.L.str4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, -44(%rbp)
	leaq	-52(%rbp), %r14
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$16, %edi
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	$17, %edi
	callq	_StraightTaint_log
	movl	$18, %edi
	callq	_StraightTaint_log
	movl	$19, %edi
	callq	_StraightTaint_log
	incl	-44(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$5, %edi
	callq	_StraightTaint_log
	cmpl	$1, -44(%rbp)
	jg	.LBB1_12
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$6, %edi
	callq	_StraightTaint_log
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-20(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	accept
	movl	%eax, -24(%rbp)
	movl	$.L.str6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-24(%rbp), %esi
	movl	$.L.str7, %edi
	xorl	%eax, %eax
	callq	printf
	callq	fork
	movl	%eax, %ebx
	movl	%ebx, %edi
	callq	_StraightTaint_fork32
	testl	%ebx, %ebx
	movl	%ebx, -48(%rbp)
	js	.LBB1_14
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$8, %edi
	callq	_StraightTaint_log
	cmpl	$0, -48(%rbp)
	je	.LBB1_15
# BB#5:                                 # %if.else24
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$10, %edi
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	wait
	cmpl	$-1, %eax
	movl	%eax, -48(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then27
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$11, %edi
	callq	_StraightTaint_log
	movl	$.L.str10, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB1_11
	.align	16, 0x90
.LBB1_7:                                # %if.else29
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$12, %edi
	callq	_StraightTaint_log
	testb	$127, -52(%rbp)
	jne	.LBB1_9
# BB#8:                                 # %if.then32
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$13, %edi
	callq	_StraightTaint_log
	movl	-24(%rbp), %edi
	callq	close
	movl	-48(%rbp), %esi
	movl	$.L.str11, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB1_10
	.align	16, 0x90
.LBB1_9:                                # %if.else35
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$14, %edi
	callq	_StraightTaint_log
	movl	$.L.str12, %edi
	xorl	%eax, %eax
	callq	printf
.LBB1_10:                               # %if.end37
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$15, %edi
	callq	_StraightTaint_log
	jmp	.LBB1_11
.LBB1_15:                               # %if.then17
	movl	$9, %edi
	callq	_StraightTaint_log
	movl	-48(%rbp), %esi
	movl	$.L.str8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-24(%rbp), %edi
	xorl	%esi, %esi
	callq	dup2
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	movl	$.L.str9, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	-24(%rbp), %esi
	movl	$.L.str7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-24(%rbp), %edi
	callq	close
	movl	-20(%rbp), %edi
	callq	close
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB1_13:                               # %if.then
	movl	$3, %edi
	callq	_StraightTaint_log
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str2, %edi
	movl	$.L.str3, %esi
	movl	$30, %edx
	movl	$.L__PRETTY_FUNCTION__._Z8myListenv, %ecx
	callq	__assert_fail
.LBB1_12:                               # %for.end
	movl	$20, %edi
	callq	_StraightTaint_log
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	callq	close
	xorl	%edi, %edi
	callq	exit
.LBB1_14:                               # %if.then15
	movl	$7, %edi
	callq	_StraightTaint_log
	movl	$.L.str2, %edi
	movl	$.L.str3, %esi
	movl	$44, %edx
	movl	$.L__PRETTY_FUNCTION__._Z8myListenv, %ecx
	callq	__assert_fail
.Ltmp11:
	.size	_Z8myListenv, .Ltmp11-_Z8myListenv
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$1104, %rsp             # imm = 0x450
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movl	$addr, %edi
	callq	_StraightTaint_init
	movq	%rax, addr(%rip)
	movl	$21, %edi
	callq	_StraightTaint_log
	movl	$0, -20(%rbp)
	callq	_Z8myListenv
	leaq	-1056(%rbp), %rsi
	xorl	%edi, %edi
	movl	$1025, %edx             # imm = 0x401
	xorl	%ecx, %ecx
	callq	recv
	testl	%eax, %eax
	movl	%eax, -1060(%rbp)
	je	.LBB2_3
# BB#1:                                 # %cond.end
	movl	$22, %edi
	callq	_StraightTaint_log
	movl	$25, %edi
	callq	_StraightTaint_log
	movl	-1060(%rbp), %esi
	movl	$.L.str14, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	sleep
	leaq	-1056(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$1, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	callq	getpid
	testl	%eax, %eax
	movl	%eax, -1064(%rbp)
	jle	.LBB2_4
# BB#2:                                 # %cond.end11
	movl	$26, %edi
	callq	_StraightTaint_log
	movl	$29, %edi
	callq	_StraightTaint_log
	movl	-1064(%rbp), %ecx
	leaq	-1070(%rbp), %r14
	movl	$6, %esi
	movl	$.L.str16, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	snprintf
	leaq	-1104(%rbp), %rbx
	movl	$.L.str17, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcat
	movl	$.L.str18, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, -1112(%rbp)
	leaq	-1056(%rbp), %rdi
	movl	$1, %esi
	movl	$1025, %edx             # imm = 0x401
	movq	%rax, %rcx
	callq	fwrite
	movq	%rax, -1120(%rbp)
	movq	-1112(%rbp), %rdi
	callq	fclose
	movl	-20(%rbp), %eax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB2_3:                                # %cond.false
	movl	$23, %edi
	callq	_StraightTaint_log
	movl	$.L.str13, %edi
	movl	$.L.str3, %esi
	movl	$86, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.LBB2_4:                                # %cond.false10
	movl	$27, %edi
	callq	_StraightTaint_log
	movl	$.L.str15, %edi
	movl	$.L.str3, %esi
	movl	$91, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.Ltmp20:
	.size	main, .Ltmp20-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.align	16, 0x90
	.type	_GLOBAL__I_a,@function
_GLOBAL__I_a:                           # @_GLOBAL__I_a
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	movl	$30, %edi
	callq	_StraightTaint_log
	callq	__cxx_global_var_init
	popq	%rbp
	ret
.Ltmp26:
	.size	_GLOBAL__I_a, .Ltmp26-_GLOBAL__I_a
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI4_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI4_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	4652218415073722368     # double 1024
	.text
	.globl	buf_switcher
	.align	16, 0x90
	.type	buf_switcher,@function
buf_switcher:                           # @buf_switcher
.Lfunc_begin4:
	.loc	1 31 0                  # ../../straightDFA/init.c:31:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	.loc	1 33 0 prologue_end     # ../../straightDFA/init.c:33:0
.Ltmp32:
	subq	$16, %rsp
	movq	p2addr(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, pos(%rip)
	.loc	1 45 0                  # ../../straightDFA/init.c:45:0
	subq	buf1(%rip), %rax
	sarq	%rax
	addq	sum(%rip), %rax
	movq	%rax, sum(%rip)
	.loc	1 46 0                  # ../../straightDFA/init.c:46:0
	movd	%rax, %xmm0
	punpckldq	.LCPI4_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI4_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	movsd	.LCPI4_2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	movl	$.L.str19, %edi
	movb	$1, %al
	callq	printf
	.loc	1 48 0                  # ../../straightDFA/init.c:48:0
	movq	pos(%rip), %rax
	movq	%rax, -8(%rbp)
	.loc	1 49 0                  # ../../straightDFA/init.c:49:0
	movq	buf1(%rip), %rax
	movq	%rax, pos(%rip)
	.loc	1 58 0                  # ../../straightDFA/init.c:58:0
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	.loc	1 60 0                  # ../../straightDFA/init.c:60:0
	movq	pos(%rip), %rax
	addq	$4, %rax
	movq	%rax, pos(%rip)
	.loc	1 61 0                  # ../../straightDFA/init.c:61:0
	movq	p2addr(%rip), %rcx
	movq	%rax, (%rcx)
	.loc	1 65 0                  # ../../straightDFA/init.c:65:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp33:
.Ltmp34:
	.size	buf_switcher, .Ltmp34-buf_switcher
.Lfunc_end4:
	.cfi_endproc

	.globl	_StraightTaint_init
	.align	16, 0x90
	.type	_StraightTaint_init,@function
_StraightTaint_init:                    # @_StraightTaint_init
.Lfunc_begin5:
	.loc	1 68 0                  # ../../straightDFA/init.c:68:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1048, %rsp             # imm = 0x418
.Ltmp41:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	.loc	1 135 0 prologue_end    # ../../straightDFA/init.c:135:0
.Ltmp42:
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	1 137 0                 # ../../straightDFA/init.c:137:0
	movl	$.L.str120, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 138 0                 # ../../straightDFA/init.c:138:0
	movl	$.L.str221, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
	.loc	1 141 0                 # ../../straightDFA/init.c:141:0
	movl	$.L.str322, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	1 142 0                 # ../../straightDFA/init.c:142:0
	movq	pos(%rip), %rax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%rbp
	ret
.Ltmp43:
.Ltmp44:
	.size	_StraightTaint_init, .Ltmp44-_StraightTaint_init
.Lfunc_end5:
	.cfi_endproc

	.globl	_StraightTaint_log
	.align	16, 0x90
	.type	_StraightTaint_log,@function
_StraightTaint_log:                     # @_StraightTaint_log
.Lfunc_begin6:
	.loc	4 7 0                   # ../../straightDFA/log.c:7:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	4 8 0 prologue_end      # ../../straightDFA/log.c:8:0
.Ltmp50:
	movq	flog(%rip), %rdi
	movswl	-2(%rbp), %edx
	movl	$.L.str25, %esi
	xorl	%eax, %eax
	callq	fprintf
	.loc	4 9 0                   # ../../straightDFA/log.c:9:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp51:
.Ltmp52:
	.size	_StraightTaint_log, .Ltmp52-_StraightTaint_log
.Lfunc_end6:
	.cfi_endproc

	.globl	_StraightTaint_fork32
	.align	16, 0x90
	.type	_StraightTaint_fork32,@function
_StraightTaint_fork32:                  # @_StraightTaint_fork32
.Lfunc_begin7:
	.loc	4 25 0                  # ../../straightDFA/log.c:25:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc	4 26 0 prologue_end     # ../../straightDFA/log.c:26:0
.Ltmp58:
	callq	do_StraightTaint_fork
	.loc	4 27 0                  # ../../straightDFA/log.c:27:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp59:
.Ltmp60:
	.size	_StraightTaint_fork32, .Ltmp60-_StraightTaint_fork32
.Lfunc_end7:
	.cfi_endproc

	.globl	_StraightTaint_fork64
	.align	16, 0x90
	.type	_StraightTaint_fork64,@function
_StraightTaint_fork64:                  # @_StraightTaint_fork64
.Lfunc_begin8:
	.loc	4 30 0                  # ../../straightDFA/log.c:30:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc	4 31 0 prologue_end     # ../../straightDFA/log.c:31:0
.Ltmp66:
	movl	-8(%rbp), %edi
	movl	%edi, -12(%rbp)
	.loc	4 32 0                  # ../../straightDFA/log.c:32:0
	callq	do_StraightTaint_fork
	.loc	4 33 0                  # ../../straightDFA/log.c:33:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp67:
.Ltmp68:
	.size	_StraightTaint_fork64, .Ltmp68-_StraightTaint_fork64
.Lfunc_end8:
	.cfi_endproc

	.align	16, 0x90
	.type	do_StraightTaint_fork,@function
do_StraightTaint_fork:                  # @do_StraightTaint_fork
.Lfunc_begin9:
	.loc	4 12 0                  # ../../straightDFA/log.c:12:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
.Ltmp75:
	.cfi_offset %rbx, -24
	testl	%edi, %edi
	movl	%edi, -12(%rbp)
	jg	.LBB9_3
# BB#1:                                 # %if.else
	.loc	4 15 0 prologue_end     # ../../straightDFA/log.c:15:0
.Ltmp76:
	cmpl	$0, -12(%rbp)
	jne	.LBB9_4
# BB#2:                                 # %if.then2
.Ltmp77:
	#DEBUG_VALUE: filename <- [RBP+-1040]
	.loc	4 17 0                  # ../../straightDFA/log.c:17:0
	movl	-12(%rbp), %ecx
	leaq	-1040(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str126, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	4 18 0                  # ../../straightDFA/log.c:18:0
	movl	$.L.str227, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
.Ltmp78:
.LBB9_3:                                # %if.end6
	.loc	4 22 0                  # ../../straightDFA/log.c:22:0
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%rbp
	ret
.LBB9_4:                                # %if.else5
	.loc	4 20 0                  # ../../straightDFA/log.c:20:0
.Ltmp79:
	movl	$.L.str328, %edi
	movl	$.L.str429, %esi
	movl	$20, %edx
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.Ltmp80:
.Ltmp81:
	.size	do_StraightTaint_fork, .Ltmp81-do_StraightTaint_fork
.Lfunc_end9:
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"socket retrieve success\n"
	.size	.L.str, 25

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"Failed to listen\n"
	.size	.L.str1, 18

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"0"
	.size	.L.str2, 2

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"server.cpp"
	.size	.L.str3, 11

	.type	.L__PRETTY_FUNCTION__._Z8myListenv,@object # @__PRETTY_FUNCTION__._Z8myListenv
.L__PRETTY_FUNCTION__._Z8myListenv:
	.asciz	"void myListen()"
	.size	.L__PRETTY_FUNCTION__._Z8myListenv, 16

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"begin listen...\n"
	.size	.L.str4, 17

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"loop...\n"
	.size	.L.str5, 9

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"socket accept\n"
	.size	.L.str6, 15

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"connfd: %d\n"
	.size	.L.str7, 12

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"This is child process. pid: %d\n"
	.size	.L.str8, 32

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"newfdin: %d\n"
	.size	.L.str9, 13

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"wait failed\n"
	.size	.L.str10, 13

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"This is parent process. child pid is : %d"
	.size	.L.str11, 42

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"Child process ends unexpectedly\n"
	.size	.L.str12, 33

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"recvnum!=0"
	.size	.L.str13, 11

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main()"
	.size	.L__PRETTY_FUNCTION__.main, 11

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"recvnum: %d\n"
	.size	.L.str14, 13

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"pid>0"
	.size	.L.str15, 6

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"%d"
	.size	.L.str16, 3

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"log_"
	.size	.L.str17, 5

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"w"
	.size	.L.str18, 2

	.section	.ctors,"aw",@progbits
	.align	8
	.quad	_GLOBAL__I_a
	.type	addr,@object            # @addr
	.comm	addr,8,8
	.type	sum,@object             # @sum
	.bss
	.globl	sum
	.align	8
sum:
	.quad	0                       # 0x0
	.size	sum, 8

	.type	p2addr,@object          # @p2addr
	.local	p2addr
	.comm	p2addr,8,8
	.type	pos,@object             # @pos
	.comm	pos,8,8
	.type	buf1,@object            # @buf1
	.comm	buf1,8,8
	.type	.L.str19,@object        # @.str19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str19:
	.asciz	"%.2fMB\n"
	.size	.L.str19, 8

	.type	.L.str120,@object       # @.str120
.L.str120:
	.asciz	"tmp.%d"
	.size	.L.str120, 7

	.type	.L.str221,@object       # @.str221
.L.str221:
	.asciz	"w"
	.size	.L.str221, 2

	.type	flog,@object            # @flog
	.comm	flog,8,8
	.type	.L.str322,@object       # @.str322
.L.str322:
	.asciz	"init complete...\n"
	.size	.L.str322, 18

	.type	buf2,@object            # @buf2
	.comm	buf2,8,8
	.type	buf,@object             # @buf
	.comm	buf,8,8
	.type	tv_old,@object          # @tv_old
	.comm	tv_old,16,8
	.type	tv_new,@object          # @tv_new
	.comm	tv_new,16,8
	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	"%d\n"
	.size	.L.str25, 4

	.type	.L.str126,@object       # @.str126
.L.str126:
	.asciz	"tmp.%d"
	.size	.L.str126, 7

	.type	.L.str227,@object       # @.str227
.L.str227:
	.asciz	"w"
	.size	.L.str227, 2

	.type	.L.str328,@object       # @.str328
.L.str328:
	.asciz	"0"
	.size	.L.str328, 2

	.type	.L.str429,@object       # @.str429
.L.str429:
	.asciz	"../../straightDFA/log.c"
	.size	.L.str429, 24

	.type	.L__PRETTY_FUNCTION__.do_StraightTaint_fork,@object # @__PRETTY_FUNCTION__.do_StraightTaint_fork
.L__PRETTY_FUNCTION__.do_StraightTaint_fork:
	.asciz	"void do_StraightTaint_fork(int)"
	.size	.L__PRETTY_FUNCTION__.do_StraightTaint_fork, 32

	.bss
.Ldebug_end1:
	.text
.Ldebug_end2:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
.Linfo_string1:
	.asciz	"../../straightDFA/init.c"
.Linfo_string2:
	.asciz	"/home/jun/straight-DTA/toy-ftp/test"
.Linfo_string3:
	.asciz	"sum"
.Linfo_string4:
	.asciz	"long unsigned int"
.Linfo_string5:
	.asciz	"flog"
.Linfo_string6:
	.asciz	"_flags"
.Linfo_string7:
	.asciz	"int"
.Linfo_string8:
	.asciz	"_IO_read_ptr"
.Linfo_string9:
	.asciz	"char"
.Linfo_string10:
	.asciz	"_IO_read_end"
.Linfo_string11:
	.asciz	"_IO_read_base"
.Linfo_string12:
	.asciz	"_IO_write_base"
.Linfo_string13:
	.asciz	"_IO_write_ptr"
.Linfo_string14:
	.asciz	"_IO_write_end"
.Linfo_string15:
	.asciz	"_IO_buf_base"
.Linfo_string16:
	.asciz	"_IO_buf_end"
.Linfo_string17:
	.asciz	"_IO_save_base"
.Linfo_string18:
	.asciz	"_IO_backup_base"
.Linfo_string19:
	.asciz	"_IO_save_end"
.Linfo_string20:
	.asciz	"_markers"
.Linfo_string21:
	.asciz	"_next"
.Linfo_string22:
	.asciz	"_sbuf"
.Linfo_string23:
	.asciz	"_pos"
.Linfo_string24:
	.asciz	"_IO_marker"
.Linfo_string25:
	.asciz	"_chain"
.Linfo_string26:
	.asciz	"_fileno"
.Linfo_string27:
	.asciz	"_flags2"
.Linfo_string28:
	.asciz	"_old_offset"
.Linfo_string29:
	.asciz	"long int"
.Linfo_string30:
	.asciz	"__off_t"
.Linfo_string31:
	.asciz	"_cur_column"
.Linfo_string32:
	.asciz	"unsigned short"
.Linfo_string33:
	.asciz	"_vtable_offset"
.Linfo_string34:
	.asciz	"signed char"
.Linfo_string35:
	.asciz	"_shortbuf"
.Linfo_string36:
	.asciz	"_lock"
.Linfo_string37:
	.asciz	"_offset"
.Linfo_string38:
	.asciz	"__off64_t"
.Linfo_string39:
	.asciz	"__pad1"
.Linfo_string40:
	.asciz	"__pad2"
.Linfo_string41:
	.asciz	"__pad3"
.Linfo_string42:
	.asciz	"__pad4"
.Linfo_string43:
	.asciz	"__pad5"
.Linfo_string44:
	.asciz	"size_t"
.Linfo_string45:
	.asciz	"_mode"
.Linfo_string46:
	.asciz	"_unused2"
.Linfo_string47:
	.asciz	"_IO_FILE"
.Linfo_string48:
	.asciz	"FILE"
.Linfo_string49:
	.asciz	"p2addr"
.Linfo_string50:
	.asciz	"short"
.Linfo_string51:
	.asciz	"buf1"
.Linfo_string52:
	.asciz	"buf2"
.Linfo_string53:
	.asciz	"pos"
.Linfo_string54:
	.asciz	"buf"
.Linfo_string55:
	.asciz	"tv_old"
.Linfo_string56:
	.asciz	"tv_sec"
.Linfo_string57:
	.asciz	"__time_t"
.Linfo_string58:
	.asciz	"tv_usec"
.Linfo_string59:
	.asciz	"__suseconds_t"
.Linfo_string60:
	.asciz	"timeval"
.Linfo_string61:
	.asciz	"tv_new"
.Linfo_string62:
	.asciz	"buf_switcher"
.Linfo_string63:
	.asciz	"_StraightTaint_init"
.Linfo_string64:
	.asciz	"../../straightDFA/log.c"
.Linfo_string65:
	.asciz	"_StraightTaint_log"
.Linfo_string66:
	.asciz	"_StraightTaint_fork32"
.Linfo_string67:
	.asciz	"_StraightTaint_fork64"
.Linfo_string68:
	.asciz	"do_StraightTaint_fork"
.Linfo_string69:
	.asciz	"pos_old"
.Linfo_string70:
	.asciz	"ptrToAddr"
.Linfo_string71:
	.asciz	"pid"
.Linfo_string72:
	.asciz	"filename"
.Linfo_string73:
	.asciz	"BBID"
.Linfo_string74:
	.asciz	"lpid"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1026                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x3fb DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	59                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	sum
	.byte	3                       # Abbrev [3] 0x3b:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x42:0x15 DW_TAG_variable
	.long	.Linfo_string5          # DW_AT_name
	.long	87                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	flog
	.byte	4                       # Abbrev [4] 0x57:0x5 DW_TAG_pointer_type
	.long	92                      # DW_AT_type
	.byte	5                       # Abbrev [5] 0x5c:0xb DW_TAG_typedef
	.long	103                     # DW_AT_type
	.long	.Linfo_string48         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x67:0x1a0 DW_TAG_structure_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.short	273                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x70:0xe DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x7e:0xe DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x8c:0xe DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x9a:0xe DW_TAG_member
	.long	.Linfo_string11         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	281                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xa8:0xe DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	282                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xb6:0xe DW_TAG_member
	.long	.Linfo_string13         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xc4:0xe DW_TAG_member
	.long	.Linfo_string14         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xd2:0xe DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	285                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xe0:0xe DW_TAG_member
	.long	.Linfo_string16         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xee:0xe DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0xfc:0xe DW_TAG_member
	.long	.Linfo_string18         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x10a:0xe DW_TAG_member
	.long	.Linfo_string19         # DW_AT_name
	.long	526                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x118:0xe DW_TAG_member
	.long	.Linfo_string20         # DW_AT_name
	.long	538                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x126:0xe DW_TAG_member
	.long	.Linfo_string25         # DW_AT_name
	.long	591                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x134:0xe DW_TAG_member
	.long	.Linfo_string26         # DW_AT_name
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x142:0xe DW_TAG_member
	.long	.Linfo_string27         # DW_AT_name
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	300                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x150:0xe DW_TAG_member
	.long	.Linfo_string28         # DW_AT_name
	.long	596                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x15e:0xe DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	614                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x16c:0xe DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	621                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x17a:0xe DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	628                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x188:0xe DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	312                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x196:0xe DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	648                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	321                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1a4:0xe DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	330                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1b2:0xe DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	331                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1c0:0xe DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1ce:0xe DW_TAG_member
	.long	.Linfo_string42         # DW_AT_name
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	333                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1dc:0xe DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	659                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1ea:0xe DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	336                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x1f8:0xe DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	670                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	338                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x207:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x20e:0x5 DW_TAG_pointer_type
	.long	531                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x213:0x7 DW_TAG_base_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x21a:0x5 DW_TAG_pointer_type
	.long	543                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x21f:0x30 DW_TAG_structure_type
	.long	.Linfo_string24         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x227:0xd DW_TAG_member
	.long	.Linfo_string21         # DW_AT_name
	.long	538                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x234:0xd DW_TAG_member
	.long	.Linfo_string22         # DW_AT_name
	.long	591                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x241:0xd DW_TAG_member
	.long	.Linfo_string23         # DW_AT_name
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	194                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x24f:0x5 DW_TAG_pointer_type
	.long	103                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x254:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x25f:0x7 DW_TAG_base_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x266:0x7 DW_TAG_base_type
	.long	.Linfo_string32         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x26d:0x7 DW_TAG_base_type
	.long	.Linfo_string34         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x274:0xc DW_TAG_array_type
	.long	531                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x279:0x6 DW_TAG_subrange_type
	.long	640                     # DW_AT_type
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x280:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x287:0x1 DW_TAG_pointer_type
	.byte	5                       # Abbrev [5] 0x288:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string38         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x293:0xb DW_TAG_typedef
	.long	59                      # DW_AT_type
	.long	.Linfo_string44         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x29e:0xc DW_TAG_array_type
	.long	531                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x2a3:0x6 DW_TAG_subrange_type
	.long	640                     # DW_AT_type
	.byte	19                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	14                      # Abbrev [14] 0x2aa:0x15 DW_TAG_variable
	.long	.Linfo_string49         # DW_AT_name
	.long	703                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	p2addr
	.byte	4                       # Abbrev [4] 0x2bf:0x5 DW_TAG_pointer_type
	.long	708                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x2c4:0x5 DW_TAG_pointer_type
	.long	713                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x2c9:0x7 DW_TAG_base_type
	.long	.Linfo_string50         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x2d0:0x15 DW_TAG_variable
	.long	.Linfo_string51         # DW_AT_name
	.long	708                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf1
	.byte	2                       # Abbrev [2] 0x2e5:0x15 DW_TAG_variable
	.long	.Linfo_string52         # DW_AT_name
	.long	708                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf2
	.byte	2                       # Abbrev [2] 0x2fa:0x15 DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.long	708                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	pos
	.byte	2                       # Abbrev [2] 0x30f:0x15 DW_TAG_variable
	.long	.Linfo_string54         # DW_AT_name
	.long	708                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf
	.byte	2                       # Abbrev [2] 0x324:0x15 DW_TAG_variable
	.long	.Linfo_string55         # DW_AT_name
	.long	825                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	tv_old
	.byte	8                       # Abbrev [8] 0x339:0x23 DW_TAG_structure_type
	.long	.Linfo_string60         # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x341:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	860                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x34e:0xd DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	871                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x35c:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string57         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x367:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.byte	2                       # Abbrev [2] 0x372:0x15 DW_TAG_variable
	.long	.Linfo_string61         # DW_AT_name
	.long	825                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	tv_new
	.byte	15                      # Abbrev [15] 0x387:0x28 DW_TAG_subprogram
	.long	.Linfo_string62         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x3a0:0xe DW_TAG_variable
	.long	.Linfo_string69         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x3af:0x49 DW_TAG_subprogram
	.long	.Linfo_string63         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	708                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	18                      # Abbrev [18] 0x3cc:0xe DW_TAG_formal_parameter
	.long	.Linfo_string70         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	703                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	16                      # Abbrev [16] 0x3da:0xe DW_TAG_variable
	.long	.Linfo_string71         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.byte	16                      # Abbrev [16] 0x3e8:0xf DW_TAG_variable
	.long	.Linfo_string72         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	1016                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x3f8:0xd DW_TAG_array_type
	.long	531                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x3fd:0x7 DW_TAG_subrange_type
	.long	640                     # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
.L.debug_info_begin1:
	.long	254                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xf7 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string64         # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	20                      # Abbrev [20] 0x26:0x28 DW_TAG_subprogram
	.long	.Linfo_string65         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.quad	.Lfunc_end6             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	21                      # Abbrev [21] 0x3f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string73         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.long	.Lsection_info+713      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x4e:0x28 DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.quad	.Lfunc_end7             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	21                      # Abbrev [21] 0x67:0xe DW_TAG_formal_parameter
	.long	.Linfo_string71         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x76:0x36 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.quad	.Lfunc_end8             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	21                      # Abbrev [21] 0x8f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string74         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.long	.Lsection_info+607      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	22                      # Abbrev [22] 0x9d:0xe DW_TAG_variable
	.long	.Linfo_string71         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0xac:0x55 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.quad	.Lfunc_end9             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	21                      # Abbrev [21] 0xc5:0xe DW_TAG_formal_parameter
	.long	.Linfo_string71         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	24                      # Abbrev [24] 0xd3:0x2d DW_TAG_lexical_block
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	24                      # Abbrev [24] 0xd8:0x27 DW_TAG_lexical_block
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	25                      # Abbrev [25] 0xdd:0x21 DW_TAG_lexical_block
	.quad	.Ltmp77                 # DW_AT_low_pc
	.quad	.Ltmp78                 # DW_AT_high_pc
	.byte	22                      # Abbrev [22] 0xee:0xf DW_TAG_variable
	.long	.Linfo_string72         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.long	.Lsection_info+1016     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360w"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end1:
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_aranges,"",@progbits
	.long	188                     # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin0    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	p2addr
	.quad	8
	.quad	pos
	.quad	8
	.quad	buf1
	.quad	8
	.quad	flog
	.quad	8
	.quad	buf2
	.quad	8
	.quad	buf
	.quad	8
	.quad	tv_old
	.quad	16
	.quad	tv_new
	.quad	16
	.quad	sum
.Lset0 = .Ldebug_end1-sum
	.quad	.Lset0
	.quad	.Lfunc_begin4
.Lset1 = .Lfunc_begin6-.Lfunc_begin4
	.quad	.Lset1
	.quad	0                       # ARange terminator
	.quad	0
	.long	44                      # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin1    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	.Lfunc_begin6
.Lset2 = .Ldebug_end2-.Lfunc_begin6
	.quad	.Lset2
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
.Lgnu_ranges1:
.Ldebug_ranges0:
	.quad	.Ltmp76
	.quad	.Ltmp78
	.quad	.Ltmp79
	.quad	.Ltmp80
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp76
	.quad	.Ltmp78
	.quad	.Ltmp79
	.quad	.Ltmp80
	.quad	0
	.quad	0
.Lgnu_ranges0:
	.section	.debug_macinfo,"",@progbits
	.section	.debug_pubnames,"",@progbits
.Lset3 = .Lpubnames_end0-.Lpubnames_begin0 # Length of Public Names Info
	.long	.Lset3
.Lpubnames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset4 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset4
	.long	762                     # DIE offset
	.asciz	"pos"                   # External Name
	.long	882                     # DIE offset
	.asciz	"tv_new"                # External Name
	.long	38                      # DIE offset
	.asciz	"sum"                   # External Name
	.long	903                     # DIE offset
	.asciz	"buf_switcher"          # External Name
	.long	66                      # DIE offset
	.asciz	"flog"                  # External Name
	.long	804                     # DIE offset
	.asciz	"tv_old"                # External Name
	.long	943                     # DIE offset
	.asciz	"_StraightTaint_init"   # External Name
	.long	783                     # DIE offset
	.asciz	"buf"                   # External Name
	.long	720                     # DIE offset
	.asciz	"buf1"                  # External Name
	.long	741                     # DIE offset
	.asciz	"buf2"                  # External Name
	.long	0                       # End Mark
.Lpubnames_end0:
.Lset5 = .Lpubnames_end1-.Lpubnames_begin1 # Length of Public Names Info
	.long	.Lset5
.Lpubnames_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset6 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset6
	.long	118                     # DIE offset
	.asciz	"_StraightTaint_fork64" # External Name
	.long	38                      # DIE offset
	.asciz	"_StraightTaint_log"    # External Name
	.long	172                     # DIE offset
	.asciz	"do_StraightTaint_fork" # External Name
	.long	78                      # DIE offset
	.asciz	"_StraightTaint_fork32" # External Name
	.long	0                       # End Mark
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset7 = .Lpubtypes_end0-.Lpubtypes_begin0 # Length of Public Types Info
	.long	.Lset7
.Lpubtypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset8 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset8
	.long	92                      # DIE offset
	.asciz	"FILE"                  # External Name
	.long	860                     # DIE offset
	.asciz	"__time_t"              # External Name
	.long	871                     # DIE offset
	.asciz	"__suseconds_t"         # External Name
	.long	519                     # DIE offset
	.asciz	"int"                   # External Name
	.long	596                     # DIE offset
	.asciz	"__off_t"               # External Name
	.long	614                     # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	659                     # DIE offset
	.asciz	"size_t"                # External Name
	.long	713                     # DIE offset
	.asciz	"short"                 # External Name
	.long	825                     # DIE offset
	.asciz	"timeval"               # External Name
	.long	648                     # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	103                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	621                     # DIE offset
	.asciz	"signed char"           # External Name
	.long	59                      # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	543                     # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	607                     # DIE offset
	.asciz	"long int"              # External Name
	.long	531                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end0:
.Lset9 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset9
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset10 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset10
	.long	0                       # End Mark
.Lpubtypes_end1:

	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
