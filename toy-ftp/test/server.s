	.file	"inline.bc"
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
	.file	3 "../../straightDFA/log.h"
	.file	4 "/usr/include/x86_64-linux-gnu/bits/semaphore.h"
	.file	5 "../../straightDFA/log.c"
	.text
	.globl	myListen
	.align	16, 0x90
	.type	myListen,@function
myListen:                               # @myListen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movw	$1, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$1, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_3
# BB#1:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_3:                                # %_StraightTaint_log.exit
	movq	%rsp, %rcx
	leaq	-16(%rcx), %rax
	movq	%rcx, %rbx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	-16(%rax), %r13
	movq	%r13, %rsp
	movq	%rsp, %r12
	leaq	-16(%r12), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	movq	%rsp, %r14
	addq	$-16, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	addq	$-16, %r15
	movq	%r15, %rsp
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	addq	$-16, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsp
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	$0, -16(%rbx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	$0, -16(%rax)
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, -16(%rbx)
	movl	$.L.str1, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$3472328296227680304, %rax # imm = 0x3030303030303030
	movq	%r12, %rcx
	movq	%rax, -8(%rcx)
	movq	%rax, -16(%rcx)
	movw	$2, -16(%rcx)
	xorl	%edi, %edi
	callq	htonl
	movl	%eax, -12(%r12)
	movl	$5000, %edi             # imm = 0x1388
	callq	htons
	movw	%ax, -14(%r12)
	movl	-16(%rbx), %edi
	movl	$16, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	bind
	movl	-16(%rbx), %edi
	movl	$10, %esi
	callq	listen
	cmpl	$-1, %eax
	je	.LBB0_4
# BB#8:                                 # %if.end
	movw	$3, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$3, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_11
# BB#9:                                 # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_11
# BB#10:                                # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_11:                               # %_StraightTaint_log.exit38
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-96(%rbp), %r12         # 8-byte Reload
	movl	$0, (%r12)
	jmp	.LBB0_12
	.align	16, 0x90
.LBB0_67:                               # %_StraightTaint_log.exit323
                                        #   in Loop: Header=BB0_12 Depth=1
	incl	(%r12)
.LBB0_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movw	$4, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$4, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_15
# BB#13:                                # %if.else.i52
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_15
# BB#14:                                # %if.then2.i55
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_15:                               # %_StraightTaint_log.exit57
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$2, (%r12)
	jg	.LBB0_68
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$5, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$5, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_19
# BB#17:                                # %if.else.i71
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_19
# BB#18:                                # %if.then2.i74
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_19:                               # %_StraightTaint_log.exit76
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str6, %edi
	xorl	%eax, %eax
	callq	printf
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ebx
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %edi
	callq	accept
	movl	%eax, (%r13)
	movl	$.L.str7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %esi
	movl	$.L.str8, %edi
	xorl	%eax, %eax
	callq	printf
	callq	fork
	movl	%eax, %ebx
	movl	%ebx, -44(%rbp)
	.loc	1 178 0                 # ../../straightDFA/init.c:178:0
	movl	%ebx, %edi
	callq	do_StraightTaint_fork
	testl	%ebx, %ebx
	movl	%ebx, (%r14)
	js	.LBB0_20
# BB#24:                                # %if.else
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$7, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$7, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_27
# BB#25:                                # %if.else.i109
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_27
# BB#26:                                # %if.then2.i112
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_27:                               # %_StraightTaint_log.exit114
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, (%r14)
	je	.LBB0_28
# BB#32:                                # %if.else26
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$9, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$9, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_35
# BB#33:                                # %if.else.i147
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_35
# BB#34:                                # %if.then2.i150
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_35:                               # %_StraightTaint_log.exit152
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	movq	%r15, %rdi
	callq	wait
	cmpl	$-1, %eax
	movl	%eax, (%r14)
	jne	.LBB0_40
# BB#36:                                # %if.then29
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$10, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$10, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_39
# BB#37:                                # %if.else.i166
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_39
# BB#38:                                # %if.then2.i169
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_39:                               # %_StraightTaint_log.exit171
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str11, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_55
	.align	16, 0x90
.LBB0_40:                               # %if.else31
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$11, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$11, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_43
# BB#41:                                # %if.else.i185
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_43
# BB#42:                                # %if.then2.i188
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_43:                               # %_StraightTaint_log.exit190
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	(%r15), %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	testb	$127, (%rcx)
	jne	.LBB0_48
# BB#44:                                # %if.then35
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$12, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$12, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_47
# BB#45:                                # %if.else.i204
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_47
# BB#46:                                # %if.then2.i207
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_47:                               # %_StraightTaint_log.exit209
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	(%r13), %edi
	callq	close
	movl	(%r14), %esi
	movl	$.L.str12, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_52
	.align	16, 0x90
.LBB0_48:                               # %if.else38
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$13, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$13, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_51
# BB#49:                                # %if.else.i223
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_51
# BB#50:                                # %if.then2.i226
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_51:                               # %_StraightTaint_log.exit228
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$.L.str13, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_52:                               # %if.end40
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$14, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$14, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_55
# BB#53:                                # %if.else.i242
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_55
# BB#54:                                # %if.then2.i245
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	.align	16, 0x90
.LBB0_55:                               # %if.end41
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$15, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$15, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_58
# BB#56:                                # %if.else.i261
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_58
# BB#57:                                # %if.then2.i264
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_58:                               # %if.end43
                                        #   in Loop: Header=BB0_12 Depth=1
	movl	$1, %edi
	callq	sleep
	movw	$16, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$16, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_61
# BB#59:                                # %if.else.i280
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_61
# BB#60:                                # %if.then2.i283
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_61:                               # %if.end44
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$17, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$17, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_64
# BB#62:                                # %if.else.i299
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_64
# BB#63:                                # %if.then2.i302
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_64:                               # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
	movw	$18, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$18, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_67
# BB#65:                                # %if.else.i318
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_67
# BB#66:                                # %if.then2.i321
                                        #   in Loop: Header=BB0_12 Depth=1
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	jmp	.LBB0_67
.LBB0_28:                               # %if.then19
	movw	$8, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$8, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_31
# BB#29:                                # %if.else.i128
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_31
# BB#30:                                # %if.then2.i131
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB0_31:                               # %_StraightTaint_log.exit133
	movl	(%r14), %esi
	movl	$.L.str9, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %edi
	xorl	%esi, %esi
	callq	dup2
	movl	%eax, %ecx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%ecx, (%rax)
	movl	$.L.str10, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	(%r13), %esi
	movl	$.L.str8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%r13), %edi
	callq	close
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	callq	close
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_4:                                # %if.then
	movw	$2, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$2, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_7:                                # %_StraightTaint_log.exit19
	movl	$.L.str2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str3, %edi
	movl	$.L.str4, %esi
	movl	$31, %edx
	movl	$.L__PRETTY_FUNCTION__.myListen, %ecx
	callq	__assert_fail
.LBB0_68:                               # %for.end
	movw	$19, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$19, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_71
# BB#69:                                # %if.else.i337
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_71
# BB#70:                                # %if.then2.i340
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_71:                               # %_StraightTaint_log.exit342
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, %edi
	callq	close
	xorl	%edi, %edi
	callq	exit
.LBB0_20:                               # %if.then17
	movw	$6, -44(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$6, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB0_23
# BB#21:                                # %if.else.i90
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB0_23
# BB#22:                                # %if.then2.i93
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB0_23:                               # %_StraightTaint_log.exit95
	movl	$.L.str3, %edi
	movl	$.L.str4, %esi
	movl	$46, %edx
	movl	$.L__PRETTY_FUNCTION__.myListen, %ecx
	callq	__assert_fail
.Ltmp11:
	.size	myListen, .Ltmp11-myListen
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp18:
	.cfi_offset %rbx, -56
.Ltmp19:
	.cfi_offset %r12, -48
.Ltmp20:
	.cfi_offset %r13, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movl	$addr, %edi
	callq	_StraightTaint_init
	movq	%rax, addr(%rip)
	movw	$20, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$20, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_3
# BB#1:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_3:                                # %_StraightTaint_log.exit
	movq	%rsp, %rax
	leaq	-16(%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r15
	addq	$-1040, %r15            # imm = 0xFFFFFFFFFFFFFBF0
	movq	%r15, %rsp
	movq	%rsp, %r13
	leaq	-16(%r13), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %r12
	addq	$-16, %r12
	movq	%r12, %rsp
	movq	%rsp, %rbx
	addq	$-16, %rbx
	movq	%rbx, %rsp
	movq	%rsp, %r14
	addq	$-32, %r14
	movq	%r14, %rsp
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	addq	$-16, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rsp
	movl	$0, -16(%rax)
	movl	$.L.str14, %edi
	xorl	%eax, %eax
	callq	printf
	callq	myListen
	xorl	%edi, %edi
	movl	$1025, %edx             # imm = 0x401
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	callq	recv
	testl	%eax, %eax
	movl	%eax, -16(%r13)
	je	.LBB1_18
# BB#4:                                 # %cond.true
	movw	$21, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$21, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_7:                                # %cond.end
	movw	$24, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$24, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_10
# BB#8:                                 # %if.else.i71
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_10
# BB#9:                                 # %if.then2.i74
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_10:                               # %_StraightTaint_log.exit76
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %esi
	movl	$.L.str16, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	sleep
	movq	%r15, %rdi
	callq	strlen
	movl	$1, %edi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	write
	callq	getpid
	testl	%eax, %eax
	movl	%eax, (%r12)
	jle	.LBB1_22
# BB#11:                                # %cond.true12
	movw	$25, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$25, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_14
# BB#12:                                # %if.else.i90
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_14
# BB#13:                                # %if.then2.i93
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_14:                               # %cond.end14
	movw	$28, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$28, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_17
# BB#15:                                # %if.else.i147
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_17
# BB#16:                                # %if.then2.i150
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.LBB1_17:                               # %_StraightTaint_log.exit152
	movl	(%r12), %ecx
	movl	$6, %esi
	movl	$.L.str18, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	movl	$.L.str19, %esi
	movq	%r14, %rdi
	callq	strcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str20, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rax, (%rbx)
	movl	$1, %esi
	movl	$1025, %edx             # imm = 0x401
	movq	%r15, %rdi
	movq	%rax, %rcx
	callq	fwrite
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	(%rbx), %rdi
	callq	fclose
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB1_18:                               # %cond.false
	movw	$22, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$22, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_21
# BB#19:                                # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_21
# BB#20:                                # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB1_21:                               # %_StraightTaint_log.exit38
	movl	$.L.str15, %edi
	movl	$.L.str4, %esi
	movl	$89, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.LBB1_22:                               # %cond.false13
	movw	$26, -42(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
	movq	addr(%rip), %rax
	movw	$26, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB1_25
# BB#23:                                # %if.else.i109
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB1_25
# BB#24:                                # %if.then2.i112
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rax
	addq	$64, %rax
	movq	%rax, %rdi
	callq	sem_wait
.LBB1_25:                               # %_StraightTaint_log.exit114
	movl	$.L.str17, %edi
	movl	$.L.str4, %esi
	movl	$94, %edx
	movl	$.L__PRETTY_FUNCTION__.main, %ecx
	callq	__assert_fail
.Ltmp23:
	.size	main, .Ltmp23-main
	.cfi_endproc

	.globl	_StraightTaint_init
	.align	16, 0x90
	.type	_StraightTaint_init,@function
_StraightTaint_init:                    # @_StraightTaint_init
.Lfunc_begin2:
	.loc	1 29 0                  # ../../straightDFA/init.c:29:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	.loc	1 30 0 prologue_end     # ../../straightDFA/init.c:30:0
.Ltmp31:
	movl	$.L.str21, %edi
	movl	$.L.str122, %esi
	callq	fopen
	movq	%rax, Ferror(%rip)
	.loc	1 32 0                  # ../../straightDFA/init.c:32:0
	movq	$buf2, buf1+96(%rip)
	.loc	1 33 0                  # ../../straightDFA/init.c:33:0
	movq	$buf1, buf2+96(%rip)
	.loc	1 34 0                  # ../../straightDFA/init.c:34:0
	movq	$buf1, buf(%rip)
	movl	$20971520, %edi         # imm = 0x1400000
	.loc	1 35 0                  # ../../straightDFA/init.c:35:0
	callq	malloc
	testq	%rax, %rax
	movq	%rax, -24(%rbp)
	.loc	1 36 0                  # ../../straightDFA/init.c:36:0
.Ltmp32:
	je	.LBB2_4
.Ltmp33:
# BB#1:                                 # %if.end
	.loc	1 40 0                  # ../../straightDFA/init.c:40:0
	movq	-24(%rbp), %rax
	movq	%rax, buf1(%rip)
	movl	$10485758, %eax         # imm = 0x9FFFFE
	.loc	1 41 0                  # ../../straightDFA/init.c:41:0
	addq	-24(%rbp), %rax
	movq	%rax, buf1+8(%rip)
	movl	$10485760, %eax         # imm = 0xA00000
	.loc	1 42 0                  # ../../straightDFA/init.c:42:0
	addq	-24(%rbp), %rax
	movq	%rax, buf2(%rip)
	movl	$20971518, %eax         # imm = 0x13FFFFE
	.loc	1 43 0                  # ../../straightDFA/init.c:43:0
	addq	-24(%rbp), %rax
	movq	%rax, buf2+8(%rip)
	movl	$buf1+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 44 0                  # ../../straightDFA/init.c:44:0
	callq	sem_init
	movl	$buf1+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 45 0                  # ../../straightDFA/init.c:45:0
	callq	sem_init
	movl	$buf2+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 46 0                  # ../../straightDFA/init.c:46:0
	callq	sem_init
	movl	$buf2+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 47 0                  # ../../straightDFA/init.c:47:0
	callq	sem_init
	movl	$buf1+64, %edi
	.loc	1 48 0                  # ../../straightDFA/init.c:48:0
	callq	sem_post
	movl	$buf2+64, %edi
	.loc	1 49 0                  # ../../straightDFA/init.c:49:0
	callq	sem_post
.Ltmp34:
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	.loc	1 51 0                  # ../../straightDFA/init.c:51:0
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.Ltmp35:
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	1 53 0                  # ../../straightDFA/init.c:53:0
	movl	$.L.str324, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 54 0                  # ../../straightDFA/init.c:54:0
	movl	$.L.str122, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
	.loc	1 55 0                  # ../../straightDFA/init.c:55:0
	movl	$.L.str425, %edi
	.loc	1 54 0                  # ../../straightDFA/init.c:54:0
	movl	$.L.str122, %esi
	.loc	1 55 0                  # ../../straightDFA/init.c:55:0
	callq	fopen
	movq	%rax, %rcx
	movq	%rcx, configFile(%rip)
	.loc	1 56 0                  # ../../straightDFA/init.c:56:0
	movl	$.L.str526, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	.loc	1 57 0                  # ../../straightDFA/init.c:57:0
	movq	configFile(%rip), %rdi
	callq	fflush
.Ltmp36:
	#DEBUG_VALUE: _StraightTaint_init:regExit <- [RBP+-1060]
	.loc	1 61 0                  # ../../straightDFA/init.c:61:0
	movl	$_StraightTaint_logger_thread_terminate, %edi
	callq	atexit
	testl	%eax, %eax
	movl	%eax, -1060(%rbp)
	.loc	1 62 0                  # ../../straightDFA/init.c:62:0
.Ltmp37:
	jne	.LBB2_5
.Ltmp38:
# BB#2:                                 # %if.end25
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	#DEBUG_VALUE: _StraightTaint_init:regExit <- [RBP+-1060]
	.loc	1 68 0                  # ../../straightDFA/init.c:68:0
	movl	$logger_thread, %edi
	xorl	%esi, %esi
	movl	$_StraightTaint_logger_thread, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB2_6
.Ltmp39:
# BB#3:                                 # %if.end32
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	#DEBUG_VALUE: _StraightTaint_init:regExit <- [RBP+-1060]
	.loc	1 75 0                  # ../../straightDFA/init.c:75:0
	movq	buf(%rip), %rax
	movq	(%rax), %rax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%rbp
.Ltmp40:
	ret
.Ltmp41:
.LBB2_4:                                # %if.then
	.loc	1 37 0                  # ../../straightDFA/init.c:37:0
	movl	$.L.str223, %edi
	callq	perror
	movl	$1, %edi
	.loc	1 38 0                  # ../../straightDFA/init.c:38:0
	callq	exit
.Ltmp42:
.LBB2_5:                                # %if.then21
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	#DEBUG_VALUE: _StraightTaint_init:regExit <- [RBP+-1060]
	.loc	1 64 0                  # ../../straightDFA/init.c:64:0
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	-1060(%rbp), %r8d
	movl	$.L.str627, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	callq	fprintf
	.loc	1 65 0                  # ../../straightDFA/init.c:65:0
	movq	Ferror(%rip), %rax
	movq	%rax, %rdi
	callq	fflush
	movl	$-1, %edi
	.loc	1 66 0                  # ../../straightDFA/init.c:66:0
	callq	exit
.Ltmp43:
.LBB2_6:                                # %if.then28
	#DEBUG_VALUE: _StraightTaint_init:pid <- [RBP+-28]
	#DEBUG_VALUE: _StraightTaint_init:filename <- [RBP+-1056]
	#DEBUG_VALUE: _StraightTaint_init:regExit <- [RBP+-1060]
	.loc	1 69 0                  # ../../straightDFA/init.c:69:0
	movl	$.L.str728, %edi
	callq	perror
	.loc	1 70 0                  # ../../straightDFA/init.c:70:0
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str829, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	fprintf
	.loc	1 71 0                  # ../../straightDFA/init.c:71:0
	movq	Ferror(%rip), %rax
	movq	%rax, %rdi
	callq	fflush
	xorl	%edi, %edi
	.loc	1 72 0                  # ../../straightDFA/init.c:72:0
	callq	exit
.Ltmp44:
.Ltmp45:
	.size	_StraightTaint_init, .Ltmp45-_StraightTaint_init
.Lfunc_end2:
	.cfi_endproc

	.globl	_StraightTaint_fork32
	.align	16, 0x90
	.type	_StraightTaint_fork32,@function
_StraightTaint_fork32:                  # @_StraightTaint_fork32
.Lfunc_begin3:
	.loc	1 177 0                 # ../../straightDFA/init.c:177:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc	1 178 0 prologue_end    # ../../straightDFA/init.c:178:0
.Ltmp51:
	callq	do_StraightTaint_fork
	.loc	1 179 0                 # ../../straightDFA/init.c:179:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp52:
.Ltmp53:
	.size	_StraightTaint_fork32, .Ltmp53-_StraightTaint_fork32
.Lfunc_end3:
	.cfi_endproc

	.globl	_StraightTaint_fork64
	.align	16, 0x90
	.type	_StraightTaint_fork64,@function
_StraightTaint_fork64:                  # @_StraightTaint_fork64
.Lfunc_begin4:
	.loc	1 182 0                 # ../../straightDFA/init.c:182:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc	1 183 0 prologue_end    # ../../straightDFA/init.c:183:0
.Ltmp59:
	movl	-8(%rbp), %edi
	movl	%edi, -12(%rbp)
	.loc	1 184 0                 # ../../straightDFA/init.c:184:0
	callq	do_StraightTaint_fork
	.loc	1 185 0                 # ../../straightDFA/init.c:185:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp60:
.Ltmp61:
	.size	_StraightTaint_fork64, .Ltmp61-_StraightTaint_fork64
.Lfunc_end4:
	.cfi_endproc

	.align	16, 0x90
	.type	do_StraightTaint_fork,@function
do_StraightTaint_fork:                  # @do_StraightTaint_fork
.Lfunc_begin5:
	.loc	1 97 0                  # ../../straightDFA/init.c:97:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
.Ltmp68:
	.cfi_offset %rbx, -40
.Ltmp69:
	.cfi_offset %r14, -32
.Ltmp70:
	.cfi_offset %r15, -24
	testl	%edi, %edi
	movl	%edi, -32(%rbp)
	.loc	1 98 0 prologue_end     # ../../straightDFA/init.c:98:0
.Ltmp71:
	jle	.LBB5_10
# BB#1:                                 # %if.then
	movw	$0, -26(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp72:
	movq	addr(%rip), %rax
	movw	$0, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_4
# BB#2:                                 # %if.else.i
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then2.i
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp73:
.LBB5_4:                                # %_StraightTaint_log.exit
	.loc	1 101 0                 # ../../straightDFA/init.c:101:0
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$16, %ecx
	addl	%eax, %ecx
	shrl	$16, %ecx
	movw	%cx, -26(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp74:
	movq	addr(%rip), %rax
	movw	%cx, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_7
# BB#5:                                 # %if.else.i14
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_7
# BB#6:                                 # %if.then2.i17
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp75:
.LBB5_7:                                # %_StraightTaint_log.exit19
	.loc	1 102 0                 # ../../straightDFA/init.c:102:0
	movw	-32(%rbp), %ax
	movw	%ax, -26(%rbp)
	.loc	5 38 0                  # ../../straightDFA/log.c:38:0
.Ltmp76:
	movq	addr(%rip), %rcx
	movw	%ax, (%rcx)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
	movq	buf(%rip), %rcx
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB5_15
# BB#8:                                 # %if.else.i33
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB5_15
# BB#9:                                 # %if.then2.i36
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
	jmp	.LBB5_15
.Ltmp77:
.LBB5_10:                               # %if.else
	.loc	1 105 0                 # ../../straightDFA/init.c:105:0
	cmpl	$0, -32(%rbp)
	jne	.LBB5_19
# BB#11:                                # %if.then4
	.loc	1 132 0                 # ../../straightDFA/init.c:132:0
.Ltmp78:
	movq	$buf1, buf(%rip)
	.loc	1 133 0                 # ../../straightDFA/init.c:133:0
	movq	buf1(%rip), %rax
	movq	%rax, addr(%rip)
	movl	$buf1+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 134 0                 # ../../straightDFA/init.c:134:0
	callq	sem_init
	movl	$buf1+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 135 0                 # ../../straightDFA/init.c:135:0
	callq	sem_init
	movl	$buf2+32, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 136 0                 # ../../straightDFA/init.c:136:0
	callq	sem_init
	movl	$buf2+64, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.loc	1 137 0                 # ../../straightDFA/init.c:137:0
	callq	sem_init
	movl	$buf1+64, %edi
	.loc	1 138 0                 # ../../straightDFA/init.c:138:0
	callq	sem_post
	movl	$buf2+64, %edi
	.loc	1 139 0                 # ../../straightDFA/init.c:139:0
	callq	sem_post
.Ltmp79:
	#DEBUG_VALUE: pid <- [RBP+-36]
	.loc	1 141 0                 # ../../straightDFA/init.c:141:0
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
.Ltmp80:
	#DEBUG_VALUE: filename <- [RBP+-1072]
	leaq	-1072(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	.loc	1 143 0                 # ../../straightDFA/init.c:143:0
	movl	$.L.str324, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	snprintf
	.loc	1 144 0                 # ../../straightDFA/init.c:144:0
	movl	$.L.str122, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, %rbx
	movq	%rbx, flog(%rip)
	.loc	1 145 0                 # ../../straightDFA/init.c:145:0
	movq	Ferror(%rip), %r15
	callq	getpid
	movl	%eax, %r8d
	movl	$.L.str930, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	fprintf
	.loc	1 146 0                 # ../../straightDFA/init.c:146:0
	movq	Ferror(%rip), %rdi
	callq	fflush
	.loc	1 147 0                 # ../../straightDFA/init.c:147:0
	cmpq	$0, flog(%rip)
	je	.LBB5_16
# BB#12:                                # %cond.end
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
	.loc	1 149 0                 # ../../straightDFA/init.c:149:0
	movq	configFile(%rip), %rdi
	leaq	-1072(%rbp), %rdx
	movl	$.L.str526, %esi
	xorl	%eax, %eax
	callq	fprintf
	.loc	1 150 0                 # ../../straightDFA/init.c:150:0
	movq	configFile(%rip), %rdi
	callq	fflush
.Ltmp81:
	#DEBUG_VALUE: regExit <- [RBP+-1076]
	.loc	1 154 0                 # ../../straightDFA/init.c:154:0
	movl	$_StraightTaint_logger_thread_terminate, %edi
	callq	atexit
	testl	%eax, %eax
	movl	%eax, -1076(%rbp)
	.loc	1 155 0                 # ../../straightDFA/init.c:155:0
.Ltmp82:
	jne	.LBB5_17
.Ltmp83:
# BB#13:                                # %if.end
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
	#DEBUG_VALUE: regExit <- [RBP+-1076]
	.loc	1 161 0                 # ../../straightDFA/init.c:161:0
	movl	$logger_thread, %edi
	xorl	%esi, %esi
	movl	$_StraightTaint_logger_thread, %edx
	xorl	%ecx, %ecx
	callq	pthread_create
	testl	%eax, %eax
	jne	.LBB5_18
.Ltmp84:
# BB#14:                                # %if.end34
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
	#DEBUG_VALUE: regExit <- [RBP+-1076]
	.loc	1 167 0                 # ../../straightDFA/init.c:167:0
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str1233, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	fprintf
	.loc	1 168 0                 # ../../straightDFA/init.c:168:0
	movq	Ferror(%rip), %rdi
	callq	fflush
.Ltmp85:
.LBB5_15:                               # %if.end40
	.loc	1 174 0                 # ../../straightDFA/init.c:174:0
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB5_19:                               # %if.else38
	.loc	1 172 0                 # ../../straightDFA/init.c:172:0
.Ltmp86:
	movl	$.L.str1334, %edi
	movl	$.L.str1132, %esi
	movl	$172, %edx
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.Ltmp87:
.LBB5_16:                               # %cond.false
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
	.loc	1 147 0                 # ../../straightDFA/init.c:147:0
	movl	$.L.str1031, %edi
	movl	$.L.str1132, %esi
	movl	$147, %edx
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.LBB5_17:                               # %if.then24
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
.Ltmp88:
	#DEBUG_VALUE: regExit <- [RBP+-1076]
	.loc	1 157 0                 # ../../straightDFA/init.c:157:0
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	-1076(%rbp), %r8d
	movl	$.L.str627, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	callq	fprintf
	.loc	1 158 0                 # ../../straightDFA/init.c:158:0
	movq	Ferror(%rip), %rax
	movq	%rax, %rdi
	callq	fflush
	movl	$-1, %edi
	.loc	1 159 0                 # ../../straightDFA/init.c:159:0
	callq	exit
.Ltmp89:
.LBB5_18:                               # %if.then30
	#DEBUG_VALUE: pid <- [RBP+-36]
	#DEBUG_VALUE: filename <- [RBP+-1072]
	#DEBUG_VALUE: regExit <- [RBP+-1076]
	.loc	1 162 0                 # ../../straightDFA/init.c:162:0
	movl	$.L.str728, %edi
	callq	perror
	.loc	1 163 0                 # ../../straightDFA/init.c:163:0
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str829, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	fprintf
	.loc	1 164 0                 # ../../straightDFA/init.c:164:0
	movq	Ferror(%rip), %rax
	movq	%rax, %rdi
	callq	fflush
	xorl	%edi, %edi
	.loc	1 165 0                 # ../../straightDFA/init.c:165:0
	callq	exit
.Ltmp90:
.Ltmp91:
	.size	do_StraightTaint_fork, .Ltmp91-do_StraightTaint_fork
.Lfunc_end5:
	.cfi_endproc

	.globl	_StraightTaint_pseudo
	.align	16, 0x90
	.type	_StraightTaint_pseudo,@function
_StraightTaint_pseudo:                  # @_StraightTaint_pseudo
.Lfunc_begin6:
	.loc	5 24 0                  # ../../straightDFA/log.c:24:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	.loc	5 25 0 prologue_end     # ../../straightDFA/log.c:25:0
.Ltmp97:
	popq	%rbp
	ret
.Ltmp98:
.Ltmp99:
	.size	_StraightTaint_pseudo, .Ltmp99-_StraightTaint_pseudo
.Lfunc_end6:
	.cfi_endproc

	.globl	_StraightTaint_flush
	.align	16, 0x90
	.type	_StraightTaint_flush,@function
_StraightTaint_flush:                   # @_StraightTaint_flush
.Lfunc_begin7:
	.loc	5 28 0                  # ../../straightDFA/log.c:28:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	5 29 0 prologue_end     # ../../straightDFA/log.c:29:0
.Ltmp105:
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	5 30 0                  # ../../straightDFA/log.c:30:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp106:
.Ltmp107:
	.size	_StraightTaint_flush, .Ltmp107-_StraightTaint_flush
.Lfunc_end7:
	.cfi_endproc

	.globl	_StraightTaint_log
	.align	16, 0x90
	.type	_StraightTaint_log,@function
_StraightTaint_log:                     # @_StraightTaint_log
.Lfunc_begin8:
	.loc	5 33 0                  # ../../straightDFA/log.c:33:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	5 38 0 prologue_end     # ../../straightDFA/log.c:38:0
.Ltmp113:
	movq	addr(%rip), %rax
	movw	%di, (%rax)
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	movq	addr(%rip), %rax
	addq	$2, %rax
	movq	%rax, addr(%rip)
	.loc	5 40 0                  # ../../straightDFA/log.c:40:0
.Ltmp114:
	movq	buf(%rip), %rcx
.Ltmp115:
	.loc	5 39 0                  # ../../straightDFA/log.c:39:0
	cmpq	8(%rcx), %rax
	jne	.LBB8_3
# BB#1:                                 # %if.else
	.loc	5 45 0                  # ../../straightDFA/log.c:45:0
.Ltmp116:
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 47 0                  # ../../straightDFA/log.c:47:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 50 0                  # ../../straightDFA/log.c:50:0
	movq	buf(%rip), %rax
	movq	96(%rax), %rax
	movq	%rax, buf(%rip)
	.loc	5 51 0                  # ../../straightDFA/log.c:51:0
	movq	(%rax), %rax
	movq	%rax, addr(%rip)
	.loc	5 53 0                  # ../../straightDFA/log.c:53:0
.Ltmp117:
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_trywait
	testl	%eax, %eax
	je	.LBB8_3
# BB#2:                                 # %if.then2
	.loc	5 55 0                  # ../../straightDFA/log.c:55:0
.Ltmp118:
	movq	buf(%rip), %rdi
	addq	$64, %rdi
	callq	sem_wait
.Ltmp119:
.LBB8_3:                                # %return
	.loc	5 62 0                  # ../../straightDFA/log.c:62:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp120:
.Ltmp121:
	.size	_StraightTaint_log, .Ltmp121-_StraightTaint_log
.Lfunc_end8:
	.cfi_endproc

	.globl	_StraightTaint_logger_thread
	.align	16, 0x90
	.type	_StraightTaint_logger_thread,@function
_StraightTaint_logger_thread:           # @_StraightTaint_logger_thread
.Lfunc_begin9:
	.loc	5 65 0                  # ../../straightDFA/log.c:65:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$168, %rsp
.Ltmp128:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	.loc	5 66 0 prologue_end     # ../../straightDFA/log.c:66:0
.Ltmp129:
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str41, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	fprintf
	.loc	5 67 0                  # ../../straightDFA/log.c:67:0
	movq	Ferror(%rip), %rdi
	callq	fflush
	leaq	-144(%rbp), %rbx
	.loc	5 71 0                  # ../../straightDFA/log.c:71:0
	movq	%rbx, %rdi
	callq	sigfillset
	movl	$2, %edi
	xorl	%edx, %edx
	.loc	5 72 0                  # ../../straightDFA/log.c:72:0
	movq	%rbx, %rsi
	callq	pthread_sigmask
	movl	%eax, -148(%rbp)
	.loc	5 74 0                  # ../../straightDFA/log.c:74:0
	movq	buf(%rip), %rax
	movq	%rax, -160(%rbp)
	.align	16, 0x90
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	.loc	5 77 0                  # ../../straightDFA/log.c:77:0
.Ltmp130:
	movq	-160(%rbp), %rdi
	addq	$32, %rdi
	callq	sem_wait
.Ltmp131:
	#DEBUG_VALUE: size <- [RBP+-164]
	.loc	5 81 0                  # ../../straightDFA/log.c:81:0
	movq	-160(%rbp), %rax
	movq	16(%rax), %rcx
	subq	(%rax), %rcx
	shrq	%rcx
	movl	%ecx, -164(%rbp)
	.loc	5 82 0                  # ../../straightDFA/log.c:82:0
	movq	-160(%rbp), %rax
	movq	(%rax), %rdi
	movslq	-164(%rbp), %rdx
	movq	flog(%rip), %rcx
	movl	$2, %esi
	callq	fwrite
	.loc	5 83 0                  # ../../straightDFA/log.c:83:0
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	5 85 0                  # ../../straightDFA/log.c:85:0
	movq	-160(%rbp), %rdi
	addq	$64, %rdi
	callq	sem_post
	.loc	5 86 0                  # ../../straightDFA/log.c:86:0
	movq	-160(%rbp), %rax
	movq	96(%rax), %rax
	testq	%rax, %rax
	movq	%rax, -160(%rbp)
	.loc	5 87 0                  # ../../straightDFA/log.c:87:0
.Ltmp132:
	jne	.LBB9_1
.Ltmp133:
# BB#2:                                 # %for.end
	xorl	%eax, %eax
	.loc	5 92 0                  # ../../straightDFA/log.c:92:0
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp134:
.Ltmp135:
	.size	_StraightTaint_logger_thread, .Ltmp135-_StraightTaint_logger_thread
.Lfunc_end9:
	.file	6 "/usr/include/x86_64-linux-gnu/bits/sigset.h"
	.cfi_endproc

	.globl	_StraightTaint_logger_thread_terminate
	.align	16, 0x90
	.type	_StraightTaint_logger_thread_terminate,@function
_StraightTaint_logger_thread_terminate: # @_StraightTaint_logger_thread_terminate
.Lfunc_begin10:
	.loc	5 96 0                  # ../../straightDFA/log.c:96:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	.loc	5 97 0 prologue_end     # ../../straightDFA/log.c:97:0
.Ltmp142:
	pushq	%rbx
	pushq	%rax
.Ltmp143:
	.cfi_offset %rbx, -24
	movq	Ferror(%rip), %rbx
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str142, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	fprintf
	.loc	5 98 0                  # ../../straightDFA/log.c:98:0
	movq	Ferror(%rip), %rdi
	callq	fflush
	.loc	5 100 0                 # ../../straightDFA/log.c:100:0
	movq	addr(%rip), %rax
	movq	buf(%rip), %rcx
	movq	%rax, 16(%rcx)
	.loc	5 101 0                 # ../../straightDFA/log.c:101:0
	movq	buf(%rip), %rax
	movq	$0, 96(%rax)
	.loc	5 102 0                 # ../../straightDFA/log.c:102:0
	movq	buf(%rip), %rdi
	addq	$32, %rdi
	callq	sem_post
	.loc	5 103 0                 # ../../straightDFA/log.c:103:0
	movq	logger_thread(%rip), %rdi
	xorl	%esi, %esi
	callq	pthread_join
	.loc	5 104 0                 # ../../straightDFA/log.c:104:0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp144:
.Ltmp145:
	.size	_StraightTaint_logger_thread_terminate, .Ltmp145-_StraightTaint_logger_thread_terminate
.Lfunc_end10:
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Parent pid is: %d\n"
	.size	.L.str, 19

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"socket retrieve success\n"
	.size	.L.str1, 25

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"Failed to listen\n"
	.size	.L.str2, 18

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"0"
	.size	.L.str3, 2

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"server.c"
	.size	.L.str4, 9

	.type	.L__PRETTY_FUNCTION__.myListen,@object # @__PRETTY_FUNCTION__.myListen
.L__PRETTY_FUNCTION__.myListen:
	.asciz	"void myListen()"
	.size	.L__PRETTY_FUNCTION__.myListen, 16

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"begin listen...\n"
	.size	.L.str5, 17

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"loop...\n"
	.size	.L.str6, 9

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"socket accept\n"
	.size	.L.str7, 15

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"connfd: %d\n"
	.size	.L.str8, 12

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"This is child process. pid: %d\n"
	.size	.L.str9, 32

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"newfdin: %d\n"
	.size	.L.str10, 13

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"wait failed\n"
	.size	.L.str11, 13

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"This is parent process. child pid is : %d\n"
	.size	.L.str12, 43

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"Child process ends unexpectedly\n"
	.size	.L.str13, 33

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"main()\n"
	.size	.L.str14, 8

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"recvnum!=0"
	.size	.L.str15, 11

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main()"
	.size	.L__PRETTY_FUNCTION__.main, 11

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"recvnum: %d\n"
	.size	.L.str16, 13

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"pid>0"
	.size	.L.str17, 6

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"%d"
	.size	.L.str18, 3

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	"log_"
	.size	.L.str19, 5

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"w"
	.size	.L.str20, 2

	.type	addr,@object            # @addr
	.comm	addr,8,8
	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"LoggingError"
	.size	.L.str21, 13

	.type	.L.str122,@object       # @.str122
.L.str122:
	.asciz	"w+"
	.size	.L.str122, 3

	.type	Ferror,@object          # @Ferror
	.comm	Ferror,8,8
	.type	buf2,@object            # @buf2
	.comm	buf2,104,8
	.type	buf1,@object            # @buf1
	.comm	buf1,104,8
	.type	buf,@object             # @buf
	.comm	buf,8,8
	.type	.L.str223,@object       # @.str223
.L.str223:
	.asciz	"malloc"
	.size	.L.str223, 7

	.type	.L.str324,@object       # @.str324
.L.str324:
	.asciz	"tmp.%d"
	.size	.L.str324, 7

	.type	flog,@object            # @flog
	.comm	flog,8,8
	.type	.L.str425,@object       # @.str425
.L.str425:
	.asciz	"configFile"
	.size	.L.str425, 11

	.type	configFile,@object      # @configFile
	.comm	configFile,8,8
	.type	.L.str526,@object       # @.str526
.L.str526:
	.asciz	"%s\n"
	.size	.L.str526, 4

	.type	.L.str627,@object       # @.str627
.L.str627:
	.asciz	"Failed in registering atexit() returns %d. pid: %d\n"
	.size	.L.str627, 52

	.type	logger_thread,@object   # @logger_thread
	.comm	logger_thread,8,8
	.type	.L.str728,@object       # @.str728
.L.str728:
	.asciz	"failed to create logger thread"
	.size	.L.str728, 31

	.type	.L.str829,@object       # @.str829
.L.str829:
	.asciz	"failed to create logger thread. pid: %d\n"
	.size	.L.str829, 41

	.type	.L.str930,@object       # @.str930
.L.str930:
	.asciz	"tmpfilename: %s. flog:%p. pid: %d\n"
	.size	.L.str930, 35

	.type	.L.str1031,@object      # @.str1031
.L.str1031:
	.asciz	"flog"
	.size	.L.str1031, 5

	.type	.L.str1132,@object      # @.str1132
.L.str1132:
	.asciz	"../../straightDFA/init.c"
	.size	.L.str1132, 25

	.type	.L__PRETTY_FUNCTION__.do_StraightTaint_fork,@object # @__PRETTY_FUNCTION__.do_StraightTaint_fork
.L__PRETTY_FUNCTION__.do_StraightTaint_fork:
	.asciz	"void do_StraightTaint_fork(int)"
	.size	.L__PRETTY_FUNCTION__.do_StraightTaint_fork, 32

	.type	.L.str1233,@object      # @.str1233
.L.str1233:
	.asciz	"In fork: create logger thread. pid: %d\n"
	.size	.L.str1233, 40

	.type	.L.str1334,@object      # @.str1334
.L.str1334:
	.asciz	"0"
	.size	.L.str1334, 2

	.type	.L.str41,@object        # @.str41
.L.str41:
	.asciz	"create logger thread. pid: %d\n"
	.size	.L.str41, 31

	.type	.L.str142,@object       # @.str142
.L.str142:
	.asciz	"terminate logger thread. pid: %d\n"
	.size	.L.str142, 34

	.text
.Ldebug_end1:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
.Linfo_string1:
	.asciz	"../../straightDFA/init.c"
.Linfo_string2:
	.asciz	"/home/jun/straight-DTA/toy-ftp/test"
.Linfo_string3:
	.asciz	"Ferror"
.Linfo_string4:
	.asciz	"_flags"
.Linfo_string5:
	.asciz	"int"
.Linfo_string6:
	.asciz	"_IO_read_ptr"
.Linfo_string7:
	.asciz	"char"
.Linfo_string8:
	.asciz	"_IO_read_end"
.Linfo_string9:
	.asciz	"_IO_read_base"
.Linfo_string10:
	.asciz	"_IO_write_base"
.Linfo_string11:
	.asciz	"_IO_write_ptr"
.Linfo_string12:
	.asciz	"_IO_write_end"
.Linfo_string13:
	.asciz	"_IO_buf_base"
.Linfo_string14:
	.asciz	"_IO_buf_end"
.Linfo_string15:
	.asciz	"_IO_save_base"
.Linfo_string16:
	.asciz	"_IO_backup_base"
.Linfo_string17:
	.asciz	"_IO_save_end"
.Linfo_string18:
	.asciz	"_markers"
.Linfo_string19:
	.asciz	"_next"
.Linfo_string20:
	.asciz	"_sbuf"
.Linfo_string21:
	.asciz	"_pos"
.Linfo_string22:
	.asciz	"_IO_marker"
.Linfo_string23:
	.asciz	"_chain"
.Linfo_string24:
	.asciz	"_fileno"
.Linfo_string25:
	.asciz	"_flags2"
.Linfo_string26:
	.asciz	"_old_offset"
.Linfo_string27:
	.asciz	"long int"
.Linfo_string28:
	.asciz	"__off_t"
.Linfo_string29:
	.asciz	"_cur_column"
.Linfo_string30:
	.asciz	"unsigned short"
.Linfo_string31:
	.asciz	"_vtable_offset"
.Linfo_string32:
	.asciz	"signed char"
.Linfo_string33:
	.asciz	"_shortbuf"
.Linfo_string34:
	.asciz	"_lock"
.Linfo_string35:
	.asciz	"_offset"
.Linfo_string36:
	.asciz	"__off64_t"
.Linfo_string37:
	.asciz	"__pad1"
.Linfo_string38:
	.asciz	"__pad2"
.Linfo_string39:
	.asciz	"__pad3"
.Linfo_string40:
	.asciz	"__pad4"
.Linfo_string41:
	.asciz	"__pad5"
.Linfo_string42:
	.asciz	"long unsigned int"
.Linfo_string43:
	.asciz	"size_t"
.Linfo_string44:
	.asciz	"_mode"
.Linfo_string45:
	.asciz	"_unused2"
.Linfo_string46:
	.asciz	"_IO_FILE"
.Linfo_string47:
	.asciz	"FILE"
.Linfo_string48:
	.asciz	"flog"
.Linfo_string49:
	.asciz	"configFile"
.Linfo_string50:
	.asciz	"buf1"
.Linfo_string51:
	.asciz	"start"
.Linfo_string52:
	.asciz	"short"
.Linfo_string53:
	.asciz	"end"
.Linfo_string54:
	.asciz	"cursor"
.Linfo_string55:
	.asciz	"size"
.Linfo_string56:
	.asciz	"full"
.Linfo_string57:
	.asciz	"__size"
.Linfo_string58:
	.asciz	"__align"
.Linfo_string59:
	.asciz	"sem_t"
.Linfo_string60:
	.asciz	"empty"
.Linfo_string61:
	.asciz	"next"
.Linfo_string62:
	.asciz	"buffer"
.Linfo_string63:
	.asciz	"buf2"
.Linfo_string64:
	.asciz	"buf"
.Linfo_string65:
	.asciz	"logger_thread"
.Linfo_string66:
	.asciz	"pthread_t"
.Linfo_string67:
	.asciz	"_StraightTaint_init"
.Linfo_string68:
	.asciz	"_StraightTaint_fork32"
.Linfo_string69:
	.asciz	"_StraightTaint_fork64"
.Linfo_string70:
	.asciz	"do_StraightTaint_fork"
.Linfo_string71:
	.asciz	"../../straightDFA/log.c"
.Linfo_string72:
	.asciz	"_StraightTaint_pseudo"
.Linfo_string73:
	.asciz	"_StraightTaint_flush"
.Linfo_string74:
	.asciz	"_StraightTaint_log"
.Linfo_string75:
	.asciz	"_StraightTaint_logger_thread"
.Linfo_string76:
	.asciz	"_StraightTaint_logger_thread_terminate"
.Linfo_string77:
	.asciz	"ptrToAddr"
.Linfo_string78:
	.asciz	"ptr"
.Linfo_string79:
	.asciz	"pid"
.Linfo_string80:
	.asciz	"filename"
.Linfo_string81:
	.asciz	"regExit"
.Linfo_string82:
	.asciz	"lpid"
.Linfo_string83:
	.asciz	"BBID"
.Linfo_string84:
	.asciz	"arg"
.Linfo_string85:
	.asciz	"set"
.Linfo_string86:
	.asciz	"__val"
.Linfo_string87:
	.asciz	"__sigset_t"
.Linfo_string88:
	.asciz	"sigset_t"
.Linfo_string89:
	.asciz	"s"
.Linfo_string90:
	.asciz	"cur_buf"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1282                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x4fb DW_TAG_compile_unit
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
	.byte	17                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	Ferror
	.byte	3                       # Abbrev [3] 0x3b:0x5 DW_TAG_pointer_type
	.long	64                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x40:0xb DW_TAG_typedef
	.long	75                      # DW_AT_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x4b:0x1a0 DW_TAG_structure_type
	.long	.Linfo_string46         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.short	273                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x54:0xe DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x62:0xe DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x70:0xe DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x7e:0xe DW_TAG_member
	.long	.Linfo_string9          # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	281                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x8c:0xe DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	282                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x9a:0xe DW_TAG_member
	.long	.Linfo_string11         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xa8:0xe DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xb6:0xe DW_TAG_member
	.long	.Linfo_string13         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	285                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xc4:0xe DW_TAG_member
	.long	.Linfo_string14         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xd2:0xe DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xe0:0xe DW_TAG_member
	.long	.Linfo_string16         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xee:0xe DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0xfc:0xe DW_TAG_member
	.long	.Linfo_string18         # DW_AT_name
	.long	510                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x10a:0xe DW_TAG_member
	.long	.Linfo_string23         # DW_AT_name
	.long	563                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x118:0xe DW_TAG_member
	.long	.Linfo_string24         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x126:0xe DW_TAG_member
	.long	.Linfo_string25         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	300                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x134:0xe DW_TAG_member
	.long	.Linfo_string26         # DW_AT_name
	.long	568                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x142:0xe DW_TAG_member
	.long	.Linfo_string29         # DW_AT_name
	.long	586                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x150:0xe DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	593                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x15e:0xe DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	600                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x16c:0xe DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	312                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x17a:0xe DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	620                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	321                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x188:0xe DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	330                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x196:0xe DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	331                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1a4:0xe DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1b2:0xe DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	619                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	333                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1c0:0xe DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	631                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1ce:0xe DW_TAG_member
	.long	.Linfo_string44         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	336                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	6                       # Abbrev [6] 0x1dc:0xe DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	649                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	338                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x1eb:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1f2:0x5 DW_TAG_pointer_type
	.long	503                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x1f7:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x1fe:0x5 DW_TAG_pointer_type
	.long	515                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x203:0x30 DW_TAG_structure_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x20b:0xd DW_TAG_member
	.long	.Linfo_string19         # DW_AT_name
	.long	510                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x218:0xd DW_TAG_member
	.long	.Linfo_string20         # DW_AT_name
	.long	563                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x225:0xd DW_TAG_member
	.long	.Linfo_string21         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	194                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x233:0x5 DW_TAG_pointer_type
	.long	75                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x238:0xb DW_TAG_typedef
	.long	579                     # DW_AT_type
	.long	.Linfo_string28         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x243:0x7 DW_TAG_base_type
	.long	.Linfo_string27         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x24a:0x7 DW_TAG_base_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x251:0x7 DW_TAG_base_type
	.long	.Linfo_string32         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x258:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x25d:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x264:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	13                      # Abbrev [13] 0x26b:0x1 DW_TAG_pointer_type
	.byte	4                       # Abbrev [4] 0x26c:0xb DW_TAG_typedef
	.long	579                     # DW_AT_type
	.long	.Linfo_string36         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x277:0xb DW_TAG_typedef
	.long	642                     # DW_AT_type
	.long	.Linfo_string43         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	7                       # Abbrev [7] 0x282:0x7 DW_TAG_base_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0x289:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x28e:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	19                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0x295:0x15 DW_TAG_variable
	.long	.Linfo_string48         # DW_AT_name
	.long	59                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	flog
	.byte	2                       # Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	.Linfo_string49         # DW_AT_name
	.long	59                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	configFile
	.byte	2                       # Abbrev [2] 0x2bf:0x15 DW_TAG_variable
	.long	.Linfo_string50         # DW_AT_name
	.long	724                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf1
	.byte	8                       # Abbrev [8] 0x2d4:0x64 DW_TAG_structure_type
	.long	.Linfo_string62         # DW_AT_name
	.byte	104                     # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x2dc:0xd DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	824                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2e9:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	824                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x2f6:0xd DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	824                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x303:0xd DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	491                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x310:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	836                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x31d:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	836                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x32a:0xd DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	890                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x338:0x5 DW_TAG_pointer_type
	.long	829                     # DW_AT_type
	.byte	7                       # Abbrev [7] 0x33d:0x7 DW_TAG_base_type
	.long	.Linfo_string52         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	4                       # Abbrev [4] 0x344:0xb DW_TAG_typedef
	.long	847                     # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x34f:0x1f DW_TAG_union_type
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x353:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	878                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x360:0xd DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	579                     # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x36e:0xc DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x373:0x6 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.byte	31                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x37a:0x5 DW_TAG_pointer_type
	.long	724                     # DW_AT_type
	.byte	2                       # Abbrev [2] 0x37f:0x15 DW_TAG_variable
	.long	.Linfo_string63         # DW_AT_name
	.long	724                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf2
	.byte	2                       # Abbrev [2] 0x394:0x15 DW_TAG_variable
	.long	.Linfo_string64         # DW_AT_name
	.long	890                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf
	.byte	2                       # Abbrev [2] 0x3a9:0x15 DW_TAG_variable
	.long	.Linfo_string65         # DW_AT_name
	.long	958                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	logger_thread
	.byte	4                       # Abbrev [4] 0x3be:0xb DW_TAG_typedef
	.long	642                     # DW_AT_type
	.long	.Linfo_string66         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	15                      # Abbrev [15] 0x3c9:0x66 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	824                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x3e6:0xe DW_TAG_formal_parameter
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.long	1267                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      # Abbrev [17] 0x3f4:0xe DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.long	498                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.byte	17                      # Abbrev [17] 0x402:0xe DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	100
	.byte	17                      # Abbrev [17] 0x410:0xf DW_TAG_variable
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	1272                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	17                      # Abbrev [17] 0x41f:0xf DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\334w"
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x42f:0x28 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x448:0xe DW_TAG_formal_parameter
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x457:0x36 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x470:0xe DW_TAG_formal_parameter
	.long	.Linfo_string82         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.long	579                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      # Abbrev [17] 0x47e:0xe DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	183                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x48d:0x66 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x4a6:0xe DW_TAG_formal_parameter
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	96
	.byte	20                      # Abbrev [20] 0x4b4:0x3e DW_TAG_lexical_block
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	20                      # Abbrev [20] 0x4b9:0x38 DW_TAG_lexical_block
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	20                      # Abbrev [20] 0x4be:0x32 DW_TAG_lexical_block
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x4c3:0xe DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	92
	.byte	17                      # Abbrev [17] 0x4d1:0xf DW_TAG_variable
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	1272                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320w"
	.byte	17                      # Abbrev [17] 0x4e0:0xf DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	491                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\314w"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x4f3:0x5 DW_TAG_pointer_type
	.long	824                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x4f8:0xd DW_TAG_array_type
	.long	503                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x4fd:0x7 DW_TAG_subrange_type
	.long	612                     # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
.L.debug_info_begin1:
	.long	511                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1f8 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string71         # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	22                      # Abbrev [22] 0x26:0x19 DW_TAG_subprogram
	.long	.Linfo_string72         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.quad	.Lfunc_end6             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	18                      # Abbrev [18] 0x3f:0x28 DW_TAG_subprogram
	.long	.Linfo_string73         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin7           # DW_AT_low_pc
	.quad	.Lfunc_end7             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	23                      # Abbrev [23] 0x58:0xe DW_TAG_formal_parameter
	.long	.Linfo_string83         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.long	.Lsection_info+829      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x67:0x28 DW_TAG_subprogram
	.long	.Linfo_string74         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.quad	.Lfunc_end8             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	23                      # Abbrev [23] 0x80:0xe DW_TAG_formal_parameter
	.long	.Linfo_string83         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.long	.Lsection_info+829      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	24                      # Abbrev [24] 0x8f:0x8c DW_TAG_subprogram
	.long	.Linfo_string75         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	.Lsection_info+619      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.quad	.Lfunc_end9             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	23                      # Abbrev [23] 0xac:0xe DW_TAG_formal_parameter
	.long	.Linfo_string84         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	.Lsection_info+619      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	17                      # Abbrev [17] 0xba:0xf DW_TAG_variable
	.long	.Linfo_string85         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	308                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\360~"
	.byte	25                      # Abbrev [25] 0xc9:0xf DW_TAG_variable
	.long	.Linfo_string89         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\354~"
	.byte	17                      # Abbrev [17] 0xd8:0xf DW_TAG_variable
	.long	.Linfo_string90         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	367                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340~"
	.byte	26                      # Abbrev [26] 0xe7:0x33 DW_TAG_lexical_block
	.quad	.Ltmp130                # DW_AT_low_pc
	.quad	.Ltmp133                # DW_AT_high_pc
	.byte	26                      # Abbrev [26] 0xf8:0x21 DW_TAG_lexical_block
	.quad	.Ltmp130                # DW_AT_low_pc
	.quad	.Ltmp133                # DW_AT_high_pc
	.byte	25                      # Abbrev [25] 0x109:0xf DW_TAG_variable
	.long	.Linfo_string55         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\334~"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x11b:0x19 DW_TAG_subprogram
	.long	.Linfo_string76         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin10          # DW_AT_low_pc
	.quad	.Lfunc_end10            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	4                       # Abbrev [4] 0x134:0xb DW_TAG_typedef
	.long	319                     # DW_AT_type
	.long	.Linfo_string88         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x13f:0xb DW_TAG_typedef
	.long	330                     # DW_AT_type
	.long	.Linfo_string87         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	28                      # Abbrev [28] 0x14a:0x12 DW_TAG_structure_type
	.byte	128                     # DW_AT_byte_size
	.byte	6                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x14e:0xd DW_TAG_member
	.long	.Linfo_string86         # DW_AT_name
	.long	348                     # DW_AT_type
	.byte	6                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	29                      # Abbrev [29] 0x15c:0xc DW_TAG_array_type
	.long	.Lsection_info+642      # DW_AT_type
	.byte	11                      # Abbrev [11] 0x161:0x6 DW_TAG_subrange_type
	.long	360                     # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x168:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	3                       # Abbrev [3] 0x16f:0x5 DW_TAG_pointer_type
	.long	372                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x174:0x64 DW_TAG_structure_type
	.long	.Linfo_string62         # DW_AT_name
	.byte	104                     # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x17c:0xd DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	.Lsection_info+824      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	12                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	30                      # Abbrev [30] 0x189:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	.Lsection_info+824      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	30                      # Abbrev [30] 0x196:0xd DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	.Lsection_info+824      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	30                      # Abbrev [30] 0x1a3:0xd DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	.Lsection_info+491      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1b0:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	472                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1bd:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	472                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x1ca:0xd DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	367                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x1d8:0xb DW_TAG_typedef
	.long	483                     # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x1e3:0x1f DW_TAG_union_type
	.byte	32                      # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	30                      # Abbrev [30] 0x1e7:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	.Lsection_info+878      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	30                      # Abbrev [30] 0x1f4:0xd DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	.Lsection_info+579      # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
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
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
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
	.byte	5                       # Abbreviation Code
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
	.byte	6                       # Abbreviation Code
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
	.byte	7                       # Abbreviation Code
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
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
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
	.byte	16                      # Abbreviation Code
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
	.byte	17                      # Abbreviation Code
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
	.byte	18                      # Abbreviation Code
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
	.byte	19                      # Abbreviation Code
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
	.byte	20                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
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
	.byte	23                      # Abbreviation Code
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
	.byte	24                      # Abbreviation Code
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
	.byte	16                      # DW_FORM_ref_addr
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
	.byte	25                      # Abbreviation Code
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
	.byte	26                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
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
	.byte	28                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
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
	.byte	0                       # EOM(3)
	.section	.debug_aranges,"",@progbits
	.long	156                     # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin0    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	Ferror
	.quad	8
	.quad	buf2
	.quad	104
	.quad	buf1
	.quad	104
	.quad	buf
	.quad	8
	.quad	flog
	.quad	8
	.quad	configFile
	.quad	8
	.quad	logger_thread
	.quad	8
	.quad	.Lfunc_begin2
.Lset0 = .Lfunc_begin6-.Lfunc_begin2
	.quad	.Lset0
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
.Lset1 = .Ldebug_end1-.Lfunc_begin6
	.quad	.Lset1
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
.Lgnu_ranges1:
.Lgnu_ranges0:
.Ldebug_ranges0:
	.quad	.Ltmp78
	.quad	.Ltmp85
	.quad	.Ltmp87
	.quad	.Ltmp90
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp77
	.quad	.Ltmp85
	.quad	.Ltmp86
	.quad	.Ltmp90
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp71
	.quad	.Ltmp85
	.quad	.Ltmp86
	.quad	.Ltmp90
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_pubnames,"",@progbits
.Lset2 = .Lpubnames_end0-.Lpubnames_begin0 # Length of Public Names Info
	.long	.Lset2
.Lpubnames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset3 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset3
	.long	38                      # DIE offset
	.asciz	"Ferror"                # External Name
	.long	1111                    # DIE offset
	.asciz	"_StraightTaint_fork64" # External Name
	.long	682                     # DIE offset
	.asciz	"configFile"            # External Name
	.long	937                     # DIE offset
	.asciz	"logger_thread"         # External Name
	.long	661                     # DIE offset
	.asciz	"flog"                  # External Name
	.long	969                     # DIE offset
	.asciz	"_StraightTaint_init"   # External Name
	.long	1165                    # DIE offset
	.asciz	"do_StraightTaint_fork" # External Name
	.long	1071                    # DIE offset
	.asciz	"_StraightTaint_fork32" # External Name
	.long	916                     # DIE offset
	.asciz	"buf"                   # External Name
	.long	703                     # DIE offset
	.asciz	"buf1"                  # External Name
	.long	895                     # DIE offset
	.asciz	"buf2"                  # External Name
	.long	0                       # End Mark
.Lpubnames_end0:
.Lset4 = .Lpubnames_end1-.Lpubnames_begin1 # Length of Public Names Info
	.long	.Lset4
.Lpubnames_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset5 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset5
	.long	283                     # DIE offset
	.asciz	"_StraightTaint_logger_thread_terminate" # External Name
	.long	38                      # DIE offset
	.asciz	"_StraightTaint_pseudo" # External Name
	.long	63                      # DIE offset
	.asciz	"_StraightTaint_flush"  # External Name
	.long	103                     # DIE offset
	.asciz	"_StraightTaint_log"    # External Name
	.long	143                     # DIE offset
	.asciz	"_StraightTaint_logger_thread" # External Name
	.long	0                       # End Mark
.Lpubnames_end1:
	.section	.debug_pubtypes,"",@progbits
.Lset6 = .Lpubtypes_end0-.Lpubtypes_begin0 # Length of Public Types Info
	.long	.Lset6
.Lpubtypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset7 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset7
	.long	64                      # DIE offset
	.asciz	"FILE"                  # External Name
	.long	958                     # DIE offset
	.asciz	"pthread_t"             # External Name
	.long	836                     # DIE offset
	.asciz	"sem_t"                 # External Name
	.long	491                     # DIE offset
	.asciz	"int"                   # External Name
	.long	568                     # DIE offset
	.asciz	"__off_t"               # External Name
	.long	586                     # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	631                     # DIE offset
	.asciz	"size_t"                # External Name
	.long	829                     # DIE offset
	.asciz	"short"                 # External Name
	.long	620                     # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	75                      # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	642                     # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	515                     # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	724                     # DIE offset
	.asciz	"buffer"                # External Name
	.long	593                     # DIE offset
	.asciz	"signed char"           # External Name
	.long	579                     # DIE offset
	.asciz	"long int"              # External Name
	.long	503                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end0:
.Lset8 = .Lpubtypes_end1-.Lpubtypes_begin1 # Length of Public Types Info
	.long	.Lset8
.Lpubtypes_begin1:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin1    # Offset of Compilation Unit Info
.Lset9 = .L.debug_info_end1-.L.debug_info_begin1 # Compilation Unit Length
	.long	.Lset9
	.long	319                     # DIE offset
	.asciz	"__sigset_t"            # External Name
	.long	308                     # DIE offset
	.asciz	"sigset_t"              # External Name
	.long	472                     # DIE offset
	.asciz	"sem_t"                 # External Name
	.long	372                     # DIE offset
	.asciz	"buffer"                # External Name
	.long	0                       # End Mark
.Lpubtypes_end1:

	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
