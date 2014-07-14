	.file	"telnetd.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 40
	subq	$840, %rsp              # imm = 0x348
.Ltmp9:
	.cfi_def_cfa_offset 880
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %ebp
	movl	$1, 44(%rsp)
	movl	$-1, 36(%rsp)
	callq	initsetproctitle
	movq	$ptyobuf, pbackp(%rip)
	movq	$ptyobuf, pfrontp(%rip)
	movq	$netibuf, netip(%rip)
	movq	$netobuf, nbackp(%rip)
	movq	$netobuf, nfrontp(%rip)
	movq	(%r15), %rax
	movq	%rax, progname(%rip)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_33:                               # %sw.bb343
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, keepalive(%rip)
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str1, %edx
	movl	%ebp, %edi
	movq	%r15, %rsi
	callq	getopt
	movl	%eax, %ecx
	cmpl	$62, %ecx
	jle	.LBB0_2
# BB#6:                                 # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$109, %ecx
	jg	.LBB0_32
# BB#7:                                 # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$99, %ecx
	jg	.LBB0_14
# BB#8:                                 # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$82, %ecx
	jg	.LBB0_34
# BB#9:                                 # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$68, %ecx
	je	.LBB0_20
# BB#10:                                # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$76, %ecx
	jne	.LBB0_11
# BB#31:                                # %sw.bb341
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg(%rip), %rdi
	callq	__strdup
	movq	%rax, loginprg(%rip)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_32:                               # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$110, %ecx
	je	.LBB0_33
	jmp	.LBB0_12
.LBB0_14:                               # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$100, %ecx
	jne	.LBB0_15
# BB#17:                                # %cond.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg(%rip), %rdi
	movl	$.L.str2, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_19
# BB#18:                                # %if.then40
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	debug(%rip)
	jmp	.LBB0_1
.LBB0_34:                               # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$83, %ecx
	jne	.LBB0_12
# BB#35:                                # %sw.bb344
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	stderr(%rip), %rdi
	movl	$.L.str8, %esi
	movl	$.L.str9, %edx
	movl	$.L.str10, %ecx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_1
.LBB0_15:                               # %while.cond
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpl	$104, %ecx
	jne	.LBB0_12
# BB#16:                                # %sw.bb340
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, hostinfo(%rip)
	jmp	.LBB0_1
.LBB0_20:                               # %cond.false94
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	optarg(%rip), %r14
	movl	$.L.str3, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_22
# BB#21:                                # %if.then98
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$17, diagnostic(%rip)
	jmp	.LBB0_1
.LBB0_22:                               # %cond.false150
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str4, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_24
# BB#23:                                # %if.then155
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$2, diagnostic(%rip)
	jmp	.LBB0_1
.LBB0_24:                               # %cond.false209
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str5, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_26
# BB#25:                                # %if.then214
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$4, diagnostic(%rip)
	jmp	.LBB0_1
.LBB0_26:                               # %cond.false268
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str6, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_28
# BB#27:                                # %if.then273
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$8, diagnostic(%rip)
	jmp	.LBB0_1
.LBB0_28:                               # %cond.false327
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str7, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_30
# BB#29:                                # %if.then332
                                        #   in Loop: Header=BB0_1 Depth=1
	orb	$16, diagnostic(%rip)
	jmp	.LBB0_1
.LBB0_2:                                # %while.cond
	cmpl	$-1, %ecx
	jne	.LBB0_12
# BB#3:                                 # %while.end
	movslq	optind(%rip), %rbx
	subl	%ebx, %ebp
	cmpl	$0, debug(%rip)
	je	.LBB0_51
# BB#4:                                 # %if.then350
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)
	movw	$2, 16(%rsp)
	cmpl	$2, %ebp
	jge	.LBB0_5
# BB#36:                                # %if.else359
	cmpl	$1, %ebp
	jne	.LBB0_40
# BB#37:                                # %if.then362
	movq	(%r15,%rbx,8), %rdi
	movl	$.L.str12, %esi
	callq	getservbyname
	testq	%rax, %rax
	jne	.LBB0_41
# BB#38:                                # %if.else368
	movq	(%r15,%rbx,8), %rbx
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strtol
	testl	%eax, %eax
	jle	.LBB0_128
# BB#39:                                # %if.end375
	rolw	$8, %ax
	movw	%ax, 18(%rsp)
	jmp	.LBB0_42
.LBB0_51:                               # %if.else418
	testl	%ebp, %ebp
	jle	.LBB0_54
# BB#52:                                # %if.then421
	callq	usage
.LBB0_40:                               # %if.else382
	movl	$.L.str14, %edi
	movl	$.L.str12, %esi
	callq	getservbyname
	testq	%rax, %rax
	je	.LBB0_129
.LBB0_41:                               # %if.end388
	movw	16(%rax), %ax
	movw	%ax, 18(%rsp)
.LBB0_42:                               # %if.end393
	movl	$2, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_43
# BB#45:                                # %if.end398
	leaq	44(%rsp), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movl	$4, %r8d
	movl	%ebx, %edi
	callq	setsockopt
	leaq	16(%rsp), %rsi
	movl	$16, %edx
	movl	%ebx, %edi
	callq	bind
	testl	%eax, %eax
	js	.LBB0_46
# BB#47:                                # %if.end404
	movl	$1, %esi
	movl	%ebx, %edi
	callq	listen
	testl	%eax, %eax
	js	.LBB0_48
# BB#49:                                # %if.end409
	movl	$16, 32(%rsp)
	leaq	16(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movl	%ebx, %edi
	callq	accept
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_50
# BB#53:                                # %if.end414
	xorl	%esi, %esi
	movl	%ebp, %edi
	callq	dup2
	movl	%ebp, %edi
	callq	close
	movl	%ebx, %edi
	callq	close
.LBB0_54:                               # %if.end423
	movl	$.L.str20, %edi
	movl	$5, %esi
	movl	$24, %edx
	callq	openlog
	movl	$16, 40(%rsp)
	leaq	48(%rsp), %rsi
	leaq	40(%rsp), %rdx
	xorl	%edi, %edi
	callq	getpeername
	testl	%eax, %eax
	js	.LBB0_130
# BB#55:                                # %if.end429
	cmpl	$0, keepalive(%rip)
	je	.LBB0_58
# BB#56:                                # %land.lhs.true431
	leaq	44(%rsp), %rcx
	movl	$0, %edi
	movl	$1, %esi
	movl	$9, %edx
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	jns	.LBB0_58
# BB#57:                                # %if.then435
	movl	$4, %edi
	movl	$.L.str23, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_58:                               # %if.end436
	movl	36(%rsp), %eax
	testl	%eax, %eax
	js	.LBB0_59
# BB#60:                                # %if.end440
	jne	.LBB0_61
	jmp	.LBB0_64
.LBB0_59:                               # %if.end440.thread
	movl	$16, 36(%rsp)
.LBB0_61:                               # %land.lhs.true442
	leaq	36(%rsp), %rcx
	movl	$0, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$4, %r8d
	callq	setsockopt
	testl	%eax, %eax
	jns	.LBB0_64
# BB#62:                                # %land.lhs.true446
	callq	__errno_location
	cmpl	$92, (%rax)
	je	.LBB0_64
# BB#63:                                # %if.then450
	movl	$4, %edi
	movl	$.L.str24, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_64:                               # %if.end451
	movl	$0, net(%rip)
	callq	getpty
	testl	%eax, %eax
	movl	%eax, pty(%rip)
	jns	.LBB0_66
# BB#65:                                # %if.then.i
	movl	net(%rip), %edi
	movl	$.L.str42, %esi
	callq	fatal
.LBB0_66:                               # %if.end.i
	leaq	52(%rsp), %rdi
	movzwl	48(%rsp), %edx
	movl	$4, %esi
	callq	gethostbyaddr
	testq	%rax, %rax
	je	.LBB0_68
# BB#67:                                # %if.then2.i
	movq	(%rax), %rsi
	jmp	.LBB0_69
.LBB0_68:                               # %if.else.i
	movl	52(%rsp), %edi
	callq	inet_ntoa
	movq	%rax, %rsi
.LBB0_69:                               # %if.end5.i
	movl	$remote_host_name, %edi
	movl	$63, %edx
	callq	strncpy
	movb	$0, remote_host_name+63(%rip)
	movb	remote_host_name(%rip), %cl
	testb	%cl, %cl
	movl	$remote_host_name+1, %eax
	je	.LBB0_74
	.align	16, 0x90
.LBB0_70:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%cl, %edx
	cmpl	$33, %edx
	jl	.LBB0_72
# BB#71:                                # %for.body.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movzbl	%cl, %ecx
	cmpl	$127, %ecx
	jne	.LBB0_73
	.align	16, 0x90
.LBB0_72:                               # %if.then18.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movb	$63, -1(%rax)
.LBB0_73:                               # %for.inc.i
                                        #   in Loop: Header=BB0_70 Depth=1
	movb	(%rax), %cl
	incq	%rax
	testb	%cl, %cl
	jne	.LBB0_70
.LBB0_74:                               # %for.end.i
	movl	$host_name, %edi
	movl	$64, %esi
	callq	gethostname
	movl	$host_name, %edi
	callq	gethostbyname
	testq	%rax, %rax
	je	.LBB0_76
# BB#75:                                # %if.then25.i
	movq	(%rax), %rsi
	movl	$host_name, %edi
	movl	$64, %edx
	callq	strncpy
	movb	$0, host_name+63(%rip)
.LBB0_76:                               # %if.end28.i
	callq	init_env
	movb	$0, 64(%rsp)
	movl	clocks(%rip), %eax
	incl	%eax
	movl	%eax, clocks(%rip)
	movl	%eax, clocks+32(%rip)
	movl	$24, %edi
	movl	$1, %esi
	callq	send_do
	movl	$32, %edi
	movl	$1, %esi
	callq	send_do
	movl	$35, %edi
	movl	$1, %esi
	callq	send_do
	movl	$39, %edi
	movl	$1, %esi
	callq	send_do
	jmp	.LBB0_77
	.align	16, 0x90
.LBB0_81:                               # %while.body.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	callq	ttloop
.LBB0_77:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	options+24(%rip), %eax
	addl	$4, %eax
	testb	$8, %al
	jne	.LBB0_81
# BB#78:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movsbl	options+32(%rip), %eax
	leal	4(%rax), %ecx
	testb	$8, %cl
	jne	.LBB0_81
# BB#79:                                # %lor.lhs.false6.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movzbl	options+35(%rip), %ecx
	leal	4(%rcx), %edx
	testb	$8, %dl
	jne	.LBB0_81
# BB#80:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movzbl	options+39(%rip), %edx
	addl	$4, %edx
	testb	$8, %dl
	jne	.LBB0_81
# BB#82:                                # %while.end.i.i
	testb	$4, %al
	je	.LBB0_84
# BB#83:                                # %if.then.i.i
	movl	$250, %edx
	movl	$32, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
	movb	options+35(%rip), %cl
.LBB0_84:                               # %if.end.i.i
	testb	$4, %cl
	je	.LBB0_86
# BB#85:                                # %if.then21.i.i
	movl	$250, %edx
	movl	$35, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
.LBB0_86:                               # %if.end22.i.i
	testb	$4, options+39(%rip)
	je	.LBB0_88
# BB#87:                                # %if.then26.i.i
	movl	$250, %edx
	movl	$39, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
.LBB0_88:                               # %if.end27.i.i
	testb	$4, options+24(%rip)
	je	.LBB0_90
# BB#89:                                # %if.then31.i.i
	movl	$250, %edx
	movl	$24, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
.LBB0_90:                               # %if.end32.i.i
	testb	$4, options+32(%rip)
	jne	.LBB0_92
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_91:                               # %while.body39.i.i
                                        #   in Loop: Header=BB0_92 Depth=1
	callq	ttloop
.LBB0_92:                               # %while.body39.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	clocks+20(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_91
.LBB0_93:                               # %if.end41.i.i
	testb	$4, options+35(%rip)
	jne	.LBB0_95
	jmp	.LBB0_96
	.align	16, 0x90
.LBB0_94:                               # %while.body49.i.i
                                        #   in Loop: Header=BB0_95 Depth=1
	callq	ttloop
.LBB0_95:                               # %while.body49.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	clocks+28(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_94
.LBB0_96:                               # %if.end51.i.i
	testb	$4, options+39(%rip)
	jne	.LBB0_98
	jmp	.LBB0_99
	.align	16, 0x90
.LBB0_97:                               # %while.body59.i.i
                                        #   in Loop: Header=BB0_98 Depth=1
	callq	ttloop
.LBB0_98:                               # %while.body59.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	clocks+24(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_97
.LBB0_99:                               # %if.end61.i.i
	movb	options+24(%rip), %al
	testb	$4, %al
	je	.LBB0_127
# BB#100:                               # %if.then65.i.i
	movl	clocks+16(%rip), %ecx
	cmpl	clocks+32(%rip), %ecx
	jge	.LBB0_103
	.align	16, 0x90
.LBB0_101:                              # %while.body69.i.i
                                        # =>This Inner Loop Header: Depth=1
	callq	ttloop
	movl	clocks+16(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_101
# BB#102:                               # %while.cond66.while.end70_crit_edge.i.i
	movb	options+24(%rip), %al
.LBB0_103:                              # %while.end70.i.i
	testb	$4, %al
	je	.LBB0_127
# BB#104:                               # %land.lhs.true.i.i
	movq	terminaltype(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_127
# BB#105:                               # %cond.false.i.i.i
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB0_107
# BB#106:                               # %terminaltypeok.exit.i.i
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$64, %rax
	jb	.LBB0_127
.LBB0_107:                              # %if.then75.i.i
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB0_131
# BB#108:                               # %cond.end.i.i
	leaq	576(%rsp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	terminaltype(%rip), %rbp
	leaq	320(%rsp), %r14
	.align	16, 0x90
.LBB0_109:                              # %for.cond.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_112 Depth 2
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	strcpy
	testb	$4, options+24(%rip)
	je	.LBB0_113
# BB#110:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	clocks(%rip), %eax
	incl	%eax
	movl	%eax, clocks(%rip)
	movl	%eax, clocks+32(%rip)
	movl	$250, %edx
	movl	$24, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
	jmp	.LBB0_112
	.align	16, 0x90
.LBB0_111:                              # %while.body.i.i.i
                                        #   in Loop: Header=BB0_112 Depth=2
	callq	ttloop
.LBB0_112:                              # %while.body.i.i.i
                                        #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	clocks+16(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_111
.LBB0_113:                              # %_gettermname.exit.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	terminaltype(%rip), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbx
	cmpq	$256, %rbx              # imm = 0x100
	jae	.LBB0_132
# BB#114:                               # %cond.end87.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	testq	%rbp, %rbp
	je	.LBB0_127
# BB#115:                               # %cond.false.i17.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_116
.LBB0_117:                              # %if.end91.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_119
# BB#118:                               # %lor.lhs.false95.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	testb	$4, options+24(%rip)
	jne	.LBB0_109
	jmp	.LBB0_119
.LBB0_116:                              # %cond.false.i17.i.i
                                        #   in Loop: Header=BB0_109 Depth=1
	cmpq	$64, %rbx
	jae	.LBB0_117
	jmp	.LBB0_127
.LBB0_119:                              # %if.then99.i.i
	leaq	576(%rsp), %rdi
	movq	%rbp, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_127
# BB#120:                               # %if.end109.i.i
	testb	$4, options+24(%rip)
	je	.LBB0_124
# BB#121:                               # %if.end.i28.i.i
	movl	clocks(%rip), %eax
	incl	%eax
	movl	%eax, clocks(%rip)
	movl	%eax, clocks+32(%rip)
	movl	$250, %edx
	movl	$24, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$1, %r8d
	movl	$255, %r9d
	callq	netoprintf
	jmp	.LBB0_123
	.align	16, 0x90
.LBB0_122:                              # %while.body.i30.i.i
                                        #   in Loop: Header=BB0_123 Depth=1
	callq	ttloop
.LBB0_123:                              # %while.body.i30.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	clocks+16(%rip), %eax
	cmpl	clocks+32(%rip), %eax
	jl	.LBB0_122
.LBB0_124:                              # %_gettermname.exit31.i.i
	movq	terminaltype(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$256, %rax              # imm = 0x100
	jae	.LBB0_133
# BB#125:                               # %cond.end115.i.i
	leaq	576(%rsp), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_127
# BB#126:                               # %if.then124.i.i
	leaq	576(%rsp), %rsi
	movq	%rbx, %rdi
	callq	strcpy
.LBB0_127:                              # %doit.exit
	movq	terminaltype(%rip), %rax
	testq	%rax, %rax
	movl	$.L.str44, %esi
	cmovneq	%rax, %rsi
	movl	$.L.str43, %edi
	movl	$1, %edx
	callq	setenv
	movl	$.L.str45, %edi
	movl	$remote_host_name, %esi
	xorl	%eax, %eax
	callq	setproctitle
	movl	$.L.str46, %edi
	movl	$remote_host_name, %esi
	xorl	%edx, %edx
	callq	setenv
	leaq	64(%rsp), %rdx
	movl	$remote_host_name, %edi
	movl	$-1, %esi
	callq	startslave
	movl	net(%rip), %edi
	movl	pty(%rip), %esi
	callq	telnet
	xorl	%eax, %eax
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB0_11:                               # %while.cond
	cmpl	$63, %ecx
	je	.LBB0_13
.LBB0_12:                               # %sw.default
	movq	stderr(%rip), %rdx
	movl	$.L.str11, %esi
	xorl	%eax, %eax
	movq	%rdx, %rdi
	movl	%ecx, %edx
	callq	fprintf
.LBB0_13:                               # %sw.bb347
	callq	usage
.LBB0_19:                               # %if.end41
	callq	usage
.LBB0_30:                               # %if.else334
	callq	usage
.LBB0_5:                                # %if.then358
	callq	usage
.LBB0_128:                              # %if.then373
	movq	stderr(%rip), %rcx
	movl	$.L.str13, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	callq	usage
.LBB0_129:                              # %if.then386
	movq	stderr(%rip), %rax
	movl	$.L.str15, %edi
	movl	$37, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.LBB0_43:                               # %if.then397
	movl	$.L.str16, %edi
	jmp	.LBB0_44
.LBB0_46:                               # %if.then403
	movl	$.L.str17, %edi
	jmp	.LBB0_44
.LBB0_48:                               # %if.then408
	movl	$.L.str18, %edi
	jmp	.LBB0_44
.LBB0_50:                               # %if.then413
	movl	$.L.str19, %edi
.LBB0_44:                               # %if.then397
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_130:                              # %if.then427
	movq	stderr(%rip), %rcx
	movq	progname(%rip), %rdx
	movl	$.L.str21, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	fprintf
	movl	$.L.str22, %edi
	callq	perror
	movl	$1, %edi
	callq	_exit
.LBB0_131:                              # %cond.false.i.i
	movl	$.L.str47, %edi
	movl	$.L.str48, %esi
	movl	$480, %edx              # imm = 0x1E0
	movl	$.L__PRETTY_FUNCTION__.getterminaltype, %ecx
	callq	__assert_fail
.LBB0_132:                              # %cond.false86.i.i
	movl	$.L.str47, %edi
	movl	$.L.str48, %esi
	movl	$491, %edx              # imm = 0x1EB
	movl	$.L__PRETTY_FUNCTION__.getterminaltype, %ecx
	callq	__assert_fail
.LBB0_133:                              # %cond.false114.i.i
	movl	$.L.str47, %edi
	movl	$.L.str48, %esi
	movl	$510, %edx              # imm = 0x1FE
	movl	$.L__PRETTY_FUNCTION__.getterminaltype, %ecx
	callq	__assert_fail
.Ltmp14:
	.size	main, .Ltmp14-main
	.cfi_endproc

	.globl	usage
	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp16:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rcx
	movl	$.L.str25, %edi
	movl	$14, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str26, %edi
	movl	$9, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str27, %edi
	movl	$49, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str28, %edi
	movl	$5, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str29, %edi
	movl	$19, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str30, %edi
	movl	$5, %esi
	movl	$1, %edx
	callq	fwrite
	movq	stderr(%rip), %rcx
	movl	$.L.str31, %edi
	movl	$8, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.Ltmp17:
	.size	usage, .Ltmp17-usage
	.cfi_endproc

	.globl	telnet
	.align	16, 0x90
	.type	telnet,@function
telnet:                                 # @telnet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp31:
	.cfi_def_cfa_offset 480
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movl	%edi, %r14d
	movl	$1, 420(%rsp)
	callq	get_slc_defaults
	testb	$1, options+3(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$3, %edi
	movl	$1, %esi
	callq	send_will
.LBB2_2:                                # %if.end
	movl	$1, %edi
	movl	$1, %esi
	callq	send_do
	movl	$31, %edi
	movl	$1, %esi
	callq	send_do
	movl	$5, %edi
	movl	$1, %esi
	callq	send_will
	movl	$1, flowmode(%rip)
	movl	$33, %edi
	movl	$1, %esi
	callq	send_do
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_3:                                # %while.body
                                        #   in Loop: Header=BB2_4 Depth=1
	callq	ttloop
.LBB2_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	options+31(%rip), %ecx
	leal	4(%rcx), %eax
	testb	$8, %al
	jne	.LBB2_3
# BB#5:                                 # %while.end
	movb	options+1(%rip), %al
	testb	$8, %al
	je	.LBB2_10
# BB#6:                                 # %while.end
	andl	$4, %ecx
	je	.LBB2_10
# BB#7:                                 # %while.cond11.preheader
	movzbl	%al, %ecx
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_8:                                # %while.body16
                                        #   in Loop: Header=BB2_9 Depth=1
	callq	ttloop
	movzbl	options+1(%rip), %eax
	movl	%eax, %ecx
.LBB2_9:                                # %while.body16
                                        # =>This Inner Loop Header: Depth=1
	addl	$4, %ecx
	testb	$8, %cl
	jne	.LBB2_8
.LBB2_10:                               # %if.end18
	testb	$8, %al
	je	.LBB2_14
# BB#11:                                # %if.then22
	testb	$16, diagnostic(%rip)
	je	.LBB2_13
# BB#12:                                # %if.then25
	movl	$.L.str32, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB2_13:                               # %if.end26
	movl	$1, %edi
	callq	willoption
	movb	options+1(%rip), %al
.LBB2_14:                               # %if.end27
	testb	$1, %al
	jne	.LBB2_16
# BB#15:                                # %if.then31
	movl	$1, %edi
	movl	$1, %esi
	callq	send_will
.LBB2_16:                               # %if.end32
	leaq	420(%rsp), %rbp
	movl	$21536, %esi            # imm = 0x5420
	xorl	%eax, %eax
	movl	%ebx, %edi
	movq	%rbp, %rdx
	callq	ioctl
	callq	telrcv
	movl	$21537, %esi            # imm = 0x5421
	xorl	%eax, %eax
	movl	%r14d, %edi
	movq	%rbp, %rdx
	callq	ioctl
	movl	$21537, %esi            # imm = 0x5421
	xorl	%eax, %eax
	movl	%ebx, %edi
	movq	%rbp, %rdx
	callq	ioctl
	movl	net(%rip), %edi
	movl	$1, %esi
	movl	$10, %edx
	movl	$4, %r8d
	movq	%rbp, %rcx
	callq	setsockopt
	movl	$20, %edi
	movl	$1, %esi
	callq	signal
	movl	$22, %edi
	movl	$1, %esi
	callq	signal
	movl	$17, %edi
	movl	$cleanup, %esi
	callq	signal
	movl	$.L.str33, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB2_18
# BB#17:                                # %if.then41
	movl	$21538, %esi            # imm = 0x5422
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	ioctl
	movl	%ebp, %edi
	callq	close
.LBB2_18:                               # %if.end44
	movl	$.L.str34, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB2_20
# BB#19:                                # %if.then47
	movl	$0, hostinfo(%rip)
.LBB2_20:                               # %if.end48
	xorl	%edi, %edi
	movl	$host_name, %esi
	callq	edithost
	cmpl	$0, hostinfo(%rip)
	je	.LBB2_22
# BB#21:                                # %if.then53
	movl	$.L.str35, %edi
	movl	$ptyibuf2, %esi
	callq	putf
.LBB2_22:                               # %if.end54
	movl	pcc(%rip), %eax
	testl	%eax, %eax
	je	.LBB2_24
# BB#23:                                # %if.then56
	movq	ptyip(%rip), %rsi
	incl	%eax
	movslq	%eax, %rdx
	movl	$ptyibuf2, %edi
	callq	strncat
.LBB2_24:                               # %if.end60
	movq	$ptyibuf2, ptyip(%rip)
	movl	$ptyibuf2, %edi
	callq	strlen
	movl	%eax, pcc(%rip)
	testb	$1, diagnostic(%rip)
	je	.LBB2_26
# BB#25:                                # %if.then65
	movl	$.L.str36, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movl	pcc(%rip), %eax
.LBB2_26:                               # %for.cond.preheader
	testl	ncc(%rip), %eax
	js	.LBB2_43
# BB#27:                                # %do.body.lr.ph
	movq	%r14, %rsi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%esi, %eax
	movl	%eax, %edx
	andl	$192, %edx
	movl	%esi, %ecx
	subl	%edx, %ecx
	movl	$1, %ebp
	movl	$1, %r14d
                                        # kill: CL<def> CL<kill> ECX<kill>
	shlq	%cl, %r14
	sarl	$6, %eax
	leal	1(%rsi), %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	testl	%esi, %esi
	movslq	%eax, %r15
	movl	$0, %r12d
	cmovnsl	%ecx, %r12d
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%ebx, %eax
	movl	%eax, %edx
	andl	$192, %edx
	movl	%ebx, %ecx
	subl	%edx, %ecx
                                        # kill: CL<def> CL<kill> ECX<kill>
	shlq	%cl, %rbp
	sarl	$6, %eax
	leal	1(%rbx), %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movslq	%eax, %r13
	movl	$0, %eax
	cmovnsl	%ecx, %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	jmp	.LBB2_28
.LBB2_68:                               # %if.else322
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	nfrontp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, nfrontp(%rip)
	movb	$0, (%rax)
.LBB2_69:                               # %while.cond280thread-pre-split
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	pcc(%rip), %eax
.LBB2_70:                               # %while.cond280.preheader
                                        #   in Loop: Header=BB2_28 Depth=1
	testl	%eax, %eax
	jle	.LBB2_79
	.align	16, 0x90
.LBB2_71:                               # %while.body283
                                        #   Parent Loop BB2_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	nfrontp(%rip), %rcx
	movl	$netobuf+8192, %edx
	subq	%rcx, %rdx
	cmpq	$2, %rdx
	jl	.LBB2_79
# BB#72:                                # %if.end289
                                        #   in Loop: Header=BB2_71 Depth=2
	movq	ptyip(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, ptyip(%rip)
	movzbl	(%rdx), %edx
	decl	%eax
	leaq	1(%rcx), %rsi
	cmpl	$13, %edx
	movl	%eax, pcc(%rip)
	movq	%rsi, nfrontp(%rip)
	movb	%dl, (%rcx)
	jne	.LBB2_73
# BB#75:                                # %land.lhs.true303
                                        #   in Loop: Header=BB2_71 Depth=2
	testb	$1, options(%rip)
	jne	.LBB2_69
# BB#76:                                # %if.then307
                                        #   in Loop: Header=BB2_71 Depth=2
	cmpl	$0, pcc(%rip)
	jle	.LBB2_68
# BB#77:                                # %land.lhs.true310
                                        #   in Loop: Header=BB2_71 Depth=2
	movq	ptyip(%rip), %rax
	movzbl	(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB2_68
# BB#78:                                # %if.then315
                                        #   in Loop: Header=BB2_71 Depth=2
	leaq	1(%rax), %rcx
	movq	%rcx, ptyip(%rip)
	movb	(%rax), %al
	movq	nfrontp(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, nfrontp(%rip)
	movb	%al, (%rcx)
	movl	pcc(%rip), %eax
	decl	%eax
	testl	%eax, %eax
	movl	%eax, pcc(%rip)
	jg	.LBB2_71
	.align	16, 0x90
.LBB2_79:                               # %while.end326
                                        #   in Loop: Header=BB2_28 Depth=1
	testq	160(%rsp,%r15,8), %r14
	je	.LBB2_82
# BB#80:                                # %land.lhs.true337
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	nfrontp(%rip), %rax
	subq	nbackp(%rip), %rax
	testq	%rax, %rax
	jle	.LBB2_82
# BB#81:                                # %if.then343
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	netflush
.LBB2_82:                               # %if.end344
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$0, ncc(%rip)
	jle	.LBB2_84
# BB#83:                                # %if.then347
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	telrcv
.LBB2_84:                               # %if.end348
                                        #   in Loop: Header=BB2_28 Depth=1
	testq	160(%rsp,%r13,8), %rbp
	je	.LBB2_42
# BB#85:                                # %land.lhs.true359
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	pfrontp(%rip), %rax
	subq	pbackp(%rip), %rax
	testq	%rax, %rax
	jle	.LBB2_42
# BB#86:                                # %if.then365
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	ptyflush
	jmp	.LBB2_42
.LBB2_73:                               # %if.end289
                                        #   in Loop: Header=BB2_28 Depth=1
	movzbl	%dl, %eax
	cmpl	$255, %eax
	jne	.LBB2_69
# BB#74:                                # %if.end298.thread
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	nfrontp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, nfrontp(%rip)
	movb	$-1, (%rax)
	jmp	.LBB2_69
	.align	16, 0x90
.LBB2_28:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_71 Depth 2
	xorl	%eax, %eax
	movl	$16, %ecx
	leaq	288(%rsp), %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	xorl	%eax, %eax
	movl	$16, %ecx
	leaq	160(%rsp), %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	xorl	%eax, %eax
	movl	$16, %ecx
	leaq	32(%rsp), %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	movq	nfrontp(%rip), %rax
	cmpq	nbackp(%rip), %rax
	jne	.LBB2_30
# BB#29:                                # %do.body
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	pcc(%rip), %eax
	testl	%eax, %eax
	jle	.LBB2_31
	.align	16, 0x90
.LBB2_30:                               # %if.then96
                                        #   in Loop: Header=BB2_28 Depth=1
	orq	%r14, 160(%rsp,%r15,8)
	movl	%r12d, %edi
.LBB2_32:                               # %if.end117
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	pfrontp(%rip), %rax
	cmpq	pbackp(%rip), %rax
	jne	.LBB2_34
# BB#33:                                # %if.end117
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	ncc(%rip), %eax
	testl	%eax, %eax
	jle	.LBB2_35
	.align	16, 0x90
.LBB2_34:                               # %if.then125
                                        #   in Loop: Header=BB2_28 Depth=1
	orq	%rbp, 160(%rsp,%r13,8)
	cmpl	%ebx, %edi
	cmovlel	28(%rsp), %edi          # 4-byte Folded Reload
.LBB2_36:                               # %if.end153
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$0, SYNCHing(%rip)
	jne	.LBB2_38
# BB#37:                                # %if.then155
                                        #   in Loop: Header=BB2_28 Depth=1
	orq	%r14, 32(%rsp,%r15,8)
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edi
	cmovlel	12(%rsp), %edi          # 4-byte Folded Reload
.LBB2_38:                               # %if.end169
                                        #   in Loop: Header=BB2_28 Depth=1
	xorl	%r8d, %r8d
	leaq	288(%rsp), %rsi
	leaq	160(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	select
	testl	%eax, %eax
	jg	.LBB2_44
# BB#39:                                # %if.then173
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$-1, %eax
	jne	.LBB2_41
# BB#40:                                # %if.then176
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB2_42
.LBB2_41:                               # %if.end182
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$5, %edi
	callq	sleep
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_44:                               # %if.end184
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	net(%rip), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%edi, %eax
	movl	%eax, %edx
	andl	$192, %edx
	sarl	$6, %eax
	cltq
	movq	32(%rsp,%rax,8), %rsi
	movl	%edi, %ecx
	subl	%edx, %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	btq	%rcx, %rsi
	jae	.LBB2_46
# BB#45:                                # %if.then195
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$1, SYNCHing(%rip)
.LBB2_46:                               # %if.end196
                                        #   in Loop: Header=BB2_28 Depth=1
	testq	288(%rsp,%rax,8), %rdx
	je	.LBB2_56
# BB#47:                                # %if.then207
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$netibuf, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	read
	movq	%rax, %rcx
	testl	%ecx, %ecx
	movl	%ecx, ncc(%rip)
	jns	.LBB2_50
# BB#48:                                # %land.lhs.true212
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB2_43
# BB#49:                                # %if.then216
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$0, ncc(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB2_52
.LBB2_50:                               # %if.else217
                                        #   in Loop: Header=BB2_28 Depth=1
	jle	.LBB2_43
# BB#51:                                # %if.end221
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	$netibuf, netip(%rip)
.LBB2_52:                               # %if.end222
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	diagnostic(%rip), %eax
	testb	$5, %al
	je	.LBB2_54
# BB#53:                                # %if.then225
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$.L.str37, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	netoprintf
	movl	diagnostic(%rip), %eax
.LBB2_54:                               # %if.end226
                                        #   in Loop: Header=BB2_28 Depth=1
	testb	$4, %al
	je	.LBB2_56
# BB#55:                                # %if.then229
                                        #   in Loop: Header=BB2_28 Depth=1
	movq	netip(%rip), %rsi
	movl	ncc(%rip), %edx
	movl	$.L.str38, %edi
	callq	printdata
.LBB2_56:                               # %if.end231
                                        #   in Loop: Header=BB2_28 Depth=1
	testq	288(%rsp,%r13,8), %rbp
	je	.LBB2_69
# BB#57:                                # %if.then242
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$ptyibuf, %esi
	movl	$8192, %edx             # imm = 0x2000
	movl	%ebx, %edi
	callq	read
	testl	%eax, %eax
	movl	%eax, pcc(%rip)
	jns	.LBB2_61
# BB#58:                                # %land.lhs.true247
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$5, %eax
	je	.LBB2_60
# BB#59:                                # %land.lhs.true247
                                        #   in Loop: Header=BB2_28 Depth=1
	cmpl	$11, %eax
	jne	.LBB2_43
.LBB2_60:                               # %while.cond280.preheader.thread
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	$0, pcc(%rip)
	jmp	.LBB2_79
.LBB2_61:                               # %if.else256
                                        #   in Loop: Header=BB2_28 Depth=1
	jle	.LBB2_43
# BB#62:                                # %if.end260
                                        #   in Loop: Header=BB2_28 Depth=1
	testb	$2, ptyibuf(%rip)
	je	.LBB2_64
# BB#63:                                # %if.then264
                                        #   in Loop: Header=BB2_28 Depth=1
	callq	netclear
	movl	$.L.str39, %edi
	movl	$255, %esi
	movl	$242, %edx
	xorl	%eax, %eax
	callq	netoprintf
	movq	nfrontp(%rip), %rax
	decq	%rax
	movq	%rax, neturg(%rip)
.LBB2_64:                               # %if.end265
                                        #   in Loop: Header=BB2_28 Depth=1
	testb	$4, options+33(%rip)
	je	.LBB2_67
# BB#65:                                # %land.lhs.true269
                                        #   in Loop: Header=BB2_28 Depth=1
	movsbl	ptyibuf(%rip), %r8d
	testb	$48, %r8b
	je	.LBB2_67
# BB#66:                                # %if.then273
                                        #   in Loop: Header=BB2_28 Depth=1
	shrl	$5, %r8d
	andl	$1, %r8d
	movl	$250, %edx
	movl	$33, %ecx
	xorl	%eax, %eax
	movl	$240, (%rsp)
	movl	$.L.str40, %edi
	movl	$255, %esi
	movl	$255, %r9d
	callq	netoprintf
.LBB2_67:                               # %if.end277
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	pcc(%rip), %eax
	decl	%eax
	movl	%eax, pcc(%rip)
	movq	$ptyibuf+1, ptyip(%rip)
	jmp	.LBB2_70
.LBB2_31:                               # %if.else
                                        #   in Loop: Header=BB2_28 Depth=1
	orq	%rbp, 288(%rsp,%r13,8)
	movl	8(%rsp), %edi           # 4-byte Reload
	jmp	.LBB2_32
.LBB2_35:                               # %if.else139
                                        #   in Loop: Header=BB2_28 Depth=1
	orq	%r14, 288(%rsp,%r15,8)
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %edi
	cmovlel	12(%rsp), %edi          # 4-byte Folded Reload
	jmp	.LBB2_36
	.align	16, 0x90
.LBB2_42:                               # %for.cond.backedge
                                        #   in Loop: Header=BB2_28 Depth=1
	movl	pcc(%rip), %eax
	testl	ncc(%rip), %eax
	jns	.LBB2_28
.LBB2_43:                               # %for.end
	xorl	%edi, %edi
	callq	cleanup
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp38:
	.size	telnet, .Ltmp38-telnet
	.cfi_endproc

	.globl	interrupt
	.align	16, 0x90
	.type	interrupt,@function
interrupt:                              # @interrupt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 16
	callq	ptyflush
	movl	pty(%rip), %edi
	movl	$1074025526, %esi       # imm = 0x40045436
	movl	$2, %edx
	xorl	%eax, %eax
	popq	%rcx
	jmp	ioctl                   # TAILCALL
.Ltmp41:
	.size	interrupt, .Ltmp41-interrupt
	.cfi_endproc

	.globl	sendbrk
	.align	16, 0x90
	.type	sendbrk,@function
sendbrk:                                # @sendbrk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp43:
	.cfi_def_cfa_offset 16
	callq	ptyflush
	movl	pty(%rip), %edi
	movl	$1074025526, %esi       # imm = 0x40045436
	movl	$3, %edx
	xorl	%eax, %eax
	popq	%rcx
	jmp	ioctl                   # TAILCALL
.Ltmp44:
	.size	sendbrk, .Ltmp44-sendbrk
	.cfi_endproc

	.globl	sendsusp
	.align	16, 0x90
	.type	sendsusp,@function
sendsusp:                               # @sendsusp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp46:
	.cfi_def_cfa_offset 16
	callq	ptyflush
	movl	pty(%rip), %edi
	movl	$1074025526, %esi       # imm = 0x40045436
	movl	$20, %edx
	xorl	%eax, %eax
	popq	%rcx
	jmp	ioctl                   # TAILCALL
.Ltmp47:
	.size	sendsusp, .Ltmp47-sendsusp
	.cfi_endproc

	.globl	recv_ayt
	.align	16, 0x90
	.type	recv_ayt,@function
recv_ayt:                               # @recv_ayt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str41, %edi
	movl	$host_name, %esi
	xorl	%eax, %eax
	jmp	netoprintf              # TAILCALL
.Ltmp48:
	.size	recv_ayt, .Ltmp48-recv_ayt
	.cfi_endproc

	.globl	doeof
	.align	16, 0x90
	.type	doeof,@function
doeof:                                  # @doeof
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 16
	callq	init_termbuf
	movq	slctab+136(%rip), %rcx
	testq	%rcx, %rcx
	movb	$4, %al
	je	.LBB7_2
# BB#1:                                 # %cond.true
	movb	(%rcx), %al
.LBB7_2:                                # %cond.end
	movq	pfrontp(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, pfrontp(%rip)
	movb	%al, (%rcx)
	popq	%rax
	ret
.Ltmp51:
	.size	doeof, .Ltmp51-doeof
	.cfi_endproc

	.globl	telrcv
	.align	16, 0x90
	.type	telrcv,@function
telrcv:                                 # @telrcv
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -40
.Ltmp63:
	.cfi_offset %r12, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %r15, -16
	movl	ncc(%rip), %ecx
	testl	%ecx, %ecx
	jle	.LBB8_43
# BB#1:
	movl	$slctab+168, %r14d
	movl	$subbuffer+511, %r15d
	.align	16, 0x90
.LBB8_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	pfrontp(%rip), %rax
	movl	$ptyobuf+8192, %edx
	subq	%rax, %rdx
	cmpq	$2, %rdx
	jl	.LBB8_43
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	netip(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, netip(%rip)
	movb	(%rdx), %bl
	decl	%ecx
	movl	%ecx, ncc(%rip)
	movl	telrcv.state(%rip), %edx
	cmpq	$8, %rdx
	ja	.LBB8_77
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movzbl	%bl, %r12d
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_13:                               # %sw.bb8
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$13, %r12d
	je	.LBB8_11
# BB#14:                                # %sw.bb8
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$255, %r12d
	jne	.LBB8_8
	jmp	.LBB8_15
.LBB8_5:                                # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$0, telrcv.state(%rip)
	movsbl	%bl, %ecx
	cmpl	$9, %ecx
	jg	.LBB8_9
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$255, %r12d
	jne	.LBB8_7
.LBB8_15:                               # %if.then11
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$1, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_54:                               # %sw.bb93
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$255, %r12d
	jne	.LBB8_56
# BB#55:                                # %if.then96
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$4, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_58:                               # %sw.bb105
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$240, %r12d
	jne	.LBB8_59
# BB#68:                                # %if.else131
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	subpointer(%rip), %rax
	cmpq	%r15, %rax
	jae	.LBB8_70
# BB#69:                                # %if.then134
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	$-1, (%rax)
	movq	subpointer(%rip), %rax
.LBB8_70:                               # %if.end136
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	%r15, %rax
	jae	.LBB8_72
# BB#71:                                # %if.then139
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	$-16, (%rax)
	movq	subpointer(%rip), %rax
.LBB8_72:                               # %if.end141
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$-2, %rax
	movq	%rax, subend(%rip)
	movq	$subbuffer, subpointer(%rip)
	callq	suboption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_73:                               # %sw.bb144
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r12d, %edi
	callq	willoption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_74:                               # %sw.bb145
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r12d, %edi
	callq	wontoption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_75:                               # %sw.bb146
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r12d, %edi
	callq	dooption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_76:                               # %sw.bb147
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r12d, %edi
	callq	dontoption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_9:                                # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$10, %r12d
	je	.LBB8_42
# BB#10:                                # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB8_8
.LBB8_11:                               # %land.lhs.true
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$4, options(%rip)
	jne	.LBB8_8
# BB#12:                                # %if.then17
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$2, telrcv.state(%rip)
	jmp	.LBB8_8
.LBB8_56:                               # %if.else97
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	subpointer(%rip), %rax
	cmpq	%r15, %rax
	jae	.LBB8_42
# BB#57:                                # %if.then100
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	%bl, (%rax)
	jmp	.LBB8_42
.LBB8_59:                               # %if.then108
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$255, %r12d
	movq	subpointer(%rip), %rax
	jne	.LBB8_60
# BB#65:                                # %if.end124
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	%r15, %rax
	jae	.LBB8_67
# BB#66:                                # %if.then127
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	$-1, (%rax)
.LBB8_67:                               # %if.end130
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$3, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_7:                                # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	%bl, %bl
	je	.LBB8_42
.LBB8_8:                                # %if.end18
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, pfrontp(%rip)
	movb	%bl, (%rax)
	jmp	.LBB8_42
.LBB8_60:                               # %if.then111
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	%r15, %rax
	jae	.LBB8_62
# BB#61:                                # %if.then114
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	$-1, (%rax)
	movq	subpointer(%rip), %rax
.LBB8_62:                               # %if.end116
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpq	%r15, %rax
	jae	.LBB8_64
# BB#63:                                # %if.then119
                                        #   in Loop: Header=BB8_2 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movb	%bl, (%rax)
	movq	subpointer(%rip), %rax
.LBB8_64:                               # %if.end122
                                        #   in Loop: Header=BB8_2 Depth=1
	addq	$-2, %rax
	movq	%rax, subend(%rip)
	movq	$subbuffer, subpointer(%rip)
	callq	suboption
	movl	$1, telrcv.state(%rip)
.LBB8_16:                               # %gotiac
                                        #   in Loop: Header=BB8_2 Depth=1
	leal	-236(%r12), %eax
	cmpl	$19, %eax
	ja	.LBB8_53
# BB#17:                                # %gotiac
                                        #   in Loop: Header=BB8_2 Depth=1
	jmpq	*.LJTI8_1(,%rax,8)
.LBB8_34:                               # %sw.bb56
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_36
# BB#35:                                # %if.then59
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	%r12d, %esi
	callq	printoption
.LBB8_36:                               # %if.end60
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	ptyflush
	callq	init_termbuf
	cmpl	$247, %r12d
	movl	$slctab+184, %eax
	cmoveq	%r14, %rax
	movq	(%rax), %rax
	movb	(%rax), %al
	testb	%al, %al
	je	.LBB8_53
# BB#37:                                # %if.then68
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	pfrontp(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, pfrontp(%rip)
	movb	%al, (%rcx)
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_50:                               # %sw.bb88
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	sendsusp
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_51:                               # %sw.bb89
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	sendbrk
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_48:                               # %sw.bb81
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$4, options+25(%rip)
	je	.LBB8_53
.LBB8_49:                               # %sw.bb87
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	doeof
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_38:                               # %sw.bb71
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_40
# BB#39:                                # %if.then74
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	$242, %esi
	callq	printoption
.LBB8_40:                               # %if.end75
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	net(%rip), %edi
	callq	stilloob
	movl	%eax, SYNCHing(%rip)
	movl	clocks(%rip), %eax
	incl	%eax
	movl	%eax, clocks(%rip)
	movl	%eax, clocks+36(%rip)
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_21:                               # %sw.bb27
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_23
# BB#22:                                # %if.then30
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	$243, %esi
	callq	printoption
.LBB8_23:                               # %if.end31
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	sendbrk
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_18:                               # %sw.bb22
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_20
# BB#19:                                # %if.then25
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	$244, %esi
	callq	printoption
.LBB8_20:                               # %if.end26
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	interrupt
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_27:                               # %sw.bb37
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_29
# BB#28:                                # %if.then40
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	$245, %esi
	callq	printoption
.LBB8_29:                               # %if.end41
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	ptyflush
	callq	init_termbuf
	movq	slctab+72(%rip), %rax
	testq	%rax, %rax
	je	.LBB8_32
# BB#30:                                # %land.lhs.true43
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	(%rax), %al
	testb	%al, %al
	je	.LBB8_32
# BB#31:                                # %if.then47
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	pfrontp(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, pfrontp(%rip)
	movb	%al, (%rcx)
.LBB8_32:                               # %if.end49
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	netclear
	movq	nfrontp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, nfrontp(%rip)
	movb	$-1, (%rax)
	movq	nfrontp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, nfrontp(%rip)
	movb	$-14, (%rax)
	movq	nfrontp(%rip), %rax
	decq	%rax
	movq	%rax, neturg(%rip)
	testb	$16, diagnostic(%rip)
	je	.LBB8_53
# BB#33:                                # %if.then54
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str150, %edi
	movl	$242, %esi
	callq	printoption
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_24:                               # %sw.bb32
                                        #   in Loop: Header=BB8_2 Depth=1
	testb	$16, diagnostic(%rip)
	je	.LBB8_26
# BB#25:                                # %if.then35
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$.L.str49, %edi
	movl	$246, %esi
	callq	printoption
.LBB8_26:                               # %if.end36
                                        #   in Loop: Header=BB8_2 Depth=1
	callq	recv_ayt
	movl	$0, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_41:                               # %sw.bb76
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$3, telrcv.state(%rip)
	movq	$subbuffer, subpointer(%rip)
	jmp	.LBB8_42
.LBB8_44:                               # %sw.bb77
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$5, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_45:                               # %sw.bb78
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$6, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_46:                               # %sw.bb79
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$7, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_47:                               # %sw.bb80
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$8, telrcv.state(%rip)
	jmp	.LBB8_42
.LBB8_52:                               # %sw.bb90
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	pfrontp(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, pfrontp(%rip)
	movb	%bl, (%rax)
.LBB8_53:                               # %sw.epilog
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$0, telrcv.state(%rip)
	.align	16, 0x90
.LBB8_42:                               # %while.cond.backedge
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	ncc(%rip), %ecx
	testl	%ecx, %ecx
	jg	.LBB8_2
.LBB8_43:                               # %while.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB8_77:                               # %sw.default
	movl	$3, %edi
	movl	$.L.str251, %esi
	xorl	%eax, %eax
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	syslog
	movl	telrcv.state(%rip), %esi
	movl	$.L.str251, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Ltmp66:
	.size	telrcv, .Ltmp66-telrcv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_13
	.quad	.LBB8_16
	.quad	.LBB8_5
	.quad	.LBB8_54
	.quad	.LBB8_58
	.quad	.LBB8_73
	.quad	.LBB8_74
	.quad	.LBB8_75
	.quad	.LBB8_76
.LJTI8_1:
	.quad	.LBB8_49
	.quad	.LBB8_50
	.quad	.LBB8_51
	.quad	.LBB8_48
	.quad	.LBB8_53
	.quad	.LBB8_53
	.quad	.LBB8_38
	.quad	.LBB8_21
	.quad	.LBB8_18
	.quad	.LBB8_27
	.quad	.LBB8_24
	.quad	.LBB8_34
	.quad	.LBB8_34
	.quad	.LBB8_53
	.quad	.LBB8_41
	.quad	.LBB8_44
	.quad	.LBB8_45
	.quad	.LBB8_46
	.quad	.LBB8_47
	.quad	.LBB8_52

	.text
	.globl	suboption
	.align	16, 0x90
	.type	suboption,@function
suboption:                              # @suboption
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r12, -32
.Ltmp79:
	.cfi_offset %r14, -24
.Ltmp80:
	.cfi_offset %r15, -16
	testb	$16, diagnostic(%rip)
	je	.LBB9_2
# BB#1:                                 # %if.then
	callq	netflush
	movq	subpointer(%rip), %rsi
	movl	$2, %edx
	subl	%esi, %edx
	addl	subend(%rip), %edx
	movl	$60, %edi
	callq	printsub
.LBB9_2:                                # %if.end
	movq	subpointer(%rip), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, subpointer(%rip)
	movzbl	(%rax), %ecx
	cmpl	$23, %ecx
	jg	.LBB9_8
# BB#3:                                 # %if.end
	cmpl	$5, %ecx
	jne	.LBB9_73
# BB#4:                                 # %sw.bb105
	cmpq	subend(%rip), %rdx
	jae	.LBB9_73
# BB#5:                                 # %if.end110
	leaq	2(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	movzbl	1(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB9_73
# BB#6:                                 # %sw.bb114
	testb	$1, options+5(%rip)
	je	.LBB9_73
# BB#7:                                 # %if.then118
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	send_status             # TAILCALL
.LBB9_8:                                # %if.end
	cmpl	$30, %ecx
	jg	.LBB9_20
# BB#9:                                 # %if.end
	cmpl	$24, %ecx
	jne	.LBB9_73
# BB#10:                                # %sw.bb28
	testb	$4, options+24(%rip)
	je	.LBB9_73
# BB#11:                                # %if.end33
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+16(%rip)
	movq	subend(%rip), %rsi
	cmpq	%rsi, %rdx
	jae	.LBB9_73
# BB#12:                                # %lor.lhs.false37
	leaq	2(%rax), %rcx
	movq	%rcx, subpointer(%rip)
	cmpb	$0, 1(%rax)
	jne	.LBB9_73
# BB#13:                                # %if.end44
	movq	$suboption.terminalname, terminaltype(%rip)
	movl	$suboption.terminalname, %ebx
	movl	$suboption.terminalname+40, %r14d
	jmp	.LBB9_14
.LBB9_20:                               # %if.end
	addl	$-31, %ecx
	cmpl	$8, %ecx
	ja	.LBB9_73
# BB#21:                                # %if.end
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_30:                               # %sw.bb67
	testb	$4, options+31(%rip)
	je	.LBB9_73
# BB#31:                                # %sw.bb67
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rdx
	jae	.LBB9_73
# BB#32:                                # %if.end78
	leaq	2(%rax), %rdx
	cmpq	%rcx, %rdx
	movq	%rdx, subpointer(%rip)
	jae	.LBB9_73
# BB#33:                                # %if.end85
	movzbl	1(%rax), %esi
	leaq	3(%rax), %rdx
	movq	%rdx, subpointer(%rip)
	cmpq	%rcx, %rdx
	jae	.LBB9_73
# BB#34:                                # %if.end92
	movzbl	2(%rax), %edx
	leaq	4(%rax), %rdi
	cmpq	%rcx, %rdi
	movq	%rdi, subpointer(%rip)
	jae	.LBB9_73
# BB#35:                                # %if.end100
	shll	$8, %esi
	orl	%edx, %esi
	movzbl	3(%rax), %ecx
	shll	$8, %ecx
	leaq	5(%rax), %rdx
	movq	%rdx, subpointer(%rip)
	movzbl	4(%rax), %edx
	orl	%ecx, %edx
	movl	$31, %edi
	jmp	.LBB9_36
	.align	16, 0x90
.LBB9_19:                               # %if.end63.land.rhs48_crit_edge
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	subpointer(%rip), %rcx
	movq	subend(%rip), %rsi
.LBB9_14:                               # %land.rhs48
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, %rcx
	jae	.LBB9_72
# BB#15:                                # %while.body53
                                        #   in Loop: Header=BB9_14 Depth=1
	leaq	1(%rcx), %rax
	movq	%rax, subpointer(%rip)
	movzbl	(%rcx), %r15d
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%r15,2), %eax
	testb	$1, %ah
	je	.LBB9_18
# BB#16:                                # %while.body53
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	%r15d, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB9_18
# BB#17:                                # %cond.true.i
                                        #   in Loop: Header=BB9_14 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r15,4), %r15d
	.align	16, 0x90
.LBB9_18:                               # %if.end63
                                        #   in Loop: Header=BB9_14 Depth=1
	leaq	1(%rbx), %rax
	movq	%rax, terminaltype(%rip)
	movb	%r15b, (%rbx)
	movq	terminaltype(%rip), %rbx
	cmpq	%r14, %rbx
	jb	.LBB9_19
.LBB9_72:                               # %while.end66
	movb	$0, (%rbx)
	movq	$suboption.terminalname, terminaltype(%rip)
	jmp	.LBB9_73
.LBB9_22:                               # %sw.bb
	testb	$4, options+32(%rip)
	je	.LBB9_73
# BB#23:                                # %if.end7
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+20(%rip)
	cmpq	subend(%rip), %rdx
	jae	.LBB9_73
# BB#24:                                # %lor.lhs.false
	leaq	2(%rax), %rdi
	movq	%rdi, subpointer(%rip)
	cmpb	$0, 1(%rax)
	jne	.LBB9_73
# BB#25:                                # %if.end15
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %rbx
	movq	subpointer(%rip), %rdi
	movq	subend(%rip), %rax
.LBB9_26:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	leaq	1(%rcx), %rdi
	movq	%rdi, subpointer(%rip)
	movzbl	(%rcx), %ecx
	cmpl	$44, %ecx
	je	.LBB9_28
# BB#27:                                # %while.cond
                                        #   in Loop: Header=BB9_26 Depth=1
	cmpq	%rax, %rdi
	jb	.LBB9_26
.LBB9_28:                               # %while.end
	cmpq	%rax, %rdi
	jae	.LBB9_73
# BB#29:                                # %if.end26
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	$32, %edi
	movl	%ebx, %esi
	movl	%eax, %edx
.LBB9_36:                               # %if.end100
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	clientstat              # TAILCALL
.LBB9_37:                               # %sw.bb120
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rdx
	jae	.LBB9_73
# BB#38:                                # %lor.lhs.false123
	leaq	2(%rax), %rdx
	movq	%rdx, subpointer(%rip)
	cmpb	$0, 1(%rax)
	jne	.LBB9_73
# BB#39:                                # %if.end130
	movl	clocks(%rip), %esi
	incl	%esi
	movl	%esi, clocks(%rip)
	movl	%esi, clocks+28(%rip)
	subq	%rdx, %rcx
	movb	$0, 2(%rcx,%rax)
	movq	subpointer(%rip), %rsi
	movl	$.L.str1160, %edi
	movl	$1, %edx
	jmp	.LBB9_70
.LBB9_40:                               # %sw.bb137
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rdx
	jae	.LBB9_73
# BB#41:                                # %if.end146
	leaq	2(%rax), %rdx
	movq	%rdx, subpointer(%rip)
	movzbl	1(%rax), %eax
	cmpl	$2, %eax
	je	.LBB9_44
# BB#42:                                # %if.end146
	testb	%al, %al
	jne	.LBB9_73
# BB#43:                                # %if.then152
	movl	clocks(%rip), %eax
	incl	%eax
	movl	%eax, clocks(%rip)
	movl	%eax, clocks+24(%rip)
.LBB9_44:                               # %while.cond159
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rcx, %rdx
	jae	.LBB9_45
# BB#46:                                # %land.rhs162
                                        #   in Loop: Header=BB9_44 Depth=1
	leaq	1(%rdx), %rbx
	movq	%rbx, subpointer(%rip)
	cmpb	$0, (%rdx)
	movq	%rbx, %rdx
	jne	.LBB9_44
	jmp	.LBB9_47
.LBB9_45:
	movq	%rdx, %rbx
.LBB9_47:                               # %while.end170
	cmpq	%rcx, %rbx
	jae	.LBB9_73
# BB#48:
	xorl	%r14d, %r14d
	movl	$subbuffer+511, %r12d
.LBB9_49:                               # %while.body179.lr.ph.lr.ph.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_50 Depth 2
                                        #       Child Loop BB9_51 Depth 3
	movq	%rbx, %rdx
	xorl	%r15d, %r15d
.LBB9_50:                               # %while.body179.lr.ph.lr.ph
                                        #   Parent Loop BB9_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_51 Depth 3
	movq	%rdx, %rax
.LBB9_51:                               # %while.body179
                                        #   Parent Loop BB9_49 Depth=1
                                        #     Parent Loop BB9_50 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leaq	1(%rdx), %rsi
	movq	%rsi, subpointer(%rip)
	movzbl	(%rdx), %edi
	cmpl	$2, %edi
	jne	.LBB9_52
# BB#61:                                # %sw.bb195
                                        #   in Loop: Header=BB9_51 Depth=3
	cmpq	%rcx, %rsi
	jae	.LBB9_64
# BB#62:                                # %if.end199
                                        #   in Loop: Header=BB9_51 Depth=3
	leaq	2(%rdx), %rsi
	movq	%rsi, subpointer(%rip)
	movb	1(%rdx), %dil
.LBB9_63:                               # %sw.default203
                                        #   in Loop: Header=BB9_51 Depth=3
	cmpq	%r12, %rax
	jb	.LBB9_65
.LBB9_64:                               # %while.cond175.backedge
                                        #   in Loop: Header=BB9_51 Depth=3
	cmpq	%rcx, %rsi
	movq	%rsi, %rdx
	jb	.LBB9_51
	jmp	.LBB9_66
.LBB9_52:                               # %while.body179
                                        #   in Loop: Header=BB9_51 Depth=3
	testl	%edi, %edi
	je	.LBB9_56
# BB#53:                                # %while.body179
                                        #   in Loop: Header=BB9_51 Depth=3
	cmpl	$1, %edi
	jne	.LBB9_63
	jmp	.LBB9_54
.LBB9_65:                               # %if.then206
                                        #   in Loop: Header=BB9_51 Depth=3
	movb	%dil, (%rax)
	incq	%rax
	movq	subpointer(%rip), %rdx
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rdx
	jb	.LBB9_51
	jmp	.LBB9_66
.LBB9_54:                               # %sw.bb183
                                        #   in Loop: Header=BB9_50 Depth=2
	movb	$0, (%rax)
	movq	subpointer(%rip), %rdx
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rdx
	movq	%rdx, %r15
	jb	.LBB9_50
	jmp	.LBB9_55
.LBB9_56:                               # %sw.bb184
                                        #   in Loop: Header=BB9_49 Depth=1
	movb	$0, (%rax)
	movq	%rbx, %rdi
	callq	envvarok
	testl	%eax, %eax
	je	.LBB9_60
# BB#57:                                # %if.then187
                                        #   in Loop: Header=BB9_49 Depth=1
	testq	%r15, %r15
	jne	.LBB9_58
# BB#59:                                # %if.else191
                                        #   in Loop: Header=BB9_49 Depth=1
	movq	%rbx, %rdi
	callq	unsetenv
	jmp	.LBB9_60
.LBB9_58:                               # %if.then189
                                        #   in Loop: Header=BB9_49 Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	setenv
.LBB9_60:                               # %if.end194
                                        #   in Loop: Header=BB9_49 Depth=1
	movq	subpointer(%rip), %rbx
	movq	subend(%rip), %rcx
	cmpq	%rcx, %rbx
	movq	%rbx, %rdx
	jb	.LBB9_49
	jmp	.LBB9_67
.LBB9_66:
	movq	%r15, %r14
	movq	%rax, %rdx
.LBB9_67:                               # %while.end211
	movb	$0, (%rdx)
	movq	%rbx, %rdi
	callq	envvarok
	testl	%eax, %eax
	je	.LBB9_73
# BB#68:                                # %if.then214
	testq	%r14, %r14
	je	.LBB9_71
# BB#69:                                # %if.then216
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
.LBB9_70:                               # %if.then216
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	setenv                  # TAILCALL
.LBB9_73:                               # %sw.epilog223
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB9_71:                               # %if.else218
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	jmp	unsetenv                # TAILCALL
.LBB9_55:
	movq	%rdx, %r14
	jmp	.LBB9_67
.Ltmp81:
	.size	suboption, .Ltmp81-suboption
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_30
	.quad	.LBB9_22
	.quad	.LBB9_73
	.quad	.LBB9_73
	.quad	.LBB9_37
	.quad	.LBB9_73
	.quad	.LBB9_73
	.quad	.LBB9_73
	.quad	.LBB9_40

	.text
	.globl	willoption
	.align	16, 0x90
	.type	willoption,@function
willoption:                             # @willoption
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 32
.Ltmp88:
	.cfi_offset %rbx, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testb	$16, diagnostic(%rip)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$.L.str453, %edi
	movl	%ebp, %esi
	callq	printoption
.LBB10_2:                               # %if.end
	movslq	%ebp, %rbx
	movb	do_dont_resp(%rbx), %al
	testb	%al, %al
	je	.LBB10_7
# BB#3:                                 # %if.then2
	movb	%al, %cl
	decb	%cl
	movb	%cl, do_dont_resp(%rbx)
	je	.LBB10_7
# BB#4:                                 # %land.lhs.true
	testb	$4, options(%rbx)
	je	.LBB10_6
# BB#5:                                 # %if.then13
	addb	$-2, %al
	movb	%al, do_dont_resp(%rbx)
	movb	%al, %cl
.LBB10_6:                               # %if.end18
	testb	%cl, %cl
	jne	.LBB10_27
.LBB10_7:                               # %if.then23
	movb	options(%rbx), %al
	testb	$8, %al
	je	.LBB10_8
# BB#22:                                # %if.else57
	cmpl	$1, %ebp
	jne	.LBB10_27
# BB#23:                                # %sw.bb58
	movl	$0, not42(%rip)
	testb	$4, %al
	je	.LBB10_27
# BB#24:                                # %if.end.i
	andb	$-9, %al
	movb	%al, options(%rbx)
	movb	$1, do_dont_resp(%rbx)
	movl	$dont, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB10_27
# BB#25:                                # %if.then22.i93
	movl	$.L.str554, %edi
	movl	$1, %esi
	jmp	.LBB10_26
.LBB10_8:                               # %if.then29
	movl	%ebp, %ecx
	cmpl	$23, %ebp
	jg	.LBB10_11
# BB#9:                                 # %if.then29
	cmpl	$6, %ebp
	ja	.LBB10_20
# BB#10:                                # %if.then29
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_15:                              # %sw.bb
	callq	init_termbuf
	movl	$1, %edi
	callq	tty_binaryin
	callq	set_termbuf
	movb	options(%rbx), %al
	jmp	.LBB10_16
.LBB10_11:                              # %if.then29
	cmpl	$39, %ebp
	ja	.LBB10_20
# BB#12:                                # %if.then29
	movabsq	$590574780416, %rdx     # imm = 0x8981000000
	btq	%rcx, %rdx
	jae	.LBB10_13
.LBB10_16:                              # %if.then47
	orb	$8, %al
	movb	%al, options(%rbx)
	movl	$doopt, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB10_27
# BB#17:                                # %if.then30.i
	movl	$.L.str352, %edi
	movl	%ebp, %esi
	jmp	.LBB10_26
.LBB10_19:                              # %sw.bb30
	movl	$0, not42(%rip)
	jmp	.LBB10_20
.LBB10_13:                              # %if.then29
	cmpq	$33, %rcx
	jne	.LBB10_20
# BB#14:                                # %sw.bb32
	orb	$3, slctab+240(%rip)
	orb	$3, slctab+256(%rip)
	jmp	.LBB10_16
.LBB10_20:                              # %if.else
	movb	$1, do_dont_resp(%rbx)
	movl	$dont, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB10_27
# BB#21:                                # %if.then22.i
	movl	$.L.str554, %edi
	movl	%ebp, %esi
.LBB10_26:                              # %if.end61
	callq	printoption
.LBB10_27:                              # %if.end61
	orb	$4, options(%rbx)
.LBB10_28:                              # %if.end69
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp90:
	.size	willoption, .Ltmp90-willoption
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_15
	.quad	.LBB10_19
	.quad	.LBB10_20
	.quad	.LBB10_16
	.quad	.LBB10_20
	.quad	.LBB10_20
	.quad	.LBB10_28

	.text
	.globl	wontoption
	.align	16, 0x90
	.type	wontoption,@function
wontoption:                             # @wontoption
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp96:
	.cfi_def_cfa_offset 32
.Ltmp97:
	.cfi_offset %rbx, -24
.Ltmp98:
	.cfi_offset %r14, -16
	movl	%edi, %r14d
	testb	$16, diagnostic(%rip)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$.L.str655, %edi
	movl	%r14d, %esi
	callq	printoption
.LBB11_2:                               # %if.end
	movslq	%r14d, %rbx
	movb	do_dont_resp(%rbx), %al
	testb	%al, %al
	je	.LBB11_7
# BB#3:                                 # %if.then2
	movb	%al, %cl
	decb	%cl
	movb	%cl, do_dont_resp(%rbx)
	je	.LBB11_7
# BB#4:                                 # %land.lhs.true
	testb	$4, options(%rbx)
	jne	.LBB11_6
# BB#5:                                 # %if.then13
	addb	$-2, %al
	movb	%al, do_dont_resp(%rbx)
	movb	%al, %cl
.LBB11_6:                               # %if.end18
	testb	%cl, %cl
	jne	.LBB11_26
.LBB11_7:                               # %if.then23
	movb	options(%rbx), %al
	testb	$8, %al
	je	.LBB11_26
# BB#8:                                 # %if.then29
	cmpl	$23, %r14d
	jg	.LBB11_13
# BB#9:                                 # %if.then29
	testl	%r14d, %r14d
	je	.LBB11_19
# BB#10:                                # %if.then29
	cmpl	$1, %r14d
	jne	.LBB11_11
# BB#18:                                # %sw.bb
	movl	$1, not42(%rip)
	jmp	.LBB11_24
.LBB11_13:                              # %if.then29
	cmpl	$31, %r14d
	jg	.LBB11_16
# BB#14:                                # %if.then29
	cmpl	$24, %r14d
	jne	.LBB11_24
# BB#15:                                # %sw.bb47
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+16(%rip)
	jmp	.LBB11_24
.LBB11_16:                              # %if.then29
	leal	-32(%r14), %ecx
	cmpl	$7, %ecx
	ja	.LBB11_24
# BB#17:                                # %if.then29
	jmpq	*.LJTI11_0(,%rcx,8)
.LBB11_21:                              # %sw.bb48
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+20(%rip)
	jmp	.LBB11_24
.LBB11_19:                              # %sw.bb30
	callq	init_termbuf
	xorl	%edi, %edi
	callq	tty_binaryin
	callq	set_termbuf
	movb	options(%rbx), %al
	jmp	.LBB11_24
.LBB11_11:                              # %if.then29
	cmpl	$6, %r14d
	jne	.LBB11_24
# BB#12:                                # %sw.bb31
	andb	$-9, options+6(%rip)
	jmp	.LBB11_26
.LBB11_20:                              # %sw.bb35
	movb	slctab+240(%rip), %cl
	andb	$-4, %cl
	orb	$1, %cl
	movb	%cl, slctab+240(%rip)
	movb	slctab+256(%rip), %cl
	andb	$-4, %cl
	orb	$1, %cl
	movb	%cl, slctab+256(%rip)
	jmp	.LBB11_24
.LBB11_22:                              # %sw.bb50
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+28(%rip)
	jmp	.LBB11_24
.LBB11_23:                              # %sw.bb52
	movl	clocks(%rip), %ecx
	incl	%ecx
	movl	%ecx, clocks(%rip)
	movl	%ecx, clocks+24(%rip)
.LBB11_24:                              # %sw.epilog
	movb	%al, %cl
	andb	$-9, %cl
	movb	%cl, options(%rbx)
	testb	$4, %al
	je	.LBB11_26
# BB#25:                                # %if.then64
	movl	$dont, %edi
	xorl	%eax, %eax
	movl	%r14d, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB11_26
# BB#27:                                # %if.then22.i
	movl	$.L.str554, %edi
	movl	%r14d, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	printoption             # TAILCALL
.LBB11_26:                              # %if.end69
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp99:
	.size	wontoption, .Ltmp99-wontoption
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_21
	.quad	.LBB11_20
	.quad	.LBB11_24
	.quad	.LBB11_22
	.quad	.LBB11_24
	.quad	.LBB11_24
	.quad	.LBB11_24
	.quad	.LBB11_23

	.text
	.globl	dooption
	.align	16, 0x90
	.type	dooption,@function
dooption:                               # @dooption
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 32
.Ltmp106:
	.cfi_offset %rbx, -24
.Ltmp107:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testb	$16, diagnostic(%rip)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$.L.str857, %edi
	movl	%ebp, %esi
	callq	printoption
.LBB12_2:                               # %if.end
	movslq	%ebp, %rbx
	movb	will_wont_resp(%rbx), %al
	testb	%al, %al
	je	.LBB12_7
# BB#3:                                 # %if.then2
	movb	%al, %cl
	decb	%cl
	movb	%cl, will_wont_resp(%rbx)
	je	.LBB12_7
# BB#4:                                 # %land.lhs.true
	testb	$1, options(%rbx)
	je	.LBB12_6
# BB#5:                                 # %if.then13
	addb	$-2, %al
	movb	%al, will_wont_resp(%rbx)
	movb	%al, %cl
.LBB12_6:                               # %if.end18
	testb	%cl, %cl
	jne	.LBB12_27
.LBB12_7:                               # %land.lhs.true23
	testb	$2, options(%rbx)
	jne	.LBB12_27
# BB#8:                                 # %if.then29
	movb	$1, %al
	cmpl	$17, %ebp
	jg	.LBB12_16
# BB#9:                                 # %if.then29
	movl	%ebp, %ecx
	cmpl	$6, %ebp
	ja	.LBB12_20
# BB#10:                                # %if.then29
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_11:                              # %sw.bb30
	callq	init_termbuf
	movl	$1, %edi
	callq	tty_binaryout
	jmp	.LBB12_23
.LBB12_16:                              # %if.then29
	cmpl	$18, %ebp
	jne	.LBB12_20
# BB#17:                                # %sw.bb47
	orb	$2, options+18(%rip)
	movl	$will, %edi
	movl	$18, %esi
	xorl	%eax, %eax
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB12_19
# BB#18:                                # %if.then21.i101
	movl	$.L.str756, %edi
	movl	$18, %esi
	callq	printoption
.LBB12_19:                              # %send_will.exit102
	orb	$1, options+18(%rip)
	callq	netflush
	xorl	%edi, %edi
	callq	cleanup
	movb	will_wont_resp(%rbx), %al
	incb	%al
.LBB12_20:                              # %if.else
	movb	%al, will_wont_resp(%rbx)
	movl	$wont, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB12_27
# BB#21:                                # %if.then22.i
	movl	$.L.str958, %edi
	jmp	.LBB12_26
.LBB12_22:                              # %sw.bb
	callq	init_termbuf
	movl	$1, %edi
	callq	tty_setecho
.LBB12_23:                              # %if.then55
	callq	set_termbuf
	jmp	.LBB12_24
.LBB12_12:                              # %sw.bb32
	movl	$0, turn_on_sga(%rip)
.LBB12_24:                              # %if.then55
	orb	$2, options(%rbx)
	movl	$will, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB12_27
# BB#25:                                # %if.then21.i105
	movl	$.L.str756, %edi
.LBB12_26:                              # %if.end65
	movl	%ebp, %esi
	callq	printoption
.LBB12_27:                              # %if.end65
	orb	$1, options(%rbx)
.LBB12_28:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB12_13:                              # %sw.bb36
	movl	$will, %edi
	movl	$6, %esi
	xorl	%eax, %eax
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB12_15
# BB#14:                                # %if.then21.i
	movl	$.L.str756, %edi
	movl	$6, %esi
	callq	printoption
.LBB12_15:                              # %send_will.exit
	andb	$-4, options(%rbx)
	jmp	.LBB12_28
.Ltmp108:
	.size	dooption, .Ltmp108-dooption
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_11
	.quad	.LBB12_22
	.quad	.LBB12_20
	.quad	.LBB12_12
	.quad	.LBB12_20
	.quad	.LBB12_24
	.quad	.LBB12_13

	.text
	.globl	dontoption
	.align	16, 0x90
	.type	dontoption,@function
dontoption:                             # @dontoption
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp114:
	.cfi_def_cfa_offset 32
.Ltmp115:
	.cfi_offset %rbx, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testb	$16, diagnostic(%rip)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$.L.str1059, %edi
	movl	%ebp, %esi
	callq	printoption
.LBB13_2:                               # %if.end
	movslq	%ebp, %rbx
	movb	will_wont_resp(%rbx), %al
	testb	%al, %al
	je	.LBB13_7
# BB#3:                                 # %if.then2
	movb	%al, %cl
	decb	%cl
	movb	%cl, will_wont_resp(%rbx)
	je	.LBB13_7
# BB#4:                                 # %land.lhs.true
	testb	$1, options(%rbx)
	jne	.LBB13_6
# BB#5:                                 # %if.then13
	addb	$-2, %al
	movb	%al, will_wont_resp(%rbx)
	movb	%al, %cl
.LBB13_6:                               # %if.end18
	testb	%cl, %cl
	jne	.LBB13_24
.LBB13_7:                               # %land.lhs.true23
	movb	options(%rbx), %al
	testb	$2, %al
	je	.LBB13_24
# BB#8:                                 # %if.then29
	cmpl	$3, %ebp
	je	.LBB13_12
# BB#9:                                 # %if.then29
	cmpl	$1, %ebp
	jne	.LBB13_10
# BB#19:                                # %sw.bb30
	callq	init_termbuf
	xorl	%edi, %edi
	callq	tty_setecho
	jmp	.LBB13_20
.LBB13_12:                              # %sw.bb31
	movb	%al, %cl
	andb	$-3, %cl
	movb	%cl, options(%rbx)
	testb	$1, %al
	je	.LBB13_15
# BB#13:                                # %if.then42
	movl	$wont, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB13_15
# BB#14:                                # %if.then22.i
	movl	$.L.str958, %edi
	movl	$3, %esi
	callq	printoption
.LBB13_15:                              # %if.end43
	movb	options(%rbx), %cl
	movb	%cl, %al
	andb	$-2, %al
	movb	%al, options(%rbx)
	movl	turn_on_sga(%rip), %edx
	movl	%edx, %esi
	xorl	$1, %esi
	cmpl	$1, %edx
	movl	%esi, turn_on_sga(%rip)
	je	.LBB13_25
# BB#16:                                # %if.end43
	andb	$2, %cl
	jne	.LBB13_25
# BB#17:                                # %if.end.i
	movb	will_wont_resp(%rbx), %cl
	orb	$2, %al
	movb	%al, options(%rbx)
	incb	%cl
	movb	%cl, will_wont_resp(%rbx)
	movl	$will, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB13_25
# BB#18:                                # %if.then21.i
	movl	$.L.str756, %edi
	movl	$3, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	printoption             # TAILCALL
.LBB13_10:                              # %if.then29
	testl	%ebp, %ebp
	jne	.LBB13_21
# BB#11:                                # %sw.bb
	callq	init_termbuf
	xorl	%edi, %edi
	callq	tty_binaryout
.LBB13_20:                              # %sw.epilog
	callq	set_termbuf
.LBB13_21:                              # %sw.epilog
	movb	options(%rbx), %al
	movb	%al, %cl
	andb	$-3, %cl
	movb	%cl, options(%rbx)
	testb	$1, %al
	je	.LBB13_24
# BB#22:                                # %if.then62
	movl	$wont, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB13_24
# BB#23:                                # %if.then22.i96
	movl	$.L.str958, %edi
	movl	%ebp, %esi
	callq	printoption
.LBB13_24:                              # %if.end64
	andb	$-2, options(%rbx)
.LBB13_25:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp117:
	.size	dontoption, .Ltmp117-dontoption
	.cfi_endproc

	.globl	send_do
	.align	16, 0x90
	.type	send_do,@function
send_do:                                # @send_do
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp122:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp123:
	.cfi_def_cfa_offset 32
.Ltmp124:
	.cfi_offset %rbx, -24
.Ltmp125:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testl	%esi, %esi
	je	.LBB14_7
# BB#1:                                 # %if.then
	movslq	%ebp, %rax
	movb	do_dont_resp(%rax), %sil
	testb	%sil, %sil
	setne	%cl
	movb	options(%rax), %dl
	testb	$4, %dl
	sete	%bl
	orb	%cl, %bl
	je	.LBB14_8
# BB#2:                                 # %if.then
	movb	%dl, %cl
	andb	$8, %cl
	jne	.LBB14_8
# BB#3:                                 # %if.end
	cmpl	$6, %ebp
	je	.LBB14_4
# BB#5:                                 # %if.end
	orb	$8, %dl
	jmp	.LBB14_6
.LBB14_4:
	andb	$-9, %dl
.LBB14_6:                               # %if.end
	movb	%dl, options(%rax)
	incb	%sil
	movb	%sil, do_dont_resp(%rax)
.LBB14_7:                               # %if.end27
	movl	$doopt, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB14_8
# BB#9:                                 # %if.then30
	movl	$.L.str352, %edi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	printoption             # TAILCALL
.LBB14_8:                               # %if.end31
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp126:
	.size	send_do, .Ltmp126-send_do
	.cfi_endproc

	.globl	send_dont
	.align	16, 0x90
	.type	send_dont,@function
send_dont:                              # @send_dont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp132:
	.cfi_def_cfa_offset 32
.Ltmp133:
	.cfi_offset %rbx, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testl	%esi, %esi
	je	.LBB15_4
# BB#1:                                 # %if.then
	movslq	%ebp, %rax
	movb	do_dont_resp(%rax), %cl
	movb	options(%rax), %bl
	movb	%bl, %dl
	andb	$4, %dl
	orb	%cl, %dl
	je	.LBB15_5
# BB#2:                                 # %if.then
	movb	%bl, %dl
	andb	$8, %dl
	je	.LBB15_5
# BB#3:                                 # %if.end
	andb	$-9, %bl
	movb	%bl, options(%rax)
	incb	%cl
	movb	%cl, do_dont_resp(%rax)
.LBB15_4:                               # %if.end19
	movl	$dont, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB15_5
# BB#6:                                 # %if.then22
	movl	$.L.str554, %edi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	printoption             # TAILCALL
.LBB15_5:                               # %if.end23
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp135:
	.size	send_dont, .Ltmp135-send_dont
	.cfi_endproc

	.globl	send_will
	.align	16, 0x90
	.type	send_will,@function
send_will:                              # @send_will
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp141:
	.cfi_def_cfa_offset 32
.Ltmp142:
	.cfi_offset %rbx, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testl	%esi, %esi
	je	.LBB16_4
# BB#1:                                 # %if.then
	movslq	%ebp, %rax
	movb	will_wont_resp(%rax), %sil
	testb	%sil, %sil
	setne	%bl
	movb	options(%rax), %dl
	testb	$1, %dl
	sete	%cl
	orb	%bl, %cl
	je	.LBB16_5
# BB#2:                                 # %if.then
	movb	%dl, %cl
	andb	$2, %cl
	jne	.LBB16_5
# BB#3:                                 # %if.end
	orb	$2, %dl
	movb	%dl, options(%rax)
	incb	%sil
	movb	%sil, will_wont_resp(%rax)
.LBB16_4:                               # %if.end18
	movl	$will, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB16_5
# BB#6:                                 # %if.then21
	movl	$.L.str756, %edi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	printoption             # TAILCALL
.LBB16_5:                               # %if.end22
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp144:
	.size	send_will, .Ltmp144-send_will
	.cfi_endproc

	.globl	send_wont
	.align	16, 0x90
	.type	send_wont,@function
send_wont:                              # @send_wont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp150:
	.cfi_def_cfa_offset 32
.Ltmp151:
	.cfi_offset %rbx, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	testl	%esi, %esi
	je	.LBB17_4
# BB#1:                                 # %if.then
	movslq	%ebp, %rax
	movb	will_wont_resp(%rax), %cl
	movb	options(%rax), %bl
	movb	%bl, %dl
	andb	$1, %dl
	orb	%cl, %dl
	je	.LBB17_5
# BB#2:                                 # %if.then
	movb	%bl, %dl
	andb	$2, %dl
	je	.LBB17_5
# BB#3:                                 # %if.end
	andb	$-3, %bl
	movb	%bl, options(%rax)
	incb	%cl
	movb	%cl, will_wont_resp(%rax)
.LBB17_4:                               # %if.end19
	movl	$wont, %edi
	xorl	%eax, %eax
	movl	%ebp, %esi
	callq	netoprintf
	testb	$16, diagnostic(%rip)
	je	.LBB17_5
# BB#6:                                 # %if.then22
	movl	$.L.str958, %edi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	printoption             # TAILCALL
.LBB17_5:                               # %if.end23
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp153:
	.size	send_wont, .Ltmp153-send_wont
	.cfi_endproc

	.globl	send_status
	.align	16, 0x90
	.type	send_status,@function
send_status:                            # @send_status
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 16
	subq	$256, %rsp              # imm = 0x100
.Ltmp157:
	.cfi_def_cfa_offset 272
.Ltmp158:
	.cfi_offset %rbx, -16
	callq	netflush
	movb	$-1, (%rsp)
	movb	$-6, 1(%rsp)
	movb	$5, 2(%rsp)
	leaq	4(%rsp), %rbx
	movb	$0, 3(%rsp)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB18_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$2, options(%rax)
	je	.LBB18_8
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-5, (%rbx)
	movzbl	%al, %ecx
	cmpl	$255, %ecx
	movb	%al, 1(%rbx)
	jne	.LBB18_3
# BB#6:                                 # %if.then16
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-1, 2(%rbx)
	jmp	.LBB18_7
	.align	16, 0x90
.LBB18_3:                               # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movzbl	%al, %ecx
	cmpl	$240, %ecx
	jne	.LBB18_4
# BB#5:                                 # %if.end.thread
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-16, 2(%rbx)
.LBB18_7:                               # %if.end19
                                        #   in Loop: Header=BB18_1 Depth=1
	addq	$3, %rbx
	jmp	.LBB18_8
.LBB18_4:                               #   in Loop: Header=BB18_1 Depth=1
	addq	$2, %rbx
	.align	16, 0x90
.LBB18_8:                               # %if.end19
                                        #   in Loop: Header=BB18_1 Depth=1
	testb	$8, options(%rax)
	je	.LBB18_15
# BB#9:                                 # %if.then25
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-3, (%rbx)
	movzbl	%al, %ecx
	cmpl	$255, %ecx
	movb	%al, 1(%rbx)
	jne	.LBB18_10
# BB#13:                                # %if.then37
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-1, 2(%rbx)
	jmp	.LBB18_14
	.align	16, 0x90
.LBB18_10:                              # %if.then25
                                        #   in Loop: Header=BB18_1 Depth=1
	movzbl	%al, %ecx
	cmpl	$240, %ecx
	jne	.LBB18_11
# BB#12:                                # %if.end33.thread
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	$-16, 2(%rbx)
.LBB18_14:                              # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	addq	$3, %rbx
	jmp	.LBB18_15
.LBB18_11:                              #   in Loop: Header=BB18_1 Depth=1
	addq	$2, %rbx
	.align	16, 0x90
.LBB18_15:                              # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	incq	%rax
	cmpq	$40, %rax
	jne	.LBB18_1
# BB#16:                                # %for.end
	testb	$8, options+33(%rip)
	je	.LBB18_18
# BB#17:                                # %if.then44
	movw	$8698, (%rbx)           # imm = 0x21FA
	movb	flowmode(%rip), %al
	movb	%al, 2(%rbx)
	movb	$-16, 3(%rbx)
	addq	$4, %rbx
.LBB18_18:                              # %if.end50
	movw	$-3841, (%rbx)          # imm = 0xFFFFFFFFFFFFF0FF
	addl	$2, %ebx
	leaq	(%rsp), %rdi
	subl	%edi, %ebx
	movl	%ebx, %esi
	callq	writenet
	callq	netflush
	testb	$16, diagnostic(%rip)
	je	.LBB18_20
# BB#19:                                # %if.then58
	leaq	(%rsp), %rsi
	movl	$62, %edi
	movl	%ebx, %edx
	callq	printsub
	callq	netflush
.LBB18_20:                              # %if.end65
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	ret
.Ltmp159:
	.size	send_status, .Ltmp159-send_status
	.cfi_endproc

	.align	16, 0x90
	.type	envvarok,@function
envvarok:                               # @envvarok
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$.L.str1261, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB19_5
# BB#1:                                 # %cond.false89
	movl	$.L.str1160, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB19_5
# BB#2:                                 # %cond.false147
	movl	$.L.str1362, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB19_5
# BB#3:                                 # %cond.false205
	movl	$.L.str1463, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB19_5
# BB#4:                                 # %cond.false263
	movl	$.L.str1564, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbx
	ret
.LBB19_5:                               # %return
	movl	$1, %eax
	popq	%rbx
	ret
.Ltmp164:
	.size	envvarok, .Ltmp164-envvarok
	.cfi_endproc

	.globl	clientstat
	.align	16, 0x90
	.type	clientstat,@function
clientstat:                             # @clientstat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 48
.Ltmp173:
	.cfi_offset %rbx, -32
.Ltmp174:
	.cfi_offset %r14, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movl	%edi, %ebx
	callq	init_termbuf
	cmpl	$32, %ebx
	jne	.LBB20_1
# BB#3:                                 # %sw.bb2
	movl	%r14d, def_tspeed(%rip)
	movl	%ebp, def_rspeed(%rip)
	movl	%ebp, %edi
	callq	tty_rspeed
	movl	%r14d, %edi
	callq	tty_tspeed
	callq	set_termbuf
	jmp	.LBB20_4
.LBB20_1:                               # %entry
	cmpl	$31, %ebx
	jne	.LBB20_4
# BB#2:                                 # %sw.bb
	movl	%r14d, def_col(%rip)
	movl	%ebp, def_row(%rip)
	movw	%r14w, 10(%rsp)
	movw	%bp, 8(%rsp)
	movl	pty(%rip), %edi
	leaq	8(%rsp), %rdx
	movl	$21524, %esi            # imm = 0x5414
	xorl	%eax, %eax
	callq	ioctl
.LBB20_4:                               # %sw.epilog
	callq	netflush
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp176:
	.size	clientstat, .Ltmp176-clientstat
	.cfi_endproc

	.globl	get_slc_defaults
	.align	16, 0x90
	.type	get_slc_defaults,@function
get_slc_defaults:                       # @get_slc_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp182:
	.cfi_def_cfa_offset 32
.Ltmp183:
	.cfi_offset %rbx, -24
.Ltmp184:
	.cfi_offset %r14, -16
	callq	init_termbuf
	movq	$-18, %r14
	movl	$slctab+24, %ebx
	.align	16, 0x90
.LBB21_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	19(%r14), %edi
	leaq	-7(%rbx), %rsi
	movq	%rbx, %rdx
	callq	spcset
	movb	%al, -8(%rbx)
	movb	$0, -6(%rbx)
	movb	$0, -5(%rbx)
	addq	$16, %rbx
	incq	%r14
	jne	.LBB21_1
# BB#2:                                 # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp185:
	.size	get_slc_defaults, .Ltmp185-get_slc_defaults
	.cfi_endproc

	.globl	init_termbuf
	.align	16, 0x90
	.type	init_termbuf,@function
init_termbuf:                           # @init_termbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp187:
	.cfi_def_cfa_offset 16
	movl	pty(%rip), %edi
	movl	$termbuf, %esi
	callq	tcgetattr
	movups	termbuf+44(%rip), %xmm0
	movups	%xmm0, termbuf2+44(%rip)
	movups	termbuf+32(%rip), %xmm0
	movups	%xmm0, termbuf2+32(%rip)
	movups	termbuf+16(%rip), %xmm0
	movups	%xmm0, termbuf2+16(%rip)
	movups	termbuf(%rip), %xmm0
	movups	%xmm0, termbuf2(%rip)
	popq	%rax
	ret
.Ltmp188:
	.size	init_termbuf, .Ltmp188-init_termbuf
	.cfi_endproc

	.globl	set_termbuf
	.align	16, 0x90
	.type	set_termbuf,@function
set_termbuf:                            # @set_termbuf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp190:
	.cfi_def_cfa_offset 16
	movl	$termbuf, %edi
	movl	$termbuf2, %esi
	movl	$60, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB23_1
# BB#2:                                 # %if.then
	movl	pty(%rip), %edi
	xorl	%esi, %esi
	movl	$termbuf, %edx
	popq	%rax
	jmp	tcsetattr               # TAILCALL
.LBB23_1:                               # %if.end
	popq	%rax
	ret
.Ltmp191:
	.size	set_termbuf, .Ltmp191-set_termbuf
	.cfi_endproc

	.globl	spcset
	.align	16, 0x90
	.type	spcset,@function
spcset:                                 # @spcset
	.cfi_startproc
# BB#0:                                 # %entry
                                        # kill: EDI<def> EDI<kill> RDI<def>
	decl	%edi
	cmpl	$17, %edi
	jbe	.LBB24_1
# BB#17:                                # %sw.default
	movb	$0, (%rsi)
	movq	$0, (%rdx)
	xorl	%eax, %eax
	ret
.LBB24_1:                               # %entry
	jmpq	*.LJTI24_0(,%rdi,8)
.LBB24_16:                              # %sw.bb15
	movb	$0, (%rsi)
	movq	$0, (%rdx)
	movl	$3, %eax
	ret
.LBB24_5:                               # %sw.bb3
	movb	termbuf+17(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+17, (%rdx)
	movl	$98, %eax
	ret
.LBB24_12:                              # %sw.bb10
	movb	termbuf+30(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+30, (%rdx)
	movl	$34, %eax
	ret
.LBB24_6:                               # %sw.bb4
	movb	termbuf+18(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+18, (%rdx)
	movl	$98, %eax
	ret
.LBB24_2:                               # %sw.bb
	movb	termbuf+21(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+21, (%rdx)
	movl	$2, %eax
	ret
.LBB24_13:                              # %sw.bb11
	movb	termbuf+27(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+27, (%rdx)
	movl	$66, %eax
	ret
.LBB24_3:                               # %sw.bb1
	movb	termbuf+19(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+19, (%rdx)
	movl	$2, %eax
	ret
.LBB24_4:                               # %sw.bb2
	movb	termbuf+20(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+20, (%rdx)
	movl	$2, %eax
	ret
.LBB24_9:                               # %sw.bb7
	movb	termbuf+31(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+31, (%rdx)
	movl	$2, %eax
	ret
.LBB24_10:                              # %sw.bb8
	movb	termbuf+29(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+29, (%rdx)
	movl	$2, %eax
	ret
.LBB24_11:                              # %sw.bb9
	movb	termbuf+32(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+32, (%rdx)
	movl	$2, %eax
	ret
.LBB24_7:                               # %sw.bb5
	movb	termbuf+25(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+25, (%rdx)
	movl	$2, %eax
	ret
.LBB24_8:                               # %sw.bb6
	movb	termbuf+26(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+26, (%rdx)
	movl	$2, %eax
	ret
.LBB24_14:                              # %sw.bb12
	movb	termbuf+28(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+28, (%rdx)
	movl	$2, %eax
	ret
.LBB24_15:                              # %sw.bb13
	movb	termbuf+33(%rip), %al
	movb	%al, (%rsi)
	movq	$termbuf+33, (%rdx)
	movl	$2, %eax
	ret
.Ltmp192:
	.size	spcset, .Ltmp192-spcset
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI24_0:
	.quad	.LBB24_16
	.quad	.LBB24_16
	.quad	.LBB24_5
	.quad	.LBB24_12
	.quad	.LBB24_16
	.quad	.LBB24_16
	.quad	.LBB24_6
	.quad	.LBB24_2
	.quad	.LBB24_13
	.quad	.LBB24_3
	.quad	.LBB24_4
	.quad	.LBB24_9
	.quad	.LBB24_10
	.quad	.LBB24_11
	.quad	.LBB24_7
	.quad	.LBB24_8
	.quad	.LBB24_14
	.quad	.LBB24_15

	.text
	.globl	getpty
	.align	16, 0x90
	.type	getpty,@function
getpty:                                 # @getpty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp194:
	.cfi_def_cfa_offset 16
	movq	line(%rip), %rdx
	leaq	4(%rsp), %rdi
	movl	$ptyslavefd, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	openpty
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	orl	4(%rsp), %eax
	popq	%rdx
	ret
.Ltmp195:
	.size	getpty, .Ltmp195-getpty
	.cfi_endproc

	.globl	tty_setecho
	.align	16, 0x90
	.type	tty_setecho,@function
tty_setecho:                            # @tty_setecho
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf+12(%rip), %eax
	movl	%eax, %ecx
	andl	$-9, %ecx
	orl	$8, %eax
	testl	%edi, %edi
	cmovel	%ecx, %eax
	movl	%eax, termbuf+12(%rip)
	ret
.Ltmp196:
	.size	tty_setecho, .Ltmp196-tty_setecho
	.cfi_endproc

	.globl	tty_binaryin
	.align	16, 0x90
	.type	tty_binaryin,@function
tty_binaryin:                           # @tty_binaryin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf(%rip), %eax
	movl	%eax, %ecx
	orl	$32, %ecx
	andl	$-33, %eax
	testl	%edi, %edi
	cmovel	%ecx, %eax
	movl	%eax, termbuf(%rip)
	ret
.Ltmp197:
	.size	tty_binaryin, .Ltmp197-tty_binaryin
	.cfi_endproc

	.globl	tty_binaryout
	.align	16, 0x90
	.type	tty_binaryout,@function
tty_binaryout:                          # @tty_binaryout
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-305, %eax             # imm = 0xFFFFFFFFFFFFFECF
	andl	termbuf+8(%rip), %eax
	testl	%edi, %edi
	je	.LBB28_2
# BB#1:                                 # %if.then
	orl	$48, %eax
	movl	%eax, termbuf+8(%rip)
	movl	termbuf+4(%rip), %eax
	andl	$-2, %eax
	movl	%eax, termbuf+4(%rip)
	ret
.LBB28_2:                               # %if.else
	orl	$288, %eax              # imm = 0x120
	movl	%eax, termbuf+8(%rip)
	movl	termbuf+4(%rip), %eax
	orl	$1, %eax
	movl	%eax, termbuf+4(%rip)
	ret
.Ltmp198:
	.size	tty_binaryout, .Ltmp198-tty_binaryout
	.cfi_endproc

	.globl	tty_isbinaryin
	.align	16, 0x90
	.type	tty_isbinaryin,@function
tty_isbinaryin:                         # @tty_isbinaryin
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf(%rip), %eax
	shrl	$5, %eax
	notl	%eax
	andl	$1, %eax
	ret
.Ltmp199:
	.size	tty_isbinaryin, .Ltmp199-tty_isbinaryin
	.cfi_endproc

	.globl	tty_isbinaryout
	.align	16, 0x90
	.type	tty_isbinaryout,@function
tty_isbinaryout:                        # @tty_isbinaryout
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf+4(%rip), %eax
	notl	%eax
	andl	$1, %eax
	ret
.Ltmp200:
	.size	tty_isbinaryout, .Ltmp200-tty_isbinaryout
	.cfi_endproc

	.globl	tty_issofttab
	.align	16, 0x90
	.type	tty_issofttab,@function
tty_issofttab:                          # @tty_issofttab
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$6144, %eax             # imm = 0x1800
	andl	termbuf+4(%rip), %eax
	cmpl	$6144, %eax             # imm = 0x1800
	sete	%al
	movzbl	%al, %eax
	ret
.Ltmp201:
	.size	tty_issofttab, .Ltmp201-tty_issofttab
	.cfi_endproc

	.globl	tty_setsofttab
	.align	16, 0x90
	.type	tty_setsofttab,@function
tty_setsofttab:                         # @tty_setsofttab
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf+4(%rip), %eax
	movl	%eax, %ecx
	andl	$-6145, %ecx            # imm = 0xFFFFFFFFFFFFE7FF
	orl	$6144, %eax             # imm = 0x1800
	testl	%edi, %edi
	cmovel	%ecx, %eax
	movl	%eax, termbuf+4(%rip)
	ret
.Ltmp202:
	.size	tty_setsofttab, .Ltmp202-tty_setsofttab
	.cfi_endproc

	.globl	tty_islitecho
	.align	16, 0x90
	.type	tty_islitecho,@function
tty_islitecho:                          # @tty_islitecho
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf+12(%rip), %eax
	shrl	$9, %eax
	notl	%eax
	andl	$1, %eax
	ret
.Ltmp203:
	.size	tty_islitecho, .Ltmp203-tty_islitecho
	.cfi_endproc

	.globl	tty_setlitecho
	.align	16, 0x90
	.type	tty_setlitecho,@function
tty_setlitecho:                         # @tty_setlitecho
	.cfi_startproc
# BB#0:                                 # %entry
	movl	termbuf+12(%rip), %eax
	movl	%eax, %ecx
	orl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	testl	%edi, %edi
	cmovel	%ecx, %eax
	movl	%eax, termbuf+12(%rip)
	ret
.Ltmp204:
	.size	tty_setlitecho, .Ltmp204-tty_setlitecho
	.cfi_endproc

	.globl	tty_iscrnl
	.align	16, 0x90
	.type	tty_iscrnl,@function
tty_iscrnl:                             # @tty_iscrnl
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$256, %eax              # imm = 0x100
	andl	termbuf(%rip), %eax
	ret
.Ltmp205:
	.size	tty_iscrnl, .Ltmp205-tty_iscrnl
	.cfi_endproc

	.globl	tty_tspeed
	.align	16, 0x90
	.type	tty_tspeed,@function
tty_tspeed:                             # @tty_tspeed
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$termspeeds, %eax
	.align	16, 0x90
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	addq	$8, %rax
	cmpl	$-1, %ecx
	je	.LBB36_3
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB36_1 Depth=1
	cmpl	%edi, %ecx
	jl	.LBB36_1
.LBB36_3:                               # %for.end
	movl	-4(%rax), %esi
	movl	$termbuf, %edi
	jmp	cfsetospeed             # TAILCALL
.Ltmp206:
	.size	tty_tspeed, .Ltmp206-tty_tspeed
	.cfi_endproc

	.globl	tty_rspeed
	.align	16, 0x90
	.type	tty_rspeed,@function
tty_rspeed:                             # @tty_rspeed
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$termspeeds, %eax
	.align	16, 0x90
.LBB37_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ecx
	addq	$8, %rax
	cmpl	$-1, %ecx
	je	.LBB37_3
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB37_1 Depth=1
	cmpl	%edi, %ecx
	jl	.LBB37_1
.LBB37_3:                               # %for.end
	movl	-4(%rax), %esi
	movl	$termbuf, %edi
	jmp	cfsetispeed             # TAILCALL
.Ltmp207:
	.size	tty_rspeed, .Ltmp207-tty_rspeed
	.cfi_endproc

	.globl	login_tty
	.align	16, 0x90
	.type	login_tty,@function
login_tty:                              # @login_tty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	setsid
	testl	%eax, %eax
	jns	.LBB38_2
# BB#1:                                 # %if.then
	movl	net(%rip), %edi
	movl	$.L.str77, %esi
	callq	fatalperror
.LBB38_2:                               # %if.end
	movl	$21518, %esi            # imm = 0x540E
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	callq	ioctl
	testl	%eax, %eax
	jns	.LBB38_4
# BB#3:                                 # %if.then3
	movl	net(%rip), %edi
	movl	$.L.str178, %esi
	callq	fatalperror
.LBB38_4:                               # %if.end4
	testl	%ebx, %ebx
	je	.LBB38_5
# BB#7:                                 # %if.then6
	xorl	%esi, %esi
	movl	%ebx, %edi
	callq	dup2
	cmpl	$1, %ebx
	je	.LBB38_6
# BB#8:                                 # %if.then10
	movl	$1, %esi
	movl	%ebx, %edi
	callq	dup2
	cmpl	$2, %ebx
	je	.LBB38_11
# BB#9:                                 # %if.end16
	movl	$2, %esi
	movl	%ebx, %edi
	callq	dup2
	cmpl	$3, %ebx
	jl	.LBB38_11
# BB#10:                                # %if.then18
	movl	%ebx, %edi
	callq	close
	jmp	.LBB38_11
.LBB38_5:                               # %if.then10.thread
	xorl	%edi, %edi
	movl	$1, %esi
	callq	dup2
.LBB38_6:                               # %if.end16.thread33
	movl	$2, %esi
	movl	%ebx, %edi
	callq	dup2
.LBB38_11:                              # %if.end20
	xorl	%eax, %eax
	popq	%rbx
	ret
.Ltmp212:
	.size	login_tty, .Ltmp212-login_tty
	.cfi_endproc

	.globl	startslave
	.align	16, 0x90
	.type	startslave,@function
startslave:                             # @startslave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp217:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp218:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp219:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp220:
	.cfi_def_cfa_offset 48
.Ltmp221:
	.cfi_offset %rbx, -32
.Ltmp222:
	.cfi_offset %r14, -24
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	fork
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB39_1
# BB#2:                                 # %if.end
	movl	$1, %edi
	movl	$1, %esi
	callq	signal
	testl	%ebp, %ebp
	jne	.LBB39_3
# BB#4:                                 # %if.else
	movl	ptyslavefd(%rip), %ebp
	movl	pty(%rip), %edi
	movl	$termbuf, %esi
	callq	tcgetattr
	movups	termbuf+44(%rip), %xmm0
	movups	%xmm0, termbuf2+44(%rip)
	movups	termbuf+32(%rip), %xmm0
	movups	%xmm0, termbuf2+32(%rip)
	movups	termbuf+16(%rip), %xmm0
	movups	%xmm0, termbuf2+16(%rip)
	movups	termbuf(%rip), %xmm0
	movups	%xmm0, termbuf2(%rip)
	movl	def_row(%rip), %eax
	movl	def_col(%rip), %ecx
	movl	%ecx, %edx
	orl	%eax, %edx
	je	.LBB39_6
# BB#5:                                 # %if.then.i
	movq	$0, 8(%rsp)
	movw	%cx, 10(%rsp)
	movw	%ax, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$21524, %esi            # imm = 0x5414
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	ioctl
.LBB39_6:                               # %if.end.i
	orb	$8, termbuf+12(%rip)
	orb	$5, termbuf+4(%rip)
	movl	$-4353, %eax            # imm = 0xFFFFFFFFFFFFEEFF
	andl	termbuf(%rip), %eax
	orl	$256, %eax              # imm = 0x100
	movl	%eax, termbuf(%rip)
	movl	def_rspeed(%rip), %ecx
	testl	%ecx, %ecx
	movl	$9600, %eax             # imm = 0x2580
	cmovgl	%ecx, %eax
	movl	$termspeeds, %ecx
	.align	16, 0x90
.LBB39_7:                               # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	addq	$8, %rcx
	cmpl	$-1, %edx
	je	.LBB39_9
# BB#8:                                 # %for.cond.i.i
                                        #   in Loop: Header=BB39_7 Depth=1
	cmpl	%eax, %edx
	jl	.LBB39_7
.LBB39_9:                               # %tty_rspeed.exit.i
	movl	-4(%rcx), %esi
	movl	$termbuf, %edi
	callq	cfsetispeed
	movl	def_tspeed(%rip), %ecx
	testl	%ecx, %ecx
	movl	$9600, %eax             # imm = 0x2580
	cmovgl	%ecx, %eax
	movl	$termspeeds, %ecx
	.align	16, 0x90
.LBB39_10:                              # %for.cond.i8.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %edx
	addq	$8, %rcx
	cmpl	$-1, %edx
	je	.LBB39_12
# BB#11:                                # %for.cond.i8.i
                                        #   in Loop: Header=BB39_10 Depth=1
	cmpl	%eax, %edx
	jl	.LBB39_10
.LBB39_12:                              # %tty_tspeed.exit.i
	movl	-4(%rcx), %esi
	movl	$termbuf, %edi
	callq	cfsetospeed
	movl	$termbuf, %edi
	movl	$termbuf2, %esi
	movl	$60, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB39_14
# BB#13:                                # %if.then.i.i
	movl	pty(%rip), %edi
	xorl	%esi, %esi
	movl	$termbuf, %edx
	callq	tcsetattr
.LBB39_14:                              # %set_termbuf.exit.i
	movl	%ebp, %edi
	callq	login_tty
	movl	net(%rip), %edi
	cmpl	$3, %edi
	jl	.LBB39_16
# BB#15:                                # %if.then19.i
	callq	close
.LBB39_16:                              # %if.end21.i
	movl	pty(%rip), %edi
	cmpl	$3, %edi
	jl	.LBB39_18
# BB#17:                                # %if.then24.i
	callq	close
.LBB39_18:                              # %getptyslave.exit
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	start_login
	jmp	.LBB39_19
.LBB39_1:                               # %if.end.thread
	movl	net(%rip), %edi
	movl	$.L.str279, %esi
	callq	fatalperror
	movl	$1, %edi
	movl	$1, %esi
	callq	signal
.LBB39_3:                               # %if.then1
	movl	ptyslavefd(%rip), %edi
	callq	close
.LBB39_19:                              # %if.end6
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp224:
	.size	startslave, .Ltmp224-startslave
	.cfi_endproc

	.globl	start_login
	.align	16, 0x90
	.type	start_login,@function
start_login:                            # @start_login
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp229:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp230:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp231:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp232:
	.cfi_def_cfa_offset 48
.Ltmp233:
	.cfi_offset %rbx, -32
.Ltmp234:
	.cfi_offset %r14, -24
.Ltmp235:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %r15
	movl	$11, 12(%rsp)
	movl	$88, %edi
	callq	malloc
	testq	%rax, %rax
	movq	%rax, (%rsp)
	je	.LBB40_6
# BB#1:                                 # %initarg.exit
	movl	$0, 8(%rsp)
	movq	$0, (%rax)
	movq	loginprg(%rip), %rsi
	leaq	(%rsp), %rbx
	movq	%rbx, %rdi
	callq	addarg
	movl	$.L.str481, %esi
	movq	%rbx, %rdi
	callq	addarg
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addarg
	movl	$.L.str582, %esi
	movq	%rbx, %rdi
	callq	addarg
	movzbl	(%r14), %eax
	cmpl	$45, %eax
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$3, %edi
	movl	$.L.str683, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB40_3:                               # %if.end
	movl	$.L.str885, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB40_5
# BB#4:                                 # %if.then2
	leaq	(%rsp), %rdi
	movq	%rax, %rsi
	callq	addarg
	movl	$.L.str885, %edi
	callq	getenv
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB40_7
.LBB40_5:                               # %if.end11
	callq	closelog
	movq	(%rsp), %rsi
	movq	loginprg(%rip), %rdi
	callq	execv
	movq	loginprg(%rip), %rdx
	movl	$3, %edi
	movl	$.L.str1087, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	net(%rip), %edi
	movq	loginprg(%rip), %rsi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	fatalperror             # TAILCALL
.LBB40_6:                               # %if.then.i
	movq	stderr(%rip), %rax
	movl	$.L.str1188, %edi
	movl	$14, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.LBB40_7:                               # %if.then8
	movl	$1, %edi
	movl	$.L.str986, %esi
	movl	$19, %edx
	callq	write
	movl	$3, %edi
	movl	$.L.str683, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp236:
	.size	start_login, .Ltmp236-start_login
	.cfi_endproc

	.globl	init_env
	.align	16, 0x90
	.type	init_env,@function
init_env:                               # @init_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp238:
	.cfi_def_cfa_offset 16
	movl	$.L.str380, %edi
	callq	getenv
	leaq	-3(%rax), %rcx
	testq	%rax, %rax
	cmoveq	%rax, %rcx
	movl	$envinit, %eax
	movl	$envinit+8, %edx
	cmoveq	%rax, %rdx
	movq	%rcx, envinit(%rip)
	movq	$0, (%rdx)
	movq	$envinit, environ(%rip)
	popq	%rax
	ret
.Ltmp239:
	.size	init_env, .Ltmp239-init_env
	.cfi_endproc

	.globl	cleanup
	.align	16, 0x90
	.type	cleanup,@function
cleanup:                                # @cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp242:
	.cfi_def_cfa_offset 16
.Ltmp243:
	.cfi_offset %rbx, -16
	movq	line(%rip), %rbx
	addq	$5, %rbx
	movq	%rbx, %rdi
	callq	logout
	testl	%eax, %eax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movl	$.L.str784, %esi
	movl	$.L.str784, %edx
	movq	%rbx, %rdi
	callq	logwtmp
.LBB42_2:                               # %if.end
	movq	line(%rip), %rdi
	movl	$384, %esi              # imm = 0x180
	callq	chmod
	movq	line(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	chown
	movb	$112, (%rbx)
	movq	line(%rip), %rdi
	movl	$438, %esi              # imm = 0x1B6
	callq	chmod
	movq	line(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	chown
	movl	net(%rip), %edi
	movl	$2, %esi
	callq	shutdown
	xorl	%edi, %edi
	callq	exit
.Ltmp244:
	.size	cleanup, .Ltmp244-cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	addarg,@function
addarg:                                 # @addarg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp248:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp250:
	.cfi_def_cfa_offset 32
.Ltmp251:
	.cfi_offset %rbx, -24
.Ltmp252:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	8(%rbx), %ecx
	movl	12(%rbx), %eax
	leal	-1(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB43_2
# BB#1:                                 # %entry.if.end9_crit_edge
	movq	(%rbx), %rax
	jmp	.LBB43_4
.LBB43_2:                               # %if.then
	addl	$10, %eax
	movl	%eax, 12(%rbx)
	movq	(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$3, %rsi
	callq	realloc
	testq	%rax, %rax
	movq	%rax, (%rbx)
	je	.LBB43_5
# BB#3:                                 # %if.then.if.end9_crit_edge
	movl	8(%rbx), %ecx
.LBB43_4:                               # %if.end9
	leal	1(%rcx), %edx
	movl	%edx, 8(%rbx)
	movslq	%ecx, %rcx
	movq	%r14, (%rax,%rcx,8)
	movslq	%edx, %rax
	movq	(%rbx), %rcx
	movq	$0, (%rcx,%rax,8)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB43_5:                               # %if.then7
	movq	stderr(%rip), %rax
	movl	$.L.str1188, %edi
	movl	$14, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.Ltmp253:
	.size	addarg, .Ltmp253-addarg
	.cfi_endproc

	.globl	netoprintf
	.align	16, 0x90
	.type	netoprintf,@function
netoprintf:                             # @netoprintf
	.cfi_startproc
# BB#0:                                 # %while.body.lr.ph
	pushq	%r15
.Ltmp260:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp261:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp262:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp263:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp264:
	.cfi_def_cfa_offset 48
	subq	$208, %rsp
.Ltmp265:
	.cfi_def_cfa_offset 256
.Ltmp266:
	.cfi_offset %rbx, -48
.Ltmp267:
	.cfi_offset %r12, -40
.Ltmp268:
	.cfi_offset %r13, -32
.Ltmp269:
	.cfi_offset %r14, -24
.Ltmp270:
	.cfi_offset %r15, -16
	movq	%rdi, %r13
	testb	%al, %al
	je	.LBB44_2
# BB#1:                                 # %while.body.lr.ph
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB44_2:                               # %while.body.lr.ph
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	leaq	(%rsp), %r15
	leaq	256(%rsp), %r12
	leaq	176(%rsp), %r14
	jmp	.LBB44_3
	.align	16, 0x90
.LBB44_5:                               # %if.then
                                        #   in Loop: Header=BB44_3 Depth=1
	callq	netflush
.LBB44_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$netobuf, %ebx
	subq	nfrontp(%rip), %rbx
	addq	$8256, %rbx             # imm = 0x2040
	movq	%r15, 192(%rsp)
	movq	%r12, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	nfrontp(%rip), %rdi
	movslq	%ebx, %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	vsnprintf
	testl	%eax, %eax
	js	.LBB44_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB44_3 Depth=1
	cmpl	%ebx, %eax
	je	.LBB44_5
# BB#6:                                 # %while.end
	cltq
	addq	%rax, nfrontp(%rip)
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.Ltmp271:
	.size	netoprintf, .Ltmp271-netoprintf
	.cfi_endproc

	.globl	netflush
	.align	16, 0x90
	.type	netflush,@function
netflush:                               # @netflush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 16
.Ltmp275:
	.cfi_offset %rbx, -16
	movq	nfrontp(%rip), %rbx
	movq	nbackp(%rip), %rsi
	subq	%rsi, %rbx
	testl	%ebx, %ebx
	jle	.LBB45_11
# BB#1:                                 # %if.then
	testb	$1, diagnostic(%rip)
	je	.LBB45_3
# BB#2:                                 # %if.then2
	movl	$.L.str76, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	netoprintf
	movq	nfrontp(%rip), %rbx
	movq	nbackp(%rip), %rsi
	subq	%rsi, %rbx
.LBB45_3:                               # %if.end
	movq	neturg(%rip), %rax
	testq	%rax, %rax
	je	.LBB45_5
# BB#4:                                 # %if.end
	movl	not42(%rip), %ecx
	testl	%ecx, %ecx
	jne	.LBB45_6
.LBB45_5:                               # %if.then11
	movl	net(%rip), %edi
	movslq	%ebx, %rdx
	callq	write
	jmp	.LBB45_10
.LBB45_6:                               # %if.else
	subq	%rsi, %rax
	movq	%rax, %rdx
	shlq	$32, %rdx
	cmpl	$2, %eax
	movl	net(%rip), %edi
	jl	.LBB45_8
# BB#7:                                 # %if.then20
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rax, %rdx
	sarq	$32, %rdx
	xorl	%ecx, %ecx
	jmp	.LBB45_9
.LBB45_8:                               # %if.else24
	sarq	$32, %rdx
	movl	$1, %ecx
.LBB45_9:                               # %if.end30
	callq	send
.LBB45_10:                              # %if.end30
	movq	%rax, %rbx
.LBB45_11:                              # %if.end30
	testl	%ebx, %ebx
	jns	.LBB45_15
# BB#12:                                # %if.then33
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB45_19
# BB#13:                                # %if.then33
	cmpl	$11, %eax
	je	.LBB45_19
# BB#14:                                # %if.end42
	xorl	%edi, %edi
	callq	cleanup
.LBB45_15:                              # %if.end43
	movslq	%ebx, %rax
	addq	nbackp(%rip), %rax
	movq	%rax, nbackp(%rip)
	cmpq	neturg(%rip), %rax
	jb	.LBB45_17
# BB#16:                                # %if.then46
	movq	$0, neturg(%rip)
.LBB45_17:                              # %if.end47
	cmpq	nfrontp(%rip), %rax
	jne	.LBB45_19
# BB#18:                                # %if.then50
	movq	$netobuf, nfrontp(%rip)
	movq	$netobuf, nbackp(%rip)
.LBB45_19:                              # %return
	popq	%rbx
	ret
.Ltmp276:
	.size	netflush, .Ltmp276-netflush
	.cfi_endproc

	.globl	ttloop
	.align	16, 0x90
	.type	ttloop,@function
ttloop:                                 # @ttloop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp278:
	.cfi_def_cfa_offset 16
	testb	$1, diagnostic(%rip)
	je	.LBB46_2
# BB#1:                                 # %if.then
	movl	$.L.str69, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB46_2:                               # %if.end
	movq	nfrontp(%rip), %rax
	cmpq	nbackp(%rip), %rax
	je	.LBB46_4
# BB#3:                                 # %if.then2
	callq	netflush
.LBB46_4:                               # %if.end3
	movl	net(%rip), %edi
	movl	$netibuf, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	read
	movq	%rax, %rcx
	testl	%ecx, %ecx
	movl	%ecx, ncc(%rip)
	js	.LBB46_5
# BB#7:                                 # %if.else
	je	.LBB46_8
# BB#9:                                 # %if.end10
	testb	$1, diagnostic(%rip)
	je	.LBB46_11
# BB#10:                                # %if.then13
	movl	$.L.str72, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	netoprintf
.LBB46_11:                              # %if.end14
	movq	$netibuf, netip(%rip)
	callq	telrcv
	cmpl	$0, ncc(%rip)
	jle	.LBB46_12
# BB#13:                                # %if.then17
	movq	$ptyobuf, pbackp(%rip)
	movq	$ptyobuf, pfrontp(%rip)
	popq	%rax
	jmp	telrcv                  # TAILCALL
.LBB46_12:                              # %if.end18
	popq	%rax
	ret
.LBB46_5:                               # %if.then5
	movl	$6, %edi
	movl	$.L.str70, %esi
	jmp	.LBB46_6
.LBB46_8:                               # %if.then8
	movl	$6, %edi
	movl	$.L.str71, %esi
.LBB46_6:                               # %if.then5
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp279:
	.size	ttloop, .Ltmp279-ttloop
	.cfi_endproc

	.globl	stilloob
	.align	16, 0x90
	.type	stilloob,@function
stilloob:                               # @stilloob
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp286:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp287:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp288:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp289:
	.cfi_def_cfa_offset 176
.Ltmp290:
	.cfi_offset %rbx, -40
.Ltmp291:
	.cfi_offset %r14, -32
.Ltmp292:
	.cfi_offset %r15, -24
.Ltmp293:
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%r14d, %eax
	movl	%eax, %edx
	andl	$192, %edx
	movl	%r14d, %ecx
	subl	%edx, %ecx
	movl	$1, %r15d
                                        # kill: CL<def> CL<kill> ECX<kill>
	shlq	%cl, %r15
	sarl	$6, %eax
	movslq	%eax, %rbp
	incl	%r14d
	leaq	8(%rsp), %rbx
	.align	16, 0x90
.LBB47_1:                               # %do.body1
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	$16, %ecx
	movq	%rbx, %rdi
	#APP
	cld; rep; stosq
	#NO_APP
	orq	%r15, 8(%rsp,%rbp,8)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$stilloob.timeout, %r8d
	movl	%r14d, %edi
	movq	%rbx, %rcx
	callq	select
	cmpl	$-1, %eax
	jne	.LBB47_4
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB47_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB47_1
	jmp	.LBB47_3
.LBB47_4:                               # %do.end8
	testl	%eax, %eax
	js	.LBB47_3
# BB#5:                                 # %if.end
	testq	8(%rsp,%rbp,8), %r15
	setne	%al
	movzbl	%al, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB47_3:                               # %if.then
	movl	pty(%rip), %eax
	movl	$.L.str73, %esi
	movl	%eax, %edi
	callq	fatalperror
.Ltmp294:
	.size	stilloob, .Ltmp294-stilloob
	.cfi_endproc

	.globl	fatalperror
	.align	16, 0x90
	.type	fatalperror,@function
fatalperror:                            # @fatalperror
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp301:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp302:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp303:
	.cfi_def_cfa_offset 40
	subq	$8200, %rsp             # imm = 0x2008
.Ltmp304:
	.cfi_def_cfa_offset 8240
.Ltmp305:
	.cfi_offset %rbx, -40
.Ltmp306:
	.cfi_offset %r14, -32
.Ltmp307:
	.cfi_offset %r15, -24
.Ltmp308:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movl	%edi, %r14d
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rbp
	leaq	(%rsp), %rbx
	movl	$8192, %esi             # imm = 0x2000
	movl	$.L.str78, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r15, %rcx
	movq	%rbp, %r8
	callq	snprintf
	movl	%r14d, %edi
	movq	%rbx, %rsi
	callq	fatal
.Ltmp309:
	.size	fatalperror, .Ltmp309-fatalperror
	.cfi_endproc

	.globl	ptyflush
	.align	16, 0x90
	.type	ptyflush,@function
ptyflush:                               # @ptyflush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp312:
	.cfi_def_cfa_offset 16
.Ltmp313:
	.cfi_offset %rbx, -16
	movq	pfrontp(%rip), %rbx
	subq	pbackp(%rip), %rbx
	testl	%ebx, %ebx
	jle	.LBB49_6
# BB#1:                                 # %if.then
	movl	diagnostic(%rip), %eax
	testb	$9, %al
	je	.LBB49_3
# BB#2:                                 # %if.then2
	movl	$.L.str74, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	netoprintf
	movl	diagnostic(%rip), %eax
.LBB49_3:                               # %if.end
	testb	$8, %al
	je	.LBB49_5
# BB#4:                                 # %if.then5
	movq	pbackp(%rip), %rsi
	movl	$.L.str75, %edi
	movl	%ebx, %edx
	callq	printdata
.LBB49_5:                               # %if.end6
	movl	pty(%rip), %edi
	movq	pbackp(%rip), %rsi
	movslq	%ebx, %rdx
	callq	write
	movq	%rax, %rbx
.LBB49_6:                               # %if.end9
	testl	%ebx, %ebx
	jns	.LBB49_10
# BB#7:                                 # %if.then12
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB49_12
# BB#8:                                 # %if.then12
	cmpl	$11, %eax
	je	.LBB49_12
# BB#9:                                 # %if.end20
	xorl	%edi, %edi
	callq	cleanup
.LBB49_10:                              # %if.end21
	movslq	%ebx, %rax
	addq	pbackp(%rip), %rax
	movq	%rax, pbackp(%rip)
	cmpq	pfrontp(%rip), %rax
	jne	.LBB49_12
# BB#11:                                # %if.then24
	movq	$ptyobuf, pfrontp(%rip)
	movq	$ptyobuf, pbackp(%rip)
.LBB49_12:                              # %if.end25
	popq	%rbx
	ret
.Ltmp314:
	.size	ptyflush, .Ltmp314-ptyflush
	.cfi_endproc

	.globl	printdata
	.align	16, 0x90
	.type	printdata,@function
printdata:                              # @printdata
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp323:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp324:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp325:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp326:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp327:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp328:
	.cfi_def_cfa_offset 112
.Ltmp329:
	.cfi_offset %rbx, -56
.Ltmp330:
	.cfi_offset %r12, -48
.Ltmp331:
	.cfi_offset %r13, -40
.Ltmp332:
	.cfi_offset %r14, -32
.Ltmp333:
	.cfi_offset %r15, -24
.Ltmp334:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%r15, (%rsp)            # 8-byte Spill
	testl	%r14d, %r14d
	je	.LBB50_14
# BB#1:                                 # %while.body.lr.ph
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB50_2:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB50_7 Depth 2
	movl	$netobuf+8192, %eax
	subq	nfrontp(%rip), %rax
	cmpq	$79, %rax
	jg	.LBB50_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB50_2 Depth=1
	callq	netflush
.LBB50_4:                               # %if.end
                                        #   in Loop: Header=BB50_2 Depth=1
	xorl	%ebp, %ebp
	movl	$.L.str158, %edi
	xorl	%eax, %eax
	movq	%r15, %rsi
	callq	netoprintf
	testl	%r14d, %r14d
	jne	.LBB50_6
# BB#5:                                 #   in Loop: Header=BB50_2 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB50_13
	.align	16, 0x90
.LBB50_6:                               # %for.body.lr.ph
                                        #   in Loop: Header=BB50_2 Depth=1
	callq	__ctype_b_loc
	movq	%rax, %rbp
	movl	%r14d, %r12d
	negl	%r12d
	cmpl	$-20, %r12d
	movl	$-20, %eax
	cmovbel	%eax, %r12d
	movl	%r12d, %r15d
	negl	%r15d
	movl	%r12d, %eax
	notl	%eax
	leaq	1(%rax,%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB50_7:                               # %for.body
                                        #   Parent Loop BB50_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx,%r13), %esi
	movl	$.L.str159, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movsbq	(%rbx,%r13), %rax
	movq	(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %ecx
	andl	$16384, %ecx            # imm = 0x4000
	testw	%cx, %cx
	movb	$46, %cl
	je	.LBB50_9
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB50_7 Depth=2
	movb	%al, %cl
.LBB50_9:                               # %for.body
                                        #   in Loop: Header=BB50_7 Depth=2
	movb	%cl, 16(%rsp,%r13)
	testb	$1, %r13b
	je	.LBB50_11
# BB#10:                                # %if.then13
                                        #   in Loop: Header=BB50_7 Depth=2
	movl	$.L.str160, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB50_11:                              # %if.end14
                                        #   in Loop: Header=BB50_7 Depth=2
	incq	%r13
	cmpl	%r13d, %r15d
	jne	.LBB50_7
# BB#12:                                # %for.cond.for.end_crit_edge
                                        #   in Loop: Header=BB50_2 Depth=1
	addl	%r12d, %r14d
	movslq	%r15d, %rbp
	movq	(%rsp), %r15            # 8-byte Reload
	leaq	16(%rsp), %r12
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB50_13:                              # %for.end
                                        #   in Loop: Header=BB50_2 Depth=1
	movb	$0, 16(%rsp,%rbp)
	movl	$.L.str161, %edi
	xorl	%eax, %eax
	movq	%r12, %rsi
	callq	netoprintf
	testl	%r14d, %r14d
	jne	.LBB50_2
.LBB50_14:                              # %while.end
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp335:
	.size	printdata, .Ltmp335-printdata
	.cfi_endproc

	.globl	netclear
	.align	16, 0x90
	.type	netclear,@function
netclear:                               # @netclear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp340:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp341:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp342:
	.cfi_def_cfa_offset 32
.Ltmp343:
	.cfi_offset %rbx, -32
.Ltmp344:
	.cfi_offset %r14, -24
.Ltmp345:
	.cfi_offset %r15, -16
	movl	$netobuf, %ecx
	movq	nbackp(%rip), %rax
	.align	16, 0x90
.LBB51_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_6 Depth 2
	movq	%rcx, %rbx
	movzbl	(%rbx), %edx
	leaq	1(%rbx), %rcx
	cmpl	$255, %edx
	jne	.LBB51_9
# BB#2:                                 # %if.end.i
                                        #   in Loop: Header=BB51_1 Depth=1
	movzbl	(%rcx), %ecx
	cmpl	$250, %ecx
	je	.LBB51_5
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB51_1 Depth=1
	addl	$-251, %ecx
	cmpl	$3, %ecx
	ja	.LBB51_8
# BB#4:                                 # %sw.bb.i
                                        #   in Loop: Header=BB51_1 Depth=1
	leaq	3(%rbx), %rcx
	jmp	.LBB51_9
.LBB51_5:                               # %sw.bb6.i
                                        #   in Loop: Header=BB51_1 Depth=1
	leaq	2(%rbx), %rdx
	.align	16, 0x90
.LBB51_6:                               # %for.cond.i
                                        #   Parent Loop BB51_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	leaq	1(%rcx), %rdx
	movzbl	(%rcx), %esi
	cmpl	$255, %esi
	jne	.LBB51_6
# BB#7:                                 # %if.then12.i
                                        #   in Loop: Header=BB51_6 Depth=2
	movzbl	1(%rcx), %edx
	addq	$2, %rcx
	cmpl	$240, %edx
	movq	%rcx, %rdx
	jne	.LBB51_6
	jmp	.LBB51_9
.LBB51_8:                               # %sw.default.i
                                        #   in Loop: Header=BB51_1 Depth=1
	leaq	2(%rbx), %rcx
	.align	16, 0x90
.LBB51_9:                               # %nextitem.exit
                                        #   in Loop: Header=BB51_1 Depth=1
	cmpq	%rax, %rcx
	jbe	.LBB51_1
# BB#10:                                # %while.cond1.preheader
	movq	nfrontp(%rip), %rax
	cmpq	%rbx, %rax
	movl	$netobuf, %r14d
	jbe	.LBB51_11
.LBB51_26:                              # %land.lhs.true.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB51_12 Depth 2
                                        #       Child Loop BB51_34 Depth 3
                                        #     Child Loop BB51_15 Depth 2
                                        #       Child Loop BB51_19 Depth 3
	movq	%rbx, %rdi
	.align	16, 0x90
.LBB51_12:                              # %land.lhs.true
                                        #   Parent Loop BB51_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB51_34 Depth 3
	movzbl	(%rdi), %edx
	leaq	1(%rdi), %rcx
	cmpl	$255, %edx
	jne	.LBB51_29
# BB#13:                                # %land.lhs.true7
                                        #   in Loop: Header=BB51_12 Depth=2
	movb	(%rcx), %cl
	movb	%cl, %dl
	addb	$9, %dl
	movzbl	%dl, %edx
	cmpl	$2, %edx
	jae	.LBB51_14
# BB#30:                                # %if.end.i77
                                        #   in Loop: Header=BB51_12 Depth=2
	movzbl	%cl, %ecx
	cmpl	$250, %ecx
	je	.LBB51_33
# BB#31:                                # %if.end.i77
                                        #   in Loop: Header=BB51_12 Depth=2
	addl	$-251, %ecx
	cmpl	$3, %ecx
	ja	.LBB51_27
# BB#32:                                # %sw.bb.i79
                                        #   in Loop: Header=BB51_12 Depth=2
	addq	$3, %rdi
	jmp	.LBB51_28
.LBB51_33:                              # %sw.bb6.i81
                                        #   in Loop: Header=BB51_12 Depth=2
	addq	$2, %rdi
	.align	16, 0x90
.LBB51_34:                              # %for.cond.i85
                                        #   Parent Loop BB51_26 Depth=1
                                        #     Parent Loop BB51_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdi, %rcx
	leaq	1(%rcx), %rdi
	movzbl	(%rcx), %edx
	cmpl	$255, %edx
	jne	.LBB51_34
# BB#35:                                # %if.then12.i88
                                        #   in Loop: Header=BB51_34 Depth=3
	movzbl	1(%rcx), %edx
	addq	$2, %rcx
	cmpl	$240, %edx
	movq	%rcx, %rdi
	jne	.LBB51_34
	jmp	.LBB51_29
.LBB51_27:                              # %sw.default.i90
                                        #   in Loop: Header=BB51_12 Depth=2
	addq	$2, %rdi
	.align	16, 0x90
.LBB51_28:                              # %while.cond1.backedge
                                        #   in Loop: Header=BB51_12 Depth=2
	movq	%rdi, %rcx
.LBB51_29:                              # %while.cond1.backedge
                                        #   in Loop: Header=BB51_12 Depth=2
	cmpq	%rcx, %rax
	movq	%rcx, %rdi
	ja	.LBB51_12
	jmp	.LBB51_11
	.align	16, 0x90
.LBB51_14:                              #   in Loop: Header=BB51_26 Depth=1
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB51_15:                              # %if.end.i96
                                        #   Parent Loop BB51_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB51_19 Depth 3
	movzbl	%cl, %ecx
	cmpl	$250, %ecx
	je	.LBB51_18
# BB#16:                                # %if.end.i96
                                        #   in Loop: Header=BB51_15 Depth=2
	addl	$-251, %ecx
	cmpl	$3, %ecx
	ja	.LBB51_21
# BB#17:                                # %sw.bb.i98
                                        #   in Loop: Header=BB51_15 Depth=2
	addq	$3, %rbx
	jmp	.LBB51_22
	.align	16, 0x90
.LBB51_18:                              # %sw.bb6.i100
                                        #   in Loop: Header=BB51_15 Depth=2
	addq	$2, %rbx
	movq	%rbx, %rcx
	.align	16, 0x90
.LBB51_19:                              # %for.cond.i104
                                        #   Parent Loop BB51_26 Depth=1
                                        #     Parent Loop BB51_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rcx, %rbx
	leaq	1(%rbx), %rcx
	movzbl	(%rbx), %edx
	cmpl	$255, %edx
	jne	.LBB51_19
# BB#20:                                # %if.then12.i107
                                        #   in Loop: Header=BB51_19 Depth=3
	movzbl	1(%rbx), %ecx
	addq	$2, %rbx
	cmpl	$240, %ecx
	movq	%rbx, %rcx
	jne	.LBB51_19
	jmp	.LBB51_22
.LBB51_21:                              # %sw.default.i109
                                        #   in Loop: Header=BB51_15 Depth=2
	addq	$2, %rbx
	.align	16, 0x90
.LBB51_22:                              # %nextitem.exit111
                                        #   in Loop: Header=BB51_15 Depth=2
	cmpq	%rbx, %rax
	jbe	.LBB51_25
# BB#23:                                # %land.lhs.true21
                                        #   in Loop: Header=BB51_15 Depth=2
	movzbl	(%rbx), %ecx
	cmpl	$255, %ecx
	jne	.LBB51_25
# BB#24:                                # %land.lhs.true26
                                        #   in Loop: Header=BB51_15 Depth=2
	movb	1(%rbx), %cl
	movb	%cl, %dl
	addb	$9, %dl
	movzbl	%dl, %edx
	cmpl	$1, %edx
	ja	.LBB51_15
.LBB51_25:                              # %do.end
                                        #   in Loop: Header=BB51_26 Depth=1
	movl	%ebx, %eax
	subl	%edi, %eax
	movslq	%eax, %r15
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	bcopy
	addq	%r15, %r14
	movq	nfrontp(%rip), %rax
	cmpq	%rbx, %rax
	ja	.LBB51_26
.LBB51_11:                              # %while.end44
	movq	$netobuf, nbackp(%rip)
	movq	%r14, nfrontp(%rip)
	movq	$0, neturg(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp346:
	.size	netclear, .Ltmp346-netclear
	.cfi_endproc

	.globl	writenet
	.align	16, 0x90
	.type	writenet,@function
writenet:                               # @writenet
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp350:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp351:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp352:
	.cfi_def_cfa_offset 32
.Ltmp353:
	.cfi_offset %rbx, -24
.Ltmp354:
	.cfi_offset %r14, -16
	movl	%esi, %eax
	movq	%rdi, %r14
	movq	nfrontp(%rip), %rsi
	movl	$netobuf+8192, %ecx
	subq	%rsi, %rcx
	movslq	%eax, %rbx
	cmpq	%rbx, %rcx
	jge	.LBB52_2
# BB#1:                                 # %if.then
	callq	netflush
	movq	nfrontp(%rip), %rsi
.LBB52_2:                               # %if.end
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	bcopy
	addq	%rbx, nfrontp(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp355:
	.size	writenet, .Ltmp355-writenet
	.cfi_endproc

	.globl	fatal
	.align	16, 0x90
	.type	fatal,@function
fatal:                                  # @fatal
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp359:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp360:
	.cfi_def_cfa_offset 24
	subq	$8200, %rsp             # imm = 0x2008
.Ltmp361:
	.cfi_def_cfa_offset 8224
.Ltmp362:
	.cfi_offset %rbx, -24
.Ltmp363:
	.cfi_offset %rbp, -16
	movq	%rsi, %rcx
	movl	%edi, %ebp
	leaq	(%rsp), %rbx
	movl	$8192, %esi             # imm = 0x2000
	movl	$.L.str77163, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	movq	%rbx, %rdi
	callq	strlen
	movslq	%eax, %rdx
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	write
	movl	$1, %edi
	callq	sleep
	movl	$1, %edi
	callq	exit
.Ltmp364:
	.size	fatal, .Ltmp364-fatal
	.cfi_endproc

	.globl	edithost
	.align	16, 0x90
	.type	edithost,@function
edithost:                               # @edithost
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp368:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp369:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp370:
	.cfi_def_cfa_offset 32
.Ltmp371:
	.cfi_offset %rbx, -24
.Ltmp372:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$kerninfo, %edi
	callq	uname
	testq	%r14, %r14
	movl	$.L.str79, %eax
	cmovneq	%r14, %rax
	movb	(%rax), %dl
	testb	%dl, %dl
	movl	$editedhost, %edi
	je	.LBB54_11
# BB#1:                                 # %while.body.preheader
	movl	$editedhost, %edi
	incq	%rax
	movl	$editedhost+31, %ecx
	.align	16, 0x90
.LBB54_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%dl, %esi
	cmpl	$64, %esi
	jne	.LBB54_4
# BB#7:                                 # %sw.bb5
                                        #   in Loop: Header=BB54_3 Depth=1
	movb	(%rbx), %dl
	testb	%dl, %dl
	je	.LBB54_10
# BB#8:                                 # %if.then7
                                        #   in Loop: Header=BB54_3 Depth=1
	incq	%rbx
	jmp	.LBB54_9
	.align	16, 0x90
.LBB54_4:                               # %while.body
                                        #   in Loop: Header=BB54_3 Depth=1
	cmpl	$35, %esi
	jne	.LBB54_9
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB54_3 Depth=1
	cmpb	$0, (%rbx)
	je	.LBB54_10
# BB#6:                                 # %select.mid
                                        #   in Loop: Header=BB54_3 Depth=1
	incq	%rbx
	jmp	.LBB54_10
	.align	16, 0x90
.LBB54_9:                               # %sw.default
                                        #   in Loop: Header=BB54_3 Depth=1
	movb	%dl, (%rdi)
	incq	%rdi
.LBB54_10:                              # %sw.epilog
                                        #   in Loop: Header=BB54_3 Depth=1
	cmpq	%rcx, %rdi
	je	.LBB54_14
# BB#2:                                 # %while.cond
                                        #   in Loop: Header=BB54_3 Depth=1
	movb	(%rax), %dl
	incq	%rax
	testb	%dl, %dl
	jne	.LBB54_3
.LBB54_11:                              # %while.end
	cmpb	$0, (%rbx)
	je	.LBB54_13
# BB#12:                                # %if.then17
	movl	$editedhost+31, %edx
	subq	%rdi, %rdx
	movq	%rbx, %rsi
	callq	strncpy
	jmp	.LBB54_14
.LBB54_13:                              # %if.else
	movb	$0, (%rdi)
.LBB54_14:                              # %return
	movb	$0, editedhost+31(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp373:
	.size	edithost, .Ltmp373-edithost
	.cfi_endproc

	.globl	putchr
	.align	16, 0x90
	.type	putchr,@function
putchr:                                 # @putchr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	putlocation(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, putlocation(%rip)
	movb	%dil, (%rax)
	ret
.Ltmp374:
	.size	putchr, .Ltmp374-putchr
	.cfi_endproc

	.globl	putf
	.align	16, 0x90
	.type	putf,@function
putf:                                   # @putf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp382:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp383:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp384:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp385:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp386:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp388:
	.cfi_def_cfa_offset 320
.Ltmp389:
	.cfi_offset %rbx, -56
.Ltmp390:
	.cfi_offset %r12, -48
.Ltmp391:
	.cfi_offset %r13, -40
.Ltmp392:
	.cfi_offset %r14, -32
.Ltmp393:
	.cfi_offset %r15, -24
.Ltmp394:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB56_2
# BB#1:                                 # %if.then
	movq	%rsi, putlocation(%rip)
.LBB56_2:                               # %while.cond.preheader
	movb	(%r15), %al
	testb	%al, %al
	je	.LBB56_45
# BB#3:                                 # %while.body.lr.ph
	leaq	16(%rsp), %r14
	leaq	256(%rsp), %r12
	.align	16, 0x90
.LBB56_4:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_53 Depth 2
                                        #     Child Loop BB56_24 Depth 2
                                        #     Child Loop BB56_21 Depth 2
                                        #     Child Loop BB56_47 Depth 2
                                        #     Child Loop BB56_51 Depth 2
                                        #     Child Loop BB56_49 Depth 2
                                        #     Child Loop BB56_26 Depth 2
                                        #     Child Loop BB56_28 Depth 2
                                        #     Child Loop BB56_15 Depth 2
	movzbl	%al, %edx
	leaq	1(%r15), %rcx
	cmpl	$37, %edx
	jne	.LBB56_5
# BB#7:                                 # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	movsbl	(%rcx), %eax
	cmpl	$67, %eax
	jg	.LBB56_10
# BB#8:                                 # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$37, %eax
	jne	.LBB56_54
# BB#9:                                 # %sw.bb18
                                        #   in Loop: Header=BB56_4 Depth=1
	movq	putlocation(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, putlocation(%rip)
	movb	$37, (%rax)
	jmp	.LBB56_54
	.align	16, 0x90
.LBB56_5:                               # %if.then3
                                        #   in Loop: Header=BB56_4 Depth=1
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	jmp	.LBB56_6
	.align	16, 0x90
.LBB56_10:                              # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$99, %eax
	jg	.LBB56_16
# BB#11:                                # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	cmpl	$68, %eax
	jne	.LBB56_54
# BB#12:                                # %sw.bb19
                                        #   in Loop: Header=BB56_4 Depth=1
	movl	$128, %esi
	movq	%r14, %rdi
	callq	getdomainname
	testl	%eax, %eax
	js	.LBB56_54
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	16(%rsp), %bl
	testb	%bl, %bl
	je	.LBB56_54
# BB#14:                                # %cond.false
                                        #   in Loop: Header=BB56_4 Depth=1
	movl	$.L.str80, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	leaq	17(%rsp), %rax
	je	.LBB56_54
	.align	16, 0x90
.LBB56_15:                              # %while.body.i202
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, putlocation(%rip)
	movb	%bl, (%rcx)
	movb	(%rax), %bl
	incq	%rax
	testb	%bl, %bl
	jne	.LBB56_15
	jmp	.LBB56_54
.LBB56_16:                              # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	addl	$-100, %eax
	cmpl	$18, %eax
	ja	.LBB56_54
# BB#17:                                # %if.end5
                                        #   in Loop: Header=BB56_4 Depth=1
	jmpq	*.LJTI56_0(,%rax,8)
.LBB56_27:                              # %sw.bb13
                                        #   in Loop: Header=BB56_4 Depth=1
	xorl	%eax, %eax
	movq	%r12, %rbx
	movq	%rbx, %rdi
	callq	time
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbx, %r12
	callq	localtime
	movl	%eax, %ecx
	movl	$100, %esi
	movl	$fmtstr, %edx
	xorl	%eax, %eax
	leaq	144(%rsp), %rdi
	callq	strftime
	movb	144(%rsp), %al
	testb	%al, %al
	leaq	145(%rsp), %rcx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_28:                              # %while.body.i210
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_28
	jmp	.LBB56_54
.LBB56_25:                              # %sw.bb12
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	editedhost(%rip), %al
	testb	%al, %al
	movl	$editedhost+1, %ecx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_26:                              # %while.body.i224
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_26
	jmp	.LBB56_54
.LBB56_29:                              # %sw.bb77
                                        #   in Loop: Header=BB56_4 Depth=1
	movl	$.L.str81, %edi
	movl	$.L.str82, %esi
	callq	fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB56_54
	jmp	.LBB56_30
.LBB56_48:                              # %sw.bb128
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	kerninfo+260(%rip), %al
	testb	%al, %al
	movl	$kerninfo+261, %ecx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_49:                              # %while.body.i178
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_49
	jmp	.LBB56_54
.LBB56_50:                              # %sw.bb129
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	kerninfo+130(%rip), %al
	testb	%al, %al
	movl	$kerninfo+131, %ecx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_51:                              # %while.body.i171
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_51
	jmp	.LBB56_54
.LBB56_46:                              # %sw.bb127
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	kerninfo(%rip), %al
	testb	%al, %al
	movl	$kerninfo+1, %ecx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_47:                              # %while.body.i185
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_47
	jmp	.LBB56_54
.LBB56_18:                              # %sw.bb
                                        #   in Loop: Header=BB56_4 Depth=1
	movq	line(%rip), %rbp
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strrchr
	testq	%rax, %rax
	jne	.LBB56_22
# BB#19:                                # %if.then10
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	(%rbp), %al
	testb	%al, %al
	je	.LBB56_54
# BB#20:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB56_4 Depth=1
	incq	%rbp
	.align	16, 0x90
.LBB56_21:                              # %while.body.i
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, putlocation(%rip)
	movb	%al, (%rcx)
	movb	(%rbp), %al
	incq	%rbp
	testb	%al, %al
	jne	.LBB56_21
	jmp	.LBB56_54
.LBB56_52:                              # %sw.bb130
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	kerninfo+195(%rip), %al
	testb	%al, %al
	movl	$kerninfo+196, %ecx
	je	.LBB56_54
	.align	16, 0x90
.LBB56_53:                              # %while.body.i195
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%al, (%rdx)
	movb	(%rcx), %al
	incq	%rcx
	testb	%al, %al
	jne	.LBB56_53
	jmp	.LBB56_54
.LBB56_22:                              # %if.else
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	1(%rax), %cl
	testb	%cl, %cl
	je	.LBB56_54
# BB#23:                                # %while.body.i217.preheader
                                        #   in Loop: Header=BB56_4 Depth=1
	addq	$2, %rax
	.align	16, 0x90
.LBB56_24:                              # %while.body.i217
                                        #   Parent Loop BB56_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	putlocation(%rip), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, putlocation(%rip)
	movb	%cl, (%rdx)
	movb	(%rax), %cl
	incq	%rax
	testb	%cl, %cl
	jne	.LBB56_24
	.align	16, 0x90
.LBB56_54:                              # %sw.epilog
                                        #   in Loop: Header=BB56_4 Depth=1
	addq	$2, %r15
	movq	%r15, %rcx
.LBB56_6:                               # %while.cond.backedge
                                        #   in Loop: Header=BB56_4 Depth=1
	movb	(%rcx), %al
	testb	%al, %al
	movq	%rcx, %r15
	jne	.LBB56_4
	jmp	.LBB56_45
.LBB56_30:                              # %while.cond88.preheader
	movq	%r13, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	je	.LBB56_44
# BB#31:                                # %while.body92.lr.ph.lr.ph
	movl	$10, %ebx
	leaq	13(%rsp), %r14
.LBB56_32:                              # %while.body92.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_33 Depth 2
                                        #       Child Loop BB56_35 Depth 3
	movl	%eax, %ebp
.LBB56_33:                              # %while.body92
                                        #   Parent Loop BB56_32 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB56_35 Depth 3
	cmpl	$10, %ebx
	jne	.LBB56_37
# BB#34:                                # %while.body92
                                        #   in Loop: Header=BB56_33 Depth=2
	cmpl	$35, %ebp
	jne	.LBB56_37
.LBB56_35:                              # %do.body
                                        #   Parent Loop BB56_32 Depth=1
                                        #     Parent Loop BB56_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r13, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	je	.LBB56_41
# BB#36:                                # %do.body
                                        #   in Loop: Header=BB56_35 Depth=3
	cmpl	$10, %eax
	jne	.LBB56_35
	jmp	.LBB56_41
.LBB56_37:                              # %if.else104
                                        #   in Loop: Header=BB56_33 Depth=2
	cmpl	$10, %ebp
	je	.LBB56_42
# BB#38:                                # %if.else104
                                        #   in Loop: Header=BB56_33 Depth=2
	cmpl	$37, %ebp
	jne	.LBB56_43
# BB#39:                                # %if.then107
                                        #   in Loop: Header=BB56_33 Depth=2
	movb	$37, 13(%rsp)
	movq	%r13, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	je	.LBB56_44
# BB#40:                                # %if.end114
                                        #   in Loop: Header=BB56_33 Depth=2
	movb	%al, 14(%rsp)
	movb	$0, 15(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	putf
.LBB56_41:                              # %while.cond88.backedge
                                        #   in Loop: Header=BB56_33 Depth=2
	movq	%r13, %rdi
	callq	fgetc
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	jne	.LBB56_33
	jmp	.LBB56_44
.LBB56_42:                              # %if.then122
                                        #   in Loop: Header=BB56_32 Depth=1
	movq	putlocation(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, putlocation(%rip)
	movb	$13, (%rax)
	movl	$10, %ebp
.LBB56_43:                              # %if.end123
                                        #   in Loop: Header=BB56_32 Depth=1
	movq	putlocation(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, putlocation(%rip)
	movb	%bpl, (%rax)
	movq	%r13, %rdi
	callq	fgetc
	cmpl	$-1, %eax
	movl	%ebp, %ebx
	jne	.LBB56_32
.LBB56_44:                              # %while.end
	movq	%r13, %rdi
	callq	fclose
.LBB56_45:                              # %cleanup133
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp395:
	.size	putf, .Ltmp395-putf
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI56_0:
	.quad	.LBB56_27
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_25
	.quad	.LBB56_29
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_48
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_54
	.quad	.LBB56_50
	.quad	.LBB56_46
	.quad	.LBB56_18
	.quad	.LBB56_54
	.quad	.LBB56_52

	.text
	.globl	printoption
	.align	16, 0x90
	.type	printoption,@function
printoption:                            # @printoption
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %edx
	movq	%rdi, %rcx
	cmpl	$39, %edx
	ja	.LBB57_3
# BB#1:                                 # %if.then
	movslq	%edx, %rax
	movq	telopts(,%rax,8), %rdx
	jmp	.LBB57_2
.LBB57_3:                               # %if.else
	leal	-236(%rdx), %eax
	cmpl	$19, %eax
	ja	.LBB57_5
# BB#4:                                 # %if.then3
	cltq
	movq	telcmds(,%rax,8), %rdx
.LBB57_2:                               # %if.then
	movl	$.L.str83, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	jmp	netoprintf              # TAILCALL
.LBB57_5:                               # %if.else7
	movl	$.L.str84, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	jmp	netoprintf              # TAILCALL
.Ltmp396:
	.size	printoption, .Ltmp396-printoption
	.cfi_endproc

	.globl	printsub
	.align	16, 0x90
	.type	printsub,@function
printsub:                               # @printsub
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp404:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp405:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp406:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp407:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp408:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp409:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp410:
	.cfi_def_cfa_offset 128
.Ltmp411:
	.cfi_offset %rbx, -56
.Ltmp412:
	.cfi_offset %r12, -48
.Ltmp413:
	.cfi_offset %r13, -40
.Ltmp414:
	.cfi_offset %r14, -32
.Ltmp415:
	.cfi_offset %r15, -24
.Ltmp416:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r13
	testb	$16, diagnostic(%rip)
	je	.LBB58_180
# BB#1:                                 # %if.end
	movl	$-1, %r15d
	testb	%dil, %dil
	je	.LBB58_2
# BB#3:                                 # %if.then2
	movzbl	%dil, %eax
	cmpl	$60, %eax
	movl	$.L.str86, %eax
	movl	$.L.str87, %esi
	cmoveq	%rax, %rsi
	movl	$.L.str85, %edi
	xorl	%eax, %eax
	callq	netoprintf
	leal	-2(%rbx), %r14d
	cmpl	$3, %ebx
	jl	.LBB58_19
# BB#4:                                 # %if.then6
	movslq	%r14d, %rax
	movzbl	(%r13,%rax), %r15d
	decl	%ebx
	cmpl	$255, %r15d
	movslq	%ebx, %rax
	movzbl	(%r13,%rax), %r12d
	jne	.LBB58_6
# BB#5:                                 # %if.then6
	cmpl	$240, %r12d
	je	.LBB58_19
.LBB58_6:                               # %if.then16
	movl	$.L.str88, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$39, %r15d
	ja	.LBB58_9
# BB#7:                                 # %if.then19
	movq	telopts(,%r15,8), %rsi
	jmp	.LBB58_8
.LBB58_2:
	movl	%ebx, %r14d
	jmp	.LBB58_19
.LBB58_9:                               # %if.else
	cmpl	$236, %r15d
	jb	.LBB58_11
# BB#10:                                # %if.then27
	leal	-236(%r15), %eax
	cltq
	movq	telcmds(,%rax,8), %rsi
.LBB58_8:                               # %if.end33
	movl	$.L.str89, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_12
.LBB58_11:                              # %if.else31
	movl	$.L.str90, %edi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	netoprintf
.LBB58_12:                              # %if.end33
	cmpl	$39, %r12d
	ja	.LBB58_15
# BB#13:                                # %if.then36
	movq	telopts(,%r12,8), %rsi
	jmp	.LBB58_14
.LBB58_15:                              # %if.else40
	cmpl	$236, %r12d
	jb	.LBB58_17
# BB#16:                                # %if.then46
	addl	$-236, %r12d
	movslq	%r12d, %rax
	movq	telcmds(,%rax,8), %rsi
.LBB58_14:                              # %if.end52
	movl	$.L.str91, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_18
.LBB58_17:                              # %if.else50
	movl	$.L.str92, %edi
	xorl	%eax, %eax
	movl	%r12d, %esi
	callq	netoprintf
.LBB58_18:                              # %if.end52
	movl	$.L.str93, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_19:                              # %if.end56
	testl	%r14d, %r14d
	jle	.LBB58_20
# BB#21:                                # %if.end60
	movzbl	(%r13), %eax
	cmpl	$23, %eax
	jg	.LBB58_26
# BB#22:                                # %if.end60
	cmpl	$5, %eax
	jne	.LBB58_172
# BB#23:                                # %sw.bb375
	movl	$.L.str25138, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	1(%r13), %esi
	testl	%esi, %esi
	jne	.LBB58_24
# BB#119:                               # %sw.bb399
	movl	$.L.str140, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#120:
	movl	$2, %ebx
	.align	16, 0x90
.LBB58_121:                             # %for.body403
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_132 Depth 2
	movslq	%ebx, %rax
	movzbl	(%r13,%rax), %ecx
	movl	$.L.str17130, %esi
	leal	-250(%rcx), %eax
	cmpl	$4, %eax
	jbe	.LBB58_122
# BB#142:                               # %sw.default470
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str118, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	netoprintf
	jmp	.LBB58_143
	.align	16, 0x90
.LBB58_122:                             # %for.body403
                                        #   in Loop: Header=BB58_121 Depth=1
	jmpq	*.LJTI58_1(,%rax,8)
.LBB58_130:                             # %sw.bb429
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str144, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incl	%ebx
	cmpl	%r14d, %ebx
	movslq	%ebx, %r15
	jge	.LBB58_140
# BB#131:                               #   in Loop: Header=BB58_121 Depth=1
	movq	%r15, %rax
	.align	16, 0x90
.LBB58_132:                             # %while.body
                                        #   Parent Loop BB58_121 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebx, %rcx
	movzbl	(%r13,%rcx), %esi
	cmpl	$240, %esi
	jne	.LBB58_133
# BB#134:                               # %if.then438
                                        #   in Loop: Header=BB58_132 Depth=2
	leal	1(%rbx), %ecx
	cmpl	%r14d, %ecx
	je	.LBB58_137
# BB#135:                               # %if.end443
                                        #   in Loop: Header=BB58_132 Depth=2
	movslq	%ecx, %rdx
	movzbl	(%r13,%rdx), %edx
	cmpl	$240, %edx
	movb	$-16, %sil
	movl	%eax, %edx
	je	.LBB58_136
	jmp	.LBB58_138
	.align	16, 0x90
.LBB58_133:                             #   in Loop: Header=BB58_132 Depth=2
	movl	%ebx, %ecx
.LBB58_136:                             # %if.end454
                                        #   in Loop: Header=BB58_132 Depth=2
	incl	%ecx
	leaq	1(%rax), %rdx
	cmpl	%r14d, %ecx
	movb	%sil, (%r13,%rax)
	movq	%rdx, %rax
	movl	%ecx, %ebx
	jl	.LBB58_132
	jmp	.LBB58_138
.LBB58_124:                             # %sw.bb409
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str15128, %esi
	jmp	.LBB58_126
.LBB58_125:                             # %sw.bb410
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str16129, %esi
	jmp	.LBB58_126
.LBB58_123:                             # %sw.bb408
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str18131, %esi
.LBB58_126:                             # %common2
                                        #   in Loop: Header=BB58_121 Depth=1
	incl	%ebx
	movslq	%ebx, %rax
	movzbl	(%r13,%rax), %edx
	cmpq	$39, %rdx
	ja	.LBB58_128
# BB#127:                               # %if.then417
                                        #   in Loop: Header=BB58_121 Depth=1
	movq	telopts(,%rdx,8), %rdx
	movl	$.L.str141, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_129
.LBB58_128:                             # %if.else424
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str142, %edi
	xorl	%eax, %eax
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	netoprintf
	jmp	.LBB58_129
.LBB58_140:                             # %while.end.thread
                                        #   in Loop: Header=BB58_121 Depth=1
	addq	%r13, %r15
	xorl	%edi, %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	printsub
	jmp	.LBB58_141
.LBB58_137:                             # %if.then438.while.end_crit_edge
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	%eax, %edx
.LBB58_138:                             # %while.end
                                        #   in Loop: Header=BB58_121 Depth=1
	leaq	(%r13,%r15), %rsi
	subl	%r15d, %edx
	xorl	%edi, %edi
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	printsub
	cmpl	%r14d, %r15d
	jge	.LBB58_141
# BB#139:                               # %if.then466
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str145, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_129
.LBB58_141:                             # %if.else467
                                        #   in Loop: Header=BB58_121 Depth=1
	decl	%ebx
	.align	16, 0x90
.LBB58_129:                             # %if.end428
                                        #   in Loop: Header=BB58_121 Depth=1
	movl	$.L.str143, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_143:                             # %for.inc475
                                        #   in Loop: Header=BB58_121 Depth=1
	incl	%ebx
	cmpl	%r14d, %ebx
	jl	.LBB58_121
	jmp	.LBB58_178
.LBB58_20:                              # %if.then59
	movl	$.L.str94, %edi
	jmp	.LBB58_179
.LBB58_26:                              # %if.end60
	movl	%eax, %ecx
	addl	$-24, %ecx
	cmpl	$15, %ecx
	ja	.LBB58_172
# BB#27:                                # %if.end60
	jmpq	*.LJTI58_0(,%rcx,8)
.LBB58_28:                              # %sw.bb
	movl	$.L.str95, %edi
	jmp	.LBB58_29
.LBB58_172:                             # %sw.default557
	cmpl	$39, %eax
	ja	.LBB58_174
# BB#173:                               # %if.then562
	movq	telopts(,%rax,8), %rsi
	movl	$.L.str157, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_175
.LBB58_174:                             # %if.else568
	movslq	%r15d, %rax
	movzbl	(%r13,%rax), %esi
	movl	$.L.str117, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_175:                             # %for.cond573.preheader
	cmpl	$2, %r14d
	jl	.LBB58_178
# BB#176:                               # %for.body576.preheader
	decl	%r14d
	incq	%r13
	.align	16, 0x90
.LBB58_177:                             # %for.body576
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str118, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_177
	jmp	.LBB58_178
.LBB58_24:                              # %sw.bb375
	movzbl	%sil, %eax
	cmpl	$1, %eax
	jne	.LBB58_115
# BB#25:                                # %if.then384
	movl	$.L.str102, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_116
.LBB58_115:                             # %if.else385
	movl	$.L.str103, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_116:                             # %for.cond389.preheader
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#117:                               # %for.body392.preheader
	addl	$-2, %r14d
	addq	$2, %r13
	.align	16, 0x90
.LBB58_118:                             # %for.body392
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_118
	jmp	.LBB58_178
.LBB58_55:                              # %sw.bb121
	movl	$.L.str51, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$1, %r14d
	jle	.LBB58_36
# BB#56:                                # %if.end125
	cmpl	$2, %r14d
	movzbl	1(%r13), %esi
	je	.LBB58_57
# BB#58:                                # %if.end131
	movzbl	2(%r13), %edx
	movl	%esi, %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	$.L.str108, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$4, %r14d
	movzbl	3(%r13), %esi
	jne	.LBB58_59
.LBB58_57:                              # %if.then128
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_178
.LBB58_35:                              # %sw.bb72
	movl	$.L.str99, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$1, %r14d
	jle	.LBB58_36
# BB#37:                                # %if.end76
	movzbl	1(%r13), %esi
	cmpl	$1, %esi
	jne	.LBB58_38
# BB#40:                                # %if.then87
	movl	$.L.str102, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_42
.LBB58_45:                              # %sw.bb98
	movl	$.L.str105, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$1, %r14d
	jle	.LBB58_36
# BB#46:                                # %if.end102
	movzbl	1(%r13), %esi
	cmpl	$1, %esi
	jne	.LBB58_47
# BB#50:                                # %sw.bb106
	movl	$.L.str107, %edi
	jmp	.LBB58_49
.LBB58_62:                              # %sw.bb166
	movl	$.L.str109, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$1, %r14d
	jg	.LBB58_63
.LBB58_36:                              # %if.then75
	movl	$.L.str100, %edi
	jmp	.LBB58_34
.LBB58_144:                             # %sw.bb479
	movl	$.L.str146, %edi
.LBB58_29:                              # %sw.bb
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	1(%r13), %esi
	cmpl	$1, %esi
	jne	.LBB58_30
# BB#33:                                # %sw.bb67
	movl	$.L.str97, %edi
.LBB58_34:                              # %sw.epilog583
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_178:                             # %sw.epilog583
	movl	$.L.str143, %edi
.LBB58_179:                             # %return
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_180:                             # %return
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB58_146:                             # %sw.bb492
	movl	$.L.str147, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	1(%r13), %eax
	cmpl	$2, %eax
	je	.LBB58_151
# BB#147:                               # %sw.bb492
	cmpl	$1, %eax
	jne	.LBB58_148
# BB#150:                               # %sw.bb496
	movl	$.L.str149, %edi
	jmp	.LBB58_152
.LBB58_30:                              # %sw.bb
	testl	%esi, %esi
	jne	.LBB58_145
# BB#31:                                # %sw.bb65
	addl	$-2, %r14d
	addq	$2, %r13
	movl	$.L.str96, %edi
	jmp	.LBB58_32
.LBB58_63:                              # %if.end170
	movzbl	1(%r13), %esi
	cmpl	$250, %esi
	jg	.LBB58_70
# BB#64:                                # %if.end170
	cmpl	$1, %esi
	jne	.LBB58_65
# BB#102:                               # %sw.bb308
	movl	$.L.str131, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$2, %r14d
	jg	.LBB58_104
# BB#103:                               # %if.then311
	movl	$.L.str132, %edi
	jmp	.LBB58_34
.LBB58_145:                             # %sw.default
	movl	$.L.str98, %edi
	xorl	%eax, %eax
	movl	%esi, %edx
	callq	netoprintf
	jmp	.LBB58_178
.LBB58_151:                             # %sw.bb497
	movl	$.L.str150165, %edi
	jmp	.LBB58_152
.LBB58_148:                             # %sw.bb492
	testl	%eax, %eax
	jne	.LBB58_178
# BB#149:                               # %sw.bb495
	movl	$.L.str148, %edi
.LBB58_152:                             # %for.cond498.preheader
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#153:                               # %for.body501.preheader
	addl	$-2, %r14d
	leaq	2(%r13), %rbx
	movl	$2, %ebp
	jmp	.LBB58_154
.LBB58_164:                             # %if.then535
                                        #   in Loop: Header=BB58_154 Depth=1
	testl	%ebp, %ebp
	je	.LBB58_166
# BB#165:                               # %if.then537
                                        #   in Loop: Header=BB58_154 Depth=1
	movl	$.L.str154, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movb	(%rbx), %r15b
.LBB58_166:                             # %if.end538
                                        #   in Loop: Header=BB58_154 Depth=1
	movzbl	%r15b, %esi
	xorl	%ebp, %ebp
	movl	$.L.str155, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_169
.LBB58_154:                             # %for.body501
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %r15d
	cmpl	$2, %r15d
	je	.LBB58_161
# BB#155:                               # %for.body501
                                        #   in Loop: Header=BB58_154 Depth=1
	cmpl	$1, %r15d
	jne	.LBB58_156
# BB#160:                               # %sw.bb513
                                        #   in Loop: Header=BB58_154 Depth=1
	movslq	%ebp, %rax
	leaq	.L.str152(%rax), %rdi
	jmp	.LBB58_159
.LBB58_161:                             # %sw.bb516
                                        #   in Loop: Header=BB58_154 Depth=1
	movslq	%ebp, %rax
	leaq	.L.str153(%rax), %rdi
	jmp	.LBB58_159
.LBB58_156:                             # %for.body501
                                        #   in Loop: Header=BB58_154 Depth=1
	testl	%r15d, %r15d
	jne	.LBB58_162
# BB#157:                               # %sw.bb505
                                        #   in Loop: Header=BB58_154 Depth=1
	movzbl	1(%r13), %eax
	cmpl	$1, %eax
	jne	.LBB58_158
.LBB58_162:                             # %def_case
                                        #   in Loop: Header=BB58_154 Depth=1
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$64, 1(%rax,%r15,2)
	je	.LBB58_167
# BB#163:                               # %def_case
                                        #   in Loop: Header=BB58_154 Depth=1
	movzbl	%r15b, %eax
	cmpl	$34, %eax
	jne	.LBB58_164
.LBB58_167:                             # %if.else542
                                        #   in Loop: Header=BB58_154 Depth=1
	movslq	%ebp, %rax
	leaq	.L.str156(%rax), %rdi
	xorl	%eax, %eax
	movl	%r15d, %esi
	callq	netoprintf
	jmp	.LBB58_168
.LBB58_158:                             # %if.end511
                                        #   in Loop: Header=BB58_154 Depth=1
	movslq	%ebp, %rax
	leaq	.L.str151(%rax), %rdi
.LBB58_159:                             # %for.inc550
                                        #   in Loop: Header=BB58_154 Depth=1
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_168:                             # %for.inc550
                                        #   in Loop: Header=BB58_154 Depth=1
	movl	$2, %ebp
.LBB58_169:                             # %for.inc550
                                        #   in Loop: Header=BB58_154 Depth=1
	incq	%rbx
	decl	%r14d
	jne	.LBB58_154
# BB#170:                               # %for.end552
	testl	%ebp, %ebp
	jne	.LBB58_178
# BB#171:                               # %if.then554
	movl	$.L.str154, %edi
	jmp	.LBB58_34
.LBB58_38:                              # %if.end76
	testb	%sil, %sil
	jne	.LBB58_41
# BB#39:                                # %sw.bb79
	addl	$-2, %r14d
	addq	$2, %r13
	movl	$.L.str101, %edi
.LBB58_32:                              # %sw.epilog583
	xorl	%eax, %eax
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	netoprintf
	jmp	.LBB58_178
.LBB58_47:                              # %if.end102
	testl	%esi, %esi
	jne	.LBB58_51
# BB#48:                                # %sw.bb105
	movl	$.L.str106, %edi
.LBB58_49:                              # %for.cond111.preheader
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_52
.LBB58_70:                              # %if.end170
	leal	-251(%rsi), %eax
	cmpl	$3, %eax
	ja	.LBB58_112
# BB#71:                                # %if.end170
	jmpq	*.LJTI58_2(,%rax,8)
.LBB58_72:                              # %sw.bb173
	movl	$.L.str110, %edi
	jmp	.LBB58_76
.LBB58_59:                              # %if.end145
	movzbl	4(%r13), %edx
	movl	%esi, %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	movl	$.L.str108, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$6, %r14d
	jl	.LBB58_178
# BB#60:                                # %for.body159.preheader
	addl	$-5, %r14d
	addq	$5, %r13
.LBB58_61:                              # %for.body159
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_61
	jmp	.LBB58_178
.LBB58_65:                              # %if.end170
	cmpl	$3, %esi
	jne	.LBB58_112
# BB#66:                                # %sw.bb208
	movl	$.L.str119, %edi
	xorl	%eax, %eax
	callq	netoprintf
	leal	-2(%r14), %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	cmpl	$2, %eax
	movl	$2, %ebx
	jle	.LBB58_67
.LBB58_85:                              # %for.body213
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %rax
	movzbl	(%r13,%rax), %esi
	cmpq	$18, %rsi
	ja	.LBB58_87
# BB#86:                                # %if.then219
                                        #   in Loop: Header=BB58_85 Depth=1
	movq	slc_names(,%rsi,8), %rsi
	movl	$.L.str120, %edi
	xorl	%eax, %eax
	callq	netoprintf
	jmp	.LBB58_88
.LBB58_87:                              # %if.else225
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str118, %edi
	xorl	%eax, %eax
                                        # kill: ESI<def> ESI<kill> RSI<kill>
	callq	netoprintf
.LBB58_88:                              # %if.end230
                                        #   in Loop: Header=BB58_85 Depth=1
	leal	1(%rbx), %r12d
	movslq	%r12d, %r15
	movzbl	(%r13,%r15), %eax
	andl	$3, %eax
	cmpl	$3, %eax
	ja	.LBB58_95
# BB#89:                                # %if.end230
                                        #   in Loop: Header=BB58_85 Depth=1
	jmpq	*.LJTI58_3(,%rax,8)
.LBB58_90:                              # %sw.bb236
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str121, %edi
	jmp	.LBB58_94
.LBB58_91:                              # %sw.bb237
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str122, %edi
	jmp	.LBB58_94
.LBB58_92:                              # %sw.bb238
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str123, %edi
	jmp	.LBB58_94
.LBB58_93:                              # %sw.bb239
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str124, %edi
.LBB58_94:                              # %sw.epilog240
                                        #   in Loop: Header=BB58_85 Depth=1
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_95:                              # %sw.epilog240
                                        #   in Loop: Header=BB58_85 Depth=1
	movzbl	(%r13,%r15), %eax
	movl	%eax, %ecx
	shrl	$7, %ecx
	movl	$.L.str79, %esi
	movl	$.L.str126, %ecx
	cmovneq	%rcx, %rsi
	movl	%eax, %ecx
	andl	$64, %ecx
	shrl	$6, %ecx
	movl	$.L.str79, %edx
	movl	$.L.str127, %ecx
	cmovneq	%rcx, %rdx
	andl	$32, %eax
	shrl	$5, %eax
	movl	$.L.str79, %ecx
	movl	$.L.str128, %eax
	cmovneq	%rax, %rcx
	movl	$.L.str125, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	(%r13,%r15), %esi
	testb	$28, %sil
	je	.LBB58_97
# BB#96:                                # %if.then268
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	$.L.str129, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_97:                              # %if.end273
                                        #   in Loop: Header=BB58_85 Depth=1
	leal	2(%rbx), %eax
	movslq	%eax, %rbp
	movzbl	(%r13,%rbp), %esi
	movl	$.L.str130, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	(%r13,%rbp), %eax
	cmpl	$255, %eax
	jne	.LBB58_101
# BB#98:                                # %land.lhs.true284
                                        #   in Loop: Header=BB58_85 Depth=1
	leal	3(%rbx), %eax
	cltq
	movzbl	(%r13,%rax), %eax
	cmpl	$255, %eax
	je	.LBB58_100
# BB#99:                                # %select.mid
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	%ebx, %r12d
.LBB58_100:                             # %select.end
                                        #   in Loop: Header=BB58_85 Depth=1
	movl	%r12d, %ebx
.LBB58_101:                             # %for.inc295
                                        #   in Loop: Header=BB58_85 Depth=1
	addl	$3, %ebx
	cmpl	28(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB58_85
.LBB58_67:                              # %for.cond298.preheader
	cmpl	%r14d, %ebx
	jge	.LBB58_178
# BB#68:                                # %for.body301.lr.ph
	movslq	%ebx, %rbx
.LBB58_69:                              # %for.body301
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13,%rbx), %esi
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%rbx
	cmpl	%r14d, %ebx
	jl	.LBB58_69
	jmp	.LBB58_178
.LBB58_112:                             # %sw.default361
	movl	$.L.str117, %edi
	xorl	%eax, %eax
                                        # kill: ESI<def> ESI<kill> RSI<kill>
	callq	netoprintf
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#113:                               # %for.body367.preheader
	addl	$-2, %r14d
	addq	$2, %r13
.LBB58_114:                             # %for.body367
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str118, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_114
	jmp	.LBB58_178
.LBB58_41:                              # %if.else88
	movl	$.L.str103, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_42:                              # %for.cond.preheader
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#43:                                # %for.body.preheader
	addl	$-2, %r14d
	addq	$2, %r13
.LBB58_44:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_44
	jmp	.LBB58_178
.LBB58_51:                              # %sw.default107
	movl	$.L.str103, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_52:                              # %for.cond111.preheader
	cmpl	$3, %r14d
	jl	.LBB58_178
# BB#53:                                # %for.body114.preheader
	addl	$-2, %r14d
	addq	$2, %r13
.LBB58_54:                              # %for.body114
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str104, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_54
	jmp	.LBB58_178
.LBB58_104:                             # %if.end312
	movzbl	2(%r13), %eax
	testb	$1, %al
	movl	$.L.str134, %ecx
	movl	$.L.str79, %edx
	cmoveq	%rdx, %rcx
	movl	%eax, %esi
	andl	$2, %esi
	shrl	%esi
	movl	$.L.str135, %r8d
	cmoveq	%rdx, %r8
	movl	%eax, %esi
	andl	$8, %esi
	shrl	$3, %esi
	movl	$.L.str136, %r9d
	cmoveq	%rdx, %r9
	movl	%eax, %esi
	andl	$16, %esi
	shrl	$4, %esi
	movl	$.L.str137, %esi
	cmoveq	%rdx, %rsi
	andl	$4, %eax
	shrl	$2, %eax
	movl	$.L.str126, %eax
	cmoveq	%rdx, %rax
	movq	%rax, 8(%rsp)
	movq	%rsi, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$32, %esi
	movl	$.L.str133, %edx
	xorl	%eax, %eax
	callq	snprintf
	cmpb	$0, 33(%rsp)
	je	.LBB58_106
# BB#105:
	leaq	33(%rsp), %rsi
	jmp	.LBB58_107
.LBB58_73:                              # %sw.bb174
	movl	$.L.str111, %edi
	jmp	.LBB58_76
.LBB58_74:                              # %sw.bb175
	movl	$.L.str112, %edi
	jmp	.LBB58_76
.LBB58_75:                              # %sw.bb176
	movl	$.L.str113164, %edi
.LBB58_76:                              # %common
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$2, %r14d
	jg	.LBB58_78
# BB#77:                                # %if.then179
	movl	$.L.str114, %edi
	jmp	.LBB58_34
.LBB58_78:                              # %if.end180
	movzbl	2(%r13), %esi
	cmpl	$2, %esi
	jne	.LBB58_82
# BB#79:                                # %sw.bb183
	movl	$.L.str115, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$4, %r14d
	jl	.LBB58_178
# BB#80:                                # %for.body187.preheader
	addl	$-3, %r14d
	addq	$3, %r13
.LBB58_81:                              # %for.body187
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str116, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_81
	jmp	.LBB58_178
.LBB58_82:                              # %sw.default194
	movl	$.L.str117, %edi
	xorl	%eax, %eax
	callq	netoprintf
	cmpl	$4, %r14d
	jl	.LBB58_178
# BB#83:                                # %for.body200.preheader
	addl	$-3, %r14d
	addq	$3, %r13
.LBB58_84:                              # %for.body200
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str118, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_84
	jmp	.LBB58_178
.LBB58_106:                             # %select.mid66
	movl	$.L.str60, %esi
.LBB58_107:                             # %select.end65
	movl	$.L.str91, %edi
	xorl	%eax, %eax
	callq	netoprintf
	movzbl	2(%r13), %esi
	testb	$-8, %sil
	je	.LBB58_109
# BB#108:                               # %if.then347
	movl	$.L.str138, %edi
	xorl	%eax, %eax
	callq	netoprintf
.LBB58_109:                             # %for.cond351.preheader
	cmpl	$4, %r14d
	jl	.LBB58_178
# BB#110:                               # %for.body354.preheader
	addl	$-3, %r14d
	addq	$3, %r13
.LBB58_111:                             # %for.body354
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %esi
	movl	$.L.str139, %edi
	xorl	%eax, %eax
	callq	netoprintf
	incq	%r13
	decl	%r14d
	jne	.LBB58_111
	jmp	.LBB58_178
.Ltmp417:
	.size	printsub, .Ltmp417-printsub
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI58_0:
	.quad	.LBB58_28
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_55
	.quad	.LBB58_35
	.quad	.LBB58_45
	.quad	.LBB58_62
	.quad	.LBB58_144
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_172
	.quad	.LBB58_146
.LJTI58_1:
	.quad	.LBB58_130
	.quad	.LBB58_124
	.quad	.LBB58_125
	.quad	.LBB58_126
	.quad	.LBB58_123
.LJTI58_2:
	.quad	.LBB58_72
	.quad	.LBB58_73
	.quad	.LBB58_74
	.quad	.LBB58_75
.LJTI58_3:
	.quad	.LBB58_90
	.quad	.LBB58_91
	.quad	.LBB58_92
	.quad	.LBB58_93

	.text
	.globl	initsetproctitle
	.align	16, 0x90
	.type	initsetproctitle,@function
initsetproctitle:                       # @initsetproctitle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp423:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp424:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp425:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp426:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp427:
	.cfi_def_cfa_offset 48
.Ltmp428:
	.cfi_offset %rbx, -40
.Ltmp429:
	.cfi_offset %r14, -32
.Ltmp430:
	.cfi_offset %r15, -24
.Ltmp431:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movl	%edi, %r15d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB59_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbx,%rdi)
	leaq	8(%rdi), %rdi
	jne	.LBB59_1
# BB#2:                                 # %for.end
	callq	malloc
	movq	%rax, __environ(%rip)
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB59_7
# BB#3:
	movq	$-1, %rax
	.align	16, 0x90
.LBB59_4:                               # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	callq	__strdup
	movq	__environ(%rip), %rcx
	movq	%rax, 8(%rcx,%rbp,8)
	movq	16(%rbx,%rbp,8), %rdi
	leaq	1(%rbp), %rax
	testq	%rdi, %rdi
	jne	.LBB59_4
# BB#5:                                 # %for.end14
	movq	__environ(%rip), %rcx
	movq	$0, 16(%rcx,%rbp,8)
	movq	%r14, Argv(%rip)
	testl	%eax, %eax
	js	.LBB59_8
# BB#6:                                 # %if.then
	movq	8(%rbx,%rbp,8), %rbx
	jmp	.LBB59_9
.LBB59_7:                               # %for.end14.thread
	movq	$0, (%rax)
	movq	%r14, Argv(%rip)
.LBB59_8:                               # %if.else
	decl	%r15d
	movslq	%r15d, %rax
	movq	(%r14,%rax,8), %rbx
.LBB59_9:                               # %if.end
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
	movq	%rax, LastArgv(%rip)
	movq	(%r14), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	leaq	1(%rax), %rsi
	cmoveq	%rbx, %rsi
	movl	$Argv0, %edi
	movl	$128, %edx
	callq	strncpy
	movb	$0, Argv0+127(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp432:
	.size	initsetproctitle, .Ltmp432-initsetproctitle
	.cfi_endproc

	.globl	setproctitle
	.align	16, 0x90
	.type	setproctitle,@function
setproctitle:                           # @setproctitle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp435:
	.cfi_def_cfa_offset 16
	subq	$208, %rsp
.Ltmp436:
	.cfi_def_cfa_offset 224
.Ltmp437:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB60_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB60_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	$setproctitle.buf, %edi
	movl	$Argv0, %esi
	callq	strcpy
	movl	$setproctitle.buf, %edi
	callq	strlen
	movb	$0, setproctitle.buf+2(%rax)
	movw	$8250, setproctitle.buf(%rax) # imm = 0x203A
	movl	$setproctitle.buf, %edi
	callq	strlen
	leaq	setproctitle.buf(%rax), %rdi
	leaq	(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	leaq	224(%rsp), %rcx
	movq	%rcx, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movl	$2048, %esi             # imm = 0x800
	subq	%rax, %rsi
	leaq	176(%rsp), %rcx
	movq	%rbx, %rdx
	callq	vsnprintf
	movl	$setproctitle.buf, %edi
	callq	strlen
	movq	%rax, %rbx
	movslq	%ebx, %rdx
	movq	LastArgv(%rip), %rax
	movq	Argv(%rip), %rcx
	movq	(%rcx), %rdi
	subq	%rdi, %rax
	addq	$-2, %rax
	cmpq	%rax, %rdx
	jle	.LBB60_4
# BB#3:                                 # %if.then
	movslq	%eax, %rdx
	movb	$0, setproctitle.buf(%rdx)
	movq	(%rcx), %rdi
	movq	%rax, %rbx
.LBB60_4:                               # %if.end
	movl	$setproctitle.buf, %esi
	callq	strcpy
	movslq	%ebx, %rax
	movq	Argv(%rip), %rcx
	addq	(%rcx), %rax
	cmpq	LastArgv(%rip), %rax
	jae	.LBB60_7
	.align	16, 0x90
.LBB60_5:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$32, (%rax)
	incq	%rax
	cmpq	LastArgv(%rip), %rax
	jb	.LBB60_5
# BB#6:                                 # %while.cond.while.end_crit_edge
	movq	Argv(%rip), %rcx
.LBB60_7:                               # %while.end
	movq	$0, 8(%rcx)
	addq	$208, %rsp
	popq	%rbx
	ret
.Ltmp438:
	.size	setproctitle, .Ltmp438-setproctitle
	.cfi_endproc

	.type	copyright,@object       # @copyright
	.data
	.globl	copyright
	.align	16
copyright:
	.asciz	"@(#) Copyright (c) 1989 Regents of the University of California.\nAll rights reserved.\n"
	.size	copyright, 87

	.type	telnetd_rcsid,@object   # @telnetd_rcsid
	.globl	telnetd_rcsid
	.align	16
telnetd_rcsid:
	.asciz	"$Id: telnetd.c,v 1.24 2000/04/12 21:36:12 dholland Exp $"
	.size	telnetd_rcsid, 57

	.type	pkg,@object             # @pkg
	.globl	pkg
	.align	16
pkg:
	.asciz	"$NetKit: netkit-telnet-0.17 $"
	.size	pkg, 30

	.type	ptyibuf,@object         # @ptyibuf
	.comm	ptyibuf,8192,16
	.type	ptyip,@object           # @ptyip
	.globl	ptyip
	.align	8
ptyip:
	.quad	ptyibuf
	.size	ptyip, 8

	.type	hostinfo,@object        # @hostinfo
	.globl	hostinfo
	.align	4
hostinfo:
	.long	1                       # 0x1
	.size	hostinfo, 4

	.type	debug,@object           # @debug
	.bss
	.globl	debug
	.align	4
debug:
	.long	0                       # 0x0
	.size	debug, 4

	.type	keepalive,@object       # @keepalive
	.data
	.globl	keepalive
	.align	4
keepalive:
	.long	1                       # 0x1
	.size	keepalive, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/bin/login"
	.size	.L.str, 11

	.type	loginprg,@object        # @loginprg
	.data
	.globl	loginprg
	.align	8
loginprg:
	.quad	.L.str
	.size	loginprg, 8

	.type	progname,@object        # @progname
	.comm	progname,8,8
	.type	.L.str1,@object         # @.str1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1:
	.asciz	"d:a:e:lhnr:I:D:B:sS:a:X:L:"
	.size	.L.str1, 27

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"ebug"
	.size	.L.str2, 5

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"report"
	.size	.L.str3, 7

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"exercise"
	.size	.L.str4, 9

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"netdata"
	.size	.L.str5, 8

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"ptydata"
	.size	.L.str6, 8

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"options"
	.size	.L.str7, 8

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"%s%s\n"
	.size	.L.str8, 6

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"TOS option unavailable; "
	.size	.L.str9, 25

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"-S flag not supported\n"
	.size	.L.str10, 23

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"telnetd: %c: unknown option\n"
	.size	.L.str11, 29

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"tcp"
	.size	.L.str12, 4

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"telnetd: %s: bad port number\n"
	.size	.L.str13, 30

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"telnet"
	.size	.L.str14, 7

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"telnetd: tcp/telnet: unknown service\n"
	.size	.L.str15, 38

	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"telnetd: socket"
	.size	.L.str16, 16

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"bind"
	.size	.L.str17, 5

	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"listen"
	.size	.L.str18, 7

	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	"accept"
	.size	.L.str19, 7

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"telnetd"
	.size	.L.str20, 8

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"%s: "
	.size	.L.str21, 5

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	"getpeername"
	.size	.L.str22, 12

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	"setsockopt (SO_KEEPALIVE): %m"
	.size	.L.str23, 30

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	"setsockopt (IP_TOS): %m"
	.size	.L.str24, 24

	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	"Usage: telnetd"
	.size	.L.str25, 15

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	" [-debug]"
	.size	.L.str26, 10

	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	" [-D (options|report|exercise|netdata|ptydata)]\n\t"
	.size	.L.str27, 50

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	" [-h]"
	.size	.L.str28, 6

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	" [-L login_program]"
	.size	.L.str29, 20

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	" [-n]"
	.size	.L.str30, 6

	.type	.L.str31,@object        # @.str31
.L.str31:
	.asciz	" [port]\n"
	.size	.L.str31, 9

	.type	.L.str32,@object        # @.str32
.L.str32:
	.asciz	"td: simulating recv\r\n"
	.size	.L.str32, 22

	.type	.L.str33,@object        # @.str33
.L.str33:
	.asciz	"/dev/tty"
	.size	.L.str33, 9

	.type	.L.str34,@object        # @.str34
.L.str34:
	.asciz	"USER"
	.size	.L.str34, 5

	.type	.L.str35,@object        # @.str35
.L.str35:
	.asciz	"%i\r\n%s %r (%h) (%t)\r\n\r\n"
	.size	.L.str35, 24

	.type	host_name,@object       # @host_name
	.comm	host_name,64,16
	.type	ptyibuf2,@object        # @ptyibuf2
	.comm	ptyibuf2,8192,16
	.type	.L.str36,@object        # @.str36
.L.str36:
	.asciz	"td: Entering processing loop\r\n"
	.size	.L.str36, 31

	.type	.L.str37,@object        # @.str37
.L.str37:
	.asciz	"td: netread %d chars\r\n"
	.size	.L.str37, 23

	.type	.L.str38,@object        # @.str38
.L.str38:
	.asciz	"nd"
	.size	.L.str38, 3

	.type	.L.str39,@object        # @.str39
.L.str39:
	.asciz	"%c%c"
	.size	.L.str39, 5

	.type	.L.str40,@object        # @.str40
.L.str40:
	.asciz	"%c%c%c%c%c%c"
	.size	.L.str40, 13

	.type	.L.str41,@object        # @.str41
.L.str41:
	.asciz	"\r\n[%s : yes]\r\n"
	.size	.L.str41, 15

	.type	remote_host_name,@object # @remote_host_name
	.comm	remote_host_name,64,16
	.type	.L.str42,@object        # @.str42
.L.str42:
	.asciz	"All network ports in use"
	.size	.L.str42, 25

	.type	.L.str43,@object        # @.str43
.L.str43:
	.asciz	"TERM"
	.size	.L.str43, 5

	.type	.L.str44,@object        # @.str44
.L.str44:
	.asciz	"network"
	.size	.L.str44, 8

	.type	.L.str45,@object        # @.str45
.L.str45:
	.asciz	"%s"
	.size	.L.str45, 3

	.type	.L.str46,@object        # @.str46
.L.str46:
	.asciz	"REMOTEHOST"
	.size	.L.str46, 11

	.type	.L.str47,@object        # @.str47
.L.str47:
	.asciz	"strlen(terminaltype) < sizeof(first)"
	.size	.L.str47, 37

	.type	.L.str48,@object        # @.str48
.L.str48:
	.asciz	"telnetd.c"
	.size	.L.str48, 10

	.type	.L__PRETTY_FUNCTION__.getterminaltype,@object # @__PRETTY_FUNCTION__.getterminaltype
.L__PRETTY_FUNCTION__.getterminaltype:
	.asciz	"int getterminaltype(char *)"
	.size	.L__PRETTY_FUNCTION__.getterminaltype, 28

	.type	state_rcsid,@object     # @state_rcsid
	.data
	.globl	state_rcsid
	.align	16
state_rcsid:
	.asciz	"$Id: state.c,v 1.12 1999/12/12 19:41:44 dholland Exp $"
	.size	state_rcsid, 55

	.type	not42,@object           # @not42
	.globl	not42
	.align	4
not42:
	.long	1                       # 0x1
	.size	not42, 4

	.type	will,@object            # @will
	.globl	will
will:
	.asciz	"\377\373%c"
	.size	will, 5

	.type	wont,@object            # @wont
	.globl	wont
wont:
	.asciz	"\377\374%c"
	.size	wont, 5

	.type	subbuffer,@object       # @subbuffer
	.comm	subbuffer,512,16
	.type	subpointer,@object      # @subpointer
	.globl	subpointer
	.align	8
subpointer:
	.quad	subbuffer
	.size	subpointer, 8

	.type	subend,@object          # @subend
	.globl	subend
	.align	8
subend:
	.quad	subbuffer
	.size	subend, 8

	.type	telrcv.state,@object    # @telrcv.state
	.local	telrcv.state
	.comm	telrcv.state,4,4
	.type	.L.str49,@object        # @.str49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str49:
	.asciz	"td: recv IAC"
	.size	.L.str49, 13

	.type	.L.str150,@object       # @.str150
.L.str150:
	.asciz	"td: send IAC"
	.size	.L.str150, 13

	.type	.L.str251,@object       # @.str251
.L.str251:
	.asciz	"telnetd: panic state=%d\n"
	.size	.L.str251, 25

	.type	doopt,@object           # @doopt
	.data
doopt:
	.asciz	"\377\375%c"
	.size	doopt, 5

	.type	.L.str352,@object       # @.str352
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str352:
	.asciz	"td: send do"
	.size	.L.str352, 12

	.type	.L.str453,@object       # @.str453
.L.str453:
	.asciz	"td: recv will"
	.size	.L.str453, 14

	.type	dont,@object            # @dont
	.data
dont:
	.asciz	"\377\376%c"
	.size	dont, 5

	.type	.L.str554,@object       # @.str554
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str554:
	.asciz	"td: send dont"
	.size	.L.str554, 14

	.type	.L.str655,@object       # @.str655
.L.str655:
	.asciz	"td: recv wont"
	.size	.L.str655, 14

	.type	.L.str756,@object       # @.str756
.L.str756:
	.asciz	"td: send will"
	.size	.L.str756, 14

	.type	turn_on_sga,@object     # @turn_on_sga
	.bss
	.globl	turn_on_sga
	.align	4
turn_on_sga:
	.long	0                       # 0x0
	.size	turn_on_sga, 4

	.type	.L.str857,@object       # @.str857
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str857:
	.asciz	"td: recv do"
	.size	.L.str857, 12

	.type	.L.str958,@object       # @.str958
.L.str958:
	.asciz	"td: send wont"
	.size	.L.str958, 14

	.type	.L.str1059,@object      # @.str1059
.L.str1059:
	.asciz	"td: recv dont"
	.size	.L.str1059, 14

	.type	suboption.terminalname,@object # @suboption.terminalname
	.local	suboption.terminalname
	.comm	suboption.terminalname,41,16
	.type	.L.str1160,@object      # @.str1160
.L.str1160:
	.asciz	"DISPLAY"
	.size	.L.str1160, 8

	.type	.L.str1261,@object      # @.str1261
.L.str1261:
	.asciz	"TERM"
	.size	.L.str1261, 5

	.type	.L.str1362,@object      # @.str1362
.L.str1362:
	.asciz	"USER"
	.size	.L.str1362, 5

	.type	.L.str1463,@object      # @.str1463
.L.str1463:
	.asciz	"LOGNAME"
	.size	.L.str1463, 8

	.type	.L.str1564,@object      # @.str1564
.L.str1564:
	.asciz	"POSIXLY_CORRECT"
	.size	.L.str1564, 16

	.type	termstat_rcsid,@object  # @termstat_rcsid
	.data
	.globl	termstat_rcsid
	.align	16
termstat_rcsid:
	.asciz	"$Id: termstat.c,v 1.6 1999/12/12 14:59:45 dholland Exp $"
	.size	termstat_rcsid, 57

	.type	def_tspeed,@object      # @def_tspeed
	.globl	def_tspeed
	.align	4
def_tspeed:
	.long	4294967295              # 0xffffffff
	.size	def_tspeed, 4

	.type	def_rspeed,@object      # @def_rspeed
	.globl	def_rspeed
	.align	4
def_rspeed:
	.long	4294967295              # 0xffffffff
	.size	def_rspeed, 4

	.type	def_row,@object         # @def_row
	.bss
	.globl	def_row
	.align	4
def_row:
	.long	0                       # 0x0
	.size	def_row, 4

	.type	def_col,@object         # @def_col
	.globl	def_col
	.align	4
def_col:
	.long	0                       # 0x0
	.size	def_col, 4

	.type	slc_rcsid,@object       # @slc_rcsid
	.data
	.globl	slc_rcsid
	.align	16
slc_rcsid:
	.asciz	"$Id: slc.c,v 1.5 1999/12/12 14:59:44 dholland Exp $"
	.size	slc_rcsid, 52

	.type	st_rcsid,@object        # @st_rcsid
	.globl	st_rcsid
	.align	16
st_rcsid:
	.asciz	"$Id: sys_term.c,v 1.17 1999/12/17 14:28:47 dholland Exp $"
	.size	st_rcsid, 58

	.type	termbuf,@object         # @termbuf
	.local	termbuf
	.comm	termbuf,60,4
	.type	termbuf2,@object        # @termbuf2
	.local	termbuf2
	.comm	termbuf2,60,4
	.type	linedata,@object        # @linedata
	.local	linedata
	.comm	linedata,4096,16
	.type	line,@object            # @line
	.globl	line
	.align	8
line:
	.quad	linedata
	.size	line, 8

	.type	ptyslavefd,@object      # @ptyslavefd
	.align	4
ptyslavefd:
	.long	4294967295              # 0xffffffff
	.size	ptyslavefd, 4

	.type	termspeeds,@object      # @termspeeds
	.globl	termspeeds
	.align	16
termspeeds:
	.zero	8
	.long	50                      # 0x32
	.long	1                       # 0x1
	.long	75                      # 0x4b
	.long	2                       # 0x2
	.long	110                     # 0x6e
	.long	3                       # 0x3
	.long	134                     # 0x86
	.long	4                       # 0x4
	.long	150                     # 0x96
	.long	5                       # 0x5
	.long	200                     # 0xc8
	.long	6                       # 0x6
	.long	300                     # 0x12c
	.long	7                       # 0x7
	.long	600                     # 0x258
	.long	8                       # 0x8
	.long	1200                    # 0x4b0
	.long	9                       # 0x9
	.long	1800                    # 0x708
	.long	10                      # 0xa
	.long	2400                    # 0x960
	.long	11                      # 0xb
	.long	4800                    # 0x12c0
	.long	12                      # 0xc
	.long	9600                    # 0x2580
	.long	13                      # 0xd
	.long	19200                   # 0x4b00
	.long	13                      # 0xd
	.long	38400                   # 0x9600
	.long	13                      # 0xd
	.long	4294967295              # 0xffffffff
	.long	13                      # 0xd
	.size	termspeeds, 136

	.type	.L.str77,@object        # @.str77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str77:
	.asciz	"setsid()"
	.size	.L.str77, 9

	.type	.L.str178,@object       # @.str178
.L.str178:
	.asciz	"ioctl(sctty)"
	.size	.L.str178, 13

	.type	.L.str279,@object       # @.str279
.L.str279:
	.asciz	"fork"
	.size	.L.str279, 5

	.type	envinit,@object         # @envinit
	.comm	envinit,24,16
	.type	.L.str380,@object       # @.str380
.L.str380:
	.asciz	"TZ"
	.size	.L.str380, 3

	.type	.L.str481,@object       # @.str481
.L.str481:
	.asciz	"-h"
	.size	.L.str481, 3

	.type	.L.str582,@object       # @.str582
.L.str582:
	.asciz	"-p"
	.size	.L.str582, 3

	.type	.L.str683,@object       # @.str683
.L.str683:
	.asciz	"Attempt to login with an option!"
	.size	.L.str683, 33

	.type	.L.str784,@object       # @.str784
.L.str784:
	.zero	1
	.size	.L.str784, 1

	.type	.L.str885,@object       # @.str885
.L.str885:
	.asciz	"USER"
	.size	.L.str885, 5

	.type	.L.str986,@object       # @.str986
.L.str986:
	.asciz	"I don't hear you!\r\n"
	.size	.L.str986, 20

	.type	.L.str1087,@object      # @.str1087
.L.str1087:
	.asciz	"%s: %m\n"
	.size	.L.str1087, 8

	.type	.L.str1188,@object      # @.str1188
.L.str1188:
	.asciz	"Out of memory\n"
	.size	.L.str1188, 15

	.type	util_rcsid,@object      # @util_rcsid
	.data
	.globl	util_rcsid
	.align	16
util_rcsid:
	.asciz	"$Id: utility.c,v 1.11 1999/12/12 14:59:45 dholland Exp $"
	.size	util_rcsid, 57

	.type	.L.str113,@object       # @.str113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str113:
	.asciz	"EOF"
	.size	.L.str113, 4

	.type	.L.str1114,@object      # @.str1114
.L.str1114:
	.asciz	"SUSP"
	.size	.L.str1114, 5

	.type	.L.str2115,@object      # @.str2115
.L.str2115:
	.asciz	"ABORT"
	.size	.L.str2115, 6

	.type	.L.str3116,@object      # @.str3116
.L.str3116:
	.asciz	"EOR"
	.size	.L.str3116, 4

	.type	.L.str4117,@object      # @.str4117
.L.str4117:
	.asciz	"SE"
	.size	.L.str4117, 3

	.type	.L.str5118,@object      # @.str5118
.L.str5118:
	.asciz	"NOP"
	.size	.L.str5118, 4

	.type	.L.str6119,@object      # @.str6119
.L.str6119:
	.asciz	"DMARK"
	.size	.L.str6119, 6

	.type	.L.str7120,@object      # @.str7120
.L.str7120:
	.asciz	"BRK"
	.size	.L.str7120, 4

	.type	.L.str8121,@object      # @.str8121
.L.str8121:
	.asciz	"IP"
	.size	.L.str8121, 3

	.type	.L.str9122,@object      # @.str9122
.L.str9122:
	.asciz	"AO"
	.size	.L.str9122, 3

	.type	.L.str10123,@object     # @.str10123
.L.str10123:
	.asciz	"AYT"
	.size	.L.str10123, 4

	.type	.L.str11124,@object     # @.str11124
.L.str11124:
	.asciz	"EC"
	.size	.L.str11124, 3

	.type	.L.str12125,@object     # @.str12125
.L.str12125:
	.asciz	"EL"
	.size	.L.str12125, 3

	.type	.L.str13126,@object     # @.str13126
.L.str13126:
	.asciz	"GA"
	.size	.L.str13126, 3

	.type	.L.str14127,@object     # @.str14127
.L.str14127:
	.asciz	"SB"
	.size	.L.str14127, 3

	.type	.L.str15128,@object     # @.str15128
.L.str15128:
	.asciz	"WILL"
	.size	.L.str15128, 5

	.type	.L.str16129,@object     # @.str16129
.L.str16129:
	.asciz	"WONT"
	.size	.L.str16129, 5

	.type	.L.str17130,@object     # @.str17130
.L.str17130:
	.asciz	"DO"
	.size	.L.str17130, 3

	.type	.L.str18131,@object     # @.str18131
.L.str18131:
	.asciz	"DONT"
	.size	.L.str18131, 5

	.type	.L.str19132,@object     # @.str19132
.L.str19132:
	.asciz	"IAC"
	.size	.L.str19132, 4

	.type	telcmds,@object         # @telcmds
	.data
	.globl	telcmds
	.align	16
telcmds:
	.quad	.L.str113
	.quad	.L.str1114
	.quad	.L.str2115
	.quad	.L.str3116
	.quad	.L.str4117
	.quad	.L.str5118
	.quad	.L.str6119
	.quad	.L.str7120
	.quad	.L.str8121
	.quad	.L.str9122
	.quad	.L.str10123
	.quad	.L.str11124
	.quad	.L.str12125
	.quad	.L.str13126
	.quad	.L.str14127
	.quad	.L.str15128
	.quad	.L.str16129
	.quad	.L.str17130
	.quad	.L.str18131
	.quad	.L.str19132
	.quad	0
	.size	telcmds, 168

	.type	.L.str20133,@object     # @.str20133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str20133:
	.asciz	"BINARY"
	.size	.L.str20133, 7

	.type	.L.str21134,@object     # @.str21134
.L.str21134:
	.asciz	"ECHO"
	.size	.L.str21134, 5

	.type	.L.str22135,@object     # @.str22135
.L.str22135:
	.asciz	"RCP"
	.size	.L.str22135, 4

	.type	.L.str23136,@object     # @.str23136
.L.str23136:
	.asciz	"SUPPRESS GO AHEAD"
	.size	.L.str23136, 18

	.type	.L.str24137,@object     # @.str24137
.L.str24137:
	.asciz	"NAME"
	.size	.L.str24137, 5

	.type	.L.str25138,@object     # @.str25138
.L.str25138:
	.asciz	"STATUS"
	.size	.L.str25138, 7

	.type	.L.str26139,@object     # @.str26139
.L.str26139:
	.asciz	"TIMING MARK"
	.size	.L.str26139, 12

	.type	.L.str27140,@object     # @.str27140
.L.str27140:
	.asciz	"RCTE"
	.size	.L.str27140, 5

	.type	.L.str28141,@object     # @.str28141
.L.str28141:
	.asciz	"NAOL"
	.size	.L.str28141, 5

	.type	.L.str29142,@object     # @.str29142
.L.str29142:
	.asciz	"NAOP"
	.size	.L.str29142, 5

	.type	.L.str30143,@object     # @.str30143
.L.str30143:
	.asciz	"NAOCRD"
	.size	.L.str30143, 7

	.type	.L.str31144,@object     # @.str31144
.L.str31144:
	.asciz	"NAOHTS"
	.size	.L.str31144, 7

	.type	.L.str32145,@object     # @.str32145
.L.str32145:
	.asciz	"NAOHTD"
	.size	.L.str32145, 7

	.type	.L.str33146,@object     # @.str33146
.L.str33146:
	.asciz	"NAOFFD"
	.size	.L.str33146, 7

	.type	.L.str34147,@object     # @.str34147
.L.str34147:
	.asciz	"NAOVTS"
	.size	.L.str34147, 7

	.type	.L.str35148,@object     # @.str35148
.L.str35148:
	.asciz	"NAOVTD"
	.size	.L.str35148, 7

	.type	.L.str36149,@object     # @.str36149
.L.str36149:
	.asciz	"NAOLFD"
	.size	.L.str36149, 7

	.type	.L.str37150,@object     # @.str37150
.L.str37150:
	.asciz	"EXTEND ASCII"
	.size	.L.str37150, 13

	.type	.L.str38151,@object     # @.str38151
.L.str38151:
	.asciz	"LOGOUT"
	.size	.L.str38151, 7

	.type	.L.str39152,@object     # @.str39152
.L.str39152:
	.asciz	"BYTE MACRO"
	.size	.L.str39152, 11

	.type	.L.str40153,@object     # @.str40153
.L.str40153:
	.asciz	"DATA ENTRY TERMINAL"
	.size	.L.str40153, 20

	.type	.L.str41154,@object     # @.str41154
.L.str41154:
	.asciz	"SUPDUP"
	.size	.L.str41154, 7

	.type	.L.str42155,@object     # @.str42155
.L.str42155:
	.asciz	"SUPDUP OUTPUT"
	.size	.L.str42155, 14

	.type	.L.str43156,@object     # @.str43156
.L.str43156:
	.asciz	"SEND LOCATION"
	.size	.L.str43156, 14

	.type	.L.str44157,@object     # @.str44157
.L.str44157:
	.asciz	"TERMINAL TYPE"
	.size	.L.str44157, 14

	.type	.L.str45158,@object     # @.str45158
.L.str45158:
	.asciz	"END OF RECORD"
	.size	.L.str45158, 14

	.type	.L.str46159,@object     # @.str46159
.L.str46159:
	.asciz	"TACACS UID"
	.size	.L.str46159, 11

	.type	.L.str47160,@object     # @.str47160
.L.str47160:
	.asciz	"OUTPUT MARKING"
	.size	.L.str47160, 15

	.type	.L.str48161,@object     # @.str48161
.L.str48161:
	.asciz	"TTYLOC"
	.size	.L.str48161, 7

	.type	.L.str49162,@object     # @.str49162
.L.str49162:
	.asciz	"3270 REGIME"
	.size	.L.str49162, 12

	.type	.L.str50,@object        # @.str50
.L.str50:
	.asciz	"X.3 PAD"
	.size	.L.str50, 8

	.type	.L.str51,@object        # @.str51
.L.str51:
	.asciz	"NAWS"
	.size	.L.str51, 5

	.type	.L.str52,@object        # @.str52
.L.str52:
	.asciz	"TSPEED"
	.size	.L.str52, 7

	.type	.L.str53,@object        # @.str53
.L.str53:
	.asciz	"LFLOW"
	.size	.L.str53, 6

	.type	.L.str54,@object        # @.str54
.L.str54:
	.asciz	"LINEMODE"
	.size	.L.str54, 9

	.type	.L.str55,@object        # @.str55
.L.str55:
	.asciz	"XDISPLOC"
	.size	.L.str55, 9

	.type	.L.str56,@object        # @.str56
.L.str56:
	.asciz	"OLD-ENVIRON"
	.size	.L.str56, 12

	.type	.L.str57,@object        # @.str57
.L.str57:
	.asciz	"AUTHENTICATION"
	.size	.L.str57, 15

	.type	.L.str58,@object        # @.str58
.L.str58:
	.asciz	"ENCRYPT"
	.size	.L.str58, 8

	.type	.L.str59,@object        # @.str59
.L.str59:
	.asciz	"NEW-ENVIRON"
	.size	.L.str59, 12

	.type	telopts,@object         # @telopts
	.data
	.globl	telopts
	.align	16
telopts:
	.quad	.L.str20133
	.quad	.L.str21134
	.quad	.L.str22135
	.quad	.L.str23136
	.quad	.L.str24137
	.quad	.L.str25138
	.quad	.L.str26139
	.quad	.L.str27140
	.quad	.L.str28141
	.quad	.L.str29142
	.quad	.L.str30143
	.quad	.L.str31144
	.quad	.L.str32145
	.quad	.L.str33146
	.quad	.L.str34147
	.quad	.L.str35148
	.quad	.L.str36149
	.quad	.L.str37150
	.quad	.L.str38151
	.quad	.L.str39152
	.quad	.L.str40153
	.quad	.L.str41154
	.quad	.L.str42155
	.quad	.L.str43156
	.quad	.L.str44157
	.quad	.L.str45158
	.quad	.L.str46159
	.quad	.L.str47160
	.quad	.L.str48161
	.quad	.L.str49162
	.quad	.L.str50
	.quad	.L.str51
	.quad	.L.str52
	.quad	.L.str53
	.quad	.L.str54
	.quad	.L.str55
	.quad	.L.str56
	.quad	.L.str57
	.quad	.L.str58
	.quad	.L.str59
	.quad	0
	.size	telopts, 328

	.type	.L.str60,@object        # @.str60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str60:
	.asciz	"0"
	.size	.L.str60, 2

	.type	.L.str61,@object        # @.str61
.L.str61:
	.asciz	"SYNCH"
	.size	.L.str61, 6

	.type	.L.str62,@object        # @.str62
.L.str62:
	.asciz	"EW"
	.size	.L.str62, 3

	.type	.L.str63,@object        # @.str63
.L.str63:
	.asciz	"RP"
	.size	.L.str63, 3

	.type	.L.str64,@object        # @.str64
.L.str64:
	.asciz	"LNEXT"
	.size	.L.str64, 6

	.type	.L.str65,@object        # @.str65
.L.str65:
	.asciz	"XON"
	.size	.L.str65, 4

	.type	.L.str66,@object        # @.str66
.L.str66:
	.asciz	"XOFF"
	.size	.L.str66, 5

	.type	.L.str67,@object        # @.str67
.L.str67:
	.asciz	"FORW1"
	.size	.L.str67, 6

	.type	.L.str68,@object        # @.str68
.L.str68:
	.asciz	"FORW2"
	.size	.L.str68, 6

	.type	slc_names,@object       # @slc_names
	.data
	.globl	slc_names
	.align	16
slc_names:
	.quad	.L.str60
	.quad	.L.str61
	.quad	.L.str7120
	.quad	.L.str8121
	.quad	.L.str9122
	.quad	.L.str10123
	.quad	.L.str3116
	.quad	.L.str2115
	.quad	.L.str113
	.quad	.L.str1114
	.quad	.L.str11124
	.quad	.L.str12125
	.quad	.L.str62
	.quad	.L.str63
	.quad	.L.str64
	.quad	.L.str65
	.quad	.L.str66
	.quad	.L.str67
	.quad	.L.str68
	.quad	0
	.size	slc_names, 160

	.type	.L.str69,@object        # @.str69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str69:
	.asciz	"td: ttloop\r\n"
	.size	.L.str69, 13

	.type	.L.str70,@object        # @.str70
.L.str70:
	.asciz	"ttloop: read: %m\n"
	.size	.L.str70, 18

	.type	.L.str71,@object        # @.str71
.L.str71:
	.asciz	"ttloop: peer died: EOF\n"
	.size	.L.str71, 24

	.type	.L.str72,@object        # @.str72
.L.str72:
	.asciz	"td: ttloop read %d chars\r\n"
	.size	.L.str72, 27

	.type	stilloob.timeout,@object # @stilloob.timeout
	.local	stilloob.timeout
	.comm	stilloob.timeout,16,8
	.type	.L.str73,@object        # @.str73
.L.str73:
	.asciz	"select"
	.size	.L.str73, 7

	.type	.L.str74,@object        # @.str74
.L.str74:
	.asciz	"td: ptyflush %d chars\r\n"
	.size	.L.str74, 24

	.type	.L.str75,@object        # @.str75
.L.str75:
	.asciz	"pd"
	.size	.L.str75, 3

	.type	.L.str76,@object        # @.str76
.L.str76:
	.asciz	"td: netflush %d chars\r\n"
	.size	.L.str76, 24

	.type	.L.str77163,@object     # @.str77163
.L.str77163:
	.asciz	"telnetd: %s.\r\n"
	.size	.L.str77163, 15

	.type	.L.str78,@object        # @.str78
.L.str78:
	.asciz	"%s: %s\r\n"
	.size	.L.str78, 9

	.type	editedhost,@object      # @editedhost
	.comm	editedhost,32,16
	.type	kerninfo,@object        # @kerninfo
	.comm	kerninfo,390,1
	.type	.L.str79,@object        # @.str79
.L.str79:
	.zero	1
	.size	.L.str79, 1

	.type	putlocation,@object     # @putlocation
	.local	putlocation
	.comm	putlocation,8,8
	.type	fmtstr,@object          # @fmtstr
	.data
	.align	16
fmtstr:
	.asciz	"%H:%M on %A, %d %B %Y"
	.size	fmtstr, 22

	.type	.L.str80,@object        # @.str80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str80:
	.asciz	"(none)"
	.size	.L.str80, 7

	.type	.L.str81,@object        # @.str81
.L.str81:
	.asciz	"/etc/issue.net"
	.size	.L.str81, 15

	.type	.L.str82,@object        # @.str82
.L.str82:
	.asciz	"r"
	.size	.L.str82, 2

	.type	.L.str83,@object        # @.str83
.L.str83:
	.asciz	"%s %s\r\n"
	.size	.L.str83, 8

	.type	.L.str84,@object        # @.str84
.L.str84:
	.asciz	"%s %d\r\n"
	.size	.L.str84, 8

	.type	.L.str85,@object        # @.str85
.L.str85:
	.asciz	"td: %s suboption "
	.size	.L.str85, 18

	.type	.L.str86,@object        # @.str86
.L.str86:
	.asciz	"recv"
	.size	.L.str86, 5

	.type	.L.str87,@object        # @.str87
.L.str87:
	.asciz	"send"
	.size	.L.str87, 5

	.type	.L.str88,@object        # @.str88
.L.str88:
	.asciz	"(terminated by "
	.size	.L.str88, 16

	.type	.L.str89,@object        # @.str89
.L.str89:
	.asciz	"%s "
	.size	.L.str89, 4

	.type	.L.str90,@object        # @.str90
.L.str90:
	.asciz	"%d "
	.size	.L.str90, 4

	.type	.L.str91,@object        # @.str91
.L.str91:
	.asciz	"%s"
	.size	.L.str91, 3

	.type	.L.str92,@object        # @.str92
.L.str92:
	.asciz	"%d"
	.size	.L.str92, 3

	.type	.L.str93,@object        # @.str93
.L.str93:
	.asciz	", not IAC SE!) "
	.size	.L.str93, 16

	.type	.L.str94,@object        # @.str94
.L.str94:
	.asciz	"(Empty suboption???)"
	.size	.L.str94, 21

	.type	.L.str95,@object        # @.str95
.L.str95:
	.asciz	"TERMINAL-TYPE "
	.size	.L.str95, 15

	.type	.L.str96,@object        # @.str96
.L.str96:
	.asciz	"IS \"%.*s\""
	.size	.L.str96, 10

	.type	.L.str97,@object        # @.str97
.L.str97:
	.asciz	"SEND"
	.size	.L.str97, 5

	.type	.L.str98,@object        # @.str98
.L.str98:
	.asciz	"- unknown qualifier %d (0x%x)."
	.size	.L.str98, 31

	.type	.L.str99,@object        # @.str99
.L.str99:
	.asciz	"TERMINAL-SPEED"
	.size	.L.str99, 15

	.type	.L.str100,@object       # @.str100
.L.str100:
	.asciz	" (empty suboption???)"
	.size	.L.str100, 22

	.type	.L.str101,@object       # @.str101
.L.str101:
	.asciz	" IS %.*s"
	.size	.L.str101, 9

	.type	.L.str102,@object       # @.str102
.L.str102:
	.asciz	" SEND"
	.size	.L.str102, 6

	.type	.L.str103,@object       # @.str103
.L.str103:
	.asciz	" %d (unknown)"
	.size	.L.str103, 14

	.type	.L.str104,@object       # @.str104
.L.str104:
	.asciz	" ?%d?"
	.size	.L.str104, 6

	.type	.L.str105,@object       # @.str105
.L.str105:
	.asciz	"TOGGLE-FLOW-CONTROL"
	.size	.L.str105, 20

	.type	.L.str106,@object       # @.str106
.L.str106:
	.asciz	" OFF"
	.size	.L.str106, 5

	.type	.L.str107,@object       # @.str107
.L.str107:
	.asciz	" ON"
	.size	.L.str107, 4

	.type	.L.str108,@object       # @.str108
.L.str108:
	.asciz	" %d %d (%d)"
	.size	.L.str108, 12

	.type	.L.str109,@object       # @.str109
.L.str109:
	.asciz	"LINEMODE "
	.size	.L.str109, 10

	.type	.L.str110,@object       # @.str110
.L.str110:
	.asciz	"WILL "
	.size	.L.str110, 6

	.type	.L.str111,@object       # @.str111
.L.str111:
	.asciz	"WONT "
	.size	.L.str111, 6

	.type	.L.str112,@object       # @.str112
.L.str112:
	.asciz	"DO "
	.size	.L.str112, 4

	.type	.L.str113164,@object    # @.str113164
.L.str113164:
	.asciz	"DONT "
	.size	.L.str113164, 6

	.type	.L.str114,@object       # @.str114
.L.str114:
	.asciz	"(no option???)"
	.size	.L.str114, 15

	.type	.L.str115,@object       # @.str115
.L.str115:
	.asciz	"Forward Mask"
	.size	.L.str115, 13

	.type	.L.str116,@object       # @.str116
.L.str116:
	.asciz	" %x"
	.size	.L.str116, 4

	.type	.L.str117,@object       # @.str117
.L.str117:
	.asciz	"%d (unknown)"
	.size	.L.str117, 13

	.type	.L.str118,@object       # @.str118
.L.str118:
	.asciz	" %d"
	.size	.L.str118, 4

	.type	.L.str119,@object       # @.str119
.L.str119:
	.asciz	"SLC"
	.size	.L.str119, 4

	.type	.L.str120,@object       # @.str120
.L.str120:
	.asciz	" %s"
	.size	.L.str120, 4

	.type	.L.str121,@object       # @.str121
.L.str121:
	.asciz	" NOSUPPORT"
	.size	.L.str121, 11

	.type	.L.str122,@object       # @.str122
.L.str122:
	.asciz	" CANTCHANGE"
	.size	.L.str122, 12

	.type	.L.str123,@object       # @.str123
.L.str123:
	.asciz	" VARIABLE"
	.size	.L.str123, 10

	.type	.L.str124,@object       # @.str124
.L.str124:
	.asciz	" DEFAULT"
	.size	.L.str124, 9

	.type	.L.str125,@object       # @.str125
.L.str125:
	.asciz	"%s%s%s"
	.size	.L.str125, 7

	.type	.L.str126,@object       # @.str126
.L.str126:
	.asciz	"|ACK"
	.size	.L.str126, 5

	.type	.L.str127,@object       # @.str127
.L.str127:
	.asciz	"|FLUSHIN"
	.size	.L.str127, 9

	.type	.L.str128,@object       # @.str128
.L.str128:
	.asciz	"|FLUSHOUT"
	.size	.L.str128, 10

	.type	.L.str129,@object       # @.str129
.L.str129:
	.asciz	"(0x%x)"
	.size	.L.str129, 7

	.type	.L.str130,@object       # @.str130
.L.str130:
	.asciz	" %d;"
	.size	.L.str130, 5

	.type	.L.str131,@object       # @.str131
.L.str131:
	.asciz	"MODE "
	.size	.L.str131, 6

	.type	.L.str132,@object       # @.str132
.L.str132:
	.asciz	"(no mode???)"
	.size	.L.str132, 13

	.type	.L.str133,@object       # @.str133
.L.str133:
	.asciz	"%s%s%s%s%s"
	.size	.L.str133, 11

	.type	.L.str134,@object       # @.str134
.L.str134:
	.asciz	"|EDIT"
	.size	.L.str134, 6

	.type	.L.str135,@object       # @.str135
.L.str135:
	.asciz	"|TRAPSIG"
	.size	.L.str135, 9

	.type	.L.str136,@object       # @.str136
.L.str136:
	.asciz	"|SOFT_TAB"
	.size	.L.str136, 10

	.type	.L.str137,@object       # @.str137
.L.str137:
	.asciz	"|LIT_ECHO"
	.size	.L.str137, 10

	.type	.L.str138,@object       # @.str138
.L.str138:
	.asciz	" (0x%x)"
	.size	.L.str138, 8

	.type	.L.str139,@object       # @.str139
.L.str139:
	.asciz	" ?0x%x?"
	.size	.L.str139, 8

	.type	.L.str140,@object       # @.str140
.L.str140:
	.asciz	" IS\r\n"
	.size	.L.str140, 6

	.type	.L.str141,@object       # @.str141
.L.str141:
	.asciz	" %s %s"
	.size	.L.str141, 7

	.type	.L.str142,@object       # @.str142
.L.str142:
	.asciz	" %s %d"
	.size	.L.str142, 7

	.type	.L.str143,@object       # @.str143
.L.str143:
	.asciz	"\r\n"
	.size	.L.str143, 3

	.type	.L.str144,@object       # @.str144
.L.str144:
	.asciz	" SB "
	.size	.L.str144, 5

	.type	.L.str145,@object       # @.str145
.L.str145:
	.asciz	" SE"
	.size	.L.str145, 4

	.type	.L.str146,@object       # @.str146
.L.str146:
	.asciz	"X-DISPLAY-LOCATION "
	.size	.L.str146, 20

	.type	.L.str147,@object       # @.str147
.L.str147:
	.asciz	"ENVIRON "
	.size	.L.str147, 9

	.type	.L.str148,@object       # @.str148
.L.str148:
	.asciz	"IS "
	.size	.L.str148, 4

	.type	.L.str149,@object       # @.str149
.L.str149:
	.asciz	"SEND "
	.size	.L.str149, 6

	.type	.L.str150165,@object    # @.str150165
.L.str150165:
	.asciz	"INFO "
	.size	.L.str150165, 6

	.type	.L.str151,@object       # @.str151
.L.str151:
	.asciz	"\" VAR "
	.size	.L.str151, 7

	.type	.L.str152,@object       # @.str152
.L.str152:
	.asciz	"\" VALUE "
	.size	.L.str152, 9

	.type	.L.str153,@object       # @.str153
.L.str153:
	.asciz	"\" ESC "
	.size	.L.str153, 7

	.type	.L.str154,@object       # @.str154
.L.str154:
	.asciz	"\""
	.size	.L.str154, 2

	.type	.L.str155,@object       # @.str155
.L.str155:
	.asciz	"%c"
	.size	.L.str155, 3

	.type	.L.str156,@object       # @.str156
.L.str156:
	.asciz	"\" %03o "
	.size	.L.str156, 8

	.type	.L.str157,@object       # @.str157
.L.str157:
	.asciz	"%s (unknown)"
	.size	.L.str157, 13

	.type	.L.str158,@object       # @.str158
.L.str158:
	.asciz	"%s: "
	.size	.L.str158, 5

	.type	.L.str159,@object       # @.str159
.L.str159:
	.asciz	"%02x"
	.size	.L.str159, 5

	.type	.L.str160,@object       # @.str160
.L.str160:
	.asciz	" "
	.size	.L.str160, 2

	.type	.L.str161,@object       # @.str161
.L.str161:
	.asciz	" %s\r\n"
	.size	.L.str161, 6

	.type	global_rcsid,@object    # @global_rcsid
	.data
	.globl	global_rcsid
	.align	16
global_rcsid:
	.asciz	"$Id: global.c,v 1.4 1999/12/12 14:59:44 dholland Exp $"
	.size	global_rcsid, 55

	.type	options,@object         # @options
	.comm	options,256,16
	.type	do_dont_resp,@object    # @do_dont_resp
	.comm	do_dont_resp,256,16
	.type	will_wont_resp,@object  # @will_wont_resp
	.comm	will_wont_resp,256,16
	.type	linemode,@object        # @linemode
	.comm	linemode,4,4
	.type	flowmode,@object        # @flowmode
	.comm	flowmode,4,4
	.type	diagnostic,@object      # @diagnostic
	.comm	diagnostic,4,4
	.type	slctab,@object          # @slctab
	.comm	slctab,304,16
	.type	terminaltype,@object    # @terminaltype
	.comm	terminaltype,8,8
	.type	ptyobuf,@object         # @ptyobuf
	.comm	ptyobuf,8256,16
	.type	pfrontp,@object         # @pfrontp
	.comm	pfrontp,8,8
	.type	pbackp,@object          # @pbackp
	.comm	pbackp,8,8
	.type	netibuf,@object         # @netibuf
	.comm	netibuf,8192,16
	.type	netip,@object           # @netip
	.comm	netip,8,8
	.type	netobuf,@object         # @netobuf
	.comm	netobuf,8256,16
	.type	nfrontp,@object         # @nfrontp
	.comm	nfrontp,8,8
	.type	nbackp,@object          # @nbackp
	.comm	nbackp,8,8
	.type	neturg,@object          # @neturg
	.comm	neturg,8,8
	.type	pcc,@object             # @pcc
	.comm	pcc,4,4
	.type	ncc,@object             # @ncc
	.comm	ncc,4,4
	.type	pty,@object             # @pty
	.comm	pty,4,4
	.type	net,@object             # @net
	.comm	net,4,4
	.type	SYNCHing,@object        # @SYNCHing
	.comm	SYNCHing,4,4
	.type	clocks,@object          # @clocks
	.comm	clocks,40,4
	.type	setproctitle_rcsid,@object # @setproctitle_rcsid
	.globl	setproctitle_rcsid
	.align	16
setproctitle_rcsid:
	.asciz	"$Id: setproctitle.c,v 1.3 1999/12/10 23:06:39 bryce Exp $"
	.size	setproctitle_rcsid, 58

	.type	Argv,@object            # @Argv
	.local	Argv
	.comm	Argv,8,8
	.type	LastArgv,@object        # @LastArgv
	.local	LastArgv
	.comm	LastArgv,8,8
	.type	Argv0,@object           # @Argv0
	.local	Argv0
	.comm	Argv0,128,16
	.type	setproctitle.buf,@object # @setproctitle.buf
	.local	setproctitle.buf
	.comm	setproctitle.buf,2048,16
	.type	.L.str238,@object       # @.str238
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str238:
	.asciz	": "
	.size	.L.str238, 3


	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
