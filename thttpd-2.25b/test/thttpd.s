	.file	"thttpd.bc"
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.zero	16
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	subq	$23688, %rsp            # imm = 0x5C88
.Ltmp13:
	.cfi_def_cfa_offset 23744
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	%edi, %r14d
	movl	%r14d, 120(%rsp)        # 4-byte Spill
	movl	$addr, %edi
	callq	_StraightTaint_init
	movq	%rax, addr(%rip)
	movl	$1, %r13d
	movl	$1, %edi
	callq	_StraightTaint_log
	movq	(%rbx), %rbx
	movq	%rbx, argv0(%rip)
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	leaq	1(%rax), %rdi
	cmoveq	%rbx, %rdi
	movl	$9, %esi
	movl	$24, %edx
	callq	openlog
	movb	$0, debug(%rip)
	movw	$80, port(%rip)
	movq	$0, dir(%rip)
	movq	$0, data_dir(%rip)
	movb	$0, do_chroot(%rip)
	movb	$0, no_log(%rip)
	movl	$0, no_symlink_check(%rip)
	movb	$0, do_vhost(%rip)
	movb	$0, do_global_passwd(%rip)
	movq	$0, cgi_pattern(%rip)
	movl	$0, cgi_limit(%rip)
	movq	$0, url_pattern(%rip)
	movb	$0, no_empty_referers(%rip)
	movq	$0, local_pattern(%rip)
	movq	$0, throttlefile(%rip)
	movq	$0, hostname(%rip)
	movq	$0, logfile(%rip)
	movq	$0, pidfile(%rip)
	movq	$.L.str70, user(%rip)
	movq	$.L.str71, charset(%rip)
	movq	$.L.str42, p3p(%rip)
	movl	$-1, max_age(%rip)
	cmpl	$2, %r14d
	jl	.LBB0_251
# BB#1:                                 # %land.rhs.lr.ph.i
	movl	$2, %edi
	callq	_StraightTaint_log
	movl	$1, %r15d
	movabsq	$4294977024, %r12       # imm = 0x100002600
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_4:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4, %edi
	callq	_StraightTaint_log
	movsbl	1(%rbx), %ebp
	cmpl	$85, %ebp
	jg	.LBB0_10
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%bpl, %eax
	cmpl	$67, %eax
	jne	.LBB0_182
# BB#6:                                 # %cond.end108.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$7, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_182
# BB#7:                                 # %land.lhs.true112.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$8, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_182
# BB#8:                                 # %if.then115.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$9, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str56, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %rbp
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB0_19
# BB#9:                                 # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10, %edi
	callq	_StraightTaint_log
	movl	$10000, %esi            # imm = 0x2710
	leaq	4512(%rsp), %rbx
	movq	%rbx, %rdi
	jmp	.LBB0_23
	.align	16, 0x90
.LBB0_22:                               # %while.cond.loopexit.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	$12, %edi
	callq	_StraightTaint_log
	movl	$10000, %esi            # imm = 0x2710
	leaq	4512(%rsp), %rbx
	movq	%rbx, %rdi
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB0_23:                               # %while.cond.loopexit.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
	movq	%rbp, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_249
# BB#24:                                # %while.body.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	$13, %edi
	callq	_StraightTaint_log
	movl	$35, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_26
# BB#25:                                # %if.then6.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	$14, %edi
	callq	_StraightTaint_log
	movb	$0, (%rbx)
.LBB0_26:                               # %cond.false35.i.i
                                        #   in Loop: Header=BB0_23 Depth=2
	movl	$15, %edi
	callq	_StraightTaint_log
	movl	$.L.str98, %esi
	leaq	4512(%rsp), %rdi
	callq	strspn
	cmpb	$0, 4512(%rsp,%rax)
	je	.LBB0_22
# BB#27:                                #   in Loop: Header=BB0_23 Depth=2
	leaq	4512(%rsp,%rax), %rbx
	jmp	.LBB0_28
.LBB0_85:                               # %if.else174.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$65, %edi
	callq	_StraightTaint_log
	movl	$.L.str108, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_91
# BB#86:                                # %if.then178.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$66, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_87
# BB#88:                                # %value_required.exit521.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$68, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_89
# BB#90:                                # %e_strdup.exit526.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$70, %edi
	callq	_StraightTaint_log
	movq	%rbx, user(%rip)
	jmp	.LBB0_175
.LBB0_91:                               # %if.else180.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$71, %edi
	callq	_StraightTaint_log
	movl	$.L.str109, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_97
# BB#92:                                # %if.then184.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$72, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_93
# BB#94:                                # %value_required.exit530.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$74, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_95
# BB#96:                                # %e_strdup.exit535.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$76, %edi
	callq	_StraightTaint_log
	movq	%rbx, cgi_pattern(%rip)
	jmp	.LBB0_175
.LBB0_97:                               # %if.else186.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$77, %edi
	callq	_StraightTaint_log
	movl	$.L.str110, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_101
# BB#98:                                # %if.then190.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$78, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_99
# BB#100:                               # %value_required.exit539.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$80, %edi
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movl	%eax, cgi_limit(%rip)
	jmp	.LBB0_175
.LBB0_101:                              # %if.else192.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$81, %edi
	callq	_StraightTaint_log
	movl	$.L.str111, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_107
# BB#102:                               # %if.then196.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$82, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_103
# BB#104:                               # %value_required.exit545.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$84, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_105
# BB#106:                               # %e_strdup.exit550.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$86, %edi
	callq	_StraightTaint_log
	movq	%rbx, url_pattern(%rip)
	jmp	.LBB0_175
.LBB0_107:                              # %if.else198.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$87, %edi
	callq	_StraightTaint_log
	movl	$.L.str112, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_111
# BB#108:                               # %if.then202.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$88, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_109
# BB#110:                               # %no_value_required.exit554.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$90, %edi
	callq	_StraightTaint_log
	movb	$1, no_empty_referers(%rip)
	jmp	.LBB0_175
.LBB0_111:                              # %if.else203.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$91, %edi
	callq	_StraightTaint_log
	movl	$.L.str113, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_117
# BB#112:                               # %if.then207.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$92, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_113
# BB#114:                               # %value_required.exit558.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$94, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_115
# BB#116:                               # %e_strdup.exit563.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$96, %edi
	callq	_StraightTaint_log
	movq	%rbx, local_pattern(%rip)
	jmp	.LBB0_175
.LBB0_117:                              # %if.else209.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$97, %edi
	callq	_StraightTaint_log
	movl	$.L.str114, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_123
# BB#118:                               # %if.then213.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$98, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_119
# BB#120:                               # %value_required.exit567.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$100, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_121
# BB#122:                               # %e_strdup.exit572.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$102, %edi
	callq	_StraightTaint_log
	movq	%rbx, throttlefile(%rip)
	jmp	.LBB0_175
.LBB0_123:                              # %if.else215.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$103, %edi
	callq	_StraightTaint_log
	movl	$.L.str115, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_129
# BB#124:                               # %if.then219.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$104, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_125
# BB#126:                               # %value_required.exit576.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$106, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_127
# BB#128:                               # %e_strdup.exit581.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$108, %edi
	callq	_StraightTaint_log
	movq	%rbx, hostname(%rip)
	jmp	.LBB0_175
.LBB0_129:                              # %if.else221.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$109, %edi
	callq	_StraightTaint_log
	movl	$.L.str116, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_135
# BB#130:                               # %if.then225.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$110, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_131
# BB#132:                               # %value_required.exit585.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$112, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_133
# BB#134:                               # %e_strdup.exit590.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$114, %edi
	callq	_StraightTaint_log
	movq	%rbx, logfile(%rip)
	jmp	.LBB0_175
.LBB0_135:                              # %if.else227.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$115, %edi
	callq	_StraightTaint_log
	movl	$.L.str117, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_139
# BB#136:                               # %if.then231.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$116, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_137
# BB#138:                               # %no_value_required.exit594.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$118, %edi
	callq	_StraightTaint_log
	movb	$1, do_vhost(%rip)
	jmp	.LBB0_175
.LBB0_139:                              # %if.else232.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$119, %edi
	callq	_StraightTaint_log
	movl	$.L.str118, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_143
# BB#140:                               # %if.then236.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$120, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_141
# BB#142:                               # %no_value_required.exit598.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$122, %edi
	callq	_StraightTaint_log
	movb	$0, do_vhost(%rip)
	jmp	.LBB0_175
.LBB0_143:                              # %if.else237.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$123, %edi
	callq	_StraightTaint_log
	movl	$.L.str119, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_147
# BB#144:                               # %if.then241.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$124, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_145
# BB#146:                               # %no_value_required.exit602.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$126, %edi
	callq	_StraightTaint_log
	movb	$1, do_global_passwd(%rip)
	jmp	.LBB0_175
.LBB0_147:                              # %if.else242.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$127, %edi
	callq	_StraightTaint_log
	movl	$.L.str120, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_151
# BB#148:                               # %if.then246.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$128, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_149
# BB#150:                               # %no_value_required.exit606.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$130, %edi
	callq	_StraightTaint_log
	movb	$0, do_global_passwd(%rip)
	jmp	.LBB0_175
.LBB0_151:                              # %if.else247.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$131, %edi
	callq	_StraightTaint_log
	movl	$.L.str121, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_157
# BB#152:                               # %if.then251.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$132, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_153
# BB#154:                               # %value_required.exit610.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$134, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_155
# BB#156:                               # %e_strdup.exit615.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$136, %edi
	callq	_StraightTaint_log
	movq	%rbx, pidfile(%rip)
	jmp	.LBB0_175
.LBB0_157:                              # %if.else253.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$137, %edi
	callq	_StraightTaint_log
	movl	$.L.str122, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_163
# BB#158:                               # %if.then257.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$138, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_159
# BB#160:                               # %value_required.exit619.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$140, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_161
# BB#162:                               # %e_strdup.exit624.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$142, %edi
	callq	_StraightTaint_log
	movq	%rbx, charset(%rip)
	jmp	.LBB0_175
.LBB0_163:                              # %if.else259.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$143, %edi
	callq	_StraightTaint_log
	movl	$.L.str123, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_169
# BB#164:                               # %if.then263.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$144, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_165
# BB#166:                               # %value_required.exit628.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$146, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_167
# BB#168:                               # %e_strdup.exit633.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$148, %edi
	callq	_StraightTaint_log
	movq	%rbx, p3p(%rip)
	jmp	.LBB0_175
.LBB0_169:                              # %if.else265.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$149, %edi
	callq	_StraightTaint_log
	movl	$.L.str124, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_173
# BB#170:                               # %if.then269.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$150, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_171
# BB#172:                               # %value_required.exit637.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$152, %edi
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movl	%eax, max_age(%rip)
	jmp	.LBB0_175
	.align	16, 0x90
.LBB0_28:                               # %cond.false86.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
	movl	$16, %edi
	callq	_StraightTaint_log
	movl	$.L.str98, %esi
	movq	%rbx, %rdi
	callq	strcspn
	movq	%rax, %rbp
	addq	%rbx, %rbp
	jmp	.LBB0_29
	.align	16, 0x90
.LBB0_31:                               # %while.body115.i.i
                                        #   in Loop: Header=BB0_29 Depth=4
	movl	$18, %edi
	callq	_StraightTaint_log
	movb	$0, (%rbp)
	incq	%rbp
.LBB0_29:                               # %while.cond101.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_23 Depth=2
                                        #       Parent Loop BB0_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$17, %edi
	callq	_StraightTaint_log
	movzbl	(%rbp), %eax
	cmpq	$32, %rax
	ja	.LBB0_32
# BB#30:                                # %while.cond101.i.i
                                        #   in Loop: Header=BB0_29 Depth=4
	btq	%rax, %r12
	jb	.LBB0_31
	.align	16, 0x90
.LBB0_32:                               # %while.end.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$19, %edi
	callq	_StraightTaint_log
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r14
	testq	%r14, %r14
	movl	$0, %r15d
	je	.LBB0_34
# BB#33:                                # %if.then119.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$20, %edi
	callq	_StraightTaint_log
	movb	$0, (%r14)
	incq	%r14
	movq	%r14, %r15
.LBB0_34:                               # %if.end121.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$21, %edi
	callq	_StraightTaint_log
	movl	$.L.str99, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_40
# BB#35:                                # %if.then125.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$22, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_36
# BB#174:                               # %no_value_required.exit.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$24, %edi
	callq	_StraightTaint_log
	movb	$1, debug(%rip)
	jmp	.LBB0_175
	.align	16, 0x90
.LBB0_40:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$25, %edi
	callq	_StraightTaint_log
	movl	$.L.str100, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_45
# BB#41:                                # %if.then129.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$26, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_42
# BB#44:                                # %value_required.exit.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$28, %edi
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movw	%ax, port(%rip)
	jmp	.LBB0_175
	.align	16, 0x90
.LBB0_45:                               # %if.else132.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$29, %edi
	callq	_StraightTaint_log
	movl	$.L.str101, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_53
# BB#46:                                # %if.then136.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$30, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_47
# BB#48:                                # %value_required.exit481.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$32, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_49
# BB#52:                                # %e_strdup.exit.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$34, %edi
	callq	_StraightTaint_log
	movq	%rbx, dir(%rip)
	jmp	.LBB0_175
.LBB0_53:                               # %if.else138.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$35, %edi
	callq	_StraightTaint_log
	movl	$.L.str20, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_57
# BB#54:                                # %if.then142.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$36, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_55
# BB#56:                                # %no_value_required.exit488.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$38, %edi
	callq	_StraightTaint_log
	movb	$1, do_chroot(%rip)
	movl	$1, no_symlink_check(%rip)
	jmp	.LBB0_175
.LBB0_57:                               # %if.else143.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$39, %edi
	callq	_StraightTaint_log
	movl	$.L.str102, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_61
# BB#58:                                # %if.then147.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$40, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_59
# BB#60:                                # %no_value_required.exit492.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$42, %edi
	callq	_StraightTaint_log
	movb	$0, do_chroot(%rip)
	movl	$0, no_symlink_check(%rip)
	jmp	.LBB0_175
.LBB0_61:                               # %if.else148.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$43, %edi
	callq	_StraightTaint_log
	movl	$.L.str103, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_67
# BB#62:                                # %if.then152.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$44, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB0_63
# BB#64:                                # %value_required.exit496.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$46, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_65
# BB#66:                                # %e_strdup.exit501.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$48, %edi
	callq	_StraightTaint_log
	movq	%rbx, data_dir(%rip)
	jmp	.LBB0_175
.LBB0_67:                               # %if.else154.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$49, %edi
	callq	_StraightTaint_log
	movl	$.L.str104, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_72
# BB#68:                                # %if.then158.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$50, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_69
# BB#70:                                # %no_value_required.exit505.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$52, %edi
	jmp	.LBB0_71
.LBB0_72:                               # %if.else159.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$53, %edi
	callq	_StraightTaint_log
	movl	$.L.str105, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_77
# BB#73:                                # %if.then163.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$54, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_74
# BB#75:                                # %no_value_required.exit509.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$56, %edi
	jmp	.LBB0_76
.LBB0_77:                               # %if.else164.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$57, %edi
	callq	_StraightTaint_log
	movl	$.L.str106, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_81
# BB#78:                                # %if.then168.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$58, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_79
# BB#80:                                # %no_value_required.exit513.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$60, %edi
.LBB0_71:                               # %cond.false336.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	callq	_StraightTaint_log
	movl	$0, no_symlink_check(%rip)
	jmp	.LBB0_175
.LBB0_81:                               # %if.else169.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$61, %edi
	callq	_StraightTaint_log
	movl	$.L.str107, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_85
# BB#82:                                # %if.then173.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$62, %edi
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB0_83
# BB#84:                                # %no_value_required.exit517.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$64, %edi
.LBB0_76:                               # %cond.false336.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	callq	_StraightTaint_log
	movl	$1, no_symlink_check(%rip)
	.align	16, 0x90
.LBB0_175:                              # %cond.false336.i.i
                                        #   in Loop: Header=BB0_28 Depth=3
	movl	$154, %edi
	callq	_StraightTaint_log
	movl	$.L.str98, %esi
	movq	%rbp, %rdi
	callq	strspn
	leaq	(%rbp,%rax), %rbx
	cmpb	$0, (%rbp,%rax)
	jne	.LBB0_28
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_10:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	%bpl, %eax
	cmpl	$99, %eax
	jg	.LBB0_14
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%bpl, %eax
	cmpl	$86, %eax
	jne	.LBB0_182
# BB#12:                                # %cond.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$5, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_182
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_14:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%bpl, %eax
	cmpl	$100, %eax
	je	.LBB0_179
# BB#15:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$112, %eax
	jne	.LBB0_16
# BB#176:                               # %cond.end176.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$156, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_182
# BB#177:                               # %land.lhs.true180.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$157, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_182
# BB#178:                               # %if.then184.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$158, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movw	%ax, port(%rip)
	jmp	.LBB0_250
.LBB0_179:                              # %cond.end248.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$159, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_182
# BB#180:                               # %land.lhs.true252.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$160, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_182
# BB#181:                               # %if.then256.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$161, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, dir(%rip)
	jmp	.LBB0_250
.LBB0_16:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$114, %eax
	jne	.LBB0_182
# BB#17:                                # %cond.end318.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$162, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_182
# BB#18:                                # %if.then322.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$163, %edi
	callq	_StraightTaint_log
	movb	$1, do_chroot(%rip)
	jmp	.LBB0_195
	.align	16, 0x90
.LBB0_182:                              # %cond.false377.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$164, %edi
	callq	_StraightTaint_log
	movl	$.L.str79, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_184
# BB#183:                               # %if.then385.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$165, %edi
	callq	_StraightTaint_log
	movb	$0, do_chroot(%rip)
	jmp	.LBB0_192
	.align	16, 0x90
.LBB0_184:                              # %if.then411.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$166, %edi
	callq	_StraightTaint_log
	movzbl	%bpl, %r14d
	cmpl	$115, %r14d
	jne	.LBB0_185
# BB#190:                               # %cond.end514.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$171, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_193
# BB#191:                               # %if.then518.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$172, %edi
	callq	_StraightTaint_log
	.align	16, 0x90
.LBB0_192:                              # %if.end1551.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, no_symlink_check(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
	.align	16, 0x90
.LBB0_185:                              # %if.then411.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$100, %r14d
	jne	.LBB0_193
# BB#186:                               # %if.then421.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$167, %edi
	callq	_StraightTaint_log
	movzbl	2(%rbx), %eax
	cmpl	$100, %eax
	jne	.LBB0_193
# BB#187:                               # %cond.end444.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$168, %edi
	callq	_StraightTaint_log
	cmpb	$0, 3(%rbx)
	jne	.LBB0_193
# BB#188:                               # %land.lhs.true448.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$169, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_193
# BB#189:                               # %if.then452.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$170, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, data_dir(%rip)
	jmp	.LBB0_250
	.align	16, 0x90
.LBB0_193:                              # %cond.false573.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$173, %edi
	callq	_StraightTaint_log
	movl	$.L.str82, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_196
# BB#194:                               # %if.then581.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$174, %edi
	callq	_StraightTaint_log
.LBB0_195:                              # %if.end1551.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, no_symlink_check(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_196:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$175, %edi
	callq	_StraightTaint_log
	movsbl	%bpl, %ebp
	cmpl	$115, %ebp
	jg	.LBB0_203
# BB#197:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$99, %r14d
	je	.LBB0_209
# BB#198:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$104, %r14d
	jne	.LBB0_199
# BB#215:                               # %cond.end850.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$185, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#216:                               # %land.lhs.true854.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$186, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_220
# BB#217:                               # %if.then858.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$187, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, hostname(%rip)
	jmp	.LBB0_250
.LBB0_203:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$116, %r14d
	je	.LBB0_212
# BB#204:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$118, %r14d
	jne	.LBB0_205
# BB#218:                               # %cond.end990.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$191, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#219:                               # %if.then994.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$192, %edi
	callq	_StraightTaint_log
	movb	$1, do_vhost(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_249:                              # %read_config.exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$155, %edi
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	fclose
	jmp	.LBB0_250
.LBB0_209:                              # %cond.end710.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$179, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#210:                               # %land.lhs.true714.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$180, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_220
# BB#211:                               # %if.then718.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$181, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, cgi_pattern(%rip)
	jmp	.LBB0_250
.LBB0_199:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$108, %r14d
	jne	.LBB0_220
# BB#200:                               # %cond.end920.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$188, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#201:                               # %land.lhs.true924.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$189, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_220
# BB#202:                               # %if.then928.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$190, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, logfile(%rip)
	jmp	.LBB0_250
.LBB0_212:                              # %cond.end780.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$182, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#213:                               # %land.lhs.true784.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$183, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_220
# BB#214:                               # %if.then788.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$184, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, throttlefile(%rip)
	jmp	.LBB0_250
.LBB0_205:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$117, %r14d
	jne	.LBB0_220
# BB#206:                               # %cond.end640.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$176, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_220
# BB#207:                               # %land.lhs.true644.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$177, %edi
	callq	_StraightTaint_log
	leal	1(%r15), %r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB0_220
# BB#208:                               # %if.then648.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$178, %edi
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, user(%rip)
	jmp	.LBB0_250
.LBB0_220:                              # %cond.false1049.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$193, %edi
	callq	_StraightTaint_log
	movl	$.L.str89, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_222
# BB#221:                               # %if.then1057.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$194, %edi
	callq	_StraightTaint_log
	movb	$0, do_vhost(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_222:                              # %if.then1083.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$195, %edi
	callq	_StraightTaint_log
	cmpl	$103, %r14d
	jne	.LBB0_225
# BB#223:                               # %cond.end1116.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$196, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_225
# BB#224:                               # %if.then1120.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$197, %edi
	callq	_StraightTaint_log
	movb	$1, do_global_passwd(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_225:                              # %cond.false1175.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$198, %edi
	callq	_StraightTaint_log
	movl	$.L.str91, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_227
# BB#226:                               # %if.then1183.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$199, %edi
	callq	_StraightTaint_log
	movb	$0, do_global_passwd(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_227:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$200, %edi
	callq	_StraightTaint_log
	cmpl	$104, %ebp
	jg	.LBB0_238
# BB#228:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$76, %ebp
	jg	.LBB0_232
# BB#229:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$68, %r14d
	jne	.LBB0_248
# BB#230:                               # %cond.end1523.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$213, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_248
# BB#231:                               # %if.then1527.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$214, %edi
	callq	_StraightTaint_log
	movb	$1, debug(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_238:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$105, %r14d
	jne	.LBB0_248
# BB#239:                               # %cond.end1242.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$201, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_248
# BB#240:                               # %land.lhs.true1246.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$202, %edi
	callq	_StraightTaint_log
	incl	%r15d
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB0_248
# BB#241:                               # %if.then1250.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$203, %edi
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, pidfile(%rip)
	movl	%r15d, %r13d
	.align	16, 0x90
.LBB0_250:                              # %if.end1551.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$216, %edi
	callq	_StraightTaint_log
	incl	%r13d
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	movl	%r13d, %r15d
	jl	.LBB0_2
	jmp	.LBB0_251
.LBB0_232:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$77, %r14d
	je	.LBB0_245
# BB#233:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$80, %r14d
	jne	.LBB0_234
# BB#242:                               # %cond.end1382.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$207, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_248
# BB#243:                               # %land.lhs.true1386.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$208, %edi
	callq	_StraightTaint_log
	incl	%r15d
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB0_248
# BB#244:                               # %if.then1390.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$209, %edi
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, p3p(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_245:                              # %cond.end1452.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$210, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_248
# BB#246:                               # %land.lhs.true1456.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$211, %edi
	callq	_StraightTaint_log
	incl	%r15d
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB0_248
# BB#247:                               # %if.then1460.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$212, %edi
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, max_age(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
.LBB0_234:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$84, %r14d
	jne	.LBB0_248
# BB#235:                               # %cond.end1312.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$204, %edi
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB0_248
# BB#236:                               # %land.lhs.true1316.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$205, %edi
	callq	_StraightTaint_log
	incl	%r15d
	cmpl	120(%rsp), %r15d        # 4-byte Folded Reload
	jge	.LBB0_248
# BB#237:                               # %if.then1320.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$206, %edi
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, charset(%rip)
	movl	%r15d, %r13d
	jmp	.LBB0_250
	.align	16, 0x90
.LBB0_2:                                # %land.rhs.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
                                        #       Child Loop BB0_28 Depth 3
                                        #         Child Loop BB0_29 Depth 4
	movl	$3, %edi
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movzbl	(%rbx), %eax
	cmpl	$45, %eax
	je	.LBB0_4
# BB#3:
	movl	%r15d, %r13d
.LBB0_251:                              # %while.end.i
	movl	$217, %edi
	callq	_StraightTaint_log
	cmpl	120(%rsp), %r13d        # 4-byte Folded Reload
	jne	.LBB0_527
# BB#252:                               # %parse_args.exit
	movl	$219, %edi
	callq	_StraightTaint_log
	callq	tzset
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 4544(%rsp)
	movaps	%xmm0, 4528(%rsp)
	movaps	%xmm0, 4512(%rsp)
	movl	$1, 4512(%rsp)
	movl	$1, 4520(%rsp)
	movzwl	port(%rip), %ecx
	xorl	%r14d, %r14d
	leaq	14544(%rsp), %rbx
	movl	$10, %esi
	movl	$.L.str66, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	movq	hostname(%rip), %rdi
	leaq	4512(%rsp), %rdx
	leaq	14512(%rsp), %rcx
	movq	%rbx, %rsi
	callq	getaddrinfo
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB0_528
# BB#253:                               # %for.cond.preheader.i
	movl	$220, %edi
	callq	_StraightTaint_log
	movq	14512(%rsp), %r15
	testq	%r15, %r15
	movl	$0, %r12d
	je	.LBB0_270
# BB#254:
	movq	%r15, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_255:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$222, %edi
	callq	_StraightTaint_log
	movl	4(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB0_256
# BB#258:                               # %sw.bb14.i
                                        #   in Loop: Header=BB0_255 Depth=1
	movl	$224, %edi
	callq	_StraightTaint_log
	testq	%r14, %r14
	cmoveq	%rbx, %r14
	jmp	.LBB0_259
	.align	16, 0x90
.LBB0_256:                              # %for.body.i
                                        #   in Loop: Header=BB0_255 Depth=1
	cmpl	$10, %eax
	jne	.LBB0_259
# BB#257:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_255 Depth=1
	movl	$223, %edi
	callq	_StraightTaint_log
	testq	%rbp, %rbp
	cmoveq	%rbx, %rbp
.LBB0_259:                              # %for.inc.i
                                        #   in Loop: Header=BB0_255 Depth=1
	movl	$225, %edi
	callq	_StraightTaint_log
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_255
# BB#260:                               # %for.end.i
	movl	$226, %edi
	callq	_StraightTaint_log
	xorl	%r12d, %r12d
	testq	%rbp, %rbp
	movl	$0, %ebx
	je	.LBB0_265
# BB#261:                               # %if.else.i
	movl	$227, %edi
	callq	_StraightTaint_log
	movl	16(%rbp), %ebx
	cmpq	$129, %rbx
	jae	.LBB0_262
# BB#264:                               # %if.end28.i
	movl	$229, %edi
	callq	_StraightTaint_log
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movq	24(%rbp), %rsi
	movl	16(%rbp), %edx
	leaq	144(%rsp), %rdi
	callq	memmove
	movl	$1, %ebx
.LBB0_265:                              # %if.end31.i
	movl	$230, %edi
	callq	_StraightTaint_log
	testq	%r14, %r14
	je	.LBB0_269
# BB#266:                               # %if.else35.i
	movl	$231, %edi
	callq	_StraightTaint_log
	movl	16(%r14), %ebp
	cmpq	$129, %rbp
	jae	.LBB0_267
# BB#268:                               # %if.end43.i
	movl	$233, %edi
	callq	_StraightTaint_log
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movq	24(%r14), %rsi
	movl	16(%r14), %edx
	leaq	272(%rsp), %rdi
	callq	memmove
	movl	$1, %r12d
.LBB0_269:                              # %lookup_hostname.exit
	movl	%ebx, %r14d
.LBB0_270:                              # %lookup_hostname.exit
	movl	$234, %edi
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	freeaddrinfo
	movl	%r12d, %eax
	orl	%r14d, %eax
	je	.LBB0_271
# BB#272:                               # %if.end4
	movl	$236, %edi
	callq	_StraightTaint_log
	movl	$0, numthrottles(%rip)
	movl	$0, maxthrottles(%rip)
	movq	$0, throttles(%rip)
	movq	throttlefile(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_294
# BB#273:                               # %if.then6
	movl	%r12d, 120(%rsp)        # 4-byte Spill
	movl	$237, %edi
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str56, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB0_274
# BB#275:                               # %if.end.i
	movq	%rbx, 112(%rsp)         # 8-byte Spill
	movl	$239, %edi
	callq	_StraightTaint_log
	leaq	14512(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	leaq	4512(%rsp), %rdi
	movl	$5000, %esi             # imm = 0x1388
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_293
# BB#276:                               # %while.body.lr.ph.i
	movl	$240, %edi
	callq	_StraightTaint_log
	leaq	4512(%rsp), %r13
	leaq	14544(%rsp), %rbp
	jmp	.LBB0_277
.LBB0_291:                              # %if.else55.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$251, %edi
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str59, %esi
	xorl	%eax, %eax
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%r13, %rcx
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str60, %esi
	xorl	%eax, %eax
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	fprintf
	jmp	.LBB0_292
	.align	16, 0x90
.LBB0_277:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_281 Depth 2
                                        #     Child Loop BB0_298 Depth 2
	movl	$241, %edi
	callq	_StraightTaint_log
	movl	$35, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_279
# BB#278:                               # %if.then7.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$242, %edi
	callq	_StraightTaint_log
	movb	$0, (%rbx)
.LBB0_279:                              # %if.end8.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$243, %edi
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r15
	testl	%r15d, %r15d
	jle	.LBB0_284
# BB#280:                               # %land.rhs.lr.ph.i598
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$244, %edi
	callq	_StraightTaint_log
	movl	%r15d, %ebx
	movslq	%r15d, %r15
.LBB0_281:                              # %land.rhs.i600
                                        #   Parent Loop BB0_277 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$245, %edi
	callq	_StraightTaint_log
	movzbl	4511(%rsp,%r15), %eax
	cmpq	$32, %rax
	ja	.LBB0_284
# BB#282:                               # %land.rhs.i600
                                        #   in Loop: Header=BB0_281 Depth=2
	movabsq	$4294977024, %rcx       # imm = 0x100002600
	btq	%rax, %rcx
	jae	.LBB0_284
# BB#283:                               # %while.body36.i
                                        #   in Loop: Header=BB0_281 Depth=2
	movl	$246, %edi
	callq	_StraightTaint_log
	movb	$0, 4511(%rsp,%r15)
	leaq	-1(%r15), %r15
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB0_281
	.align	16, 0x90
.LBB0_284:                              # %while.end.i601
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$247, %edi
	callq	_StraightTaint_log
	testl	%r15d, %r15d
	je	.LBB0_292
# BB#285:                               # %if.end42.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$248, %edi
	callq	_StraightTaint_log
	movl	$.L.str57, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%rbp, %rdx
	leaq	14528(%rsp), %rcx
	leaq	14536(%rsp), %r8
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB0_288
# BB#286:                               # %if.else.i602
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$249, %edi
	callq	_StraightTaint_log
	movl	$.L.str58, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%rbp, %rdx
	leaq	14536(%rsp), %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB0_291
# BB#287:                               # %if.then54.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$250, %edi
	callq	_StraightTaint_log
	movq	$0, 14528(%rsp)
.LBB0_288:                              # %if.end60.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$253, %edi
	callq	_StraightTaint_log
	movzbl	14544(%rsp), %eax
	cmpl	$47, %eax
	jne	.LBB0_290
# BB#289:                               # %if.then65.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$254, %edi
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	leaq	14545(%rsp), %rsi
	callq	strcpy
.LBB0_290:                              # %while.cond70.preheader.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$255, %edi
	callq	_StraightTaint_log
	jmp	.LBB0_298
	.align	16, 0x90
.LBB0_297:                              # %while.body75.i
                                        #   in Loop: Header=BB0_298 Depth=2
	movl	$256, %edi              # imm = 0x100
	callq	_StraightTaint_log
	leaq	1(%rbx), %rdi
	addq	$2, %rbx
	movq	%rbx, %rsi
	callq	strcpy
.LBB0_298:                              # %while.body75.i
                                        #   Parent Loop BB0_277 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str61, %esi
	movq	%rbp, %rdi
	callq	strstr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB0_297
# BB#299:                               # %while.end78.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$257, %edi              # imm = 0x101
	callq	_StraightTaint_log
	movl	numthrottles(%rip), %eax
	movl	maxthrottles(%rip), %ebx
	cmpl	%ebx, %eax
	jl	.LBB0_305
# BB#300:                               # %if.then81.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$258, %edi              # imm = 0x102
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jne	.LBB0_302
# BB#301:                               # %if.then84.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$259, %edi              # imm = 0x103
	callq	_StraightTaint_log
	movl	$100, maxthrottles(%rip)
	movl	$4800, %edi             # imm = 0x12C0
	callq	malloc
	jmp	.LBB0_303
.LBB0_302:                              # %if.else87.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$260, %edi              # imm = 0x104
	callq	_StraightTaint_log
	addl	%ebx, %ebx
	movl	%ebx, maxthrottles(%rip)
	movq	throttles(%rip), %rdi
	movslq	%ebx, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
.LBB0_303:                              # %if.end92.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movq	%rax, %rbx
	movl	$261, %edi              # imm = 0x105
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	movq	%rbx, throttles(%rip)
	je	.LBB0_304
.LBB0_305:                              # %if.end98.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$263, %edi              # imm = 0x107
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_306
# BB#307:                               # %e_strdup.exit.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$265, %edi              # imm = 0x109
	callq	_StraightTaint_log
	movslq	numthrottles(%rip), %rax
	movq	throttles(%rip), %rcx
	movq	%rax, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	%rbx, (%rcx,%rdx)
	movq	14536(%rsp), %rcx
	movq	throttles(%rip), %rsi
	movq	%rcx, 8(%rsi,%rdx)
	movq	14528(%rsp), %rcx
	movq	%rcx, 16(%rsi,%rdx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rsi,%rdx)
	movl	$0, 40(%rsi,%rdx)
	leal	1(%rax), %eax
	movl	%eax, numthrottles(%rip)
.LBB0_292:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_277 Depth=1
	movl	$252, %edi
	callq	_StraightTaint_log
	movl	$5000, %esi             # imm = 0x1388
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB0_277
.LBB0_293:                              # %read_throttlefile.exit
	movl	$266, %edi              # imm = 0x10A
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	fclose
	movl	120(%rsp), %r12d        # 4-byte Reload
.LBB0_294:                              # %if.end7
	movl	$267, %edi              # imm = 0x10B
	callq	_StraightTaint_log
	callq	getuid
	testl	%eax, %eax
	movl	$32767, %r15d           # imm = 0x7FFF
	movl	$32767, %eax            # imm = 0x7FFF
	jne	.LBB0_309
# BB#295:                               # %if.then10
	movl	$268, %edi              # imm = 0x10C
	callq	_StraightTaint_log
	movq	user(%rip), %rdi
	callq	getpwnam
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_296
# BB#308:                               # %if.end15
	movl	$270, %edi              # imm = 0x10E
	callq	_StraightTaint_log
	movl	16(%rbx), %eax
	movl	20(%rbx), %r15d
.LBB0_309:                              # %if.end16
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	$271, %edi              # imm = 0x10F
	callq	_StraightTaint_log
	movq	logfile(%rip), %rbp
	xorl	%r13d, %r13d
	testq	%rbp, %rbp
	je	.LBB0_322
# BB#310:                               # %cond.false
	movl	$272, %edi              # imm = 0x110
	callq	_StraightTaint_log
	movl	$.L.str4, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_311
# BB#312:                               # %cond.true71
	movl	$274, %edi              # imm = 0x112
	callq	_StraightTaint_log
	movzbl	(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB0_315
# BB#313:                               # %cond.end116
	movl	$275, %edi              # imm = 0x113
	callq	_StraightTaint_log
	cmpb	$0, 1(%rbp)
	je	.LBB0_314
.LBB0_315:                              # %if.else121
	movl	$277, %edi              # imm = 0x115
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str6, %esi
	movq	%rbp, %rdi
	callq	fopen
	movq	%rax, %r13
	testq	%r13, %r13
	movq	logfile(%rip), %rbx
	je	.LBB0_316
# BB#317:                               # %if.end126
	movl	$279, %edi              # imm = 0x117
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$47, %eax
	jne	.LBB0_318
.LBB0_319:                              # %if.end133
	movl	$281, %edi              # imm = 0x119
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	fileno
	movl	%eax, %ecx
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ecx, %edi
	callq	fcntl
	callq	getuid
	testl	%eax, %eax
	jne	.LBB0_322
# BB#320:                               # %if.then139
	movl	$282, %edi              # imm = 0x11A
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	fileno
	movl	%eax, %edi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r15d, %edx
	callq	fchown
	testl	%eax, %eax
	jns	.LBB0_322
# BB#321:                               # %if.then144
	movl	$283, %edi              # imm = 0x11B
	callq	_StraightTaint_log
	movl	$4, %edi
	movl	$.L.str10, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str11, %edi
	callq	perror
	jmp	.LBB0_322
.LBB0_311:                              # %if.then61
	movl	$273, %edi              # imm = 0x111
	callq	_StraightTaint_log
	movb	$1, no_log(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB0_322
.LBB0_314:                              # %if.then120
	movl	$276, %edi              # imm = 0x114
	callq	_StraightTaint_log
	movq	stdout(%rip), %r13
.LBB0_322:                              # %if.end150
	movl	$284, %edi              # imm = 0x11C
	callq	_StraightTaint_log
	movq	dir(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_325
# BB#323:                               # %if.then153
	movl	$285, %edi              # imm = 0x11D
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_324
.LBB0_325:                              # %if.end159
	movl	$287, %edi              # imm = 0x11F
	callq	_StraightTaint_log
	leaq	400(%rsp), %rbx
	movl	$4096, %esi             # imm = 0x1000
	movq	%rbx, %rdi
	callq	getcwd
	movq	%rbx, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$47, %eax
	je	.LBB0_327
# BB#326:                               # %if.then168
	movl	$288, %edi              # imm = 0x120
	callq	_StraightTaint_log
	leaq	400(%rsp), %rdi
	callq	strlen
	movw	$47, 400(%rsp,%rax)
.LBB0_327:                              # %if.end171
	movl	$289, %edi              # imm = 0x121
	callq	_StraightTaint_log
	movb	debug(%rip), %al
	testb	%al, %al
	je	.LBB0_328
# BB#332:                               # %if.else186
	movl	$294, %edi              # imm = 0x126
	callq	_StraightTaint_log
	callq	setsid
	jmp	.LBB0_333
.LBB0_328:                              # %if.then173
	movl	$290, %edi              # imm = 0x122
	callq	_StraightTaint_log
	movq	stdin(%rip), %rdi
	callq	fclose
	movq	stdout(%rip), %rbx
	cmpq	%rbx, %r13
	je	.LBB0_330
# BB#329:                               # %if.then177
	movl	$291, %edi              # imm = 0x123
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	fclose
.LBB0_330:                              # %if.end179
	movl	$292, %edi              # imm = 0x124
	callq	_StraightTaint_log
	movq	stderr(%rip), %rdi
	callq	fclose
	movl	$1, %edi
	movl	$1, %esi
	callq	daemon
	testl	%eax, %eax
	js	.LBB0_331
.LBB0_333:                              # %if.end188
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movl	%r15d, 112(%rsp)        # 4-byte Spill
	movl	$295, %edi              # imm = 0x127
	callq	_StraightTaint_log
	movq	pidfile(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB0_336
# BB#334:                               # %if.then191
	movl	$296, %edi              # imm = 0x128
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str16, %esi
	movq	%rbp, %rdi
	callq	fopen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_529
# BB#335:                               # %if.end197
	movl	$298, %edi              # imm = 0x12A
	callq	_StraightTaint_log
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str17, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ecx, %edx
	callq	fprintf
	movq	%rbp, %rdi
	callq	fclose
.LBB0_336:                              # %if.end201
	movl	$299, %edi              # imm = 0x12B
	callq	_StraightTaint_log
	callq	fdwatch_get_nfiles
	movl	%eax, %ebx
	testl	%ebx, %ebx
	movl	%ebx, max_connects(%rip)
	js	.LBB0_337
# BB#338:                               # %if.end206
	movl	$301, %edi              # imm = 0x12D
	callq	_StraightTaint_log
	addl	$-10, %ebx
	movl	%ebx, max_connects(%rip)
	movzbl	do_chroot(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB0_349
# BB#339:                               # %if.then209
	movl	$302, %edi              # imm = 0x12E
	callq	_StraightTaint_log
	leaq	400(%rsp), %rdi
	callq	chroot
	testl	%eax, %eax
	js	.LBB0_340
# BB#341:                               # %if.end215
	movl	$304, %edi              # imm = 0x130
	callq	_StraightTaint_log
	movq	logfile(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB0_347
# BB#342:                               # %cond.true227
	movl	$305, %edi              # imm = 0x131
	callq	_StraightTaint_log
	movzbl	(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB0_344
# BB#343:                               # %cond.end272
	movl	$306, %edi              # imm = 0x132
	callq	_StraightTaint_log
	cmpb	$0, 1(%rbp)
	je	.LBB0_347
.LBB0_344:                              # %if.then276
	movl	$307, %edi              # imm = 0x133
	callq	_StraightTaint_log
	leaq	400(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_346
# BB#345:                               # %if.then283
	movl	$308, %edi              # imm = 0x134
	callq	_StraightTaint_log
	leaq	-1(%rbx,%rbp), %rsi
	movq	%rbp, %rdi
	callq	strcpy
.LBB0_347:                              # %if.end292
	movl	$310, %edi              # imm = 0x136
	callq	_StraightTaint_log
	movw	$47, 400(%rsp)
	leaq	400(%rsp), %rdi
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_348
.LBB0_349:                              # %if.end301
	movl	$312, %edi              # imm = 0x138
	callq	_StraightTaint_log
	movq	data_dir(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_352
# BB#350:                               # %if.then304
	movl	$313, %edi              # imm = 0x139
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_351
.LBB0_352:                              # %if.end310
	movl	$315, %edi              # imm = 0x13B
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$15, %edi
	movl	$handle_term, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$2, %edi
	movl	$handle_term, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$17, %edi
	movl	$handle_chld, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$13, %edi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$1, %edi
	movl	$handle_hup, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$10, %edi
	movl	$handle_usr1, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$12, %edi
	movl	$handle_usr2, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$14, %edi
	movl	$handle_alrm, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$0, got_hup(%rip)
	movl	$0, got_usr1(%rip)
	movl	$0, watchdog_flag(%rip)
	movl	$360, %edi              # imm = 0x168
	callq	alarm
	callq	tmr_init
	movq	hostname(%rip), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	leaq	272(%rsp), %rsi
	cmoveq	%rbx, %rsi
	testl	%r14d, %r14d
	leaq	144(%rsp), %rdx
	cmoveq	%rbx, %rdx
	movq	cgi_pattern(%rip), %r8
	movl	cgi_limit(%rip), %r9d
	movq	charset(%rip), %rdi
	movq	p3p(%rip), %r11
	movl	max_age(%rip), %r14d
	movzbl	no_log(%rip), %r15d
	movl	no_symlink_check(%rip), %ebp
	movzbl	do_vhost(%rip), %ebx
	movzbl	do_global_passwd(%rip), %ecx
	movq	url_pattern(%rip), %r12
	movq	local_pattern(%rip), %r13
	movzbl	no_empty_referers(%rip), %eax
	movzwl	port(%rip), %r10d
	movl	%eax, 88(%rsp)
	movq	%r13, 80(%rsp)
	movq	%r12, 72(%rsp)
	movl	%ecx, 64(%rsp)
	movl	%ebx, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	%r15d, 32(%rsp)
	leaq	400(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%rdi, (%rsp)
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%r10d, %ecx
	callq	httpd_initialize
	testq	%rax, %rax
	movq	%rax, hs(%rip)
	je	.LBB0_530
# BB#353:                               # %if.end335
	movl	$317, %edi              # imm = 0x13D
	callq	_StraightTaint_log
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$occasional, %esi
	movl	$120000, %ecx           # imm = 0x1D4C0
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	movl	112(%rsp), %ebx         # 4-byte Reload
	je	.LBB0_354
# BB#355:                               # %if.end340
	movl	$319, %edi              # imm = 0x13F
	callq	_StraightTaint_log
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$idle, %esi
	movl	$5000, %ecx             # imm = 0x1388
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_356
# BB#357:                               # %if.end345
	movl	$321, %edi              # imm = 0x141
	callq	_StraightTaint_log
	cmpl	$0, numthrottles(%rip)
	jle	.LBB0_360
# BB#358:                               # %if.then348
	movl	$322, %edi              # imm = 0x142
	callq	_StraightTaint_log
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$update_throttles, %esi
	movl	$2000, %ecx             # imm = 0x7D0
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_359
.LBB0_360:                              # %if.end354
	movl	$324, %edi              # imm = 0x144
	callq	_StraightTaint_log
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$show_stats, %esi
	movl	$3600000, %ecx          # imm = 0x36EE80
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_361
# BB#362:                               # %if.end359
	movl	$326, %edi              # imm = 0x146
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
	movq	%rax, stats_time(%rip)
	movq	%rax, start_time(%rip)
	movq	$0, stats_connections(%rip)
	movq	$0, stats_bytes(%rip)
	movl	$0, stats_simultaneous(%rip)
	callq	getuid
	testl	%eax, %eax
	jne	.LBB0_373
# BB#363:                               # %if.then364
	movl	$327, %edi              # imm = 0x147
	callq	_StraightTaint_log
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	setgroups
	testl	%eax, %eax
	js	.LBB0_364
# BB#365:                               # %if.end369
	movl	$329, %edi              # imm = 0x149
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	setgid
	testl	%eax, %eax
	js	.LBB0_366
# BB#367:                               # %if.end374
	movl	$331, %edi              # imm = 0x14B
	callq	_StraightTaint_log
	movq	user(%rip), %rdi
	movl	%ebx, %esi
	callq	initgroups
	testl	%eax, %eax
	jns	.LBB0_369
# BB#368:                               # %if.then378
	movl	$332, %edi              # imm = 0x14C
	callq	_StraightTaint_log
	movl	$4, %edi
	movl	$.L.str33, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_369:                              # %if.end379
	movl	$333, %edi              # imm = 0x14D
	callq	_StraightTaint_log
	movl	96(%rsp), %edi          # 4-byte Reload
	callq	setuid
	testl	%eax, %eax
	js	.LBB0_370
# BB#371:                               # %if.end384
	movl	$335, %edi              # imm = 0x14F
	callq	_StraightTaint_log
	movb	do_chroot(%rip), %al
	testb	%al, %al
	jne	.LBB0_373
# BB#372:                               # %if.then386
	movl	$336, %edi              # imm = 0x150
	callq	_StraightTaint_log
	movl	$4, %edi
	movl	$.L.str35, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_373:                              # %if.end388
	movl	$337, %edi              # imm = 0x151
	callq	_StraightTaint_log
	movslq	max_connects(%rip), %r14
	movq	%r14, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,8), %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	movq	%r15, connects(%rip)
	je	.LBB0_531
# BB#374:                               # %for.cond.preheader
	movl	$338, %edi              # imm = 0x152
	callq	_StraightTaint_log
	movl	$8, %ebp
	testl	%r14d, %r14d
	jle	.LBB0_377
# BB#375:
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_376:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$340, %edi              # imm = 0x154
	callq	_StraightTaint_log
	movl	$0, -8(%r15,%rbp)
	incl	%ebx
	movl	%ebx, -4(%r15,%rbp)
	movq	$0, (%r15,%rbp)
	movl	max_connects(%rip), %r14d
	addq	$144, %rbp
	cmpl	%r14d, %ebx
	movq	connects(%rip), %r15
	jl	.LBB0_376
.LBB0_377:                              # %for.end
	movl	$341, %edi              # imm = 0x155
	callq	_StraightTaint_log
	decl	%r14d
	movslq	%r14d, %rax
	leaq	(%rax,%rax,8), %rax
	shlq	$4, %rax
	movl	$-1, 4(%r15,%rax)
	movl	$0, first_free_connect(%rip)
	movl	$0, num_connects(%rip)
	movl	$0, httpd_conn_count(%rip)
	movq	hs(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB0_382
# BB#378:                               # %if.then409
	movl	$342, %edi              # imm = 0x156
	callq	_StraightTaint_log
	movl	72(%rbp), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_380
# BB#379:                               # %if.then412
	movl	$343, %edi              # imm = 0x157
	callq	_StraightTaint_log
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %edi
	callq	fdwatch_add_fd
	movq	hs(%rip), %rbp
.LBB0_380:                              # %if.end414
	movl	$344, %edi              # imm = 0x158
	callq	_StraightTaint_log
	movl	76(%rbp), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_382
# BB#381:                               # %if.then417
	movl	$345, %edi              # imm = 0x159
	callq	_StraightTaint_log
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %edi
	callq	fdwatch_add_fd
.LBB0_382:                              # %if.end420
	movl	$346, %edi              # imm = 0x15A
	callq	_StraightTaint_log
	leaq	128(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cmpl	$0, terminate(%rip)
	jne	.LBB0_383
.LBB0_384:                              # %while.body.lr.ph
	movl	$347, %edi              # imm = 0x15B
	callq	_StraightTaint_log
	leaq	128(%rsp), %r12
	leaq	19584(%rsp), %r15
	.align	16, 0x90
.LBB0_385:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_411 Depth 2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_465 Depth 3
                                        #       Child Loop BB0_499 Depth 3
	movl	$348, %edi              # imm = 0x15C
	callq	_StraightTaint_log
	cmpl	$0, got_hup(%rip)
	je	.LBB0_394
# BB#386:                               # %if.then426
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$349, %edi              # imm = 0x15D
	callq	_StraightTaint_log
	cmpq	$0, hs(%rip)
	setne	%al
	movq	logfile(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_393
# BB#387:                               # %if.then426
                                        #   in Loop: Header=BB0_385 Depth=1
	movb	no_log(%rip), %cl
	notb	%cl
	andb	%al, %cl
	je	.LBB0_393
# BB#388:                               # %cond.true.i
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$350, %edi              # imm = 0x15E
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$45, %eax
	jne	.LBB0_390
# BB#389:                               # %cond.end.i612
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$351, %edi              # imm = 0x15F
	callq	_StraightTaint_log
	cmpb	$0, 1(%rbx)
	je	.LBB0_393
.LBB0_390:                              # %if.then43.i
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$352, %edi              # imm = 0x160
	callq	_StraightTaint_log
	movl	$5, %edi
	movl	$.L.str128, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	logfile(%rip), %rbx
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str6, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB0_392
# BB#391:                               # %if.then47.i
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$353, %edi              # imm = 0x161
	callq	_StraightTaint_log
	movq	logfile(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str129, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB0_393
.LBB0_392:                              # %if.end48.i
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$354, %edi              # imm = 0x162
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	fileno
	movl	%eax, %ecx
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ecx, %edi
	callq	fcntl
	movq	hs(%rip), %rdi
	movq	%rbx, %rsi
	callq	httpd_set_logfp
	.align	16, 0x90
.LBB0_393:                              # %re_open_logfile.exit
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$355, %edi              # imm = 0x163
	callq	_StraightTaint_log
	movl	$0, got_hup(%rip)
.LBB0_394:                              # %if.end427
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$356, %edi              # imm = 0x164
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	tmr_mstimeout
	movq	%rax, %rdi
	callq	fdwatch
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB0_398
# BB#395:                               # %if.then432
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$357, %edi              # imm = 0x165
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_400
# BB#396:                               # %if.then432
                                        #   in Loop: Header=BB0_385 Depth=1
	cmpl	$11, %eax
	je	.LBB0_400
	jmp	.LBB0_397
	.align	16, 0x90
.LBB0_398:                              # %if.end442
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$359, %edi              # imm = 0x167
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gettimeofday
	testl	%ebx, %ebx
	jne	.LBB0_403
# BB#399:                               # %if.then446
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$360, %edi              # imm = 0x168
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	tmr_run
	jmp	.LBB0_400
	.align	16, 0x90
.LBB0_403:                              # %if.end447
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$362, %edi              # imm = 0x16A
	callq	_StraightTaint_log
	movq	hs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_411
# BB#404:                               # %land.lhs.true450
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$363, %edi              # imm = 0x16B
	callq	_StraightTaint_log
	movl	76(%rbx), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_407
# BB#405:                               # %land.lhs.true454
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$364, %edi              # imm = 0x16C
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	fdwatch_check_fd
	testl	%eax, %eax
	je	.LBB0_407
# BB#406:                               # %if.then458
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$365, %edi              # imm = 0x16D
	callq	_StraightTaint_log
	movq	hs(%rip), %rax
	movl	76(%rax), %esi
	movq	%r12, %rdi
	callq	handle_newconnect
	testl	%eax, %eax
	jne	.LBB0_400
.LBB0_407:                              # %if.end464
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$366, %edi              # imm = 0x16E
	callq	_StraightTaint_log
	movq	hs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_411
# BB#408:                               # %land.lhs.true467
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$367, %edi              # imm = 0x16F
	callq	_StraightTaint_log
	movl	72(%rbx), %ebx
	cmpl	$-1, %ebx
	je	.LBB0_411
# BB#409:                               # %land.lhs.true471
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$368, %edi              # imm = 0x170
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	fdwatch_check_fd
	testl	%eax, %eax
	je	.LBB0_411
# BB#410:                               # %if.then475
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$369, %edi              # imm = 0x171
	callq	_StraightTaint_log
	movq	hs(%rip), %rax
	movl	72(%rax), %esi
	movq	%r12, %rdi
	callq	handle_newconnect
	testl	%eax, %eax
	jne	.LBB0_400
	jmp	.LBB0_411
.LBB0_416:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	clear_connection
	.align	16, 0x90
.LBB0_411:                              # %while.cond482
                                        #   Parent Loop BB0_385 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_441 Depth 3
                                        #       Child Loop BB0_465 Depth 3
                                        #       Child Loop BB0_499 Depth 3
	movl	$370, %edi              # imm = 0x172
	callq	_StraightTaint_log
	callq	fdwatch_get_next_client_data
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_411
# BB#412:                               # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpq	$-1, %rbp
	je	.LBB0_519
# BB#413:                               # %if.end490
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$371, %edi              # imm = 0x173
	callq	_StraightTaint_log
	movq	8(%rbp), %rax
	movl	704(%rax), %edi
	callq	fdwatch_check_fd
	testl	%eax, %eax
	jne	.LBB0_417
# BB#414:                               # %if.then494
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$372, %edi              # imm = 0x174
.LBB0_415:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	callq	_StraightTaint_log
	jmp	.LBB0_416
.LBB0_417:                              # %if.else495
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$373, %edi              # imm = 0x175
	callq	_StraightTaint_log
	movl	(%rbp), %eax
	cmpl	$4, %eax
	je	.LBB0_514
# BB#418:                               # %if.else495
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_419
# BB#470:                               # %sw.bb497
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$417, %edi              # imm = 0x1A1
	callq	_StraightTaint_log
	movq	8(%rbp), %r13
	movq	64(%rbp), %r14
	cmpq	$-1, %r14
	movl	$1000000000, %ebx       # imm = 0x3B9ACA00
	je	.LBB0_472
# BB#471:                               # %if.else.i644
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$418, %edi              # imm = 0x1A2
	callq	_StraightTaint_log
	movq	%r14, %rbx
	sarq	$63, %rbx
	shrq	$62, %rbx
	addq	%r14, %rbx
	sarq	$2, %rbx
.LBB0_472:                              # %if.end.i646
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$419, %edi              # imm = 0x1A3
	callq	_StraightTaint_log
	movq	472(%r13), %r14
	testq	%r14, %r14
	jne	.LBB0_474
# BB#473:                               # %if.then4.i655
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$420, %edi              # imm = 0x1A4
	callq	_StraightTaint_log
	movl	704(%r13), %edi
	movq	128(%rbp), %rdx
	movq	136(%rbp), %rsi
	subq	%rsi, %rdx
	addq	712(%r13), %rsi
	cmpq	%rbx, %rdx
	cmovaeq	%rbx, %rdx
	callq	write
	jmp	.LBB0_475
.LBB0_514:                              # %sw.bb498
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$450, %edi              # imm = 0x1C2
	callq	_StraightTaint_log
	movq	8(%rbp), %rax
	movl	704(%rax), %edi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r15, %rsi
	callq	read
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB0_517
# BB#515:                               # %land.lhs.true.i680
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$451, %edi              # imm = 0x1C3
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_411
# BB#516:                               # %land.lhs.true.i680
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$11, %eax
	jne	.LBB0_518
	jmp	.LBB0_411
.LBB0_419:                              # %if.else495
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$1, %eax
	jne	.LBB0_411
# BB#420:                               # %sw.bb
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%r15, %r14
	movl	$374, %edi              # imm = 0x176
	callq	_StraightTaint_log
	movq	8(%rbp), %r13
	movq	152(%r13), %rbx
	movq	160(%r13), %r15
	cmpq	%rbx, %r15
	jae	.LBB0_422
# BB#421:                               # %entry.if.end7_crit_edge.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$375, %edi              # imm = 0x177
	callq	_StraightTaint_log
	jmp	.LBB0_426
.LBB0_474:                              # %if.else10.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$421, %edi              # imm = 0x1A5
	callq	_StraightTaint_log
	movq	368(%r13), %rax
	movq	%rax, 19552(%rsp)
	movq	%r14, 19560(%rsp)
	movq	136(%rbp), %rax
	movq	712(%r13), %rcx
	addq	%rax, %rcx
	movq	%rcx, 19568(%rsp)
	movq	128(%rbp), %rcx
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	cmovaeq	%rbx, %rcx
	movq	%rcx, 19576(%rsp)
	movl	704(%r13), %edi
	movl	$2, %edx
	leaq	19552(%rsp), %rsi
	callq	writev
.LBB0_475:                              # %if.end36.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%rax, %rbx
	movl	$422, %edi              # imm = 0x1A6
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jns	.LBB0_482
# BB#476:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$423, %edi              # imm = 0x1A7
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$103, %eax
	jg	.LBB0_481
# BB#477:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$31, %eax
	jg	.LBB0_489
# BB#478:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$4, %eax
	je	.LBB0_411
# BB#479:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$11, %eax
	je	.LBB0_483
# BB#480:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$22, %eax
	jne	.LBB0_490
	jmp	.LBB0_491
.LBB0_517:                              # %if.end.i681
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$452, %edi              # imm = 0x1C4
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jg	.LBB0_411
.LBB0_518:                              # %if.then10.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$453, %edi              # imm = 0x1C5
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	really_clear_connection
	jmp	.LBB0_411
.LBB0_482:                              # %if.end43.i657
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$424, %edi              # imm = 0x1A8
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jne	.LBB0_492
.LBB0_483:                              # %if.then56.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$425, %edi              # imm = 0x1A9
	callq	_StraightTaint_log
	addq	$100, 112(%rbp)
	movl	$3, (%rbp)
	movl	704(%r13), %edi
	callq	fdwatch_del_fd
	cmpq	$0, 96(%rbp)
	je	.LBB0_485
# BB#484:                               # %if.then60.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$426, %edi              # imm = 0x1AA
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str49, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_485:                              # %if.end61.i661
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$427, %edi              # imm = 0x1AB
	callq	_StraightTaint_log
	movq	112(%rbp), %rcx
	movl	$wakeup_connection, %esi
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 96(%rbp)
	jne	.LBB0_411
	jmp	.LBB0_486
.LBB0_481:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$104, %eax
	jne	.LBB0_490
	jmp	.LBB0_491
.LBB0_492:                              # %if.end87.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$431, %edi              # imm = 0x1AF
	callq	_StraightTaint_log
	movq	128(%rsp), %rax
	movq	%rax, 88(%rbp)
	movq	472(%r13), %r12
	testq	%r12, %r12
	je	.LBB0_496
# BB#493:                               # %if.then91.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$432, %edi              # imm = 0x1B0
	callq	_StraightTaint_log
	movslq	%ebx, %r15
	movq	%r15, %rbx
	subq	%r12, %rbx
	jae	.LBB0_495
# BB#494:                               # %if.then96.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$433, %edi              # imm = 0x1B1
	callq	_StraightTaint_log
	subl	%r15d, %r12d
	movq	368(%r13), %rdi
	addq	%rdi, %r15
	movslq	%r12d, %rbx
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	%rbx, 472(%r13)
	movq	%r13, 104(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB0_497
.LBB0_489:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$32, %eax
	je	.LBB0_491
.LBB0_490:                              # %if.then85.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$429, %edi              # imm = 0x1AD
	callq	_StraightTaint_log
	movq	208(%r13), %rdx
	movl	$3, %edi
	movl	$.L.str51, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_491:                              # %if.end86.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$430, %edi              # imm = 0x1AE
	jmp	.LBB0_415
.LBB0_422:                              # %if.then.i615
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$376, %edi              # imm = 0x178
	callq	_StraightTaint_log
	cmpq	$5001, %rbx             # imm = 0x1389
	jb	.LBB0_425
# BB#423:                               # %if.then4.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$377, %edi              # imm = 0x179
	jmp	.LBB0_424
.LBB0_495:                              # %if.else107.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$434, %edi              # imm = 0x1B2
	callq	_StraightTaint_log
	movq	$0, 472(%r13)
.LBB0_496:                              # %if.end114.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%r13, 104(%rsp)         # 8-byte Spill
.LBB0_497:                              # %if.end114.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$435, %edi              # imm = 0x1B3
	callq	_StraightTaint_log
	movslq	%ebx, %r12
	movq	136(%rbp), %rbx
	addq	%r12, %rbx
	movq	%rbx, 136(%rbp)
	movq	8(%rbp), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	200(%rcx), %rax
	addq	%r12, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%rax, 200(%rcx)
	movl	56(%rbp), %r13d
	testl	%r13d, %r13d
	jle	.LBB0_500
# BB#498:                               # %for.body.lr.ph.i667
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$436, %edi              # imm = 0x1B4
	callq	_StraightTaint_log
	movq	throttles(%rip), %r15
	leaq	16(%rbp), %r14
	.align	16, 0x90
.LBB0_499:                              # %for.body.i671
                                        #   Parent Loop BB0_385 Depth=1
                                        #     Parent Loop BB0_411 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$437, %edi              # imm = 0x1B5
	callq	_StraightTaint_log
	movslq	(%r14), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	addq	%r12, 32(%r15,%rax)
	addq	$4, %r14
	decl	%r13d
	jne	.LBB0_499
.LBB0_500:                              # %for.end.i672
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$438, %edi              # imm = 0x1B6
	callq	_StraightTaint_log
	cmpq	128(%rbp), %rbx
	jge	.LBB0_501
# BB#504:                               # %if.end134.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$440, %edi              # imm = 0x1B8
	callq	_StraightTaint_log
	movq	112(%rbp), %rbx
	cmpq	$101, %rbx
	leaq	128(%rsp), %r12
	leaq	19584(%rsp), %r15
	jl	.LBB0_506
# BB#505:                               # %if.then138.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$441, %edi              # imm = 0x1B9
	callq	_StraightTaint_log
	addq	$-100, %rbx
	movq	%rbx, 112(%rbp)
.LBB0_506:                              # %if.end141.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$442, %edi              # imm = 0x1BA
	callq	_StraightTaint_log
	movq	64(%rbp), %r14
	cmpq	$-1, %r14
	je	.LBB0_411
# BB#507:                               # %if.then145.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$443, %edi              # imm = 0x1BB
	callq	_StraightTaint_log
	movq	128(%rsp), %rbx
	subq	80(%rbp), %rbx
	movl	$1, %eax
	cmoveq	%rax, %rbx
	movq	112(%rsp), %rax         # 8-byte Reload
	cqto
	idivq	%rbx
	cmpq	%r14, %rax
	jle	.LBB0_411
# BB#508:                               # %if.then158.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%r15, %r13
	movl	$444, %edi              # imm = 0x1BC
	callq	_StraightTaint_log
	movl	$3, (%rbp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	704(%rax), %edi
	callq	fdwatch_del_fd
	movq	8(%rbp), %rax
	movq	200(%rax), %rax
	cqto
	idivq	64(%rbp)
	movq	%rax, %r14
	subq	%rbx, %r14
	cmpq	$0, 96(%rbp)
	je	.LBB0_510
# BB#509:                               # %if.then171.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$445, %edi              # imm = 0x1BD
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str49, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_510:                              # %if.end172.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$446, %edi              # imm = 0x1BE
	callq	_StraightTaint_log
	testl	%r14d, %r14d
	movl	$500, %r15d             # imm = 0x1F4
	jle	.LBB0_512
# BB#511:                               # %cond.true175.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$447, %edi              # imm = 0x1BF
	callq	_StraightTaint_log
	movslq	%r14d, %rax
	imulq	$1000, %rax, %r15       # imm = 0x3E8
.LBB0_512:                              # %cond.end178.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$448, %edi              # imm = 0x1C0
	callq	_StraightTaint_log
	movl	$wakeup_connection, %esi
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r15, %rcx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 96(%rbp)
	movq	%r13, %r15
	jne	.LBB0_411
	jmp	.LBB0_513
.LBB0_501:                              # %if.then133.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$439, %edi              # imm = 0x1B7
	callq	_StraightTaint_log
	movq	120(%rsp), %rdi         # 8-byte Reload
.LBB0_502:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	callq	httpd_write_response
	movq	%rbp, %rdi
	leaq	128(%rsp), %r12
.LBB0_503:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%r12, %rsi
	callq	clear_connection
	leaq	19584(%rsp), %r15
	jmp	.LBB0_411
.LBB0_425:                              # %if.end.i617
                                        #   in Loop: Header=BB0_411 Depth=2
	leaq	152(%r13), %r15
	movl	$378, %edi              # imm = 0x17A
	callq	_StraightTaint_log
	leaq	144(%r13), %rdi
	addq	$1000, %rbx             # imm = 0x3E8
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	152(%r13), %rbx
	movq	160(%r13), %r15
.LBB0_426:                              # %if.end7.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$379, %edi              # imm = 0x17B
	callq	_StraightTaint_log
	movl	704(%r13), %edi
	subq	%r15, %rbx
	addq	144(%r13), %r15
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	read
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jne	.LBB0_428
# BB#427:                               # %if.then14.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$380, %edi              # imm = 0x17C
.LBB0_424:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	callq	_StraightTaint_log
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str42, %ecx
	movl	$.L.str42, %r9d
	movq	%r13, %rdi
	callq	httpd_send_err
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	clear_connection
	movq	%r14, %r15
	jmp	.LBB0_411
.LBB0_428:                              # %if.end15.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$381, %edi              # imm = 0x17D
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	movq	%r14, %r15
	jns	.LBB0_433
# BB#429:                               # %if.then18.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$382, %edi              # imm = 0x17E
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_411
# BB#430:                               # %if.then18.i
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$11, %eax
	je	.LBB0_411
# BB#431:                               # %if.end30.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$383, %edi              # imm = 0x17F
	jmp	.LBB0_432
.LBB0_433:                              # %if.end31.i624
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$384, %edi              # imm = 0x180
	callq	_StraightTaint_log
	movslq	%ebx, %rax
	addq	%rax, 160(%r13)
	movq	128(%rsp), %rax
	movq	%rax, 88(%rbp)
	movq	%r13, %rdi
	callq	httpd_got_request
	testl	%eax, %eax
	je	.LBB0_411
# BB#434:                               # %if.end31.i624
                                        #   in Loop: Header=BB0_411 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_436
# BB#435:                               # %sw.bb36.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$385, %edi              # imm = 0x181
.LBB0_432:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	callq	_StraightTaint_log
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str42, %ecx
	movl	$.L.str42, %r9d
	movq	%r13, %rdi
	callq	httpd_send_err
	jmp	.LBB0_439
.LBB0_436:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$386, %edi              # imm = 0x182
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	httpd_parse_request
	testl	%eax, %eax
	jns	.LBB0_440
# BB#437:                               # %if.then40.i626
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$387, %edi              # imm = 0x183
	jmp	.LBB0_438
.LBB0_440:                              # %if.end41.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$388, %edi              # imm = 0x184
	callq	_StraightTaint_log
	movl	$0, 56(%rbp)
	movq	$-1, 72(%rbp)
	movq	$-1, 64(%rbp)
	cmpl	$0, numthrottles(%rip)
	movl	$1, %ebx
	movl	$0, %r15d
	jle	.LBB0_454
.LBB0_441:                              # %for.body.i.i
                                        #   Parent Loop BB0_385 Depth=1
                                        #     Parent Loop BB0_411 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$389, %edi              # imm = 0x185
	callq	_StraightTaint_log
	movq	throttles(%rip), %rax
	movq	(%rax,%r15), %rdi
	movq	8(%rbp), %rax
	movq	240(%rax), %rsi
	callq	match
	testl	%eax, %eax
	je	.LBB0_452
# BB#442:                               # %if.then.i.i628
                                        #   in Loop: Header=BB0_441 Depth=3
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	$390, %edi              # imm = 0x186
	callq	_StraightTaint_log
	movq	throttles(%rip), %r14
	movq	8(%r14,%r15), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	24(%r14,%r15), %rbx
	leaq	(%rax,%rax), %rax
	cmpq	%rax, %rbx
	jg	.LBB0_532
# BB#443:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$391, %edi              # imm = 0x187
	callq	_StraightTaint_log
	cmpq	16(%r14,%r15), %rbx
	jl	.LBB0_532
# BB#444:                               # %if.end18.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$392, %edi              # imm = 0x188
	callq	_StraightTaint_log
	cmpl	$0, 40(%r14,%r15)
	movq	112(%rsp), %rbx         # 8-byte Reload
	jns	.LBB0_446
# BB#445:                               # %if.then22.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$393, %edi              # imm = 0x189
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str52, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	throttles(%rip), %r14
	movl	$0, 40(%r14,%r15)
	movq	8(%r14,%r15), %rbx
.LBB0_446:                              # %if.end26.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$394, %edi              # imm = 0x18A
	callq	_StraightTaint_log
	movslq	56(%rbp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 56(%rbp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx), %ecx
	movl	%ecx, 16(%rbp,%rax,4)
	movl	40(%r14,%r15), %eax
	incl	%eax
	movl	%eax, 40(%r14,%r15)
	movslq	%eax, %rcx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	movq	%rax, %r12
	movq	64(%rbp), %rbx
	cmpq	$-1, %rbx
	je	.LBB0_448
# BB#447:                               # %if.else.i.i629
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$395, %edi              # imm = 0x18B
	callq	_StraightTaint_log
	cmpq	%r12, %rbx
	cmovleq	%rbx, %r12
.LBB0_448:                              # %if.end50.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$396, %edi              # imm = 0x18C
	callq	_StraightTaint_log
	movq	%r12, 64(%rbp)
	movq	16(%r14,%r15), %r14
	movq	72(%rbp), %r12
	cmpq	$-1, %r12
	jne	.LBB0_450
# BB#449:                               # %if.then57.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$397, %edi              # imm = 0x18D
	callq	_StraightTaint_log
	jmp	.LBB0_451
.LBB0_450:                              # %if.else59.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$398, %edi              # imm = 0x18E
	callq	_StraightTaint_log
	cmpq	%r14, %r12
	cmovgeq	%r12, %r14
.LBB0_451:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movq	%r14, 72(%rbp)
	leaq	128(%rsp), %r12
	movq	120(%rsp), %rbx         # 8-byte Reload
.LBB0_452:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$399, %edi              # imm = 0x18F
	callq	_StraightTaint_log
	cmpl	numthrottles(%rip), %ebx
	jge	.LBB0_454
# BB#453:                               # %for.inc.land.rhs_crit_edge.i.i
                                        #   in Loop: Header=BB0_441 Depth=3
	movl	$400, %edi              # imm = 0x190
	callq	_StraightTaint_log
	incl	%ebx
	addq	$48, %r15
	cmpl	$10, 56(%rbp)
	jl	.LBB0_441
.LBB0_454:                              # %if.end44.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$402, %edi              # imm = 0x192
	callq	_StraightTaint_log
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	httpd_start_request
	testl	%eax, %eax
	leaq	19584(%rsp), %r15
	jns	.LBB0_456
# BB#455:                               # %if.then48.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$403, %edi              # imm = 0x193
	jmp	.LBB0_438
.LBB0_456:                              # %if.end49.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$404, %edi              # imm = 0x194
	callq	_StraightTaint_log
	cmpl	$0, 528(%r13)
	jne	.LBB0_457
# BB#458:                               # %if.else.i634
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$406, %edi              # imm = 0x196
	callq	_StraightTaint_log
	movq	192(%r13), %rbx
	testq	%rbx, %rbx
	jns	.LBB0_460
# BB#459:                               # %if.then55.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$407, %edi              # imm = 0x197
	callq	_StraightTaint_log
	movq	$0, 128(%rbp)
	xorl	%ebx, %ebx
	jmp	.LBB0_462
.LBB0_457:                              # %if.then51.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$405, %edi              # imm = 0x195
	callq	_StraightTaint_log
	movq	536(%r13), %rax
	movq	%rax, 136(%rbp)
	movq	544(%r13), %rbx
	incq	%rbx
	jmp	.LBB0_461
.LBB0_532:                              # %if.then43.i631
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$401, %edi              # imm = 0x191
	callq	_StraightTaint_log
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%r13), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str42, %ecx
	movq	%r13, %rdi
	callq	httpd_send_err
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	movq	%rbp, %rdi
	jmp	.LBB0_503
.LBB0_460:                              # %if.else57.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$408, %edi              # imm = 0x198
	callq	_StraightTaint_log
.LBB0_461:                              # %if.end61.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	%rbx, 128(%rbp)
.LBB0_462:                              # %if.end61.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$409, %edi              # imm = 0x199
	callq	_StraightTaint_log
	cmpq	$0, 712(%r13)
	jne	.LBB0_467
# BB#463:                               # %for.cond.preheader.i635
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$410, %edi              # imm = 0x19A
	callq	_StraightTaint_log
	movl	56(%rbp), %r12d
	testl	%r12d, %r12d
	movq	200(%r13), %r14
	jle	.LBB0_466
# BB#464:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$411, %edi              # imm = 0x19B
	callq	_StraightTaint_log
	movq	throttles(%rip), %r15
	leaq	16(%rbp), %rbx
.LBB0_465:                              # %for.body.i639
                                        #   Parent Loop BB0_385 Depth=1
                                        #     Parent Loop BB0_411 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$412, %edi              # imm = 0x19C
	callq	_StraightTaint_log
	movslq	(%rbx), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	addq	%r14, 32(%r15,%rax)
	addq	$4, %rbx
	decl	%r12d
	jne	.LBB0_465
.LBB0_466:                              # %for.end.i640
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$413, %edi              # imm = 0x19D
	callq	_StraightTaint_log
	movq	%r14, 136(%rbp)
	movq	8(%rbp), %rdi
	jmp	.LBB0_502
.LBB0_467:                              # %if.end73.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$414, %edi              # imm = 0x19E
	callq	_StraightTaint_log
	cmpq	%rbx, 136(%rbp)
	jge	.LBB0_468
# BB#469:                               # %if.end79.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$416, %edi              # imm = 0x1A0
	callq	_StraightTaint_log
	movl	$2, (%rbp)
	movq	128(%rsp), %rax
	movq	%rax, 80(%rbp)
	movq	$0, 112(%rbp)
	movl	704(%r13), %edi
	callq	fdwatch_del_fd
	movl	704(%r13), %edi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	fdwatch_add_fd
	jmp	.LBB0_411
.LBB0_468:                              # %if.then78.i
                                        #   in Loop: Header=BB0_411 Depth=2
	movl	$415, %edi              # imm = 0x19F
.LBB0_438:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	callq	_StraightTaint_log
.LBB0_439:                              # %while.cond482
                                        #   in Loop: Header=BB0_411 Depth=2
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	jmp	.LBB0_416
.LBB0_519:                              # %while.end
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$454, %edi              # imm = 0x1C6
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	tmr_run
	cmpl	$0, got_usr1(%rip)
	je	.LBB0_400
# BB#520:                               # %while.end
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	terminate(%rip), %eax
	testl	%eax, %eax
	jne	.LBB0_400
# BB#521:                               # %if.then503
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$455, %edi              # imm = 0x1C7
	callq	_StraightTaint_log
	movl	$1, terminate(%rip)
	movq	hs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_400
# BB#522:                               # %if.then506
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$456, %edi              # imm = 0x1C8
	callq	_StraightTaint_log
	movl	72(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB0_524
# BB#523:                               # %if.then510
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$457, %edi              # imm = 0x1C9
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	fdwatch_del_fd
	movq	hs(%rip), %rbx
.LBB0_524:                              # %if.end512
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$458, %edi              # imm = 0x1CA
	callq	_StraightTaint_log
	movl	76(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB0_526
# BB#525:                               # %if.then516
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$459, %edi              # imm = 0x1CB
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	fdwatch_del_fd
	movq	hs(%rip), %rbx
.LBB0_526:                              # %if.end518
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$460, %edi              # imm = 0x1CC
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	httpd_unlisten
	.align	16, 0x90
.LBB0_400:                              # %while.cond.backedge
                                        #   in Loop: Header=BB0_385 Depth=1
	movl	$361, %edi              # imm = 0x169
	callq	_StraightTaint_log
	cmpl	$0, terminate(%rip)
	movl	num_connects(%rip), %eax
	je	.LBB0_385
# BB#401:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_385 Depth=1
	testl	%eax, %eax
	jg	.LBB0_385
	jmp	.LBB0_402
.LBB0_318:                              # %if.then131
	movl	$280, %edi              # imm = 0x118
	callq	_StraightTaint_log
	movl	$4, %edi
	movl	$.L.str8, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str9, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_319
.LBB0_346:                              # %if.else289
	movl	$309, %edi              # imm = 0x135
	callq	_StraightTaint_log
	movl	$4, %edi
	movl	$.L.str21, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str22, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_347
.LBB0_19:                               # %if.then.i.i
	movl	$11, %edi
	callq	_StraightTaint_log
	jmp	.LBB0_20
.LBB0_87:                               # %if.then.i520.i.i
	movl	$67, %edi
	jmp	.LBB0_43
.LBB0_89:                               # %if.then.i525.i.i
	movl	$69, %edi
	jmp	.LBB0_50
.LBB0_93:                               # %if.then.i529.i.i
	movl	$73, %edi
	jmp	.LBB0_43
.LBB0_95:                               # %if.then.i534.i.i
	movl	$75, %edi
	jmp	.LBB0_50
.LBB0_99:                               # %if.then.i538.i.i
	movl	$79, %edi
	jmp	.LBB0_43
.LBB0_103:                              # %if.then.i544.i.i
	movl	$83, %edi
	jmp	.LBB0_43
.LBB0_105:                              # %if.then.i549.i.i
	movl	$85, %edi
	jmp	.LBB0_50
.LBB0_109:                              # %if.then.i553.i.i
	movl	$89, %edi
	jmp	.LBB0_37
.LBB0_113:                              # %if.then.i557.i.i
	movl	$93, %edi
	jmp	.LBB0_43
.LBB0_115:                              # %if.then.i562.i.i
	movl	$95, %edi
	jmp	.LBB0_50
.LBB0_119:                              # %if.then.i566.i.i
	movl	$99, %edi
	jmp	.LBB0_43
.LBB0_121:                              # %if.then.i571.i.i
	movl	$101, %edi
	jmp	.LBB0_50
.LBB0_125:                              # %if.then.i575.i.i
	movl	$105, %edi
	jmp	.LBB0_43
.LBB0_127:                              # %if.then.i580.i.i
	movl	$107, %edi
	jmp	.LBB0_50
.LBB0_131:                              # %if.then.i584.i.i
	movl	$111, %edi
	jmp	.LBB0_43
.LBB0_133:                              # %if.then.i589.i.i
	movl	$113, %edi
	jmp	.LBB0_50
.LBB0_137:                              # %if.then.i593.i.i
	movl	$117, %edi
	jmp	.LBB0_37
.LBB0_141:                              # %if.then.i597.i.i
	movl	$121, %edi
	jmp	.LBB0_37
.LBB0_145:                              # %if.then.i601.i.i
	movl	$125, %edi
	jmp	.LBB0_37
.LBB0_149:                              # %if.then.i605.i.i
	movl	$129, %edi
	jmp	.LBB0_37
.LBB0_153:                              # %if.then.i609.i.i
	movl	$133, %edi
	jmp	.LBB0_43
.LBB0_155:                              # %if.then.i614.i.i
	movl	$135, %edi
	jmp	.LBB0_50
.LBB0_159:                              # %if.then.i618.i.i
	movl	$139, %edi
	jmp	.LBB0_43
.LBB0_161:                              # %if.then.i623.i.i
	movl	$141, %edi
	jmp	.LBB0_50
.LBB0_165:                              # %if.then.i627.i.i
	movl	$145, %edi
	jmp	.LBB0_43
.LBB0_167:                              # %if.then.i632.i.i
	movl	$147, %edi
	jmp	.LBB0_50
.LBB0_173:                              # %if.else271.i.i
	movl	$153, %edi
	callq	_StraightTaint_log
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str125, %esi
	jmp	.LBB0_38
.LBB0_171:                              # %if.then.i636.i.i
	movl	$151, %edi
	jmp	.LBB0_43
.LBB0_36:                               # %if.then.i.i.i
	movl	$23, %edi
	jmp	.LBB0_37
.LBB0_42:                               # %if.then.i476.i.i
	movl	$27, %edi
	jmp	.LBB0_43
.LBB0_47:                               # %if.then.i480.i.i
	movl	$31, %edi
	jmp	.LBB0_43
.LBB0_49:                               # %if.then.i484.i.i
	movl	$33, %edi
	jmp	.LBB0_50
.LBB0_55:                               # %if.then.i487.i.i
	movl	$37, %edi
	jmp	.LBB0_37
.LBB0_59:                               # %if.then.i491.i.i
	movl	$41, %edi
	jmp	.LBB0_37
.LBB0_63:                               # %if.then.i495.i.i
	movl	$45, %edi
.LBB0_43:                               # %if.then.i476.i.i
	callq	_StraightTaint_log
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str126, %esi
	jmp	.LBB0_38
.LBB0_65:                               # %if.then.i500.i.i
	movl	$47, %edi
	jmp	.LBB0_50
.LBB0_69:                               # %if.then.i504.i.i
	movl	$51, %edi
	jmp	.LBB0_37
.LBB0_74:                               # %if.then.i508.i.i
	movl	$55, %edi
	jmp	.LBB0_37
.LBB0_79:                               # %if.then.i512.i.i
	movl	$59, %edi
	jmp	.LBB0_37
.LBB0_83:                               # %if.then.i516.i.i
	movl	$63, %edi
.LBB0_37:                               # %if.then.i.i.i
	callq	_StraightTaint_log
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str127, %esi
.LBB0_38:                               # %if.then.i.i.i
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rcx
	jmp	.LBB0_39
.LBB0_13:                               # %if.then49.i
	movl	$6, %edi
	callq	_StraightTaint_log
	movl	$.L.str74, %edi
	callq	puts
	xorl	%edi, %edi
	callq	exit
.LBB0_248:                              # %if.else1528.i
	movl	$215, %edi
	callq	_StraightTaint_log
	callq	usage
.LBB0_527:                              # %if.then1555.i
	movl	$218, %edi
	callq	_StraightTaint_log
	callq	usage
.LBB0_528:                              # %if.then.i592
	movl	$221, %edi
	callq	_StraightTaint_log
	movq	hostname(%rip), %rbp
	movl	%ebx, %edi
	callq	gai_strerror
	movq	%rax, %rcx
	movl	$2, %edi
	movl	$.L.str67, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdx
	callq	syslog
	movq	stderr(%rip), %rbp
	movq	argv0(%rip), %r14
	movq	hostname(%rip), %r15
	movl	%ebx, %edi
	callq	gai_strerror
	movq	%rax, %rbx
	movl	$.L.str68, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%rbx, %r8
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_262:                              # %if.then25.i
	movl	$228, %edi
	callq	_StraightTaint_log
	movq	hostname(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str69, %esi
	movl	$128, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	jmp	.LBB0_263
.LBB0_267:                              # %if.then40.i
	movl	$232, %edi
	callq	_StraightTaint_log
	movq	hostname(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str69, %esi
	movl	$128, %ecx
	xorl	%eax, %eax
	movq	%rbp, %r8
.LBB0_263:                              # %if.then25.i
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB0_271:                              # %if.then2
	movl	$235, %edi
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str1, %esi
	jmp	.LBB0_51
.LBB0_274:                              # %if.then.i595
	movl	$238, %edi
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	syslog
.LBB0_20:                               # %if.then.i.i
	movq	%rbx, %rdi
	jmp	.LBB0_21
.LBB0_304:                              # %if.then95.i
	movl	$262, %edi              # imm = 0x106
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str62, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str63, %esi
	jmp	.LBB0_51
.LBB0_306:                              # %if.then.i.i609
	movl	$264, %edi              # imm = 0x108
.LBB0_50:                               # %if.then.i484.i.i
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str64, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str65, %esi
.LBB0_51:                               # %if.then.i484.i.i
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_296:                              # %if.then13
	movl	$269, %edi              # imm = 0x10D
	callq	_StraightTaint_log
	movq	user(%rip), %rcx
	movl	$2, %edi
	movl	$.L.str2, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movq	user(%rip), %rbp
	movl	$.L.str3, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbp, %rcx
.LBB0_39:                               # %if.then.i.i.i
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_316:                              # %if.then125
	movl	$278, %edi              # imm = 0x116
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	syslog
	movq	logfile(%rip), %rax
	movq	%rax, %rdi
	jmp	.LBB0_21
.LBB0_324:                              # %if.then157
	movl	$286, %edi              # imm = 0x11E
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str12, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str13, %edi
	jmp	.LBB0_21
.LBB0_331:                              # %if.then184
	movl	$293, %edi              # imm = 0x125
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str15, %esi
	jmp	.LBB0_488
.LBB0_529:                              # %if.then196
	movl	$297, %edi              # imm = 0x129
	callq	_StraightTaint_log
	movq	pidfile(%rip), %rcx
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB0_337:                              # %if.then205
	movl	$300, %edi              # imm = 0x12C
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str18, %esi
	jmp	.LBB0_488
.LBB0_340:                              # %if.then214
	movl	$303, %edi              # imm = 0x12F
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str19, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str20, %edi
	jmp	.LBB0_21
.LBB0_348:                              # %if.then299
	movl	$311, %edi              # imm = 0x137
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str23, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str24, %edi
	jmp	.LBB0_21
.LBB0_351:                              # %if.then308
	movl	$314, %edi              # imm = 0x13A
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str25, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str26, %edi
.LBB0_21:                               # %if.then.i.i
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_530:                              # %if.then334
	movl	$316, %edi              # imm = 0x13C
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	exit
.LBB0_354:                              # %if.then339
	movl	$318, %edi              # imm = 0x13E
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str27, %esi
	jmp	.LBB0_488
.LBB0_356:                              # %if.then344
	movl	$320, %edi              # imm = 0x140
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str28, %esi
	jmp	.LBB0_488
.LBB0_359:                              # %if.then352
	movl	$323, %edi              # imm = 0x143
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str29, %esi
	jmp	.LBB0_488
.LBB0_361:                              # %if.then358
	movl	$325, %edi              # imm = 0x145
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str30, %esi
	jmp	.LBB0_488
.LBB0_364:                              # %if.then368
	movl	$328, %edi              # imm = 0x148
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str31, %esi
	jmp	.LBB0_488
.LBB0_366:                              # %if.then373
	movl	$330, %edi              # imm = 0x14A
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str32, %esi
	jmp	.LBB0_488
.LBB0_370:                              # %if.then383
	movl	$334, %edi              # imm = 0x14E
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str34, %esi
	jmp	.LBB0_488
.LBB0_531:                              # %if.then393
	movl	$339, %edi              # imm = 0x153
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str36, %esi
	jmp	.LBB0_488
.LBB0_383:                              # %if.end420
	movl	num_connects(%rip), %eax
	testl	%eax, %eax
	jg	.LBB0_384
.LBB0_402:                              # %while.end521
	movl	$461, %edi              # imm = 0x1CD
	callq	_StraightTaint_log
	callq	shut_down
	movl	$5, %edi
	movl	$.L.str38, %esi
	xorl	%eax, %eax
	callq	syslog
	callq	closelog
	xorl	%edi, %edi
	callq	exit
.LBB0_397:                              # %if.end441
	movl	$358, %edi              # imm = 0x166
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str37, %esi
	jmp	.LBB0_488
.LBB0_486:                              # %if.then68.i
	movl	$428, %edi              # imm = 0x1AC
	jmp	.LBB0_487
.LBB0_513:                              # %if.then186.i
	movl	$449, %edi              # imm = 0x1C1
.LBB0_487:                              # %if.then68.i
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str50, %esi
.LBB0_488:                              # %if.then68.i
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp20:
	.size	main, .Ltmp20-main
	.cfi_endproc

	.align	16, 0x90
	.type	handle_term,@function
handle_term:                            # @handle_term
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$462, %edi              # imm = 0x1CE
	callq	_StraightTaint_log
	callq	shut_down
	movl	$5, %edi
	movl	$.L.str132, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
	callq	closelog
	movl	$1, %edi
	callq	exit
.Ltmp25:
	.size	handle_term, .Ltmp25-handle_term
	.cfi_endproc

	.align	16, 0x90
	.type	handle_chld,@function
handle_chld:                            # @handle_chld
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp33:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp34:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp37:
	.cfi_def_cfa_offset 64
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movl	$463, %edi              # imm = 0x1CF
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, %r14
	movl	(%r14), %r15d
	leaq	12(%rsp), %rsi
	movl	$-1, %edi
	movl	$1, %edx
	callq	waitpid
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB2_10
# BB#1:
	leaq	12(%rsp), %rbx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB2_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movl	$464, %edi              # imm = 0x1D0
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	jns	.LBB2_7
# BB#3:                                 # %if.then3
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$465, %edi              # imm = 0x1D1
	callq	_StraightTaint_log
	movl	(%r14), %eax
	cmpl	$4, %eax
	je	.LBB2_9
# BB#4:                                 # %if.then3
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpl	$11, %eax
	je	.LBB2_9
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_7:                                # %if.end14
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$467, %edi              # imm = 0x1D3
	callq	_StraightTaint_log
	movq	hs(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB2_9
# BB#8:                                 # %if.then16
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$468, %edi              # imm = 0x1D4
	callq	_StraightTaint_log
	movl	36(%rbp), %eax
	leal	-1(%rax), %ecx
	testl	%eax, %eax
	cmovlel	%r12d, %ecx
	movl	%ecx, 36(%rbp)
.LBB2_9:                                # %for.cond.backedge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$469, %edi              # imm = 0x1D5
	callq	_StraightTaint_log
	movl	$-1, %edi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	waitpid
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB2_2
	jmp	.LBB2_10
.LBB2_5:                                # %if.then3
	cmpl	$10, %eax
	je	.LBB2_10
# BB#6:                                 # %if.then12
	movl	$466, %edi              # imm = 0x1D2
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str131, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB2_10:                               # %for.end
	movl	$470, %edi              # imm = 0x1D6
	callq	_StraightTaint_log
	movl	%r15d, (%r14)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp43:
	.size	handle_chld, .Ltmp43-handle_chld
	.cfi_endproc

	.align	16, 0x90
	.type	handle_hup,@function
handle_hup:                             # @handle_hup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 16
	movl	$471, %edi              # imm = 0x1D7
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %ecx
	movl	$1, got_hup(%rip)
	movl	%ecx, (%rax)
	popq	%rax
	ret
.Ltmp46:
	.size	handle_hup, .Ltmp46-handle_hup
	.cfi_endproc

	.align	16, 0x90
	.type	handle_usr1,@function
handle_usr1:                            # @handle_usr1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 16
	movl	$472, %edi              # imm = 0x1D8
	callq	_StraightTaint_log
	cmpl	$0, num_connects(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.end
	movl	$474, %edi              # imm = 0x1DA
	callq	_StraightTaint_log
	movl	$1, got_usr1(%rip)
	popq	%rax
	ret
.LBB4_2:                                # %if.then
	movl	$473, %edi              # imm = 0x1D9
	callq	_StraightTaint_log
	callq	shut_down
	movl	$5, %edi
	movl	$.L.str38, %esi
	xorl	%eax, %eax
	callq	syslog
	callq	closelog
	xorl	%edi, %edi
	callq	exit
.Ltmp49:
	.size	handle_usr1, .Ltmp49-handle_usr1
	.cfi_endproc

	.align	16, 0x90
	.type	handle_usr2,@function
handle_usr2:                            # @handle_usr2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movl	$475, %edi              # imm = 0x1DB
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, %rbx
	movl	(%rbx), %ebp
	xorl	%edi, %edi
	callq	logstats
	movl	%ebp, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp58:
	.size	handle_usr2, .Ltmp58-handle_usr2
	.cfi_endproc

	.align	16, 0x90
	.type	handle_alrm,@function
handle_alrm:                            # @handle_alrm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	$476, %edi              # imm = 0x1DC
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, %rbx
	movl	(%rbx), %ebp
	cmpl	$0, watchdog_flag(%rip)
	je	.LBB6_2
# BB#1:                                 # %if.end
	movl	$478, %edi              # imm = 0x1DE
	callq	_StraightTaint_log
	movl	$0, watchdog_flag(%rip)
	movl	$360, %edi              # imm = 0x168
	callq	alarm
	movl	%ebp, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB6_2:                                # %if.then
	movl	$477, %edi              # imm = 0x1DD
	callq	_StraightTaint_log
	movl	$.L.str130, %edi
	callq	chdir
	callq	abort
.Ltmp67:
	.size	handle_alrm, .Ltmp67-handle_alrm
	.cfi_endproc

	.align	16, 0x90
	.type	occasional,@function
occasional:                             # @occasional
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$479, %edi              # imm = 0x1DF
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	mmc_cleanup
	callq	tmr_cleanup
	movl	$1, watchdog_flag(%rip)
	popq	%rbx
	ret
.Ltmp72:
	.size	occasional, .Ltmp72-occasional
	.cfi_endproc

	.align	16, 0x90
	.type	idle,@function
idle:                                   # @idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp82:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp83:
	.cfi_def_cfa_offset 48
.Ltmp84:
	.cfi_offset %rbx, -48
.Ltmp85:
	.cfi_offset %r12, -40
.Ltmp86:
	.cfi_offset %r14, -32
.Ltmp87:
	.cfi_offset %r15, -24
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movl	$480, %edi              # imm = 0x1E0
	callq	_StraightTaint_log
	cmpl	$0, max_connects(%rip)
	jle	.LBB8_10
# BB#1:                                 # %for.body.lr.ph
	movl	$481, %edi              # imm = 0x1E1
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$482, %edi              # imm = 0x1E2
	callq	_StraightTaint_log
	movq	connects(%rip), %r12
	leaq	(%r12,%rbx), %r15
	movl	(%r12,%rbx), %eax
	leal	-2(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB8_3
# BB#6:                                 # %sw.bb3
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$485, %edi              # imm = 0x1E5
	callq	_StraightTaint_log
	movq	(%r14), %rax
	subq	88(%r12,%rbx), %rax
	cmpq	$300, %rax              # imm = 0x12C
	jl	.LBB8_9
# BB#7:                                 # %if.then8
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$486, %edi              # imm = 0x1E6
	callq	_StraightTaint_log
	movq	8(%r12,%rbx), %rdi
	addq	$16, %rdi
	callq	httpd_ntoa
	movq	%rax, %rcx
	movl	$6, %edi
	movl	$.L.str43, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	jmp	.LBB8_8
	.align	16, 0x90
.LBB8_3:                                # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB8_9
# BB#4:                                 # %sw.bb
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$483, %edi              # imm = 0x1E3
	callq	_StraightTaint_log
	movq	(%r14), %rax
	subq	88(%r12,%rbx), %rax
	cmpq	$60, %rax
	jl	.LBB8_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$484, %edi              # imm = 0x1E4
	callq	_StraightTaint_log
	movq	8(%r12,%rbx), %rdi
	addq	$16, %rdi
	callq	httpd_ntoa
	movq	%rax, %rcx
	movl	$6, %edi
	movl	$.L.str41, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movq	8(%r12,%rbx), %rdi
	movq	httpd_err408title(%rip), %rdx
	movq	httpd_err408form(%rip), %r8
	movl	$408, %esi              # imm = 0x198
	movl	$.L.str42, %ecx
	movl	$.L.str42, %r9d
	callq	httpd_send_err
	movq	8(%r12,%rbx), %rdi
	callq	httpd_write_response
	.align	16, 0x90
.LBB8_8:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	clear_connection
.LBB8_9:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	$487, %edi              # imm = 0x1E7
	callq	_StraightTaint_log
	incl	%ebp
	addq	$144, %rbx
	cmpl	max_connects(%rip), %ebp
	jl	.LBB8_2
.LBB8_10:                               # %for.end
	movl	$488, %edi              # imm = 0x1E8
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp89:
	.size	idle, .Ltmp89-idle
	.cfi_endproc

	.align	16, 0x90
	.type	update_throttles,@function
update_throttles:                       # @update_throttles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp98:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp99:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp100:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp101:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp102:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 112
.Ltmp104:
	.cfi_offset %rbx, -56
.Ltmp105:
	.cfi_offset %r12, -48
.Ltmp106:
	.cfi_offset %r13, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	$489, %edi              # imm = 0x1E9
	callq	_StraightTaint_log
	cmpl	$0, numthrottles(%rip)
	movl	$40, %r13d
	jle	.LBB9_6
# BB#1:
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$492, %edi              # imm = 0x1EC
	callq	_StraightTaint_log
	movq	throttles(%rip), %rbp
	movq	-16(%rbp,%r13), %rax
	movq	-8(%rbp,%r13), %rcx
	movq	%rcx, %rdx
	shrq	$63, %rdx
	addq	%rcx, %rdx
	sarq	%rdx
	leaq	(%rdx,%rax,2), %rax
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rbx
	shrq	$63, %rbx
	addq	%rdx, %rbx
	movq	%rbx, -16(%rbp,%r13)
	movq	$0, -8(%rbp,%r13)
	movq	-32(%rbp,%r13), %r14
	cmpq	%r14, %rbx
	jle	.LBB9_18
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$493, %edi              # imm = 0x1ED
	callq	_StraightTaint_log
	movl	(%rbp,%r13), %r15d
	testl	%r15d, %r15d
	je	.LBB9_18
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$494, %edi              # imm = 0x1EE
	callq	_StraightTaint_log
	leaq	(%r14,%r14), %rax
	cmpq	%rax, %rbx
	movq	-40(%rbp,%r13), %rbp
	jle	.LBB9_16
# BB#5:                                 # %if.then27
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$495, %edi              # imm = 0x1EF
	callq	_StraightTaint_log
	movl	%r15d, (%rsp)
	movl	$5, %edi
	movl	$.L.str46, %esi
	jmp	.LBB9_17
.LBB9_16:                               # %if.else
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$496, %edi              # imm = 0x1F0
	callq	_StraightTaint_log
	movl	%r15d, (%rsp)
	movl	$6, %edi
	movl	$.L.str47, %esi
.LBB9_17:                               # %if.end51
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	movl	%r12d, %edx
	movq	%rbp, %rcx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	syslog
.LBB9_18:                               # %if.end51
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$497, %edi              # imm = 0x1F1
	callq	_StraightTaint_log
	movq	throttles(%rip), %rbp
	movq	-24(%rbp,%r13), %r14
	movq	-16(%rbp,%r13), %rbx
	cmpq	%r14, %rbx
	jge	.LBB9_21
# BB#19:                                # %land.lhs.true58
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$498, %edi              # imm = 0x1F2
	callq	_StraightTaint_log
	movl	(%rbp,%r13), %r15d
	testl	%r15d, %r15d
	je	.LBB9_21
# BB#20:                                # %if.then63
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$499, %edi              # imm = 0x1F3
	callq	_StraightTaint_log
	movq	-40(%rbp,%r13), %rcx
	movl	%r15d, (%rsp)
	movl	$5, %edi
	movl	$.L.str48, %esi
	xorl	%eax, %eax
	movl	%r12d, %edx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	syslog
.LBB9_21:                               # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	$500, %edi              # imm = 0x1F4
	callq	_StraightTaint_log
	incl	%r12d
	addq	$48, %r13
	cmpl	numthrottles(%rip), %r12d
	jl	.LBB9_2
.LBB9_6:                                # %for.cond77.preheader
	movl	$490, %edi              # imm = 0x1EA
	callq	_StraightTaint_log
	movl	max_connects(%rip), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB9_15
# BB#7:                                 # %for.body79.lr.ph
	movl	$491, %edi              # imm = 0x1EB
	callq	_StraightTaint_log
	movq	connects(%rip), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	throttles(%rip), %rbp
	leaq	16(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_8:                                # %for.body79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$501, %edi              # imm = 0x1F5
	callq	_StraightTaint_log
	leaq	(%rbx,%rbx,8), %r15
	shlq	$4, %r15
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%r15), %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB9_14
# BB#9:                                 # %if.then85
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$502, %edi              # imm = 0x1F6
	callq	_StraightTaint_log
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	$-1, 64(%rax,%r15)
	movl	56(%rax,%r15), %r14d
	testl	%r14d, %r14d
	jle	.LBB9_14
# BB#10:                                #   in Loop: Header=BB9_8 Depth=1
	movq	$-1, %rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	64(%rax,%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movq	24(%rsp), %r13          # 8-byte Reload
	.align	16, 0x90
.LBB9_11:                               # %for.body89
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$503, %edi              # imm = 0x1F7
	callq	_StraightTaint_log
	movslq	(%r13), %rax
	leaq	(%rax,%rax,2), %rcx
	shlq	$4, %rcx
	movq	8(%rbp,%rcx), %rax
	movslq	40(%rbp,%rcx), %rcx
	cqto
	idivq	%rcx
	movq	%rax, %r15
	cmpq	$-1, %rbx
	je	.LBB9_13
# BB#12:                                # %if.else104
                                        #   in Loop: Header=BB9_11 Depth=2
	movl	$504, %edi              # imm = 0x1F8
	callq	_StraightTaint_log
	cmpq	%r15, %rbx
	cmovleq	%rbx, %r15
.LBB9_13:                               # %for.inc111
                                        #   in Loop: Header=BB9_11 Depth=2
	movl	$505, %edi              # imm = 0x1F9
	callq	_StraightTaint_log
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	incl	%r12d
	addq	$4, %r13
	cmpl	%r14d, %r12d
	movq	%r15, %rbx
	jl	.LBB9_11
.LBB9_14:                               # %for.inc115
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$506, %edi              # imm = 0x1FA
	callq	_StraightTaint_log
	movq	40(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	addq	$144, 24(%rsp)          # 8-byte Folded Spill
	cmpl	20(%rsp), %ebx          # 4-byte Folded Reload
	jl	.LBB9_8
.LBB9_15:                               # %for.end117
	movl	$507, %edi              # imm = 0x1FB
	callq	_StraightTaint_log
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp110:
	.size	update_throttles, .Ltmp110-update_throttles
	.cfi_endproc

	.align	16, 0x90
	.type	show_stats,@function
show_stats:                             # @show_stats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movl	$508, %edi              # imm = 0x1FC
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	popq	%rbx
	jmp	logstats                # TAILCALL
.Ltmp115:
	.size	show_stats, .Ltmp115-show_stats
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	handle_newconnect,@function
handle_newconnect:                      # @handle_newconnect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp124:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp126:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp129:
	.cfi_def_cfa_offset 64
.Ltmp130:
	.cfi_offset %rbx, -56
.Ltmp131:
	.cfi_offset %r12, -48
.Ltmp132:
	.cfi_offset %r13, -40
.Ltmp133:
	.cfi_offset %r14, -32
.Ltmp134:
	.cfi_offset %r15, -24
.Ltmp135:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	$509, %edi              # imm = 0x1FD
	callq	_StraightTaint_log
	movl	num_connects(%rip), %eax
	cmpl	max_connects(%rip), %eax
	jge	.LBB11_16
# BB#1:                                 # %if.end.lr.ph
	movl	$510, %edi              # imm = 0x1FE
	callq	_StraightTaint_log
.LBB11_2:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, %edi              # imm = 0x200
	callq	_StraightTaint_log
	movslq	first_free_connect(%rip), %rbx
	cmpq	$-1, %rbx
	je	.LBB11_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$513, %edi              # imm = 0x201
	callq	_StraightTaint_log
	movq	connects(%rip), %r12
	leaq	(%rbx,%rbx,8), %rbp
	shlq	$4, %rbp
	cmpl	$0, (%r12,%rbp)
	jne	.LBB11_4
# BB#6:                                 # %if.end4
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$515, %edi              # imm = 0x203
	callq	_StraightTaint_log
	leaq	8(%r12,%rbp), %r13
	movq	8(%r12,%rbp), %rbx
	testq	%rbx, %rbx
	jne	.LBB11_10
# BB#7:                                 # %if.then8
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$516, %edi              # imm = 0x204
	callq	_StraightTaint_log
	movl	$720, %edi              # imm = 0x2D0
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	%rbx, (%r13)
	je	.LBB11_8
# BB#9:                                 # %if.end13
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$518, %edi              # imm = 0x206
	callq	_StraightTaint_log
	movl	$0, (%rbx)
	incl	httpd_conn_count(%rip)
.LBB11_10:                              # %if.end15
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$519, %edi              # imm = 0x207
	callq	_StraightTaint_log
	movq	hs(%rip), %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	httpd_get_conn
	movl	$1, %ebx
	cmpl	$2, %eax
	je	.LBB11_17
# BB#11:                                # %if.end15
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%eax, %eax
	je	.LBB11_12
# BB#13:                                # %sw.epilog
                                        #   in Loop: Header=BB11_2 Depth=1
	leaq	(%r12,%rbp), %rbx
	movl	$521, %edi              # imm = 0x209
	callq	_StraightTaint_log
	movl	$1, (%rbx)
	movl	4(%r12,%rbp), %eax
	movl	%eax, first_free_connect(%rip)
	movl	$-1, 4(%r12,%rbp)
	incl	num_connects(%rip)
	movq	(%r14), %rax
	movq	%rax, 88(%r12,%rbp)
	movq	$0, 136(%r12,%rbp)
	movl	$0, 56(%r12,%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%r12,%rbp)
	movq	(%r13), %rax
	movl	704(%rax), %edi
	callq	httpd_set_ndelay
	movq	(%r13), %rax
	movl	704(%rax), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	fdwatch_add_fd
	incq	stats_connections(%rip)
	movl	num_connects(%rip), %ebx
	cmpl	stats_simultaneous(%rip), %ebx
	jle	.LBB11_15
# BB#14:                                # %if.then27
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$522, %edi              # imm = 0x20A
	callq	_StraightTaint_log
	movl	%ebx, stats_simultaneous(%rip)
.LBB11_15:                              # %for.cond.backedge
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$523, %edi              # imm = 0x20B
	callq	_StraightTaint_log
	cmpl	max_connects(%rip), %ebx
	jl	.LBB11_2
.LBB11_16:                              # %if.then
	movl	$511, %edi              # imm = 0x1FF
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$4, %edi
	movl	$.L.str53, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	%r14, %rdi
	callq	tmr_run
.LBB11_17:                              # %return
	movl	$524, %edi              # imm = 0x20C
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB11_12:                              # %sw.bb
	movl	$520, %edi              # imm = 0x208
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	tmr_run
	xorl	%ebx, %ebx
	jmp	.LBB11_17
.LBB11_4:                               # %if.then3
	movl	$514, %edi              # imm = 0x202
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str54, %esi
	jmp	.LBB11_5
.LBB11_8:                               # %if.then12
	movl	$517, %edi              # imm = 0x205
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str55, %esi
.LBB11_5:                               # %if.then3
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp136:
	.size	handle_newconnect, .Ltmp136-handle_newconnect
	.cfi_endproc

	.align	16, 0x90
	.type	clear_connection,@function
clear_connection:                       # @clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp141:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp142:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp143:
	.cfi_def_cfa_offset 32
.Ltmp144:
	.cfi_offset %rbx, -32
.Ltmp145:
	.cfi_offset %r14, -24
.Ltmp146:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$525, %edi              # imm = 0x20D
	callq	_StraightTaint_log
	movq	96(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$526, %edi              # imm = 0x20E
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	tmr_cancel
	movq	$0, 96(%r15)
.LBB12_2:                               # %if.end
	movl	$527, %edi              # imm = 0x20F
	callq	_StraightTaint_log
	cmpl	$4, (%r15)
	jne	.LBB12_6
# BB#3:                                 # %if.end6.thread
	movl	$528, %edi              # imm = 0x210
	callq	_StraightTaint_log
	movq	104(%r15), %rdi
	callq	tmr_cancel
	movq	$0, 104(%r15)
	movq	8(%r15), %rax
	movl	$0, 556(%rax)
	jmp	.LBB12_4
.LBB12_6:                               # %if.end6
	movl	$529, %edi              # imm = 0x211
	callq	_StraightTaint_log
	movq	8(%r15), %rbx
	cmpl	$0, 556(%rbx)
	je	.LBB12_4
# BB#7:                                 # %if.then9
	movl	$530, %edi              # imm = 0x212
	callq	_StraightTaint_log
	cmpl	$3, (%r15)
	je	.LBB12_9
# BB#8:                                 # %if.then12
	movl	$531, %edi              # imm = 0x213
	callq	_StraightTaint_log
	movl	704(%rbx), %edi
	callq	fdwatch_del_fd
	movq	8(%r15), %rbx
.LBB12_9:                               # %if.end14
	movl	$532, %edi              # imm = 0x214
	callq	_StraightTaint_log
	movl	$4, (%r15)
	movl	704(%rbx), %edi
	movl	$1, %esi
	callq	shutdown
	movq	8(%r15), %rax
	movl	704(%rax), %edi
	xorl	%edx, %edx
	movq	%r15, %rsi
	callq	fdwatch_add_fd
	cmpq	$0, 104(%r15)
	je	.LBB12_11
# BB#10:                                # %if.then22
	movl	$533, %edi              # imm = 0x215
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str44, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB12_11:                              # %if.end23
	movl	$534, %edi              # imm = 0x216
	callq	_StraightTaint_log
	movl	$linger_clear_connection, %esi
	movl	$500, %ecx              # imm = 0x1F4
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 104(%r15)
	jne	.LBB12_5
# BB#12:                                # %if.then28
	movl	$535, %edi              # imm = 0x217
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str45, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB12_4:                               # %if.else
	movl	$536, %edi              # imm = 0x218
	callq	_StraightTaint_log
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	really_clear_connection
.LBB12_5:                               # %if.end30
	movl	$537, %edi              # imm = 0x219
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp147:
	.size	clear_connection, .Ltmp147-clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	shut_down,@function
shut_down:                              # @shut_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp156:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp157:
	.cfi_def_cfa_offset 64
.Ltmp158:
	.cfi_offset %rbx, -40
.Ltmp159:
	.cfi_offset %r14, -32
.Ltmp160:
	.cfi_offset %r15, -24
.Ltmp161:
	.cfi_offset %rbp, -16
	movl	$538, %edi              # imm = 0x21A
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	leaq	8(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gettimeofday
	movq	%rbp, %rdi
	callq	logstats
	cmpl	$0, max_connects(%rip)
	movl	$8, %ebx
	jle	.LBB13_7
# BB#1:
	leaq	8(%rsp), %r14
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$539, %edi              # imm = 0x21B
	callq	_StraightTaint_log
	movq	connects(%rip), %rbp
	cmpl	$0, -8(%rbp,%rbx)
	je	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$540, %edi              # imm = 0x21C
	callq	_StraightTaint_log
	movq	(%rbp,%rbx), %rdi
	movq	%r14, %rsi
	callq	httpd_close_conn
	movq	connects(%rip), %rbp
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$541, %edi              # imm = 0x21D
	callq	_StraightTaint_log
	movq	(%rbp,%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB13_6
# BB#5:                                 # %if.then8
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$542, %edi              # imm = 0x21E
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	httpd_destroy_conn
	movq	connects(%rip), %rax
	movq	(%rax,%rbx), %rdi
	callq	free
	decl	httpd_conn_count(%rip)
	movq	connects(%rip), %rax
	movq	$0, (%rax,%rbx)
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$543, %edi              # imm = 0x21F
	callq	_StraightTaint_log
	incl	%r15d
	addq	$144, %rbx
	cmpl	max_connects(%rip), %r15d
	jl	.LBB13_2
.LBB13_7:                               # %for.end
	movl	$544, %edi              # imm = 0x220
	callq	_StraightTaint_log
	movq	hs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB13_13
# BB#8:                                 # %if.then20
	movl	$545, %edi              # imm = 0x221
	callq	_StraightTaint_log
	movq	$0, hs(%rip)
	movl	72(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB13_10
# BB#9:                                 # %if.then22
	movl	$546, %edi              # imm = 0x222
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	fdwatch_del_fd
.LBB13_10:                              # %if.end24
	movl	$547, %edi              # imm = 0x223
	callq	_StraightTaint_log
	movl	76(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB13_12
# BB#11:                                # %if.then26
	movl	$548, %edi              # imm = 0x224
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	fdwatch_del_fd
.LBB13_12:                              # %if.end28
	movl	$549, %edi              # imm = 0x225
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	httpd_terminate
.LBB13_13:                              # %if.end29
	movl	$550, %edi              # imm = 0x226
	callq	_StraightTaint_log
	callq	mmc_destroy
	callq	tmr_destroy
	movq	connects(%rip), %rdi
	callq	free
	movq	throttles(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB13_15
# BB#14:                                # %if.then31
	movl	$551, %edi              # imm = 0x227
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB13_15:                              # %if.end32
	movl	$552, %edi              # imm = 0x228
	callq	_StraightTaint_log
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp162:
	.size	shut_down, .Ltmp162-shut_down
	.cfi_endproc

	.align	16, 0x90
	.type	logstats,@function
logstats:                               # @logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp166:
	.cfi_def_cfa_offset 32
.Ltmp167:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$553, %edi              # imm = 0x229
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$554, %edi              # imm = 0x22A
	callq	_StraightTaint_log
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gettimeofday
.LBB14_2:                               # %if.end
	movl	$555, %edi              # imm = 0x22B
	callq	_StraightTaint_log
	movq	(%rbx), %rax
	movq	%rax, %rdx
	subq	start_time(%rip), %rdx
	movq	%rax, %rcx
	subq	stats_time(%rip), %rcx
	movl	$1, %ebx
	cmovneq	%rcx, %rbx
	movq	%rax, stats_time(%rip)
	movl	$6, %edi
	movl	$.L.str39, %esi
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	syslog
	testq	%rbx, %rbx
	jle	.LBB14_4
# BB#3:                                 # %if.then.i
	movl	$556, %edi              # imm = 0x22C
	callq	_StraightTaint_log
	movq	stats_connections(%rip), %rdx
	cvtsi2ssq	%rdx, %xmm0
	cvtsi2ssq	%rbx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	stats_simultaneous(%rip), %ecx
	movq	stats_bytes(%rip), %r8
	cvtsi2ssq	%r8, %xmm2
	divss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	movl	httpd_conn_count(%rip), %r9d
	movl	$6, %edi
	movl	$.L.str40, %esi
	movb	$2, %al
	callq	syslog
.LBB14_4:                               # %thttpd_logstats.exit
	movl	$557, %edi              # imm = 0x22D
	callq	_StraightTaint_log
	movq	$0, stats_connections(%rip)
	movq	$0, stats_bytes(%rip)
	movl	$0, stats_simultaneous(%rip)
	movq	%rbx, %rdi
	callq	httpd_logstats
	movq	%rbx, %rdi
	callq	mmc_logstats
	movq	%rbx, %rdi
	callq	fdwatch_logstats
	movq	%rbx, %rdi
	addq	$16, %rsp
	popq	%rbx
	jmp	tmr_logstats            # TAILCALL
.Ltmp168:
	.size	logstats, .Ltmp168-logstats
	.cfi_endproc

	.align	16, 0x90
	.type	linger_clear_connection,@function
linger_clear_connection:                # @linger_clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp174:
	.cfi_def_cfa_offset 32
.Ltmp175:
	.cfi_offset %rbx, -24
.Ltmp176:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$558, %edi              # imm = 0x22E
	callq	_StraightTaint_log
	movq	$0, 104(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	really_clear_connection # TAILCALL
.Ltmp177:
	.size	linger_clear_connection, .Ltmp177-linger_clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	really_clear_connection,@function
really_clear_connection:                # @really_clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp185:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp187:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 48
.Ltmp189:
	.cfi_offset %rbx, -48
.Ltmp190:
	.cfi_offset %r12, -40
.Ltmp191:
	.cfi_offset %r14, -32
.Ltmp192:
	.cfi_offset %r15, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	$559, %edi              # imm = 0x22F
	callq	_StraightTaint_log
	movq	8(%r12), %r15
	movq	200(%r15), %rax
	addq	%rax, stats_bytes(%rip)
	cmpl	$3, (%r12)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$560, %edi              # imm = 0x230
	callq	_StraightTaint_log
	movl	704(%r15), %edi
	callq	fdwatch_del_fd
	movq	8(%r12), %r15
.LBB16_2:                               # %if.end
	movl	$561, %edi              # imm = 0x231
	callq	_StraightTaint_log
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	httpd_close_conn
	movl	56(%r12), %ebp
	testl	%ebp, %ebp
	jle	.LBB16_5
# BB#3:                                 # %for.body.lr.ph.i
	movl	$562, %edi              # imm = 0x232
	callq	_StraightTaint_log
	movq	throttles(%rip), %r14
	leaq	16(%r12), %rbx
	.align	16, 0x90
.LBB16_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$563, %edi              # imm = 0x233
	callq	_StraightTaint_log
	movslq	(%rbx), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	decl	40(%r14,%rax)
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB16_4
.LBB16_5:                               # %clear_throttles.exit
	movl	$564, %edi              # imm = 0x234
	callq	_StraightTaint_log
	movq	104(%r12), %r14
	testq	%r14, %r14
	je	.LBB16_7
# BB#6:                                 # %if.then4
	movl	$565, %edi              # imm = 0x235
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	tmr_cancel
	movq	$0, 104(%r12)
.LBB16_7:                               # %if.end7
	movl	$566, %edi              # imm = 0x236
	callq	_StraightTaint_log
	movl	$0, (%r12)
	movl	first_free_connect(%rip), %eax
	movl	%eax, 4(%r12)
	subq	connects(%rip), %r12
	shrq	$4, %r12
	imull	$954437177, %r12d, %eax # imm = 0x38E38E39
	movl	%eax, first_free_connect(%rip)
	decl	num_connects(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp194:
	.size	really_clear_connection, .Ltmp194-really_clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	wakeup_connection,@function
wakeup_connection:                      # @wakeup_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp197:
	.cfi_def_cfa_offset 16
.Ltmp198:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$567, %edi              # imm = 0x237
	callq	_StraightTaint_log
	movq	$0, 96(%rbx)
	cmpl	$3, (%rbx)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$568, %edi              # imm = 0x238
	callq	_StraightTaint_log
	movl	$2, (%rbx)
	movq	8(%rbx), %rax
	movl	704(%rax), %edi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	fdwatch_add_fd
.LBB17_2:                               # %if.end
	movl	$569, %edi              # imm = 0x239
	callq	_StraightTaint_log
	popq	%rbx
	ret
.Ltmp199:
	.size	wakeup_connection, .Ltmp199-wakeup_connection
	.cfi_endproc

	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp201:
	.cfi_def_cfa_offset 16
	movl	$570, %edi              # imm = 0x23A
	callq	_StraightTaint_log
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str97, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Ltmp202:
	.size	usage, .Ltmp202-usage
	.cfi_endproc

	.globl	httpd_initialize
	.align	16, 0x90
	.type	httpd_initialize,@function
httpd_initialize:                       # @httpd_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp211:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp212:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp213:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp214:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp215:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp216:
	.cfi_def_cfa_offset 80
.Ltmp217:
	.cfi_offset %rbx, -56
.Ltmp218:
	.cfi_offset %r12, -48
.Ltmp219:
	.cfi_offset %r13, -40
.Ltmp220:
	.cfi_offset %r14, -32
.Ltmp221:
	.cfi_offset %r15, -24
.Ltmp222:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%r8, %r13
	movl	%ecx, %r15d
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movl	$571, %edi              # imm = 0x23B
	callq	_StraightTaint_log
	movl	$136, %edi
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB19_1
# BB#3:                                 # %if.end
	movl	$573, %edi              # imm = 0x23D
	callq	_StraightTaint_log
	testq	%r12, %r12
	je	.LBB19_7
# BB#4:                                 # %if.then2
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	$574, %edi              # imm = 0x23E
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	__strdup
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movq	%rbp, (%rbx)
	je	.LBB19_5
# BB#6:                                 # %if.end7
	movl	$576, %edi              # imm = 0x240
	callq	_StraightTaint_log
	movq	%rbp, 8(%rbx)
	jmp	.LBB19_12
.LBB19_1:                               # %if.then
	movl	$572, %edi              # imm = 0x23C
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str5, %esi
	jmp	.LBB19_2
.LBB19_7:                               # %if.else
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	$577, %edi              # imm = 0x241
	callq	_StraightTaint_log
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$httpd_initialize.ghnbuf, %edi
	movl	$256, %esi              # imm = 0x100
	callq	gethostname
	testl	%eax, %eax
	js	.LBB19_8
# BB#9:                                 # %if.end14
	movl	$579, %edi              # imm = 0x243
	callq	_StraightTaint_log
	cmpq	$0, 8(%rbx)
	jne	.LBB19_12
# BB#10:                                # %if.end14
	movb	httpd_initialize.ghnbuf(%rip), %al
	testb	%al, %al
	je	.LBB19_12
# BB#11:                                # %if.then20
	movl	$580, %edi              # imm = 0x244
	callq	_StraightTaint_log
	movq	$httpd_initialize.ghnbuf, 8(%rbx)
	jmp	.LBB19_12
.LBB19_5:                               # %if.then6
	movl	$575, %edi              # imm = 0x23F
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str133, %esi
	jmp	.LBB19_2
.LBB19_8:                               # %if.end14.thread
	movl	$578, %edi              # imm = 0x242
	callq	_StraightTaint_log
	movb	$0, httpd_initialize.ghnbuf(%rip)
.LBB19_12:                              # %if.end24
	movl	$581, %edi              # imm = 0x245
	callq	_StraightTaint_log
	movw	%r15w, 16(%rbx)
	testq	%r13, %r13
	je	.LBB19_13
# BB#14:                                # %if.else30
	movl	$583, %edi              # imm = 0x247
	callq	_StraightTaint_log
	movzbl	(%r13), %eax
	cmpl	$47, %eax
	jne	.LBB19_16
# BB#15:
	incq	%r13
.LBB19_16:                              # %select.end
	movq	%r13, %rdi
	callq	__strdup
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movq	%rbp, 24(%rbx)
	je	.LBB19_46
# BB#17:                                # %while.cond.preheader
	movl	$584, %edi              # imm = 0x248
	callq	_StraightTaint_log
	movl	$.L.str335, %esi
	movq	%rbp, %rdi
	jmp	.LBB19_19
	.align	16, 0x90
.LBB19_18:                              # %while.body
                                        #   in Loop: Header=BB19_19 Depth=1
	movl	$586, %edi              # imm = 0x24A
	callq	_StraightTaint_log
	leaq	1(%rbp), %rdi
	addq	$2, %rbp
	movq	%rbp, %rsi
	callq	strcpy
	movq	24(%rbx), %rdi
	movl	$.L.str335, %esi
.LBB19_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	strstr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB19_18
	jmp	.LBB19_20
.LBB19_13:                              # %if.then28
	movl	$582, %edi              # imm = 0x246
	callq	_StraightTaint_log
	movq	$0, 24(%rbx)
.LBB19_20:                              # %if.end49
	movl	$587, %edi              # imm = 0x24B
	callq	_StraightTaint_log
	movl	%r14d, 32(%rbx)
	movl	$0, 36(%rbx)
	movq	80(%rsp), %rdi
	callq	__strdup
	movq	%rax, 40(%rbx)
	movq	88(%rsp), %rdi
	callq	__strdup
	movq	%rax, 48(%rbx)
	movl	96(%rsp), %eax
	movl	%eax, 56(%rbx)
	movq	104(%rsp), %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 64(%rbx)
	je	.LBB19_21
# BB#22:                                # %if.end62
	movl	$589, %edi              # imm = 0x24D
	callq	_StraightTaint_log
	movq	152(%rsp), %r14
	testq	%r14, %r14
	movq	160(%rsp), %rbp
	je	.LBB19_23
# BB#28:                                # %if.else67
	movl	$591, %edi              # imm = 0x24F
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 112(%rbx)
	movq	8(%rsp), %r15           # 8-byte Reload
	jne	.LBB19_24
# BB#29:                                # %if.then73
	movl	$592, %edi              # imm = 0x250
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str537, %esi
	jmp	.LBB19_2
.LBB19_21:                              # %if.then61
	movl	$588, %edi              # imm = 0x24C
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str436, %esi
	jmp	.LBB19_2
.LBB19_46:                              # %if.then41
	movl	$585, %edi              # imm = 0x249
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str234, %esi
	jmp	.LBB19_2
.LBB19_23:                              # %if.then65
	movl	$590, %edi              # imm = 0x24E
	callq	_StraightTaint_log
	movq	$0, 112(%rbx)
	movq	8(%rsp), %r15           # 8-byte Reload
.LBB19_24:                              # %if.end75
	movl	$593, %edi              # imm = 0x251
	callq	_StraightTaint_log
	testq	%rbp, %rbp
	movq	16(%rsp), %r12          # 8-byte Reload
	je	.LBB19_25
# BB#30:                                # %if.else80
	movl	$595, %edi              # imm = 0x253
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 120(%rbx)
	jne	.LBB19_26
# BB#31:                                # %if.then86
	movl	$596, %edi              # imm = 0x254
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str638, %esi
.LBB19_2:                               # %return
	xorl	%eax, %eax
	callq	syslog
.LBB19_45:                              # %return
	movl	$610, %edi              # imm = 0x262
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB19_25:                              # %if.then78
	movl	$594, %edi              # imm = 0x252
	callq	_StraightTaint_log
	movq	$0, 120(%rbx)
.LBB19_26:                              # %httpd_set_logfp.exit
	movl	$597, %edi              # imm = 0x255
	callq	_StraightTaint_log
	movl	112(%rsp), %eax
	movl	%eax, 80(%rbx)
	movq	120(%rsp), %rax
	movq	%rax, 88(%rbx)
	movl	128(%rsp), %eax
	movl	%eax, 96(%rbx)
	movl	136(%rsp), %eax
	movl	%eax, 100(%rbx)
	movl	144(%rsp), %eax
	movl	%eax, 104(%rbx)
	movl	168(%rsp), %eax
	movl	%eax, 128(%rbx)
	testq	%r12, %r12
	je	.LBB19_27
# BB#32:                                # %if.else98
	movl	$599, %edi              # imm = 0x257
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	initialize_listen_socket
	movl	%eax, 76(%rbx)
	jmp	.LBB19_33
.LBB19_27:                              # %if.then97
	movl	$598, %edi              # imm = 0x256
	callq	_StraightTaint_log
	movl	$-1, 76(%rbx)
.LBB19_33:                              # %if.end101
	movl	$600, %edi              # imm = 0x258
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB19_34
# BB#35:                                # %if.end108
	movl	$602, %edi              # imm = 0x25A
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	initialize_listen_socket
	leaq	72(%rbx), %r14
	cmpl	$-1, %eax
	movl	%eax, 72(%rbx)
	jne	.LBB19_38
	jmp	.LBB19_36
.LBB19_34:                              # %if.end108.thread
	movl	$601, %edi              # imm = 0x259
	callq	_StraightTaint_log
	leaq	72(%rbx), %r14
	movl	$-1, 72(%rbx)
.LBB19_36:                              # %land.lhs.true
	movl	$603, %edi              # imm = 0x25B
	callq	_StraightTaint_log
	cmpl	$-1, 76(%rbx)
	je	.LBB19_37
.LBB19_38:                              # %if.end116
	movl	$605, %edi              # imm = 0x25D
	callq	_StraightTaint_log
	movl	$enc_tab, %edi
	movl	$3, %esi
	movl	$32, %edx
	movl	$ext_compare, %ecx
	callq	qsort
	movl	$typ_tab, %edi
	movl	$190, %esi
	movl	$32, %edx
	movl	$ext_compare, %ecx
	callq	qsort
	movq	enc_tab(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+8(%rip)
	movq	enc_tab+16(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+24(%rip)
	movq	enc_tab+32(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+40(%rip)
	movq	enc_tab+48(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+56(%rip)
	movq	enc_tab+64(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+72(%rip)
	movq	enc_tab+80(%rip), %rdi
	callq	strlen
	movq	%rax, enc_tab+88(%rip)
	movq	$-6080, %rbp            # imm = 0xFFFFFFFFFFFFE840
	.align	16, 0x90
.LBB19_39:                              # %for.body10.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$606, %edi              # imm = 0x25E
	callq	_StraightTaint_log
	movq	typ_tab+6080(%rbp), %rdi
	callq	strlen
	movq	%rax, typ_tab+6088(%rbp)
	movq	typ_tab+6096(%rbp), %rdi
	callq	strlen
	movq	%rax, typ_tab+6104(%rbp)
	addq	$32, %rbp
	jne	.LBB19_39
# BB#40:                                # %init_mime.exit
	movl	$607, %edi              # imm = 0x25F
	callq	_StraightTaint_log
	cmpq	$0, (%rbx)
	movq	%r15, %rbp
	je	.LBB19_41
# BB#42:                                # %if.else123
	movl	$609, %edi              # imm = 0x261
	callq	_StraightTaint_log
	cmpl	$-1, (%r14)
	jne	.LBB19_44
# BB#43:                                # %select.mid25
	movq	%r12, %rbp
.LBB19_44:                              # %select.end24
	movq	%rbp, %rdi
	callq	httpd_ntoa
	movzwl	16(%rbx), %r8d
	movl	$5, %edi
	movl	$.L.str941, %esi
	movl	$.L.str840, %edx
	movl	$httpd_ntoa.str, %ecx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB19_45
.LBB19_41:                              # %if.then120
	movl	$608, %edi              # imm = 0x260
	callq	_StraightTaint_log
	movzwl	16(%rbx), %ecx
	movl	$5, %edi
	movl	$.L.str739, %esi
	movl	$.L.str840, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB19_45
.LBB19_37:                              # %if.then115
	movl	$604, %edi              # imm = 0x25C
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free_httpd_server
	xorl	%ebx, %ebx
	jmp	.LBB19_45
.Ltmp223:
	.size	httpd_initialize, .Ltmp223-httpd_initialize
	.cfi_endproc

	.globl	httpd_set_logfp
	.align	16, 0x90
	.type	httpd_set_logfp,@function
httpd_set_logfp:                        # @httpd_set_logfp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp228:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp229:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 32
.Ltmp231:
	.cfi_offset %rbx, -32
.Ltmp232:
	.cfi_offset %r14, -24
.Ltmp233:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$611, %edi              # imm = 0x263
	callq	_StraightTaint_log
	movq	88(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$612, %edi              # imm = 0x264
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	fclose
.LBB20_2:                               # %if.end
	movl	$613, %edi              # imm = 0x265
	callq	_StraightTaint_log
	movq	%r14, 88(%r15)
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp234:
	.size	httpd_set_logfp, .Ltmp234-httpd_set_logfp
	.cfi_endproc

	.globl	httpd_ntoa
	.align	16, 0x90
	.type	httpd_ntoa,@function
httpd_ntoa:                             # @httpd_ntoa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp240:
	.cfi_def_cfa_offset 32
.Ltmp241:
	.cfi_offset %rbx, -24
.Ltmp242:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$614, %edi              # imm = 0x266
	callq	_StraightTaint_log
	movzwl	(%rbx), %eax
	movl	$16, %ebp
	cmpl	$2, %eax
	je	.LBB21_4
# BB#1:                                 # %entry
	cmpl	$10, %eax
	jne	.LBB21_3
# BB#2:                                 # %sw.bb1.i
	movl	$615, %edi              # imm = 0x267
	callq	_StraightTaint_log
	movl	$28, %ebp
	jmp	.LBB21_4
.LBB21_3:                               # %sw.default.i
	movl	$616, %edi              # imm = 0x268
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
.LBB21_4:                               # %sockaddr_len.exit
	movl	$617, %edi              # imm = 0x269
	callq	_StraightTaint_log
	movl	$1, (%rsp)
	movl	$httpd_ntoa.str, %edx
	movl	$200, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	getnameinfo
	testl	%eax, %eax
	je	.LBB21_6
# BB#5:                                 # %if.then
	movl	$618, %edi              # imm = 0x26A
	callq	_StraightTaint_log
	movb	$63, httpd_ntoa.str(%rip)
	movb	$0, httpd_ntoa.str+1(%rip)
	jmp	.LBB21_11
.LBB21_6:                               # %if.else
	movl	$619, %edi              # imm = 0x26B
	callq	_StraightTaint_log
	cmpl	$0, 8(%rbx)
	jne	.LBB21_11
# BB#7:                                 # %land.lhs.true
	movl	$620, %edi              # imm = 0x26C
	callq	_StraightTaint_log
	cmpl	$0, 12(%rbx)
	jne	.LBB21_11
# BB#8:                                 # %land.rhs
	movl	$621, %edi              # imm = 0x26D
	callq	_StraightTaint_log
	cmpl	$-65536, 16(%rbx)       # imm = 0xFFFFFFFFFFFF0000
	jne	.LBB21_11
# BB#9:                                 # %land.lhs.true18
	movl	$622, %edi              # imm = 0x26E
	callq	_StraightTaint_log
	movl	$httpd_ntoa.str, %edi
	movl	$.L.str5698, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB21_11
# BB#10:                                # %if.then22
	movl	$623, %edi              # imm = 0x26F
	callq	_StraightTaint_log
	movl	$httpd_ntoa.str, %edi
	movl	$httpd_ntoa.str+7, %esi
	callq	strcpy
.LBB21_11:                              # %if.end24
	movl	$624, %edi              # imm = 0x270
	callq	_StraightTaint_log
	movl	$httpd_ntoa.str, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp243:
	.size	httpd_ntoa, .Ltmp243-httpd_ntoa
	.cfi_endproc

	.globl	httpd_terminate
	.align	16, 0x90
	.type	httpd_terminate,@function
httpd_terminate:                        # @httpd_terminate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp247:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp248:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp249:
	.cfi_def_cfa_offset 32
.Ltmp250:
	.cfi_offset %rbx, -24
.Ltmp251:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$625, %edi              # imm = 0x271
	callq	_StraightTaint_log
	movl	72(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB22_2
# BB#1:                                 # %if.then.i
	movl	$626, %edi              # imm = 0x272
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
	movl	$-1, 72(%rbx)
.LBB22_2:                               # %if.end.i
	movl	$627, %edi              # imm = 0x273
	callq	_StraightTaint_log
	movl	76(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB22_4
# BB#3:                                 # %if.then4.i
	movl	$628, %edi              # imm = 0x274
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
	movl	$-1, 76(%rbx)
.LBB22_4:                               # %httpd_unlisten.exit
	movl	$629, %edi              # imm = 0x275
	callq	_StraightTaint_log
	movq	88(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB22_6
# BB#5:                                 # %if.then
	movl	$630, %edi              # imm = 0x276
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	fclose
.LBB22_6:                               # %if.end
	movl	$631, %edi              # imm = 0x277
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	free_httpd_server       # TAILCALL
.Ltmp252:
	.size	httpd_terminate, .Ltmp252-httpd_terminate
	.cfi_endproc

	.globl	httpd_unlisten
	.align	16, 0x90
	.type	httpd_unlisten,@function
httpd_unlisten:                         # @httpd_unlisten
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp257:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp258:
	.cfi_def_cfa_offset 32
.Ltmp259:
	.cfi_offset %rbx, -24
.Ltmp260:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$632, %edi              # imm = 0x278
	callq	_StraightTaint_log
	movl	72(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$633, %edi              # imm = 0x279
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
	movl	$-1, 72(%rbx)
.LBB23_2:                               # %if.end
	movl	$634, %edi              # imm = 0x27A
	callq	_StraightTaint_log
	movl	76(%rbx), %ebp
	cmpl	$-1, %ebp
	je	.LBB23_4
# BB#3:                                 # %if.then4
	movl	$635, %edi              # imm = 0x27B
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
	movl	$-1, 76(%rbx)
.LBB23_4:                               # %if.end8
	movl	$636, %edi              # imm = 0x27C
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp261:
	.size	httpd_unlisten, .Ltmp261-httpd_unlisten
	.cfi_endproc

	.globl	httpd_write_response
	.align	16, 0x90
	.type	httpd_write_response,@function
httpd_write_response:                   # @httpd_write_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp271:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp272:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp273:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp274:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp275:
	.cfi_def_cfa_offset 80
.Ltmp276:
	.cfi_offset %rbx, -56
.Ltmp277:
	.cfi_offset %r12, -48
.Ltmp278:
	.cfi_offset %r13, -40
.Ltmp279:
	.cfi_offset %r14, -32
.Ltmp280:
	.cfi_offset %r15, -24
.Ltmp281:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movl	$637, %edi              # imm = 0x27D
	callq	_StraightTaint_log
	movzbl	sub_process(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB24_4
# BB#1:                                 # %if.then
	movl	$638, %edi              # imm = 0x27E
	callq	_StraightTaint_log
	movl	704(%rbp), %r15d
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r15d, %edi
	callq	fcntl
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB24_4
# BB#2:                                 # %if.then.i
	movl	$639, %edi              # imm = 0x27F
	callq	_StraightTaint_log
	movl	%ebx, %r14d
	andl	$-2049, %r14d           # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%ebx, %r14d
	je	.LBB24_4
# BB#3:                                 # %if.then2.i
	movl	$640, %edi              # imm = 0x280
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r15d, %edi
	movl	%r14d, %edx
	callq	fcntl
.LBB24_4:                               # %if.end
	movl	$641, %edi              # imm = 0x281
	callq	_StraightTaint_log
	movq	472(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB24_14
# BB#5:                                 # %if.then1
	movl	$642, %edi              # imm = 0x282
	callq	_StraightTaint_log
	movl	704(%rbp), %r15d
	movq	368(%rbp), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rbp, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
.LBB24_7:                               # %while.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_9 Depth 2
	movl	$644, %edi              # imm = 0x284
	callq	_StraightTaint_log
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%r13), %r12
	movq	16(%rsp), %rbp          # 8-byte Reload
	subq	%r13, %rbp
	movl	%r15d, %edi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	write
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB24_12
# BB#8:                                 # %land.lhs.true.i.lr.ph
                                        #   in Loop: Header=BB24_7 Depth=1
	movl	$645, %edi              # imm = 0x285
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, %r13
	.align	16, 0x90
.LBB24_9:                               # %land.lhs.true.i
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$646, %edi              # imm = 0x286
	callq	_StraightTaint_log
	movl	(%r13), %eax
	cmpl	$4, %eax
	je	.LBB24_11
# BB#10:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB24_9 Depth=2
	cmpl	$11, %eax
	jne	.LBB24_13
.LBB24_11:                              # %if.then.i13
                                        #   in Loop: Header=BB24_9 Depth=2
	movl	$647, %edi              # imm = 0x287
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	write
	movq	%rax, %rbx
	testl	%ebx, %ebx
	js	.LBB24_9
.LBB24_12:                              # %if.end16.i
                                        #   in Loop: Header=BB24_7 Depth=1
	movl	$648, %edi              # imm = 0x288
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	je	.LBB24_13
# BB#6:                                 # %while.cond.outer.i
                                        #   in Loop: Header=BB24_7 Depth=1
	addl	%r14d, %ebx
	movl	$643, %edi              # imm = 0x283
	callq	_StraightTaint_log
	movslq	%ebx, %r13
	cmpq	16(%rsp), %r13          # 8-byte Folded Reload
	movl	%ebx, %r14d
	jb	.LBB24_7
.LBB24_13:                              # %httpd_write_fully.exit
	movl	$649, %edi              # imm = 0x289
	callq	_StraightTaint_log
	movq	(%rsp), %rax            # 8-byte Reload
	movq	$0, 472(%rax)
.LBB24_14:                              # %if.end5
	movl	$650, %edi              # imm = 0x28A
	callq	_StraightTaint_log
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp282:
	.size	httpd_write_response, .Ltmp282-httpd_write_response
	.cfi_endproc

	.globl	httpd_clear_ndelay
	.align	16, 0x90
	.type	httpd_clear_ndelay,@function
httpd_clear_ndelay:                     # @httpd_clear_ndelay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp287:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp288:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp289:
	.cfi_def_cfa_offset 32
.Ltmp290:
	.cfi_offset %rbx, -32
.Ltmp291:
	.cfi_offset %r14, -24
.Ltmp292:
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	$651, %edi              # imm = 0x28B
	callq	_StraightTaint_log
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB25_3
# BB#1:                                 # %if.then
	movl	$652, %edi              # imm = 0x28C
	callq	_StraightTaint_log
	movl	%ebx, %ebp
	andl	$-2049, %ebp            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%ebx, %ebp
	je	.LBB25_3
# BB#2:                                 # %if.then2
	movl	$653, %edi              # imm = 0x28D
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r14d, %edi
	movl	%ebp, %edx
	callq	fcntl
.LBB25_3:                               # %if.end4
	movl	$654, %edi              # imm = 0x28E
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp293:
	.size	httpd_clear_ndelay, .Ltmp293-httpd_clear_ndelay
	.cfi_endproc

	.globl	httpd_write_fully
	.align	16, 0x90
	.type	httpd_write_fully,@function
httpd_write_fully:                      # @httpd_write_fully
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp301:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp302:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp303:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp304:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp305:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp306:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp307:
	.cfi_def_cfa_offset 80
.Ltmp308:
	.cfi_offset %rbx, -56
.Ltmp309:
	.cfi_offset %r12, -48
.Ltmp310:
	.cfi_offset %r13, -40
.Ltmp311:
	.cfi_offset %r14, -32
.Ltmp312:
	.cfi_offset %r15, -24
.Ltmp313:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%edi, %r12d
	movl	$655, %edi              # imm = 0x28F
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB26_1
# BB#2:
	xorl	%r14d, %r14d
.LBB26_4:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
	movl	$657, %edi              # imm = 0x291
	callq	_StraightTaint_log
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%r15), %r13
	movq	16(%rsp), %rbp          # 8-byte Reload
	subq	%r15, %rbp
	jmp	.LBB26_5
	.align	16, 0x90
.LBB26_8:                               # %if.then
                                        #   in Loop: Header=BB26_5 Depth=2
	movl	$660, %edi              # imm = 0x294
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
.LBB26_5:                               # %while.body
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$658, %edi              # imm = 0x292
	callq	_StraightTaint_log
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	write
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB26_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_5 Depth=2
	movl	$659, %edi              # imm = 0x293
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB26_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_5 Depth=2
	cmpl	$11, %eax
	je	.LBB26_8
	jmp	.LBB26_11
	.align	16, 0x90
.LBB26_9:                               # %if.end16
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	$661, %edi              # imm = 0x295
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	je	.LBB26_10
# BB#3:                                 # %while.cond.outer
                                        #   in Loop: Header=BB26_4 Depth=1
	addl	%r14d, %ebx
	movl	$656, %edi              # imm = 0x290
	callq	_StraightTaint_log
	movslq	%ebx, %r15
	cmpq	16(%rsp), %r15          # 8-byte Folded Reload
	movl	%ebx, %r14d
	jb	.LBB26_4
	jmp	.LBB26_11
.LBB26_1:
	xorl	%ebx, %ebx
.LBB26_11:                              # %return
	movl	$662, %edi              # imm = 0x296
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB26_10:
	movl	%r14d, %ebx
	jmp	.LBB26_11
.Ltmp314:
	.size	httpd_write_fully, .Ltmp314-httpd_write_fully
	.cfi_endproc

	.globl	httpd_set_ndelay
	.align	16, 0x90
	.type	httpd_set_ndelay,@function
httpd_set_ndelay:                       # @httpd_set_ndelay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp319:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp320:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp321:
	.cfi_def_cfa_offset 32
.Ltmp322:
	.cfi_offset %rbx, -32
.Ltmp323:
	.cfi_offset %r14, -24
.Ltmp324:
	.cfi_offset %rbp, -16
	movl	%edi, %r14d
	movl	$663, %edi              # imm = 0x297
	callq	_StraightTaint_log
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB27_3
# BB#1:                                 # %if.then
	movl	$664, %edi              # imm = 0x298
	callq	_StraightTaint_log
	movl	%ebx, %ebp
	orl	$2048, %ebp             # imm = 0x800
	cmpl	%ebx, %ebp
	je	.LBB27_3
# BB#2:                                 # %if.then2
	movl	$665, %edi              # imm = 0x299
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r14d, %edi
	movl	%ebp, %edx
	callq	fcntl
.LBB27_3:                               # %if.end4
	movl	$666, %edi              # imm = 0x29A
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp325:
	.size	httpd_set_ndelay, .Ltmp325-httpd_set_ndelay
	.cfi_endproc

	.globl	httpd_realloc_str
	.align	16, 0x90
	.type	httpd_realloc_str,@function
httpd_realloc_str:                      # @httpd_realloc_str
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp331:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp332:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp333:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp334:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp335:
	.cfi_def_cfa_offset 48
.Ltmp336:
	.cfi_offset %rbx, -40
.Ltmp337:
	.cfi_offset %r12, -32
.Ltmp338:
	.cfi_offset %r14, -24
.Ltmp339:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$667, %edi              # imm = 0x29B
	callq	_StraightTaint_log
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB28_1
# BB#2:                                 # %if.else
	movl	$669, %edi              # imm = 0x29D
	callq	_StraightTaint_log
	cmpq	%r12, %rbx
	jae	.LBB28_5
# BB#3:                                 # %if.then6
	movl	$670, %edi              # imm = 0x29E
	callq	_StraightTaint_log
	subq	%rbx, str_alloc_size(%rip)
	movq	(%r15), %rax
	addq	%rax, %rax
	leaq	(%r12,%r12,4), %rsi
	shrq	$2, %rsi
	cmpq	%rsi, %rax
	cmovaq	%rax, %rsi
	movq	%rsi, (%r15)
	movq	(%r14), %rdi
	incq	%rsi
	callq	realloc
	movq	%rax, %r12
	movq	%r12, (%r14)
	movq	str_alloc_size(%rip), %rbx
	addq	(%r15), %rbx
	jmp	.LBB28_4
.LBB28_1:                               # %if.then
	movl	$668, %edi              # imm = 0x29C
	callq	_StraightTaint_log
	addq	$100, %r12
	cmpq	$200, %r12
	movl	$200, %ebx
	cmovaeq	%r12, %rbx
	movq	%rbx, (%r15)
	leaq	1(%rbx), %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%r12, (%r14)
	incl	str_alloc_count(%rip)
	addq	str_alloc_size(%rip), %rbx
.LBB28_4:                               # %if.end22
	movl	$671, %edi              # imm = 0x29F
	callq	_StraightTaint_log
	movq	%rbx, str_alloc_size(%rip)
	testq	%r12, %r12
	je	.LBB28_6
.LBB28_5:                               # %if.end25
	movl	$673, %edi              # imm = 0x2A1
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB28_6:                               # %if.then24
	movl	$672, %edi              # imm = 0x2A0
	callq	_StraightTaint_log
	movq	(%r15), %rcx
	movl	$3, %edi
	movl	$.L.str1659, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp340:
	.size	httpd_realloc_str, .Ltmp340-httpd_realloc_str
	.cfi_endproc

	.globl	httpd_send_err
	.align	16, 0x90
	.type	httpd_send_err,@function
httpd_send_err:                         # @httpd_send_err
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp348:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp349:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp350:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp351:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp352:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp353:
	.cfi_def_cfa_offset 56
	subq	$1016, %rsp             # imm = 0x3F8
.Ltmp354:
	.cfi_def_cfa_offset 1072
.Ltmp355:
	.cfi_offset %rbx, -56
.Ltmp356:
	.cfi_offset %r12, -48
.Ltmp357:
	.cfi_offset %r13, -40
.Ltmp358:
	.cfi_offset %r14, -32
.Ltmp359:
	.cfi_offset %r15, -24
.Ltmp360:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$674, %edi              # imm = 0x2A2
	callq	_StraightTaint_log
	movq	8(%rbx), %rax
	cmpl	$0, 100(%rax)
	je	.LBB29_3
# BB#1:                                 # %land.lhs.true
	movl	$675, %edi              # imm = 0x2A3
	callq	_StraightTaint_log
	movq	344(%rbx), %r14
	cmpb	$0, (%r14)
	je	.LBB29_3
# BB#2:                                 # %if.then
	movl	$676, %edi              # imm = 0x2A4
	callq	_StraightTaint_log
	leaq	16(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str1760, %edx
	movl	$.L.str1861, %r8d
	xorl	%eax, %eax
	movq	%r14, %rcx
	movq	%rbp, %rdi
	movl	%r15d, %r9d
	callq	my_snprintf
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbp, %r8
	callq	send_err_file
	testl	%eax, %eax
	jne	.LBB29_5
.LBB29_3:                               # %if.end7
	movl	$677, %edi              # imm = 0x2A5
	callq	_StraightTaint_log
	leaq	16(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str1962, %edx
	movl	$.L.str1861, %ecx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %r8d
	callq	my_snprintf
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%rbp, %r8
	callq	send_err_file
	testl	%eax, %eax
	jne	.LBB29_5
# BB#4:                                 # %if.end14
	movl	$678, %edi              # imm = 0x2A6
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	send_response
.LBB29_5:                               # %cleanup
	movl	$679, %edi              # imm = 0x2A7
	callq	_StraightTaint_log
	addq	$1016, %rsp             # imm = 0x3F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp361:
	.size	httpd_send_err, .Ltmp361-httpd_send_err
	.cfi_endproc

	.globl	httpd_method_str
	.align	16, 0x90
	.type	httpd_method_str,@function
httpd_method_str:                       # @httpd_method_str
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp365:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp366:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp367:
	.cfi_def_cfa_offset 32
.Ltmp368:
	.cfi_offset %rbx, -24
.Ltmp369:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$680, %edi              # imm = 0x2A8
	callq	_StraightTaint_log
	cmpl	$1, %ebp
	movl	$.L.str2063, %ebx
	je	.LBB30_6
# BB#1:                                 # %entry
	cmpl	$3, %ebp
	jne	.LBB30_2
# BB#4:                                 # %sw.bb2
	movl	$682, %edi              # imm = 0x2AA
	callq	_StraightTaint_log
	movl	$.L.str2265, %ebx
	jmp	.LBB30_6
.LBB30_2:                               # %entry
	cmpl	$2, %ebp
	jne	.LBB30_5
# BB#3:                                 # %sw.bb1
	movl	$681, %edi              # imm = 0x2A9
	callq	_StraightTaint_log
	movl	$.L.str2164, %ebx
	jmp	.LBB30_6
.LBB30_5:                               # %sw.default
	movl	$683, %edi              # imm = 0x2AB
	callq	_StraightTaint_log
	movl	$.L.str2366, %ebx
.LBB30_6:                               # %return
	movl	$684, %edi              # imm = 0x2AC
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp370:
	.size	httpd_method_str, .Ltmp370-httpd_method_str
	.cfi_endproc

	.globl	httpd_get_conn
	.align	16, 0x90
	.type	httpd_get_conn,@function
httpd_get_conn:                         # @httpd_get_conn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp378:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp379:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp380:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp381:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp382:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp383:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp384:
	.cfi_def_cfa_offset 256
.Ltmp385:
	.cfi_offset %rbx, -56
.Ltmp386:
	.cfi_offset %r12, -48
.Ltmp387:
	.cfi_offset %r13, -40
.Ltmp388:
	.cfi_offset %r14, -32
.Ltmp389:
	.cfi_offset %r15, -24
.Ltmp390:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$685, %edi              # imm = 0x2AD
	callq	_StraightTaint_log
	cmpl	$0, (%rbx)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$686, %edi              # imm = 0x2AE
	callq	_StraightTaint_log
	leaq	152(%rbx), %rsi
	movq	$0, 152(%rbx)
	leaq	144(%rbx), %rdi
	movl	$500, %edx              # imm = 0x1F4
	callq	httpd_realloc_str
	leaq	464(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	456(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	448(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	440(%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	432(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	424(%rbx), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	416(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	408(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	400(%rbx), %r12
	movq	%r14, %r15
	leaq	392(%rbx), %r14
	leaq	384(%rbx), %r13
	leaq	376(%rbx), %rsi
	leaq	216(%rbx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 456(%rbx)
	movups	%xmm0, 440(%rbx)
	movups	%xmm0, 424(%rbx)
	movups	%xmm0, 408(%rbx)
	movups	%xmm0, 392(%rbx)
	movups	%xmm0, 376(%rbx)
	movl	$1, %edx
	callq	httpd_realloc_str
	leaq	232(%rbx), %rdi
	movl	$1, %edx
	movq	%r13, %rsi
	callq	httpd_realloc_str
	leaq	240(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r15, %r14
	callq	httpd_realloc_str
	leaq	248(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r12, %rsi
	callq	httpd_realloc_str
	leaq	256(%rbx), %rdi
	xorl	%edx, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	httpd_realloc_str
	leaq	264(%rbx), %rdi
	xorl	%edx, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	httpd_realloc_str
	leaq	288(%rbx), %rdi
	xorl	%edx, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	leaq	296(%rbx), %rdi
	xorl	%edx, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	leaq	328(%rbx), %rdi
	xorl	%edx, %edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	leaq	344(%rbx), %rdi
	xorl	%edx, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	leaq	360(%rbx), %rdi
	xorl	%edx, %edx
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	leaq	368(%rbx), %rdi
	xorl	%edx, %edx
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	movl	$1, (%rbx)
.LBB31_2:                               # %if.end
	movl	$687, %edi              # imm = 0x2AF
	callq	_StraightTaint_log
	movl	$128, 68(%rsp)
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	leaq	72(%rsp), %rsi
	leaq	68(%rsp), %rdx
	movl	%ebp, %edi
	callq	accept
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%ebp, 704(%rbx)
	js	.LBB31_3
# BB#5:                                 # %if.end22
	movl	$690, %edi              # imm = 0x2B2
	callq	_StraightTaint_log
	movzwl	72(%rsp), %eax
	orl	$8, %eax
	cmpl	$10, %eax
	jne	.LBB31_6
# BB#7:                                 # %if.end29
	movl	$692, %edi              # imm = 0x2B4
	callq	_StraightTaint_log
	movl	$1, %r15d
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	fcntl
	movq	%r14, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 128(%rbx)
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 96(%rbx)
	movups	%xmm0, 80(%rbx)
	movups	%xmm0, 64(%rbx)
	movups	%xmm0, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movl	$16, %r14d
	movzwl	72(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB31_11
# BB#8:                                 # %if.end29
	cmpl	$10, %eax
	jne	.LBB31_10
# BB#9:                                 # %sw.bb1.i
	movl	$693, %edi              # imm = 0x2B5
	callq	_StraightTaint_log
	movl	$28, %r14d
	jmp	.LBB31_11
.LBB31_3:                               # %if.then17
	movl	$688, %edi              # imm = 0x2B0
	callq	_StraightTaint_log
	callq	__errno_location
	cmpl	$11, (%rax)
	movl	$2, %r15d
	je	.LBB31_12
# BB#4:                                 # %if.end21
	movl	$689, %edi              # imm = 0x2B1
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	movl	$3, %edi
	movl	$.L.str2467, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB31_12
.LBB31_6:                               # %if.then25
	movl	$691, %edi              # imm = 0x2B3
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	movl	$3, %edi
	movl	$.L.str2568, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	704(%rbx), %edi
	callq	close
	movl	$-1, 704(%rbx)
	jmp	.LBB31_12
.LBB31_10:                              # %sw.default.i151
	movl	$694, %edi              # imm = 0x2B6
	callq	_StraightTaint_log
	xorl	%r14d, %r14d
.LBB31_11:                              # %sockaddr_len.exit
	leaq	16(%rbx), %rbp
	movl	$695, %edi              # imm = 0x2B7
	callq	_StraightTaint_log
	leaq	72(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	memcpy
	xorps	%xmm0, %xmm0
	movups	%xmm0, 172(%rbx)
	movups	%xmm0, 160(%rbx)
	movups	%xmm0, 192(%rbx)
	movq	$.L.str2669, 208(%rbx)
	movq	216(%rbx), %rax
	movb	$0, (%rax)
	movq	$.L.str2366, 224(%rbx)
	movq	232(%rbx), %rax
	movb	$0, (%rax)
	movq	240(%rbx), %rax
	movb	$0, (%rax)
	movq	248(%rbx), %rax
	movb	$0, (%rax)
	movq	256(%rbx), %rax
	movb	$0, (%rax)
	movq	264(%rbx), %rax
	movb	$0, (%rax)
	movq	$.L.str2669, 272(%rbx)
	movq	$.L.str2669, 280(%rbx)
	movq	288(%rbx), %rax
	movb	$0, (%rax)
	movq	296(%rbx), %rax
	movb	$0, (%rax)
	movq	$.L.str2669, 304(%rbx)
	movq	$.L.str2669, 312(%rbx)
	movq	$.L.str2669, 320(%rbx)
	movq	328(%rbx), %rax
	movb	$0, (%rax)
	movq	$.L.str2669, 336(%rbx)
	movq	344(%rbx), %rax
	movb	$0, (%rax)
	movq	$.L.str2669, 352(%rbx)
	movq	360(%rbx), %rax
	movb	$0, (%rax)
	movq	368(%rbx), %rax
	movb	$0, (%rax)
	movq	$0, 472(%rbx)
	movq	$-1, 496(%rbx)
	movq	$-1, 488(%rbx)
	movq	$-1, 480(%rbx)
	movq	$.L.str2669, 504(%rbx)
	movq	$0, 512(%rbx)
	movl	$1, 520(%rbx)
	movups	%xmm0, 524(%rbx)
	movl	$0, 540(%rbx)
	movq	$-1, 544(%rbx)
	movl	$0, 552(%rbx)
	movl	$0, 556(%rbx)
	movq	$0, 712(%rbx)
.LBB31_12:                              # %cleanup
	movl	$696, %edi              # imm = 0x2B8
	callq	_StraightTaint_log
	movl	%r15d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp391:
	.size	httpd_get_conn, .Ltmp391-httpd_get_conn
	.cfi_endproc

	.globl	httpd_got_request
	.align	16, 0x90
	.type	httpd_got_request,@function
httpd_got_request:                      # @httpd_got_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp399:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp400:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp401:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp402:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp403:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp404:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp405:
	.cfi_def_cfa_offset 64
.Ltmp406:
	.cfi_offset %rbx, -56
.Ltmp407:
	.cfi_offset %r12, -48
.Ltmp408:
	.cfi_offset %r13, -40
.Ltmp409:
	.cfi_offset %r14, -32
.Ltmp410:
	.cfi_offset %r15, -24
.Ltmp411:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	$697, %edi              # imm = 0x2B9
	callq	_StraightTaint_log
	movq	160(%r15), %r14
	movq	168(%r15), %rbx
	cmpq	%r14, %rbx
	jae	.LBB32_70
# BB#1:                                 # %for.body.lr.ph
	movl	$698, %edi              # imm = 0x2BA
	callq	_StraightTaint_log
	movq	144(%r15), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	176(%r15), %r13d
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$699, %edi              # imm = 0x2BB
	callq	_StraightTaint_log
	movl	%r13d, %eax
	cmpl	$11, %r13d
	ja	.LBB32_69
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB32_2 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movsbl	(%rcx,%rbx), %r12d
	movl	$2, %ebp
	jmpq	*.LJTI32_0(,%rax,8)
.LBB32_4:                               # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$700, %edi              # imm = 0x2BC
	callq	_StraightTaint_log
	xorl	%r13d, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_10
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_11
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	je	.LBB32_8
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_69
	jmp	.LBB32_8
.LBB32_12:                              # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$703, %edi              # imm = 0x2BF
	callq	_StraightTaint_log
	movl	$1, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_17
# BB#13:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_69
# BB#14:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	je	.LBB32_16
# BB#15:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_18
	jmp	.LBB32_16
.LBB32_19:                              # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$706, %edi              # imm = 0x2C2
	callq	_StraightTaint_log
	movl	$2, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_23
# BB#20:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_24
# BB#21:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$1, %ebp
	cmpl	$10, %r12d
	je	.LBB32_71
# BB#22:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_69
	jmp	.LBB32_71
.LBB32_25:                              # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$708, %edi              # imm = 0x2C4
	callq	_StraightTaint_log
	movl	$3, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_30
# BB#26:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_69
# BB#27:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	je	.LBB32_29
# BB#28:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_31
	jmp	.LBB32_29
.LBB32_32:                              # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$711, %edi              # imm = 0x2C7
	callq	_StraightTaint_log
	movl	$4, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_38
# BB#33:                                # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_39
# BB#34:                                # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	jne	.LBB32_35
# BB#40:                                # %sw.bb31
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$713, %edi              # imm = 0x2C9
	jmp	.LBB32_41
.LBB32_42:                              # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$715, %edi              # imm = 0x2CB
	callq	_StraightTaint_log
	movl	$5, %r13d
	cmpl	$31, %r12d
	jg	.LBB32_47
# BB#43:                                # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %r12d
	je	.LBB32_69
# BB#44:                                # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	jne	.LBB32_45
# BB#72:                                # %sw.bb39
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$716, %edi              # imm = 0x2CC
	jmp	.LBB32_41
.LBB32_49:                              # %sw.bb46
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$719, %edi              # imm = 0x2CF
	callq	_StraightTaint_log
	cmpl	$13, %r12d
	jne	.LBB32_50
# BB#52:                                # %sw.bb50
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$721, %edi              # imm = 0x2D1
	jmp	.LBB32_37
.LBB32_53:                              # %sw.bb53
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$722, %edi              # imm = 0x2D2
	callq	_StraightTaint_log
	cmpl	$10, %r12d
	movl	$1, %ebp
	je	.LBB32_71
# BB#54:                                # %sw.bb53
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_56
# BB#55:                                # %sw.bb56
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$723, %edi              # imm = 0x2D3
	jmp	.LBB32_37
.LBB32_57:                              # %sw.bb61
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$725, %edi              # imm = 0x2D5
	callq	_StraightTaint_log
	cmpl	$13, %r12d
	movl	$1, %ebp
	je	.LBB32_71
# BB#58:                                # %sw.bb61
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %r12d
	jne	.LBB32_60
# BB#59:                                # %sw.bb63
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$726, %edi              # imm = 0x2D6
	callq	_StraightTaint_log
	movl	$9, 176(%r15)
	movl	$9, %r13d
	jmp	.LBB32_69
.LBB32_61:                              # %sw.bb69
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$728, %edi              # imm = 0x2D8
	callq	_StraightTaint_log
	cmpl	$10, %r12d
	movl	$1, %ebp
	je	.LBB32_71
# BB#62:                                # %sw.bb69
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_64
# BB#63:                                # %sw.bb72
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$729, %edi              # imm = 0x2D9
	callq	_StraightTaint_log
	movl	$10, 176(%r15)
	movl	$10, %r13d
	jmp	.LBB32_69
.LBB32_65:                              # %sw.bb77
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$731, %edi              # imm = 0x2DB
	callq	_StraightTaint_log
	cmpl	$10, %r12d
	movl	$1, %ebp
	je	.LBB32_71
# BB#66:                                # %sw.bb77
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	je	.LBB32_71
# BB#67:                                # %sw.default80
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$732, %edi              # imm = 0x2DC
	jmp	.LBB32_68
.LBB32_10:                              # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	jne	.LBB32_69
.LBB32_11:                              # %sw.bb2
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$701, %edi              # imm = 0x2BD
	callq	_StraightTaint_log
	movl	$1, 176(%r15)
	movl	$1, %r13d
	jmp	.LBB32_69
.LBB32_17:                              # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	je	.LBB32_69
.LBB32_18:                              # %sw.default
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$705, %edi              # imm = 0x2C1
	callq	_StraightTaint_log
	movl	$2, 176(%r15)
	movl	$2, %r13d
	jmp	.LBB32_69
.LBB32_23:                              # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	jne	.LBB32_69
.LBB32_24:                              # %sw.bb15
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$707, %edi              # imm = 0x2C3
	callq	_StraightTaint_log
	movl	$3, 176(%r15)
	movl	$3, %r13d
	jmp	.LBB32_69
.LBB32_30:                              # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	je	.LBB32_69
.LBB32_31:                              # %sw.default24
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$710, %edi              # imm = 0x2C6
	callq	_StraightTaint_log
	movl	$4, 176(%r15)
	movl	$4, %r13d
	jmp	.LBB32_69
.LBB32_38:                              # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	jne	.LBB32_69
.LBB32_39:                              # %sw.bb29
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$712, %edi              # imm = 0x2C8
	callq	_StraightTaint_log
	movl	$5, 176(%r15)
	movl	$5, %r13d
	jmp	.LBB32_69
.LBB32_47:                              # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %r12d
	je	.LBB32_69
	jmp	.LBB32_48
.LBB32_50:                              # %sw.bb46
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$6, %r13d
	cmpl	$10, %r12d
	jne	.LBB32_69
# BB#51:                                # %sw.bb48
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$720, %edi              # imm = 0x2D0
.LBB32_41:                              # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	callq	_StraightTaint_log
	movl	$7, 176(%r15)
	movl	$7, %r13d
	jmp	.LBB32_69
.LBB32_56:                              # %sw.default58
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$724, %edi              # imm = 0x2D4
	jmp	.LBB32_68
.LBB32_60:                              # %sw.default66
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$727, %edi              # imm = 0x2D7
	jmp	.LBB32_68
.LBB32_64:                              # %sw.default74
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$730, %edi              # imm = 0x2DA
.LBB32_68:                              # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	callq	_StraightTaint_log
	movl	$6, 176(%r15)
	movl	$6, %r13d
	jmp	.LBB32_69
.LBB32_35:                              # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_69
# BB#36:                                # %sw.bb33
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$714, %edi              # imm = 0x2CA
	jmp	.LBB32_37
.LBB32_45:                              # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %r12d
	jne	.LBB32_48
# BB#46:                                # %sw.bb41
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$717, %edi              # imm = 0x2CD
.LBB32_37:                              # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	callq	_StraightTaint_log
	movl	$8, 176(%r15)
	movl	$8, %r13d
	.align	16, 0x90
.LBB32_69:                              # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$733, %edi              # imm = 0x2DD
	callq	_StraightTaint_log
	incq	%rbx
	cmpq	%r14, %rbx
	movq	%rbx, 168(%r15)
	jb	.LBB32_2
.LBB32_70:
	xorl	%ebp, %ebp
.LBB32_71:                              # %return
	movl	$734, %edi              # imm = 0x2DE
	callq	_StraightTaint_log
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB32_48:                              # %sw.default43
	movl	$718, %edi              # imm = 0x2CE
	jmp	.LBB32_9
.LBB32_8:                               # %sw.bb4
	movl	$702, %edi              # imm = 0x2BE
	jmp	.LBB32_9
.LBB32_16:                              # %sw.bb9
	movl	$704, %edi              # imm = 0x2C0
	jmp	.LBB32_9
.LBB32_29:                              # %sw.bb22
	movl	$709, %edi              # imm = 0x2C5
.LBB32_9:                               # %return
	callq	_StraightTaint_log
	movl	$11, 176(%r15)
	jmp	.LBB32_71
.Ltmp412:
	.size	httpd_got_request, .Ltmp412-httpd_got_request
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_4
	.quad	.LBB32_12
	.quad	.LBB32_19
	.quad	.LBB32_25
	.quad	.LBB32_32
	.quad	.LBB32_42
	.quad	.LBB32_49
	.quad	.LBB32_53
	.quad	.LBB32_57
	.quad	.LBB32_61
	.quad	.LBB32_65
	.quad	.LBB32_71

	.text
	.globl	httpd_parse_request
	.align	16, 0x90
	.type	httpd_parse_request,@function
httpd_parse_request:                    # @httpd_parse_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp420:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp421:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp422:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp423:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp424:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp425:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp426:
	.cfi_def_cfa_offset 256
.Ltmp427:
	.cfi_offset %rbx, -56
.Ltmp428:
	.cfi_offset %r12, -48
.Ltmp429:
	.cfi_offset %r13, -40
.Ltmp430:
	.cfi_offset %r14, -32
.Ltmp431:
	.cfi_offset %r15, -24
.Ltmp432:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	$735, %edi              # imm = 0x2DF
	callq	_StraightTaint_log
	movq	$0, 168(%r13)
	movq	160(%r13), %r15
	xorl	%r14d, %r14d
	testq	%r15, %r15
	je	.LBB33_10
# BB#1:                                 # %for.body.lr.ph.i
	movl	$736, %edi              # imm = 0x2E0
	callq	_StraightTaint_log
	movq	144(%r13), %r12
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB33_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$737, %edi              # imm = 0x2E1
	callq	_StraightTaint_log
	movzbl	(%r12,%rbx), %ebp
	cmpl	$10, %ebp
	je	.LBB33_4
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB33_2 Depth=1
	movzbl	%bpl, %eax
	cmpl	$13, %eax
	je	.LBB33_4
# BB#9:                                 # %for.inc.i
                                        #   in Loop: Header=BB33_2 Depth=1
	movl	$743, %edi              # imm = 0x2E7
	callq	_StraightTaint_log
	incq	%rbx
	cmpq	%r15, %rbx
	movq	%rbx, 168(%r13)
	jb	.LBB33_2
	jmp	.LBB33_10
.LBB33_4:                               # %if.then.i
	movl	$738, %edi              # imm = 0x2E2
	callq	_StraightTaint_log
	movb	$0, (%r12,%rbx)
	movq	168(%r13), %rbx
	incq	%rbx
	movq	%rbx, 168(%r13)
	movzbl	%bpl, %eax
	cmpl	$13, %eax
	jne	.LBB33_8
# BB#5:                                 # %land.lhs.true.i
	movl	$739, %edi              # imm = 0x2E3
	callq	_StraightTaint_log
	cmpq	160(%r13), %rbx
	jae	.LBB33_8
# BB#6:                                 # %land.lhs.true21.i
	movl	$740, %edi              # imm = 0x2E4
	callq	_StraightTaint_log
	movq	144(%r13), %rbp
	movzbl	(%rbp,%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB33_8
# BB#7:                                 # %if.then28.i
	movl	$741, %edi              # imm = 0x2E5
	callq	_StraightTaint_log
	movb	$0, (%rbp,%rbx)
	incq	168(%r13)
.LBB33_8:                               # %if.end.i
	movl	$742, %edi              # imm = 0x2E6
	callq	_StraightTaint_log
	movq	144(%r13), %r14
.LBB33_10:                              # %bufgets.exit
	movl	$744, %edi              # imm = 0x2E8
	callq	_StraightTaint_log
	movl	$.L.str2770, %esi
	movq	%r14, %rdi
	callq	strpbrk
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB33_11
# BB#13:                                # %if.end
	movq	%r13, %r15
	movl	$746, %edi              # imm = 0x2EA
	callq	_StraightTaint_log
	leaq	1(%rbp), %rdi
	movb	$0, (%rbp)
	movl	$.L.str2770, %esi
	callq	strspn
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	1(%rax,%rbp), %r12
	movl	$.L.str2770, %esi
	movq	%r12, %rdi
	callq	strpbrk
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB33_14
# BB#15:                                # %if.else
	movl	$748, %edi              # imm = 0x2EC
	callq	_StraightTaint_log
	leaq	1(%r13), %rdi
	movb	$0, (%r13)
	movl	$.L.str2770, %esi
	callq	strspn
	leaq	1(%rax,%r13), %rbx
	cmpb	$0, 1(%rax,%r13)
	je	.LBB33_16
# BB#17:                                # %cond.false235
	movl	$749, %edi              # imm = 0x2ED
	callq	_StraightTaint_log
	movl	$.L.str2770, %esi
	movq	%rbx, %rdi
	callq	strpbrk
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB33_19
# BB#18:                                # %if.then251
	movl	$750, %edi              # imm = 0x2EE
	callq	_StraightTaint_log
	movb	$0, (%r13)
.LBB33_19:                              # %if.end252
	movl	$751, %edi              # imm = 0x2EF
	callq	_StraightTaint_log
	movl	$.L.str2972, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_20
# BB#21:                                # %if.then256
	movl	$752, %edi              # imm = 0x2F0
	callq	_StraightTaint_log
	movq	%r15, %r13
	movl	$1, 524(%r13)
	jmp	.LBB33_22
.LBB33_11:                              # %if.then
	movl	$745, %edi              # imm = 0x2E9
	jmp	.LBB33_12
.LBB33_14:                              # %if.then142
	movl	$747, %edi              # imm = 0x2EB
	callq	_StraightTaint_log
	movq	%r15, %r13
	movl	$0, 520(%r13)
	movl	$.L.str2871, %ebx
	jmp	.LBB33_22
.LBB33_16:
	movq	%r15, %r13
	jmp	.LBB33_22
.LBB33_20:
	movq	%r15, %r13
.LBB33_22:                              # %if.end259
	movl	$753, %edi              # imm = 0x2F1
	callq	_StraightTaint_log
	movq	%rbx, 224(%r13)
	movl	$.L.str3073, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB33_23
# BB#30:                                # %if.end286
	movl	$762, %edi              # imm = 0x2FA
	callq	_StraightTaint_log
	movzbl	(%r12), %eax
	cmpl	$47, %eax
	je	.LBB33_33
# BB#31:                                # %if.then290
	movl	$763, %edi              # imm = 0x2FB
	jmp	.LBB33_12
.LBB33_23:                              # %if.then264
	movl	$754, %edi              # imm = 0x2F2
	callq	_StraightTaint_log
	cmpl	$0, 524(%r13)
	je	.LBB33_24
# BB#25:                                # %if.end267
	movl	$756, %edi              # imm = 0x2F4
	callq	_StraightTaint_log
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax,%rbp), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB33_26
# BB#27:                                # %if.end273
	movl	$758, %edi              # imm = 0x2F6
	callq	_StraightTaint_log
	movb	$0, (%r12)
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB33_29
# BB#28:                                # %lor.lhs.false
	movl	$759, %edi              # imm = 0x2F7
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB33_32
.LBB33_29:                              # %if.then280
	movl	$760, %edi              # imm = 0x2F8
	jmp	.LBB33_12
.LBB33_24:                              # %if.then266
	movl	$755, %edi              # imm = 0x2F3
	jmp	.LBB33_12
.LBB33_26:                              # %if.then272
	movl	$757, %edi              # imm = 0x2F5
	jmp	.LBB33_12
.LBB33_32:                              # %if.end286.thread
	movl	$761, %edi              # imm = 0x2F9
	callq	_StraightTaint_log
	leaq	328(%r13), %rbp
	leaq	440(%r13), %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	328(%r13), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movb	$47, (%r12)
.LBB33_33:                              # %if.end291
	movl	$764, %edi              # imm = 0x2FC
	callq	_StraightTaint_log
	movl	$.L.str2063, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_34
# BB#35:                                # %if.else297
	movl	$766, %edi              # imm = 0x2FE
	callq	_StraightTaint_log
	movl	$.L.str2164, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_36
# BB#37:                                # %if.else304
	movl	$768, %edi              # imm = 0x300
	callq	_StraightTaint_log
	movl	$.L.str2265, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_38
# BB#222:                               # %if.else311
	movl	$770, %edi              # imm = 0x302
	callq	_StraightTaint_log
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movq	%r13, %rdi
	movq	%r14, %r9
	jmp	.LBB33_220
.LBB33_34:                              # %if.then296
	movl	$765, %edi              # imm = 0x2FD
	callq	_StraightTaint_log
	movl	$1, 180(%r13)
	jmp	.LBB33_39
.LBB33_36:                              # %if.then302
	movl	$767, %edi              # imm = 0x2FF
	callq	_StraightTaint_log
	movl	$2, 180(%r13)
	jmp	.LBB33_39
.LBB33_38:                              # %if.then309
	movl	$769, %edi              # imm = 0x301
	callq	_StraightTaint_log
	movl	$3, 180(%r13)
.LBB33_39:                              # %if.end314
	movl	$771, %edi              # imm = 0x303
	callq	_StraightTaint_log
	movq	%r12, 208(%r13)
	leaq	216(%r13), %rbx
	leaq	376(%r13), %rbp
	movq	%r12, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	208(%r13), %rsi
	movq	216(%r13), %rdi
	callq	strdecode
	leaq	232(%r13), %r14
	leaq	384(%r13), %rbx
	movq	216(%r13), %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	216(%r13), %rsi
	movq	232(%r13), %rdi
	incq	%rsi
	callq	strcpy
	movq	232(%r13), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB33_41
# BB#40:                                # %if.then330
	movl	$772, %edi              # imm = 0x304
	callq	_StraightTaint_log
	movw	$46, (%rbx)
.LBB33_41:                              # %if.end333
	movl	$773, %edi              # imm = 0x305
	callq	_StraightTaint_log
	movq	208(%r13), %rdi
	movl	$63, %esi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_44
# BB#42:                                # %if.then338
	movl	$774, %edi              # imm = 0x306
	callq	_StraightTaint_log
	incq	%rbx
	leaq	264(%r13), %rbp
	leaq	416(%r13), %r15
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	264(%r13), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	232(%r13), %rdi
	movl	$63, %esi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_44
# BB#43:                                # %if.then347
	movl	$775, %edi              # imm = 0x307
	callq	_StraightTaint_log
	movb	$0, (%rbx)
.LBB33_44:                              # %if.end349
	movl	$776, %edi              # imm = 0x308
	callq	_StraightTaint_log
	movq	(%r14), %r12
	jmp	.LBB33_45
	.align	16, 0x90
.LBB33_56:                              # %for.end.i
                                        #   in Loop: Header=BB33_45 Depth=1
	movl	$781, %edi              # imm = 0x30D
	callq	_StraightTaint_log
	incq	%rbx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	strcpy
.LBB33_45:                              # %if.end349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_55 Depth 2
	movl	$.L.str498, %esi
	movq	%r12, %rdi
	callq	strstr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_46
# BB#54:                                # %while.body.i
                                        #   in Loop: Header=BB33_45 Depth=1
	movl	$779, %edi              # imm = 0x30B
	callq	_StraightTaint_log
	leaq	1(%rbx), %rbp
	.align	16, 0x90
.LBB33_55:                              # %for.cond.i
                                        #   Parent Loop BB33_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$780, %edi              # imm = 0x30C
	callq	_StraightTaint_log
	movzbl	1(%rbp), %eax
	incq	%rbp
	cmpl	$47, %eax
	je	.LBB33_55
	jmp	.LBB33_56
.LBB33_46:                              # %while.cond5.preheader.i
	movl	$777, %edi              # imm = 0x309
	callq	_StraightTaint_log
	movl	$.L.str75, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB33_49
# BB#47:                                # %while.body9.lr.ph.i
	movl	$778, %edi              # imm = 0x30A
	callq	_StraightTaint_log
	leaq	2(%r12), %rbx
	.align	16, 0x90
.LBB33_48:                              # %while.body9.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$783, %edi              # imm = 0x30F
	callq	_StraightTaint_log
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$.L.str75, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_48
.LBB33_49:                              # %while.cond13.preheader.i
	movl	$782, %edi              # imm = 0x30E
	callq	_StraightTaint_log
	jmp	.LBB33_50
	.align	16, 0x90
.LBB33_223:                             # %while.body17.i
                                        #   in Loop: Header=BB33_50 Depth=1
	movl	$785, %edi              # imm = 0x311
	callq	_StraightTaint_log
	leaq	2(%rbx), %rsi
	movq	%rbx, %rdi
	callq	strcpy
.LBB33_50:                              # %while.cond13.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str511, %esi
	movq	%r12, %rdi
	callq	strstr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB33_223
# BB#51:                                # %while.cond22.preheader.i
	movl	$784, %edi              # imm = 0x310
	callq	_StraightTaint_log
	leaq	3(%r12), %r15
	jmp	.LBB33_52
	.align	16, 0x90
.LBB33_53:                              # %while.body26.i
                                        #   in Loop: Header=BB33_52 Depth=1
	movl	$787, %edi              # imm = 0x313
	callq	_StraightTaint_log
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	strcpy
.LBB33_52:                              # %while.cond22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_59 Depth 2
	movl	$786, %edi              # imm = 0x312
	callq	_StraightTaint_log
	movl	$.L.str512, %esi
	movl	$3, %edx
	movq	%r12, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_53
# BB#57:                                # %while.end29.i
                                        #   in Loop: Header=BB33_52 Depth=1
	movl	$788, %edi              # imm = 0x314
	callq	_StraightTaint_log
	movl	$.L.str513, %esi
	movq	%r12, %rdi
	callq	strstr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_62
# BB#58:                                # %for.cond34.i.preheader
                                        #   in Loop: Header=BB33_52 Depth=1
	leaq	-1(%rbx), %rax
	.align	16, 0x90
.LBB33_59:                              # %for.cond34.i
                                        #   Parent Loop BB33_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	movl	$790, %edi              # imm = 0x316
	callq	_StraightTaint_log
	cmpq	%r12, %rbp
	jb	.LBB33_61
# BB#60:                                # %land.rhs.i
                                        #   in Loop: Header=BB33_59 Depth=2
	movl	$791, %edi              # imm = 0x317
	callq	_StraightTaint_log
	movzbl	(%rbp), %ecx
	leaq	-1(%rbp), %rax
	cmpl	$47, %ecx
	jne	.LBB33_59
.LBB33_61:                              # %for.end43.i
                                        #   in Loop: Header=BB33_52 Depth=1
	movl	$792, %edi              # imm = 0x318
	callq	_StraightTaint_log
	addq	$4, %rbx
	incq	%rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	jmp	.LBB33_52
.LBB33_62:                              # %while.cond48.preheader.i
	movl	$789, %edi              # imm = 0x315
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbx
	cmpl	$4, %ebx
	jl	.LBB33_72
# BB#63:                                # %cond.true.i.preheader
	leaq	-4(%r12), %r15
.LBB33_64:                              # %cond.true.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_69 Depth 2
	movl	$793, %edi              # imm = 0x319
	callq	_StraightTaint_log
	movslq	%ebx, %rbp
	movzbl	-3(%rbp,%r12), %eax
	cmpl	$47, %eax
	jne	.LBB33_72
# BB#65:                                # %if.then67.i
                                        #   in Loop: Header=BB33_64 Depth=1
	movl	$794, %edi              # imm = 0x31A
	callq	_StraightTaint_log
	movzbl	-2(%rbp,%r12), %eax
	cmpl	$46, %eax
	jne	.LBB33_72
# BB#66:                                # %if.then77.i
                                        #   in Loop: Header=BB33_64 Depth=1
	movl	$795, %edi              # imm = 0x31B
	callq	_StraightTaint_log
	movzbl	-1(%rbp,%r12), %eax
	cmpl	$46, %eax
	jne	.LBB33_72
# BB#67:                                # %cond.end.i
                                        #   in Loop: Header=BB33_64 Depth=1
	movl	$796, %edi              # imm = 0x31C
	callq	_StraightTaint_log
	cmpb	$0, (%r12,%rbp)
	jne	.LBB33_72
# BB#68:                                # %for.cond105.i.preheader
                                        #   in Loop: Header=BB33_64 Depth=1
	movslq	%ebx, %rbx
	addq	%r15, %rbx
	.align	16, 0x90
.LBB33_69:                              # %for.cond105.i
                                        #   Parent Loop BB33_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$797, %edi              # imm = 0x31D
	callq	_StraightTaint_log
	cmpq	%r12, %rbx
	jb	.LBB33_72
# BB#70:                                # %land.rhs108.i
                                        #   in Loop: Header=BB33_69 Depth=2
	movl	$798, %edi              # imm = 0x31E
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	decq	%rbx
	cmpl	$47, %eax
	jne	.LBB33_69
# BB#71:                                # %if.end120.i
                                        #   in Loop: Header=BB33_64 Depth=1
	movl	$799, %edi              # imm = 0x31F
	callq	_StraightTaint_log
	movb	$0, 1(%rbx)
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbx
	cmpl	$3, %ebx
	jg	.LBB33_64
.LBB33_72:                              # %de_dotdot.exit
	movl	$800, %edi              # imm = 0x320
	callq	_StraightTaint_log
	movq	(%r14), %rbx
	movzbl	(%rbx), %eax
	cmpl	$47, %eax
	je	.LBB33_77
# BB#73:                                # %de_dotdot.exit
	movzbl	%al, %eax
	cmpl	$46, %eax
	jne	.LBB33_78
# BB#74:                                # %land.lhs.true
	movl	$801, %edi              # imm = 0x321
	callq	_StraightTaint_log
	movzbl	1(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB33_78
# BB#75:                                # %land.lhs.true367
	movl	$802, %edi              # imm = 0x322
	callq	_StraightTaint_log
	movb	2(%rbx), %al
	testb	%al, %al
	je	.LBB33_77
# BB#76:                                # %land.lhs.true367
	movzbl	%al, %eax
	cmpl	$47, %eax
	jne	.LBB33_78
.LBB33_77:                              # %if.then379
	movl	$803, %edi              # imm = 0x323
.LBB33_12:                              # %return
	callq	_StraightTaint_log
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r9d
.LBB33_219:                             # %return
	movq	%r13, %rdi
.LBB33_220:                             # %return
	callq	httpd_send_err
	movl	$-1, %ebx
.LBB33_221:                             # %return
	movl	$919, %edi              # imm = 0x397
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB33_78:                              # %if.end380
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	$804, %edi              # imm = 0x324
	callq	_StraightTaint_log
	cmpl	$0, 520(%r13)
	movq	%r13, %r14
	je	.LBB33_186
# BB#79:                                # %while.cond.preheader
	movl	$805, %edi              # imm = 0x325
	callq	_StraightTaint_log
	movq	160(%r14), %r12
	movq	168(%r14), %r15
	cmpq	%r12, %r15
	jae	.LBB33_186
# BB#80:                                # %for.body.lr.ph.i1720.lr.ph
	movl	$806, %edi              # imm = 0x326
	callq	_StraightTaint_log
	leaq	288(%r14), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	424(%r14), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	16(%r14), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	296(%r14), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	432(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	jmp	.LBB33_81
.LBB33_89:                              # %while.body
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$815, %edi              # imm = 0x32F
	callq	_StraightTaint_log
	cmpb	$0, (%rbx)
	je	.LBB33_186
# BB#90:                                # %if.end392
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$816, %edi              # imm = 0x330
	callq	_StraightTaint_log
	movl	$.L.str3275, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_96
# BB#91:                                # %if.then396
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$817, %edi              # imm = 0x331
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	8(%r12,%rax), %rbx
	movq	%r14, %rbp
	jmp	.LBB33_92
	.align	16, 0x90
.LBB33_94:                              # %while.cond.i.backedge
                                        #   in Loop: Header=BB33_92 Depth=2
	incq	%rbx
.LBB33_92:                              # %while.cond.i
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$818, %edi              # imm = 0x332
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_94
# BB#93:                                # %while.cond.i
                                        #   in Loop: Header=BB33_92 Depth=2
	cmpl	$32, %eax
	je	.LBB33_94
# BB#95:                                # %__strspn_c2.exit
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$819, %edi              # imm = 0x333
	callq	_StraightTaint_log
	movq	%rbx, 272(%rbp)
	jmp	.LBB33_122
.LBB33_96:                              # %if.else449
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$820, %edi              # imm = 0x334
	callq	_StraightTaint_log
	movl	$.L.str3476, %esi
	movl	$11, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_102
# BB#97:                                # %if.then453
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$821, %edi              # imm = 0x335
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	11(%r12,%rax), %rbx
	movq	%r14, %rbp
	jmp	.LBB33_98
	.align	16, 0x90
.LBB33_100:                             # %while.cond.i1752.backedge
                                        #   in Loop: Header=BB33_98 Depth=2
	incq	%rbx
.LBB33_98:                              # %while.cond.i1752
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$822, %edi              # imm = 0x336
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_100
# BB#99:                                # %while.cond.i1752
                                        #   in Loop: Header=BB33_98 Depth=2
	cmpl	$32, %eax
	je	.LBB33_100
# BB#101:                               # %__strspn_c2.exit1753
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$823, %edi              # imm = 0x337
	callq	_StraightTaint_log
	movq	%rbx, 280(%rbp)
	jmp	.LBB33_122
.LBB33_102:                             # %if.else506
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$824, %edi              # imm = 0x338
	callq	_StraightTaint_log
	movl	$.L.str3577, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_112
# BB#103:                               # %if.then510
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$825, %edi              # imm = 0x339
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	5(%r12,%rax), %rbx
	movq	%r14, %rbp
	jmp	.LBB33_104
	.align	16, 0x90
.LBB33_106:                             # %while.cond.i1761.backedge
                                        #   in Loop: Header=BB33_104 Depth=2
	incq	%rbx
.LBB33_104:                             # %while.cond.i1761
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$826, %edi              # imm = 0x33A
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_106
# BB#105:                               # %while.cond.i1761
                                        #   in Loop: Header=BB33_104 Depth=2
	cmpl	$32, %eax
	je	.LBB33_106
# BB#107:                               # %__strspn_c2.exit1762
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$827, %edi              # imm = 0x33B
	callq	_StraightTaint_log
	movq	%rbx, 336(%rbp)
	movl	$58, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB33_109
# BB#108:                               # %if.then567
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$828, %edi              # imm = 0x33C
	callq	_StraightTaint_log
	movb	$0, (%r15)
	movq	336(%rbp), %rbx
.LBB33_109:                             # %if.end568
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$829, %edi              # imm = 0x33D
	callq	_StraightTaint_log
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB33_111
# BB#110:                               # %lor.lhs.false573
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$830, %edi              # imm = 0x33E
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB33_122
	jmp	.LBB33_111
.LBB33_112:                             # %if.else581
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$832, %edi              # imm = 0x340
	callq	_StraightTaint_log
	movl	$.L.str3678, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_126
# BB#113:                               # %if.then585
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$833, %edi              # imm = 0x341
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	7(%r12,%rax), %rbx
	movq	%r14, %rbp
	movq	40(%rsp), %r14          # 8-byte Reload
	jmp	.LBB33_114
	.align	16, 0x90
.LBB33_116:                             # %while.cond.i1770.backedge
                                        #   in Loop: Header=BB33_114 Depth=2
	incq	%rbx
.LBB33_114:                             # %while.cond.i1770
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$834, %edi              # imm = 0x342
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_116
# BB#115:                               # %while.cond.i1770
                                        #   in Loop: Header=BB33_114 Depth=2
	cmpl	$32, %eax
	je	.LBB33_116
# BB#117:                               # %__strspn_c2.exit1771
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$835, %edi              # imm = 0x343
	callq	_StraightTaint_log
	movq	(%r14), %r15
	cmpb	$0, (%r15)
	jne	.LBB33_118
# BB#124:                               # %if.else657
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$840, %edi              # imm = 0x348
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	httpd_realloc_str
	jmp	.LBB33_125
.LBB33_126:                             # %if.else664
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$842, %edi              # imm = 0x34A
	callq	_StraightTaint_log
	movl	$.L.str3981, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_137
# BB#127:                               # %if.then668
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$843, %edi              # imm = 0x34B
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	16(%r12,%rax), %rbx
	jmp	.LBB33_128
.LBB33_130:                             # %while.cond.i1779.backedge
                                        #   in Loop: Header=BB33_128 Depth=2
	movq	%rbp, %r14
	incq	%rbx
.LBB33_128:                             # %while.cond.i1779
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$844, %edi              # imm = 0x34C
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	movq	%r14, %rbp
	je	.LBB33_130
# BB#129:                               # %while.cond.i1779
                                        #   in Loop: Header=BB33_128 Depth=2
	cmpl	$32, %eax
	je	.LBB33_130
# BB#131:                               # %__strspn_c2.exit1780
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$845, %edi              # imm = 0x34D
	callq	_StraightTaint_log
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	(%r14), %r15
	cmpb	$0, (%r15)
	jne	.LBB33_132
# BB#135:                               # %if.else742
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$849, %edi              # imm = 0x351
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%rax, %rdx
	callq	httpd_realloc_str
	jmp	.LBB33_136
.LBB33_137:                             # %if.else749
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$851, %edi              # imm = 0x353
	callq	_StraightTaint_log
	movl	$.L.str4183, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_143
# BB#138:                               # %if.then753
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$852, %edi              # imm = 0x354
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	16(%r12,%rax), %rbx
	movq	%r14, %rbp
	jmp	.LBB33_139
.LBB33_141:                             # %while.cond.i1788.backedge
                                        #   in Loop: Header=BB33_139 Depth=2
	incq	%rbx
.LBB33_139:                             # %while.cond.i1788
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$853, %edi              # imm = 0x355
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_141
# BB#140:                               # %while.cond.i1788
                                        #   in Loop: Header=BB33_139 Depth=2
	cmpl	$32, %eax
	je	.LBB33_141
# BB#142:                               # %__strspn_c2.exit1789
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$854, %edi              # imm = 0x356
	callq	_StraightTaint_log
	movq	%rbx, 304(%rbp)
	jmp	.LBB33_122
.LBB33_118:                             # %if.then642
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$836, %edi              # imm = 0x344
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r15
	cmpq	$5001, %r15             # imm = 0x1389
	jb	.LBB33_123
# BB#119:                               # %if.then647
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$837, %edi              # imm = 0x345
	callq	_StraightTaint_log
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	httpd_ntoa
	movl	$3, %edi
	movl	$.L.str3779, %esi
	jmp	.LBB33_120
.LBB33_143:                             # %if.else806
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$855, %edi              # imm = 0x357
	callq	_StraightTaint_log
	movl	$.L.str4284, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_147
# BB#144:                               # %if.then810
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$856, %edi              # imm = 0x358
	callq	_StraightTaint_log
	leaq	18(%r13,%r12), %rbx
	movq	%rbx, %rdi
	callq	tdate_parse
	cmpq	$-1, %rax
	movq	%r14, %rbp
	movq	%rax, 480(%rbp)
	jne	.LBB33_122
# BB#145:                               # %if.then816
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$857, %edi              # imm = 0x359
	jmp	.LBB33_146
.LBB33_132:                             # %if.then725
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$846, %edi              # imm = 0x34E
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r15
	cmpq	$5001, %r15             # imm = 0x1389
	jb	.LBB33_134
# BB#133:                               # %if.then730
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$847, %edi              # imm = 0x34F
	callq	_StraightTaint_log
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	httpd_ntoa
	movl	$3, %edi
	movl	$.L.str4082, %esi
.LBB33_120:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	jmp	.LBB33_121
.LBB33_123:                             # %if.end649
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$839, %edi              # imm = 0x347
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	leaq	2(%r15,%rax), %rdx
	movq	%r14, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	movq	(%r14), %r15
	movq	%r15, %rdi
	callq	strlen
	movb	$0, 2(%r15,%rax)
	movw	$8236, (%r15,%rax)      # imm = 0x202C
.LBB33_125:                             # %if.end661
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$841, %edi              # imm = 0x349
	callq	_StraightTaint_log
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	strcat
	jmp	.LBB33_122
.LBB33_147:                             # %if.else818
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$858, %edi              # imm = 0x35A
	callq	_StraightTaint_log
	movl	$.L.str4486, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_153
# BB#148:                               # %if.then822
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$859, %edi              # imm = 0x35B
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	7(%r12,%rax), %rbx
	movq	%r14, %rbp
	jmp	.LBB33_149
.LBB33_151:                             # %while.cond.i1797.backedge
                                        #   in Loop: Header=BB33_149 Depth=2
	incq	%rbx
.LBB33_149:                             # %while.cond.i1797
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$860, %edi              # imm = 0x35C
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_151
# BB#150:                               # %while.cond.i1797
                                        #   in Loop: Header=BB33_149 Depth=2
	cmpl	$32, %eax
	je	.LBB33_151
# BB#152:                               # %__strspn_c2.exit1798
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$861, %edi              # imm = 0x35D
	callq	_StraightTaint_log
	movq	%rbx, 312(%rbp)
	jmp	.LBB33_122
.LBB33_134:                             # %if.end733
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$848, %edi              # imm = 0x350
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	leaq	2(%r15,%rax), %rdx
	movq	%r14, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	httpd_realloc_str
	movq	(%r14), %r15
	movq	%r15, %rdi
	callq	strlen
	movb	$0, 2(%r15,%rax)
	movw	$8236, (%r15,%rax)      # imm = 0x202C
.LBB33_136:                             # %if.end746
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$850, %edi              # imm = 0x352
	callq	_StraightTaint_log
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	jmp	.LBB33_122
.LBB33_153:                             # %if.else875
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$862, %edi              # imm = 0x35E
	callq	_StraightTaint_log
	movl	$.L.str4587, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_160
# BB#154:                               # %if.then879
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$863, %edi              # imm = 0x35F
	callq	_StraightTaint_log
	movl	$44, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	movq	%r14, %rbp
	jne	.LBB33_122
# BB#155:                               # %cond.true901
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$864, %edi              # imm = 0x360
	callq	_StraightTaint_log
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_122
# BB#156:                               # %if.then937
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$865, %edi              # imm = 0x361
	callq	_StraightTaint_log
	incq	%rbx
	movl	$45, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB33_122
# BB#157:                               # %if.then937
                                        #   in Loop: Header=BB33_81 Depth=1
	cmpq	%rbx, %r14
	je	.LBB33_122
# BB#158:                               # %if.then946
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$866, %edi              # imm = 0x362
	callq	_StraightTaint_log
	movb	$0, (%r14)
	movl	$1, 528(%rbp)
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strtoll
	testq	%rax, %rax
	movl	$0, %ecx
	cmovsq	%rcx, %rax
	movq	%rax, 536(%rbp)
	movsbq	1(%r14), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	je	.LBB33_122
# BB#159:                               # %if.then961
                                        #   in Loop: Header=BB33_81 Depth=1
	incq	%r14
	movl	$867, %edi              # imm = 0x363
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r14, %rdi
	callq	strtoll
	cmpq	$-2, %rax
	movq	$-1, %rcx
	cmovleq	%rcx, %rax
	movq	%rax, 544(%rbp)
	jmp	.LBB33_122
.LBB33_160:                             # %if.else974
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$868, %edi              # imm = 0x364
	callq	_StraightTaint_log
	movl	$.L.str4789, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB33_162
# BB#161:                               # %lor.lhs.false978
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$869, %edi              # imm = 0x365
	callq	_StraightTaint_log
	movl	$.L.str4890, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_164
.LBB33_162:                             # %if.then982
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$870, %edi              # imm = 0x366
	callq	_StraightTaint_log
	leaq	9(%r13,%r12), %rbx
	movq	%rbx, %rdi
	callq	tdate_parse
	cmpq	$-1, %rax
	movq	%r14, %rbp
	movq	%rax, 488(%rbp)
	jne	.LBB33_122
# BB#163:                               # %if.then988
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$871, %edi              # imm = 0x367
.LBB33_146:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_81 Depth=1
	callq	_StraightTaint_log
	movl	$7, %edi
	movl	$.L.str4385, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
.LBB33_121:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_81 Depth=1
	callq	syslog
.LBB33_122:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$838, %edi              # imm = 0x346
	callq	_StraightTaint_log
	movq	160(%rbp), %r12
	movq	168(%rbp), %r15
	movq	%rbp, %r14
	cmpq	%r12, %r15
	jb	.LBB33_81
	jmp	.LBB33_186
.LBB33_164:                             # %if.else990
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$872, %edi              # imm = 0x368
	callq	_StraightTaint_log
	movl	$.L.str4991, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_170
# BB#165:                               # %if.then994
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$873, %edi              # imm = 0x369
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	13(%r12,%rax), %rbx
	jmp	.LBB33_166
.LBB33_170:                             # %if.else1047
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$876, %edi              # imm = 0x36C
	callq	_StraightTaint_log
	movl	$.L.str5092, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_172
# BB#171:                               # %if.then1051
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$877, %edi              # imm = 0x36D
	callq	_StraightTaint_log
	leaq	15(%r13,%r12), %rax
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	strtol
	movq	%r14, %rbp
	movq	%rax, 496(%rbp)
	jmp	.LBB33_122
.LBB33_168:                             # %while.cond.i1808.backedge
                                        #   in Loop: Header=BB33_166 Depth=2
	incq	%rbx
.LBB33_166:                             # %while.cond.i1808
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$874, %edi              # imm = 0x36A
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_168
# BB#167:                               # %while.cond.i1808
                                        #   in Loop: Header=BB33_166 Depth=2
	cmpl	$32, %eax
	je	.LBB33_168
# BB#169:                               # %__strspn_c2.exit1809
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$875, %edi              # imm = 0x36B
	callq	_StraightTaint_log
	movq	%r14, %rbp
	movq	%rbx, 320(%rbp)
	jmp	.LBB33_122
.LBB33_172:                             # %if.else1054
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$878, %edi              # imm = 0x36E
	callq	_StraightTaint_log
	movl	$.L.str5193, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_178
# BB#173:                               # %if.then1058
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$879, %edi              # imm = 0x36F
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	14(%r12,%rax), %rbx
	jmp	.LBB33_174
.LBB33_178:                             # %if.else1111
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$882, %edi              # imm = 0x372
	callq	_StraightTaint_log
	movl	$.L.str5294, %esi
	movl	$11, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	movq	%r14, %rbp
	jne	.LBB33_122
# BB#179:                               # %if.then1115
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$883, %edi              # imm = 0x373
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	leaq	11(%r12,%rax), %rbx
	jmp	.LBB33_180
.LBB33_176:                             # %while.cond.i1818.backedge
                                        #   in Loop: Header=BB33_174 Depth=2
	incq	%rbx
.LBB33_174:                             # %while.cond.i1818
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$880, %edi              # imm = 0x370
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_176
# BB#175:                               # %while.cond.i1818
                                        #   in Loop: Header=BB33_174 Depth=2
	cmpl	$32, %eax
	je	.LBB33_176
# BB#177:                               # %__strspn_c2.exit1819
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$881, %edi              # imm = 0x371
	callq	_StraightTaint_log
	movq	%r14, %rbp
	movq	%rbx, 352(%rbp)
	jmp	.LBB33_122
.LBB33_182:                             # %while.cond.i1827.backedge
                                        #   in Loop: Header=BB33_180 Depth=2
	incq	%rbx
.LBB33_180:                             # %while.cond.i1827
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$884, %edi              # imm = 0x374
	callq	_StraightTaint_log
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_182
# BB#181:                               # %while.cond.i1827
                                        #   in Loop: Header=BB33_180 Depth=2
	cmpl	$32, %eax
	je	.LBB33_182
# BB#183:                               # %__strspn_c2.exit1828
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$885, %edi              # imm = 0x375
	callq	_StraightTaint_log
	movl	$.L.str5395, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB33_122
# BB#184:                               # %if.then1171
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$886, %edi              # imm = 0x376
	callq	_StraightTaint_log
	movl	$1, 552(%rbp)
	jmp	.LBB33_122
.LBB33_81:                              # %for.body.lr.ph.i1720
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_82 Depth 2
                                        #     Child Loop BB33_180 Depth 2
                                        #     Child Loop BB33_174 Depth 2
                                        #     Child Loop BB33_166 Depth 2
                                        #     Child Loop BB33_149 Depth 2
                                        #     Child Loop BB33_139 Depth 2
                                        #     Child Loop BB33_128 Depth 2
                                        #     Child Loop BB33_114 Depth 2
                                        #     Child Loop BB33_104 Depth 2
                                        #     Child Loop BB33_98 Depth 2
                                        #     Child Loop BB33_92 Depth 2
	movl	$807, %edi              # imm = 0x327
	callq	_StraightTaint_log
	movq	144(%r14), %r13
	movq	%r15, %rbx
.LBB33_82:                              # %for.body.i1722
                                        #   Parent Loop BB33_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$808, %edi              # imm = 0x328
	callq	_StraightTaint_log
	movzbl	(%r13,%rbx), %ebp
	cmpl	$10, %ebp
	je	.LBB33_84
# BB#83:                                # %for.body.i1722
                                        #   in Loop: Header=BB33_82 Depth=2
	movzbl	%bpl, %eax
	cmpl	$13, %eax
	je	.LBB33_84
# BB#185:                               # %for.inc.i1739
                                        #   in Loop: Header=BB33_82 Depth=2
	movl	$813, %edi              # imm = 0x32D
	callq	_StraightTaint_log
	incq	%rbx
	cmpq	%r12, %rbx
	movq	%rbx, 168(%r14)
	jb	.LBB33_82
	jmp	.LBB33_186
.LBB33_84:                              # %if.then.i1725
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$809, %edi              # imm = 0x329
	callq	_StraightTaint_log
	movb	$0, (%r13,%rbx)
	movq	168(%r14), %rbx
	incq	%rbx
	movq	%rbx, 168(%r14)
	movzbl	%bpl, %eax
	cmpl	$13, %eax
	jne	.LBB33_88
# BB#85:                                # %land.lhs.true.i1727
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$810, %edi              # imm = 0x32A
	callq	_StraightTaint_log
	cmpq	160(%r14), %rbx
	jae	.LBB33_88
# BB#86:                                # %land.lhs.true21.i1730
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$811, %edi              # imm = 0x32B
	callq	_StraightTaint_log
	movq	144(%r14), %rbp
	movzbl	(%rbp,%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB33_88
# BB#87:                                # %if.then28.i1732
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$812, %edi              # imm = 0x32C
	callq	_StraightTaint_log
	movb	$0, (%rbp,%rbx)
	incq	168(%r14)
.LBB33_88:                              # %bufgets.exit1741
                                        #   in Loop: Header=BB33_81 Depth=1
	movl	$814, %edi              # imm = 0x32E
	callq	_StraightTaint_log
	movslq	%r15d, %r13
	movq	144(%r14), %r12
	movq	%r12, %rbx
	addq	%r13, %rbx
	jne	.LBB33_89
.LBB33_186:                             # %if.end1187
	movl	$887, %edi              # imm = 0x377
	callq	_StraightTaint_log
	movq	%r14, %r13
	cmpl	$0, 524(%r13)
	je	.LBB33_192
# BB#187:                               # %if.then1190
	movl	$888, %edi              # imm = 0x378
	callq	_StraightTaint_log
	movq	328(%r13), %rax
	cmpb	$0, (%rax)
	jne	.LBB33_190
# BB#188:                               # %land.lhs.true1196
	movl	$889, %edi              # imm = 0x379
	callq	_StraightTaint_log
	movq	336(%r13), %rax
	cmpb	$0, (%rax)
	je	.LBB33_189
.LBB33_190:                             # %if.end1203
	movl	$891, %edi              # imm = 0x37B
	callq	_StraightTaint_log
	cmpl	$0, 552(%r13)
	je	.LBB33_192
# BB#191:                               # %if.then1206
	movl	$892, %edi              # imm = 0x37C
	callq	_StraightTaint_log
	movl	$1, 556(%r13)
.LBB33_192:                             # %if.end1208
	movl	$893, %edi              # imm = 0x37D
	callq	_StraightTaint_log
	leaq	240(%r13), %r15
	leaq	392(%r13), %r12
	movq	232(%r13), %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	232(%r13), %rsi
	movq	240(%r13), %rdi
	callq	strcpy
	movq	8(%r13), %rax
	cmpl	$0, 100(%rax)
	je	.LBB33_193
# BB#194:                               # %if.then1222
	movl	$895, %edi              # imm = 0x37F
	callq	_StraightTaint_log
	movq	328(%r13), %rbp
	cmpb	$0, (%rbp)
	je	.LBB33_197
# BB#195:                               # %if.then.i1830
	movl	$896, %edi              # imm = 0x380
	jmp	.LBB33_196
.LBB33_193:                             # %if.end1208.if.end1228_crit_edge
	movl	$894, %edi              # imm = 0x37E
	callq	_StraightTaint_log
	leaq	532(%r13), %rbp
	jmp	.LBB33_208
.LBB33_197:                             # %if.else.i
	movl	$897, %edi              # imm = 0x381
	callq	_StraightTaint_log
	movq	336(%r13), %rbp
	cmpb	$0, (%rbp)
	je	.LBB33_199
# BB#198:                               # %if.then7.i
	movl	$898, %edi              # imm = 0x382
.LBB33_196:                             # %if.end18.i
	callq	_StraightTaint_log
	movq	%rbp, 512(%r13)
	movq	%r13, %r14
.LBB33_201:                             # %if.end18.i
	movl	$901, %edi              # imm = 0x385
	callq	_StraightTaint_log
	movb	(%rbp), %bl
	testb	%bl, %bl
	je	.LBB33_206
# BB#202:                               # %for.body.lr.ph.i1833
	movl	$902, %edi              # imm = 0x386
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r13
	incq	%rbp
	.align	16, 0x90
.LBB33_203:                             # %for.body.i1835
                                        # =>This Inner Loop Header: Depth=1
	movl	$903, %edi              # imm = 0x387
	callq	_StraightTaint_log
	movsbq	%bl, %rbx
	movq	(%r13), %rax
	testb	$1, 1(%rax,%rbx,2)
	je	.LBB33_205
# BB#204:                               # %if.then27.i
                                        #   in Loop: Header=BB33_203 Depth=1
	movl	$904, %edi              # imm = 0x388
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movb	(%rax,%rbx,4), %al
	movb	%al, -1(%rbp)
.LBB33_205:                             # %for.inc.i1838
                                        #   in Loop: Header=BB33_203 Depth=1
	movl	$905, %edi              # imm = 0x389
	callq	_StraightTaint_log
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB33_203
.LBB33_206:                             # %for.end.i1839
	movl	$906, %edi              # imm = 0x38A
	callq	_StraightTaint_log
	movq	%r14, %r13
	leaq	532(%r13), %rbp
	cmpl	$0, 532(%r13)
	jne	.LBB33_208
# BB#207:                               # %if.end36.i
	movl	$907, %edi              # imm = 0x38B
	callq	_StraightTaint_log
	leaq	344(%r13), %r14
	movq	%r13, %rbx
	leaq	448(%rbx), %r13
	movq	512(%rbx), %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %r13
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	344(%r13), %rdi
	movq	512(%r13), %rsi
	callq	strcpy
	movq	240(%r13), %rdi
	callq	strlen
	movslq	%eax, %rbx
	movl	$vhost_map.tempfilename, %edi
	movl	$vhost_map.maxtempfilename, %esi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	vhost_map.tempfilename(%rip), %rdi
	movq	240(%r13), %rsi
	callq	strcpy
	movq	344(%r13), %rdi
	callq	strlen
	leaq	1(%rbx,%rax), %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	240(%r13), %rdi
	movq	344(%r13), %rsi
	callq	strcpy
	movq	240(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movw	$47, (%rbx,%rax)
	movq	240(%r13), %rdi
	movq	vhost_map.tempfilename(%rip), %rsi
	callq	strcat
.LBB33_208:                             # %if.end1228
	movq	48(%rsp), %r14          # 8-byte Reload
	movl	$909, %edi              # imm = 0x38D
	callq	_StraightTaint_log
	movq	8(%r13), %rax
	movq	240(%r13), %rdi
	movl	96(%rax), %edx
	movl	(%rbp), %ecx
	leaq	56(%rsp), %rsi
	callq	expand_symlinks
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_209
# BB#211:                               # %if.end1236
	movl	$911, %edi              # imm = 0x38F
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	240(%r13), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	leaq	256(%r13), %r12
	leaq	408(%r13), %rbp
	movq	56(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	256(%r13), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movq	256(%r13), %rbx
	cmpb	$0, (%rbx)
	je	.LBB33_215
# BB#212:                               # %if.then1250
	movl	$912, %edi              # imm = 0x390
	callq	_StraightTaint_log
	movq	(%r14), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	strlen
	subq	%rax, %rbp
	testl	%ebp, %ebp
	jle	.LBB33_215
# BB#213:                               # %land.lhs.true1259
	movl	$913, %edi              # imm = 0x391
	callq	_StraightTaint_log
	movslq	%ebp, %rdi
	addq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB33_215
# BB#214:                               # %if.then1270
	shlq	$32, %rbp
	movl	$914, %edi              # imm = 0x392
	callq	_StraightTaint_log
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rbp, %rax
	sarq	$32, %rax
	movb	$0, (%r14,%rax)
.LBB33_215:                             # %if.end1276
	movl	$915, %edi              # imm = 0x393
	callq	_StraightTaint_log
	movq	(%r15), %rbp
	movzbl	(%rbp), %eax
	xorl	%ebx, %ebx
	cmpl	$47, %eax
	jne	.LBB33_221
# BB#216:                               # %if.then1282
	movl	$916, %edi              # imm = 0x394
	callq	_StraightTaint_log
	movq	8(%r13), %rax
	movq	64(%rax), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_217
# BB#218:                               # %if.else1299
	movl	$918, %edi              # imm = 0x396
	callq	_StraightTaint_log
	leaq	16(%r13), %rdi
	callq	httpd_ntoa
	movq	208(%r13), %rcx
	movl	$5, %edi
	movl	$.L.str5496, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r13), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str5597, %r8d
	jmp	.LBB33_219
.LBB33_209:                             # %if.then1234
	movl	$910, %edi              # imm = 0x38E
	callq	_StraightTaint_log
.LBB33_210:                             # %return
	movq	208(%r13), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB33_219
.LBB33_217:                             # %if.then1291
	movl	$917, %edi              # imm = 0x395
	callq	_StraightTaint_log
	addq	%rbp, %r14
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	strcpy
	jmp	.LBB33_221
.LBB33_189:                             # %if.then1202
	movl	$890, %edi              # imm = 0x37A
	jmp	.LBB33_12
.LBB33_199:                             # %if.else10.i
	movl	$899, %edi              # imm = 0x383
	callq	_StraightTaint_log
	movl	$128, 68(%rsp)
	movl	704(%r13), %edi
	leaq	72(%rsp), %rsi
	leaq	68(%rsp), %rdx
	callq	getsockname
	testl	%eax, %eax
	js	.LBB33_224
# BB#200:                               # %if.end.i1832
	movl	$900, %edi              # imm = 0x384
	callq	_StraightTaint_log
	leaq	72(%rsp), %rdi
	callq	httpd_ntoa
	movq	$httpd_ntoa.str, 512(%r13)
	movq	%r13, %r14
	movl	$httpd_ntoa.str, %ebp
	jmp	.LBB33_201
.LBB33_224:                             # %if.then1225
	movl	$908, %edi              # imm = 0x38C
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str521, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB33_210
.LBB33_111:                             # %if.then579
	movl	$831, %edi              # imm = 0x33F
	callq	_StraightTaint_log
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r9d
	movq	%rbp, %rdi
	jmp	.LBB33_220
.Ltmp433:
	.size	httpd_parse_request, .Ltmp433-httpd_parse_request
	.cfi_endproc

	.globl	httpd_close_conn
	.align	16, 0x90
	.type	httpd_close_conn,@function
httpd_close_conn:                       # @httpd_close_conn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp441:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp442:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp443:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp444:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp445:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp446:
	.cfi_def_cfa_offset 56
	subq	$632, %rsp              # imm = 0x278
.Ltmp447:
	.cfi_def_cfa_offset 688
.Ltmp448:
	.cfi_offset %rbx, -56
.Ltmp449:
	.cfi_offset %r12, -48
.Ltmp450:
	.cfi_offset %r13, -40
.Ltmp451:
	.cfi_offset %r14, -32
.Ltmp452:
	.cfi_offset %r15, -24
.Ltmp453:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movl	$920, %edi              # imm = 0x398
	callq	_StraightTaint_log
	movq	8(%rbp), %rbx
	cmpl	$0, 80(%rbx)
	jne	.LBB34_30
# BB#1:                                 # %if.end.i
	movl	$921, %edi              # imm = 0x399
	callq	_StraightTaint_log
	movq	360(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$.L.str58100, %r15d
	je	.LBB34_3
# BB#2:                                 # %select.mid
	movq	%rax, %r15
.LBB34_3:                               # %select.end
	cmpl	$0, 100(%rbx)
	je	.LBB34_8
# BB#4:                                 # %land.lhs.true.i
	movl	$922, %edi              # imm = 0x39A
	callq	_StraightTaint_log
	cmpl	$0, 532(%rbp)
	je	.LBB34_5
.LBB34_8:                               # %if.else13.i
	movl	$926, %edi              # imm = 0x39E
	callq	_StraightTaint_log
	movq	208(%rbp), %rcx
	leaq	320(%rsp), %rdi
	movl	$305, %esi              # imm = 0x131
	movl	$.L.str60102, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB34_9
.LBB34_5:                               # %if.then8.i
	movl	$923, %edi              # imm = 0x39B
	callq	_StraightTaint_log
	movq	512(%rbp), %r12
	testq	%r12, %r12
	jne	.LBB34_7
# BB#6:                                 # %cond.true.i
	movl	$924, %edi              # imm = 0x39C
	callq	_StraightTaint_log
	movq	8(%rbx), %r12
.LBB34_7:                               # %cond.end.i
	movl	$925, %edi              # imm = 0x39D
	callq	_StraightTaint_log
	movq	208(%rbp), %r8
	leaq	320(%rsp), %rdi
	movl	$305, %esi              # imm = 0x131
	movl	$.L.str59101, %edx
	xorl	%eax, %eax
	movq	%r12, %rcx
	callq	my_snprintf
.LBB34_9:                               # %if.end17.i
	movl	$927, %edi              # imm = 0x39F
	callq	_StraightTaint_log
	movq	200(%rbp), %rbx
	testq	%rbx, %rbx
	js	.LBB34_11
# BB#10:                                # %if.then20.i
	movl	$928, %edi              # imm = 0x3A0
	callq	_StraightTaint_log
	leaq	272(%rsp), %rdi
	movl	$40, %esi
	movl	$.L.str61103, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	my_snprintf
	jmp	.LBB34_12
.LBB34_11:                              # %if.else24.i
	movl	$929, %edi              # imm = 0x3A1
	callq	_StraightTaint_log
	movw	$45, 272(%rsp)
.LBB34_12:                              # %if.end27.i
	movl	$930, %edi              # imm = 0x3A2
	callq	_StraightTaint_log
	movq	8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB34_23
# BB#13:                                # %if.then31.i
	movl	$931, %edi              # imm = 0x3A3
	callq	_StraightTaint_log
	testq	%r14, %r14
	je	.LBB34_15
# BB#14:                                # %if.then34.i
	movl	$932, %edi              # imm = 0x3A4
	callq	_StraightTaint_log
	movq	(%r14), %rbx
	jmp	.LBB34_16
.LBB34_23:                              # %if.else63.i
	movl	$939, %edi              # imm = 0x3AB
	callq	_StraightTaint_log
	leaq	16(%rbp), %rdi
	callq	httpd_ntoa
	movl	$.L.str2063, %r12d
	movl	180(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB34_29
# BB#24:                                # %if.else63.i
	cmpl	$3, %eax
	jne	.LBB34_25
# BB#27:                                # %sw.bb2.i109.i
	movl	$941, %edi              # imm = 0x3AD
	callq	_StraightTaint_log
	movl	$.L.str2265, %r12d
	jmp	.LBB34_29
.LBB34_15:                              # %if.else35.i
	movl	$933, %edi              # imm = 0x3A5
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rbx
.LBB34_16:                              # %if.end37.i
	movl	$934, %edi              # imm = 0x3A6
	callq	_StraightTaint_log
	movq	%rbx, 264(%rsp)
	leaq	264(%rsp), %rdi
	callq	localtime
	movq	%rax, %rbx
	leaq	160(%rsp), %r12
	movl	$100, %esi
	movl	$.L.str62104, %edx
	movq	%r12, %rdi
	movq	%rbx, %rcx
	callq	strftime
	movq	40(%rbx), %rcx
	movabsq	$-8608480567731124087, %rdx # imm = 0x8888888888888889
	movq	%rcx, %rax
	imulq	%rdx
	addq	%rcx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	shrq	$5, %rdx
	addl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovll	%edx, %eax
	shrl	$31, %edx
	leal	43(%rdx,%rdx), %r8d
	movslq	%eax, %r9
	imulq	$-2004318071, %r9, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	movl	%r9d, %ecx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$5, %ecx
	addl	%eax, %ecx
	imull	$100, %ecx, %eax
	imull	$60, %ecx, %ecx
	subl	%ecx, %r9d
	addl	%eax, %r9d
	leaq	48(%rsp), %rdi
	movl	$100, %esi
	movl	$.L.str63105, %edx
	xorl	%eax, %eax
	movq	%r12, %rcx
                                        # kill: R9D<def> R9D<kill> R9<kill>
	callq	my_snprintf
	movq	8(%rbp), %rax
	movq	88(%rax), %r12
	leaq	16(%rbp), %rdi
	callq	httpd_ntoa
	movl	$.L.str2063, %r13d
	movl	180(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB34_22
# BB#17:                                # %if.end37.i
	cmpl	$3, %eax
	jne	.LBB34_18
# BB#20:                                # %sw.bb2.i.i
	movl	$936, %edi              # imm = 0x3A8
	callq	_StraightTaint_log
	movl	$.L.str2265, %r13d
	jmp	.LBB34_22
.LBB34_18:                              # %if.end37.i
	cmpl	$2, %eax
	jne	.LBB34_21
# BB#19:                                # %sw.bb1.i.i
	movl	$935, %edi              # imm = 0x3A7
	callq	_StraightTaint_log
	movl	$.L.str2164, %r13d
	jmp	.LBB34_22
.LBB34_25:                              # %if.else63.i
	cmpl	$2, %eax
	jne	.LBB34_28
# BB#26:                                # %sw.bb1.i108.i
	movl	$940, %edi              # imm = 0x3AC
	callq	_StraightTaint_log
	movl	$.L.str2164, %r12d
	jmp	.LBB34_29
.LBB34_21:                              # %sw.default.i.i
	movl	$937, %edi              # imm = 0x3A9
	callq	_StraightTaint_log
	movl	$.L.str2366, %r13d
.LBB34_22:                              # %httpd_method_str.exit.i
	movl	$938, %edi              # imm = 0x3AA
	callq	_StraightTaint_log
	movq	224(%rbp), %rax
	movl	184(%rbp), %ecx
	movq	272(%rbp), %rdx
	movq	280(%rbp), %rsi
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	leaq	272(%rsp), %rdx
	movq	%rdx, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	leaq	320(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %r8
	movl	$.L.str64106, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	movq	%r15, %rcx
	movq	%r12, %rdi
	movq	%r13, %r9
	callq	fprintf
	movq	8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	fflush
	jmp	.LBB34_30
.LBB34_28:                              # %sw.default.i110.i
	movl	$942, %edi              # imm = 0x3AE
	callq	_StraightTaint_log
	movl	$.L.str2366, %r12d
.LBB34_29:                              # %httpd_method_str.exit112.i
	movl	$943, %edi              # imm = 0x3AF
	callq	_StraightTaint_log
	movq	224(%rbp), %rax
	movl	184(%rbp), %ecx
	movq	272(%rbp), %rdx
	movq	280(%rbp), %rsi
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	leaq	272(%rsp), %rdx
	movq	%rdx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	320(%rsp), %r9
	movl	$6, %edi
	movl	$.L.str65107, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	syslog
.LBB34_30:                              # %make_log_entry.exit
	movl	$944, %edi              # imm = 0x3B0
	callq	_StraightTaint_log
	movq	712(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB34_32
# BB#31:                                # %if.then
	movl	$945, %edi              # imm = 0x3B1
	callq	_StraightTaint_log
	leaq	560(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	mmc_unmap
	movq	$0, 712(%rbp)
.LBB34_32:                              # %if.end
	movl	$946, %edi              # imm = 0x3B2
	callq	_StraightTaint_log
	movl	704(%rbp), %ebx
	testl	%ebx, %ebx
	js	.LBB34_34
# BB#33:                                # %if.then4
	movl	$947, %edi              # imm = 0x3B3
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	close
	movl	$-1, 704(%rbp)
.LBB34_34:                              # %if.end7
	movl	$948, %edi              # imm = 0x3B4
	callq	_StraightTaint_log
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp454:
	.size	httpd_close_conn, .Ltmp454-httpd_close_conn
	.cfi_endproc

	.globl	httpd_destroy_conn
	.align	16, 0x90
	.type	httpd_destroy_conn,@function
httpd_destroy_conn:                     # @httpd_destroy_conn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp457:
	.cfi_def_cfa_offset 16
.Ltmp458:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$949, %edi              # imm = 0x3B5
	callq	_StraightTaint_log
	cmpl	$0, (%rbx)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movl	$950, %edi              # imm = 0x3B6
	callq	_StraightTaint_log
	movq	144(%rbx), %rdi
	callq	free
	movq	216(%rbx), %rdi
	callq	free
	movq	232(%rbx), %rdi
	callq	free
	movq	240(%rbx), %rdi
	callq	free
	movq	248(%rbx), %rdi
	callq	free
	movq	256(%rbx), %rdi
	callq	free
	movq	264(%rbx), %rdi
	callq	free
	movq	288(%rbx), %rdi
	callq	free
	movq	296(%rbx), %rdi
	callq	free
	movq	328(%rbx), %rdi
	callq	free
	movq	344(%rbx), %rdi
	callq	free
	movq	360(%rbx), %rdi
	callq	free
	movq	368(%rbx), %rdi
	callq	free
	movl	$0, (%rbx)
.LBB35_2:                               # %if.end
	movl	$951, %edi              # imm = 0x3B7
	callq	_StraightTaint_log
	popq	%rbx
	ret
.Ltmp459:
	.size	httpd_destroy_conn, .Ltmp459-httpd_destroy_conn
	.cfi_endproc

	.globl	httpd_start_request
	.align	16, 0x90
	.type	httpd_start_request,@function
httpd_start_request:                    # @httpd_start_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp463:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp464:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp465:
	.cfi_def_cfa_offset 32
.Ltmp466:
	.cfi_offset %rbx, -24
.Ltmp467:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$952, %edi              # imm = 0x3B8
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	really_start_request    # TAILCALL
.Ltmp468:
	.size	httpd_start_request, .Ltmp468-httpd_start_request
	.cfi_endproc

	.globl	httpd_read_fully
	.align	16, 0x90
	.type	httpd_read_fully,@function
httpd_read_fully:                       # @httpd_read_fully
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp476:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp477:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp478:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp479:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp480:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp481:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp482:
	.cfi_def_cfa_offset 80
.Ltmp483:
	.cfi_offset %rbx, -56
.Ltmp484:
	.cfi_offset %r12, -48
.Ltmp485:
	.cfi_offset %r13, -40
.Ltmp486:
	.cfi_offset %r14, -32
.Ltmp487:
	.cfi_offset %r15, -24
.Ltmp488:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%edi, %r12d
	movl	$953, %edi              # imm = 0x3B9
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB37_1
# BB#2:
	xorl	%r14d, %r14d
.LBB37_4:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_5 Depth 2
	movl	$955, %edi              # imm = 0x3BB
	callq	_StraightTaint_log
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%r15), %r13
	movq	16(%rsp), %rbp          # 8-byte Reload
	subq	%r15, %rbp
	jmp	.LBB37_5
	.align	16, 0x90
.LBB37_8:                               # %if.then
                                        #   in Loop: Header=BB37_5 Depth=2
	movl	$958, %edi              # imm = 0x3BE
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
.LBB37_5:                               # %while.body
                                        #   Parent Loop BB37_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$956, %edi              # imm = 0x3BC
	callq	_StraightTaint_log
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	read
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB37_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_5 Depth=2
	movl	$957, %edi              # imm = 0x3BD
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB37_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_5 Depth=2
	cmpl	$11, %eax
	je	.LBB37_8
	jmp	.LBB37_11
	.align	16, 0x90
.LBB37_9:                               # %if.end16
                                        #   in Loop: Header=BB37_4 Depth=1
	movl	$959, %edi              # imm = 0x3BF
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	je	.LBB37_10
# BB#3:                                 # %while.cond.outer
                                        #   in Loop: Header=BB37_4 Depth=1
	addl	%r14d, %ebx
	movl	$954, %edi              # imm = 0x3BA
	callq	_StraightTaint_log
	movslq	%ebx, %r15
	cmpq	16(%rsp), %r15          # 8-byte Folded Reload
	movl	%ebx, %r14d
	jb	.LBB37_4
	jmp	.LBB37_11
.LBB37_1:
	xorl	%ebx, %ebx
.LBB37_11:                              # %return
	movl	$960, %edi              # imm = 0x3C0
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB37_10:
	movl	%r14d, %ebx
	jmp	.LBB37_11
.Ltmp489:
	.size	httpd_read_fully, .Ltmp489-httpd_read_fully
	.cfi_endproc

	.globl	httpd_logstats
	.align	16, 0x90
	.type	httpd_logstats,@function
httpd_logstats:                         # @httpd_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp492:
	.cfi_def_cfa_offset 16
.Ltmp493:
	.cfi_offset %rbx, -16
	movl	$961, %edi              # imm = 0x3C1
	callq	_StraightTaint_log
	movl	str_alloc_count(%rip), %ebx
	testl	%ebx, %ebx
	jle	.LBB38_5
# BB#1:                                 # %if.then
	movl	$962, %edi              # imm = 0x3C2
	callq	_StraightTaint_log
	movq	str_alloc_size(%rip), %rcx
	testq	%rcx, %rcx
	js	.LBB38_2
# BB#3:                                 # %if.then
	cvtsi2ssq	%rcx, %xmm0
	jmp	.LBB38_4
.LBB38_2:
	movq	%rcx, %rax
	shrq	%rax
	movq	%rcx, %rdx
	andq	$1, %rdx
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
.LBB38_4:                               # %if.then
	cvtsi2ssl	%ebx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$6, %edi
	movl	$.L.str5799, %esi
	movb	$1, %al
	movl	%ebx, %edx
	callq	syslog
.LBB38_5:                               # %if.end
	movl	$963, %edi              # imm = 0x3C3
	callq	_StraightTaint_log
	popq	%rbx
	ret
.Ltmp494:
	.size	httpd_logstats, .Ltmp494-httpd_logstats
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_listen_socket,@function
initialize_listen_socket:               # @initialize_listen_socket
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp499:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp500:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp501:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp502:
	.cfi_def_cfa_offset 48
.Ltmp503:
	.cfi_offset %rbx, -32
.Ltmp504:
	.cfi_offset %r14, -24
.Ltmp505:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$964, %edi              # imm = 0x3C4
	callq	_StraightTaint_log
	movzwl	(%rbx), %ebp
	movl	%ebp, %eax
	orl	$8, %eax
	cmpl	$10, %eax
	jne	.LBB39_1
# BB#2:                                 # %if.end
	movl	$966, %edi              # imm = 0x3C6
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$1, %esi
	xorl	%edx, %edx
	movl	%ebp, %edi
	callq	socket
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB39_3
# BB#4:                                 # %if.end5
	movl	$968, %edi              # imm = 0x3C8
	callq	_StraightTaint_log
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
	movl	$1, 12(%rsp)
	leaq	12(%rsp), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movl	$4, %r8d
	movl	%r14d, %edi
	callq	setsockopt
	testl	%eax, %eax
	jns	.LBB39_6
# BB#5:                                 # %if.then10
	movl	$969, %edi              # imm = 0x3C9
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str533, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB39_6:                               # %if.end11
	movl	$970, %edi              # imm = 0x3CA
	callq	_StraightTaint_log
	movzwl	(%rbx), %eax
	movl	$16, %ebp
	cmpl	$2, %eax
	je	.LBB39_10
# BB#7:                                 # %if.end11
	cmpl	$10, %eax
	jne	.LBB39_9
# BB#8:                                 # %sw.bb1.i
	movl	$971, %edi              # imm = 0x3CB
	callq	_StraightTaint_log
	movl	$28, %ebp
	jmp	.LBB39_10
.LBB39_1:                               # %if.then
	movl	$965, %edi              # imm = 0x3C5
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str531, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_20
.LBB39_3:                               # %if.then3
	movl	$967, %edi              # imm = 0x3C7
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	httpd_ntoa
	movl	$2, %edi
	movl	$.L.str532, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_20
.LBB39_9:                               # %sw.default.i59
	movl	$972, %edi              # imm = 0x3CC
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
.LBB39_10:                              # %sockaddr_len.exit
	movl	$973, %edi              # imm = 0x3CD
	callq	_StraightTaint_log
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	bind
	testl	%eax, %eax
	js	.LBB39_11
# BB#12:                                # %if.end21
	movl	$975, %edi              # imm = 0x3CF
	callq	_StraightTaint_log
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB39_13
# BB#14:                                # %if.end27
	movl	$977, %edi              # imm = 0x3D1
	callq	_StraightTaint_log
	orl	$2048, %ebx             # imm = 0x800
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r14d, %edi
	movl	%ebx, %edx
	callq	fcntl
	testl	%eax, %eax
	js	.LBB39_15
# BB#16:                                # %if.end33
	movl	$979, %edi              # imm = 0x3D3
	callq	_StraightTaint_log
	movl	$1024, %esi             # imm = 0x400
	movl	%r14d, %edi
	callq	listen
	testl	%eax, %eax
	jns	.LBB39_21
# BB#17:                                # %if.then37
	movl	$980, %edi              # imm = 0x3D4
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str537157, %esi
	jmp	.LBB39_18
.LBB39_11:                              # %if.then18
	movl	$974, %edi              # imm = 0x3CE
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	httpd_ntoa
	movl	$2, %edi
	movl	$.L.str534, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_19
.LBB39_13:                              # %if.then25
	movl	$976, %edi              # imm = 0x3D0
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str535, %esi
	jmp	.LBB39_18
.LBB39_15:                              # %if.then31
	movl	$978, %edi              # imm = 0x3D2
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str536, %esi
.LBB39_18:                              # %return
	xorl	%eax, %eax
	callq	syslog
.LBB39_19:                              # %return
	movl	%r14d, %edi
	callq	close
.LBB39_20:                              # %return
	movl	$-1, %r14d
.LBB39_21:                              # %return
	movl	$981, %edi              # imm = 0x3D5
	callq	_StraightTaint_log
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp506:
	.size	initialize_listen_socket, .Ltmp506-initialize_listen_socket
	.cfi_endproc

	.align	16, 0x90
	.type	free_httpd_server,@function
free_httpd_server:                      # @free_httpd_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp510:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp511:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp512:
	.cfi_def_cfa_offset 32
.Ltmp513:
	.cfi_offset %rbx, -24
.Ltmp514:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$982, %edi              # imm = 0x3D6
	callq	_StraightTaint_log
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_2
# BB#1:                                 # %if.then
	movl	$983, %edi              # imm = 0x3D7
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_2:                               # %if.end
	movl	$984, %edi              # imm = 0x3D8
	callq	_StraightTaint_log
	movq	64(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_4
# BB#3:                                 # %if.then3
	movl	$985, %edi              # imm = 0x3D9
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_4:                               # %if.end5
	movl	$986, %edi              # imm = 0x3DA
	callq	_StraightTaint_log
	movq	24(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_6
# BB#5:                                 # %if.then7
	movl	$987, %edi              # imm = 0x3DB
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_6:                               # %if.end9
	movl	$988, %edi              # imm = 0x3DC
	callq	_StraightTaint_log
	movq	40(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_8
# BB#7:                                 # %if.then11
	movl	$989, %edi              # imm = 0x3DD
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_8:                               # %if.end13
	movl	$990, %edi              # imm = 0x3DE
	callq	_StraightTaint_log
	movq	48(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_10
# BB#9:                                 # %if.then15
	movl	$991, %edi              # imm = 0x3DF
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_10:                              # %if.end17
	movl	$992, %edi              # imm = 0x3E0
	callq	_StraightTaint_log
	movq	112(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_12
# BB#11:                                # %if.then19
	movl	$993, %edi              # imm = 0x3E1
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_12:                              # %if.end21
	movl	$994, %edi              # imm = 0x3E2
	callq	_StraightTaint_log
	movq	120(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB40_14
# BB#13:                                # %if.then23
	movl	$995, %edi              # imm = 0x3E3
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	free
.LBB40_14:                              # %if.end25
	movl	$996, %edi              # imm = 0x3E4
	callq	_StraightTaint_log
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	free                    # TAILCALL
.Ltmp515:
	.size	free_httpd_server, .Ltmp515-free_httpd_server
	.cfi_endproc

	.align	16, 0x90
	.type	ext_compare,@function
ext_compare:                            # @ext_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp519:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp520:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp521:
	.cfi_def_cfa_offset 32
.Ltmp522:
	.cfi_offset %rbx, -24
.Ltmp523:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$997, %edi              # imm = 0x3E5
	callq	_StraightTaint_log
	movq	(%rbx), %rdi
	movq	(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcmp                  # TAILCALL
.Ltmp524:
	.size	ext_compare, .Ltmp524-ext_compare
	.cfi_endproc

	.align	16, 0x90
	.type	my_snprintf,@function
my_snprintf:                            # @my_snprintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp529:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp530:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp531:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp532:
	.cfi_def_cfa_offset 240
.Ltmp533:
	.cfi_offset %rbx, -32
.Ltmp534:
	.cfi_offset %r14, -24
.Ltmp535:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB42_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB42_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movl	$998, %edi              # imm = 0x3E6
	callq	_StraightTaint_log
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$24, 176(%rsp)
	leaq	176(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	vsnprintf
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp536:
	.size	my_snprintf, .Ltmp536-my_snprintf
	.cfi_endproc

	.align	16, 0x90
	.type	send_err_file,@function
send_err_file:                          # @send_err_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp544:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp545:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp546:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp547:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp548:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp549:
	.cfi_def_cfa_offset 56
	subq	$2024, %rsp             # imm = 0x7E8
.Ltmp550:
	.cfi_def_cfa_offset 2080
.Ltmp551:
	.cfi_offset %rbx, -56
.Ltmp552:
	.cfi_offset %r12, -48
.Ltmp553:
	.cfi_offset %r13, -40
.Ltmp554:
	.cfi_offset %r14, -32
.Ltmp555:
	.cfi_offset %r15, -24
.Ltmp556:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %r15
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movl	$999, %edi              # imm = 0x3E7
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str500, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB43_5
# BB#1:                                 # %if.end
	movl	$1000, %edi             # imm = 0x3E8
	callq	_StraightTaint_log
	movq	$0, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$.L.str2669, %ecx
	movl	$.L.str183, %r9d
	movl	%r13d, %esi
	movq	%r12, %r8
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	send_mime
	leaq	16(%rsp), %rdi
	movl	$1, %esi
	movl	$999, %edx              # imm = 0x3E7
	movq	%r14, %rcx
	callq	fread
	movq	%rax, %rbp
	leaq	368(%rbx), %r15
	leaq	464(%rbx), %r12
	testq	%rbp, %rbp
	je	.LBB43_4
# BB#2:
	leaq	16(%rsp), %r13
	.align	16, 0x90
.LBB43_3:                               # %if.end4
                                        # =>This Inner Loop Header: Depth=1
	movl	$1001, %edi             # imm = 0x3E9
	callq	_StraightTaint_log
	movb	$0, 16(%rsp,%rbp)
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	472(%rbx), %rdx
	addq	%rbp, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%rbx)
	movl	$1, %esi
	movl	$999, %edx              # imm = 0x3E7
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	fread
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB43_3
.LBB43_4:                               # %for.end
	movl	$1002, %edi             # imm = 0x3EA
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	fclose
	leaq	1024(%rsp), %r14
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str524, %edx
	movl	$.L.str525, %ecx
	movl	$.L.str840, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	my_snprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	472(%rbx), %rdx
	addq	%rbp, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%rbx)
	movl	$1, %ebp
.LBB43_5:                               # %cleanup
	movl	$1003, %edi             # imm = 0x3EB
	callq	_StraightTaint_log
	movl	%ebp, %eax
	addq	$2024, %rsp             # imm = 0x7E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp557:
	.size	send_err_file, .Ltmp557-send_err_file
	.cfi_endproc

	.align	16, 0x90
	.type	send_response,@function
send_response:                          # @send_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp565:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp566:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp567:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp568:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp569:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp570:
	.cfi_def_cfa_offset 56
	subq	$4040, %rsp             # imm = 0xFC8
.Ltmp571:
	.cfi_def_cfa_offset 4096
.Ltmp572:
	.cfi_offset %rbx, -56
.Ltmp573:
	.cfi_offset %r12, -48
.Ltmp574:
	.cfi_offset %r13, -40
.Ltmp575:
	.cfi_offset %r14, -32
.Ltmp576:
	.cfi_offset %r15, -24
.Ltmp577:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r13
	movl	$1004, %edi             # imm = 0x3EC
	callq	_StraightTaint_log
	movq	$0, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$.L.str2669, %ecx
	movl	$.L.str183, %r9d
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r14, %r8
	movq	%r15, %rdx
	callq	send_mime
	movq	%r15, (%rsp)
	leaq	32(%rsp), %r12
	movl	$2000, %esi             # imm = 0x7D0
	movl	$.L.str526, %edx
	xorl	%eax, %eax
	movl	%ebp, %ecx
	movq	%r15, %r8
	movq	%r12, %rdi
	movl	%ebp, %r9d
	callq	my_snprintf
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbp
	leaq	368(%r13), %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	leaq	464(%r13), %r15
	movq	472(%r13), %rdx
	addq	%rbp, %rdx
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rdi
	addq	472(%r13), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%r13)
	movb	(%rbx), %r14b
	testb	%r14b, %r14b
	je	.LBB44_1
# BB#2:                                 # %land.rhs.lr.ph.i
	leaq	2032(%rsp), %r12
	movl	$1005, %edi             # imm = 0x3ED
	callq	_StraightTaint_log
	incq	%rbx
	movq	%r12, %rbp
	.align	16, 0x90
.LBB44_3:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1006, %edi             # imm = 0x3EE
	callq	_StraightTaint_log
	movq	%rbp, %rax
	subq	%r12, %rax
	cmpq	$994, %rax              # imm = 0x3E2
	jg	.LBB44_10
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$1007, %edi             # imm = 0x3EF
	callq	_StraightTaint_log
	movsbl	%r14b, %eax
	cmpl	$62, %eax
	jne	.LBB44_5
# BB#7:                                 # %sw.bb8.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$1009, %edi             # imm = 0x3F1
	callq	_StraightTaint_log
	movl	$997484326, (%rbp)      # imm = 0x3B746726
	addq	$3, %rbp
	jmp	.LBB44_9
	.align	16, 0x90
.LBB44_5:                               # %for.body.i
                                        #   in Loop: Header=BB44_3 Depth=1
	cmpl	$60, %eax
	jne	.LBB44_8
# BB#6:                                 # %sw.bb.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$1008, %edi             # imm = 0x3F0
	callq	_StraightTaint_log
	movl	$997485606, (%rbp)      # imm = 0x3B746C26
	addq	$3, %rbp
	jmp	.LBB44_9
	.align	16, 0x90
.LBB44_8:                               # %sw.default.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$1010, %edi             # imm = 0x3F2
	callq	_StraightTaint_log
	movb	%r14b, (%rbp)
.LBB44_9:                               # %for.inc.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$1011, %edi             # imm = 0x3F3
	callq	_StraightTaint_log
	incq	%rbp
	movb	(%rbx), %r14b
	incq	%rbx
	testb	%r14b, %r14b
	jne	.LBB44_3
	jmp	.LBB44_10
.LBB44_1:
	leaq	2032(%rsp), %rbp
.LBB44_10:                              # %defang.exit
	movl	$1012, %edi             # imm = 0x3F4
	callq	_StraightTaint_log
	movb	$0, (%rbp)
	leaq	32(%rsp), %rbx
	leaq	2032(%rsp), %rcx
	movl	$2000, %esi             # imm = 0x7D0
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	my_snprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	472(%r13), %rdx
	addq	%rbp, %rdx
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rdi
	addq	472(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%r13)
	movq	280(%r13), %rsi
	movl	$.L.str527, %edi
	callq	match
	testl	%eax, %eax
	je	.LBB44_12
# BB#11:                                # %if.then
	movl	$1013, %edi             # imm = 0x3F5
	callq	_StraightTaint_log
	movq	472(%r13), %rdx
	addq	$5, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movb	$10, 4(%rax,%rcx)
	movl	$757932348, (%rax,%rcx) # imm = 0x2D2D213C
	movq	472(%r13), %rdx
	leaq	5(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$83, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$156, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$156, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$156, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$156, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$156, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movups	.L.str529+62(%rip), %xmm0
	movups	%xmm0, 62(%rax,%rcx)
	movups	.L.str529+48(%rip), %xmm0
	movups	%xmm0, 48(%rax,%rcx)
	movups	.L.str529+32(%rip), %xmm0
	movups	%xmm0, 32(%rax,%rcx)
	movups	.L.str529+16(%rip), %xmm0
	movups	%xmm0, 16(%rax,%rcx)
	movups	.L.str529(%rip), %xmm0
	movups	%xmm0, (%rax,%rcx)
	movq	472(%r13), %rdx
	leaq	78(%rdx), %rax
	movq	%rax, 472(%r13)
	addq	$82, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rax
	movq	472(%r13), %rcx
	movl	$171846957, (%rax,%rcx) # imm = 0xA3E2D2D
	addq	$4, 472(%r13)
.LBB44_12:                              # %if.end
	movl	$1014, %edi             # imm = 0x3F6
	callq	_StraightTaint_log
	leaq	3040(%rsp), %rbx
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str524, %edx
	movl	$.L.str525, %ecx
	movl	$.L.str840, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	my_snprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	472(%r13), %rdx
	addq	%rbp, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rdi
	addq	472(%r13), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%r13)
	addq	$4040, %rsp             # imm = 0xFC8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp578:
	.size	send_response, .Ltmp578-send_response
	.cfi_endproc

	.align	16, 0x90
	.type	strdecode,@function
strdecode:                              # @strdecode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp586:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp587:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp588:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp589:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp590:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp591:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp592:
	.cfi_def_cfa_offset 64
.Ltmp593:
	.cfi_offset %rbx, -56
.Ltmp594:
	.cfi_offset %r12, -48
.Ltmp595:
	.cfi_offset %r13, -40
.Ltmp596:
	.cfi_offset %r14, -32
.Ltmp597:
	.cfi_offset %r15, -24
.Ltmp598:
	.cfi_offset %rbp, -16
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$1015, %edi             # imm = 0x3F7
	callq	_StraightTaint_log
	jmp	.LBB45_1
	.align	16, 0x90
.LBB45_19:                              # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1028, %edi             # imm = 0x404
	callq	_StraightTaint_log
	movb	%bpl, (%r14)
	incq	%r14
	incq	%r13
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1016, %edi             # imm = 0x3F8
	callq	_StraightTaint_log
	movb	(%r13), %bpl
	testb	%bpl, %bpl
	je	.LBB45_20
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB45_1 Depth=1
	movzbl	%bpl, %eax
	cmpl	$37, %eax
	jne	.LBB45_19
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1017, %edi             # imm = 0x3F9
	callq	_StraightTaint_log
	movsbq	1(%r13), %r12
	callq	__ctype_b_loc
	movq	(%rax), %rbx
	testb	$16, 1(%rbx,%r12,2)
	jne	.LBB45_5
# BB#4:                                 #   in Loop: Header=BB45_1 Depth=1
	movb	$37, %bpl
	jmp	.LBB45_19
	.align	16, 0x90
.LBB45_5:                               # %land.lhs.true9
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1018, %edi             # imm = 0x3FA
	callq	_StraightTaint_log
	movsbq	2(%r13), %r15
	testb	$16, 1(%rbx,%r15,2)
	je	.LBB45_19
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1019, %edi             # imm = 0x3FB
	callq	_StraightTaint_log
	movb	%r12b, %bpl
	addb	$-48, %bpl
	movzbl	%bpl, %eax
	cmpl	$10, %eax
	jb	.LBB45_12
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1020, %edi             # imm = 0x3FC
	callq	_StraightTaint_log
	movb	%r12b, %al
	addb	$-97, %al
	movzbl	%al, %eax
	cmpl	$5, %eax
	ja	.LBB45_9
# BB#8:                                 # %if.then13.i
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1021, %edi             # imm = 0x3FD
	callq	_StraightTaint_log
	addb	$-87, %r12b
	movb	%r12b, %bpl
	jmp	.LBB45_12
.LBB45_9:                               # %if.end16.i
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1022, %edi             # imm = 0x3FE
	callq	_StraightTaint_log
	movb	%r12b, %al
	addb	$-65, %al
	movzbl	%al, %eax
	cmpl	$6, %eax
	jb	.LBB45_10
# BB#11:                                # %if.end16.i
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB45_12
.LBB45_10:                              #   in Loop: Header=BB45_1 Depth=1
	addb	$-55, %r12b
	movb	%r12b, %bpl
.LBB45_12:                              # %hexit.exit
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1023, %edi             # imm = 0x3FF
	callq	_StraightTaint_log
	movb	%r15b, %r12b
	addb	$-48, %r12b
	movzbl	%r12b, %eax
	cmpl	$10, %eax
	jb	.LBB45_18
# BB#13:                                # %if.end.i41
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1024, %edi             # imm = 0x400
	callq	_StraightTaint_log
	movb	%r15b, %al
	addb	$-97, %al
	movzbl	%al, %eax
	cmpl	$5, %eax
	ja	.LBB45_15
# BB#14:                                # %if.then13.i43
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1025, %edi             # imm = 0x401
	callq	_StraightTaint_log
	addb	$-87, %r15b
	movb	%r15b, %r12b
	jmp	.LBB45_18
.LBB45_15:                              # %if.end16.i47
                                        #   in Loop: Header=BB45_1 Depth=1
	movl	$1026, %edi             # imm = 0x402
	callq	_StraightTaint_log
	movb	%r15b, %al
	addb	$-65, %al
	movzbl	%al, %eax
	cmpl	$6, %eax
	jb	.LBB45_16
# BB#17:                                # %if.end16.i47
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB45_18
.LBB45_16:                              #   in Loop: Header=BB45_1 Depth=1
	addb	$-55, %r15b
	movb	%r15b, %r12b
.LBB45_18:                              # %hexit.exit50
                                        #   in Loop: Header=BB45_1 Depth=1
	addq	$2, %r13
	shlb	$4, %bpl
	movl	$1027, %edi             # imm = 0x403
	callq	_StraightTaint_log
	addb	%r12b, %bpl
	jmp	.LBB45_19
.LBB45_20:                              # %for.end
	movl	$1029, %edi             # imm = 0x405
	callq	_StraightTaint_log
	movb	$0, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp599:
	.size	strdecode, .Ltmp599-strdecode
	.cfi_endproc

	.align	16, 0x90
	.type	expand_symlinks,@function
expand_symlinks:                        # @expand_symlinks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp607:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp608:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp609:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp610:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp611:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp612:
	.cfi_def_cfa_offset 56
	subq	$5192, %rsp             # imm = 0x1448
.Ltmp613:
	.cfi_def_cfa_offset 5248
.Ltmp614:
	.cfi_offset %rbx, -56
.Ltmp615:
	.cfi_offset %r12, -48
.Ltmp616:
	.cfi_offset %r13, -40
.Ltmp617:
	.cfi_offset %r14, -32
.Ltmp618:
	.cfi_offset %r15, -24
.Ltmp619:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$1030, %edi             # imm = 0x406
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	je	.LBB46_6
# BB#1:                                 # %if.then
	movl	$1031, %edi             # imm = 0x407
	callq	_StraightTaint_log
	leaq	48(%rsp), %rdx
	movl	$1, %edi
	movq	%r14, %rsi
	callq	__xstat
	cmpl	$-1, %eax
	je	.LBB46_6
# BB#2:                                 # %if.then1
	movl	$1032, %edi             # imm = 0x408
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movq	%rbp, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	expand_symlinks.checked(%rip), %rax
	movzbl	-1(%rax,%rbp), %ecx
	cmpl	$47, %ecx
	jne	.LBB46_5
# BB#3:
	leaq	-1(%rax,%rbp), %r14
	movq	%rbp, %rbx
	decq	%rbx
	.align	16, 0x90
.LBB46_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1033, %edi             # imm = 0x409
	callq	_StraightTaint_log
	movb	$0, (%r14)
	movq	expand_symlinks.checked(%rip), %rax
	leaq	-1(%rax,%rbx), %r14
	decq	%rbx
	movzbl	-2(%rax,%rbp), %eax
	decq	%rbp
	cmpl	$47, %eax
	je	.LBB46_4
.LBB46_5:                               # %cleanup
	movl	$1034, %edi             # imm = 0x40A
	callq	_StraightTaint_log
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	xorl	%edx, %edx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rax
	movb	$0, (%rax)
	movq	expand_symlinks.rest(%rip), %rax
	movq	%rax, (%r15)
	jmp	.LBB46_71
.LBB46_6:                               # %if.end9
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	$1035, %edi             # imm = 0x40B
	callq	_StraightTaint_log
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movl	$1, %edx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rax
	movb	$0, (%rax)
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r15
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%r15, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	expand_symlinks.rest(%rip), %rbx
	movzbl	-1(%rbx,%r15), %eax
	cmpl	$47, %eax
	jne	.LBB46_8
# BB#7:                                 # %if.then18
	decq	%r15
	movl	$1036, %edi             # imm = 0x40C
	callq	_StraightTaint_log
	movb	$0, (%rbx,%r15)
.LBB46_8:                               # %if.end21
	movl	$1037, %edi             # imm = 0x40D
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	movq	expand_symlinks.rest(%rip), %rbp
	jne	.LBB46_12
# BB#9:                                 # %while.cond24.preheader
	movl	$1038, %edi             # imm = 0x40E
	callq	_StraightTaint_log
	jmp	.LBB46_11
	.align	16, 0x90
.LBB46_10:                              # %while.body29
                                        #   in Loop: Header=BB46_11 Depth=1
	movl	$1039, %edi             # imm = 0x40F
	callq	_StraightTaint_log
	leaq	1(%rbp), %rsi
	movq	%rbp, %rdi
	callq	strcpy
	decq	%r15
	movq	expand_symlinks.rest(%rip), %rbp
.LBB46_11:                              # %while.body29
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	cmpl	$47, %eax
	je	.LBB46_10
.LBB46_12:                              # %if.end34
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movl	$1040, %edi             # imm = 0x410
	callq	_StraightTaint_log
	xorl	%r12d, %r12d
	testq	%r15, %r15
	je	.LBB46_69
# BB#13:
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
.LBB46_14:                              # %while.body38.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_15 Depth 2
                                        #     Child Loop BB46_63 Depth 2
	movl	$1041, %edi             # imm = 0x411
	callq	_StraightTaint_log
	movq	%rbp, %rbx
.LBB46_15:                              # %while.body38
                                        #   Parent Loop BB46_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1042, %edi             # imm = 0x412
	callq	_StraightTaint_log
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB46_16
# BB#31:                                # %cond.true105
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1055, %edi             # imm = 0x41F
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB46_39
# BB#32:                                # %if.then117
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1056, %edi             # imm = 0x420
	callq	_StraightTaint_log
	movzbl	1(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB46_39
# BB#33:                                # %cond.end148
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1057, %edi             # imm = 0x421
	callq	_StraightTaint_log
	cmpb	$0, 2(%rbx)
	jne	.LBB46_39
# BB#34:                                # %if.then152
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1058, %edi             # imm = 0x422
	callq	_StraightTaint_log
	testq	%r12, %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	%r15, %r14
	movq	%rbx, %r12
	movl	$0, %eax
	movl	$0, %r13d
	je	.LBB46_43
# BB#35:                                # %if.then155
                                        #   in Loop: Header=BB46_15 Depth=2
	movq	%r12, %rbx
	movl	$1059, %edi             # imm = 0x423
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %r14
	movl	$47, %esi
	movq	%r14, %rdi
	callq	strrchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	movl	$0, %r13d
	je	.LBB46_38
# BB#36:                                # %if.else160
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1060, %edi             # imm = 0x424
	callq	_StraightTaint_log
	subq	%r14, %rbp
	movl	$1, %r13d
	je	.LBB46_38
# BB#37:                                # %if.else164
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1061, %edi             # imm = 0x425
	callq	_StraightTaint_log
	movq	%rbp, %r13
.LBB46_38:                              # %if.end169
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1062, %edi             # imm = 0x426
	callq	_StraightTaint_log
	movb	$0, (%r14,%r13)
	movq	%r15, %r14
	xorl	%eax, %eax
	movq	%rbx, %r12
	jmp	.LBB46_43
	.align	16, 0x90
.LBB46_16:                              # %if.then42
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1043, %edi             # imm = 0x413
	callq	_StraightTaint_log
	subq	%rbx, %rbp
	testl	%ebp, %ebp
	jne	.LBB46_18
# BB#17:                                # %if.then46
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1044, %edi             # imm = 0x414
	callq	_StraightTaint_log
	leaq	1(%r12), %r13
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movq	%r13, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r12, %rdi
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movq	%rbx, %rsi
	movq	%rbx, %r12
	callq	strncpy
	shlq	$32, %rbp
	movq	%rbp, %r14
	jmp	.LBB46_30
	.align	16, 0x90
.LBB46_39:                              # %if.else172
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1063, %edi             # imm = 0x427
	callq	_StraightTaint_log
	leaq	1(%r12,%r15), %rdx
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	callq	httpd_realloc_str
	testq	%r12, %r12
	movl	$0, %r13d
	je	.LBB46_42
# BB#40:                                # %land.lhs.true177
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1064, %edi             # imm = 0x428
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rbp
	movzbl	-1(%r12,%rbp), %eax
	cmpl	$47, %eax
	movq	%r12, %r13
	je	.LBB46_42
# BB#41:                                # %if.then183
                                        #   in Loop: Header=BB46_15 Depth=2
	leaq	1(%r12), %r13
	movl	$1065, %edi             # imm = 0x429
	callq	_StraightTaint_log
	movb	$47, (%rbp,%r12)
.LBB46_42:                              # %if.end186
                                        #   in Loop: Header=BB46_15 Depth=2
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$1066, %edi             # imm = 0x42A
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r13, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	addq	%r15, %r13
	movq	%r15, %r14
	movq	%rbx, %r12
	xorl	%eax, %eax
	jmp	.LBB46_43
	.align	16, 0x90
.LBB46_18:                              # %if.else
                                        #   in Loop: Header=BB46_15 Depth=2
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$1045, %edi             # imm = 0x415
	callq	_StraightTaint_log
	movq	%rbp, %r14
	shlq	$32, %r14
	cmpl	$2, %ebp
	movslq	%ebp, %rbp
	movl	$2, %edx
	cmovgq	%rbp, %rdx
	movl	$.L.str516, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movq	%rbx, %r12
	testl	%eax, %eax
	jne	.LBB46_26
# BB#19:                                # %if.then56
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1046, %edi             # imm = 0x416
	callq	_StraightTaint_log
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	jne	.LBB46_21
# BB#20:                                #   in Loop: Header=BB46_15 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB46_30
.LBB46_26:                              # %if.else75
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1050, %edi             # imm = 0x41A
	callq	_StraightTaint_log
	movq	32(%rsp), %rbx          # 8-byte Reload
	leaq	1(%rbp,%rbx), %rdx
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	callq	httpd_realloc_str
	testq	%rbx, %rbx
	movl	$0, %r13d
	je	.LBB46_29
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1051, %edi             # imm = 0x41B
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rcx
	movzbl	-1(%rbx,%rcx), %eax
	cmpl	$47, %eax
	movq	%rbx, %r13
	je	.LBB46_29
# BB#28:                                # %if.then86
                                        #   in Loop: Header=BB46_15 Depth=2
	leaq	1(%rbx), %r13
	movl	$1052, %edi             # imm = 0x41C
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	callq	_StraightTaint_log
	movq	40(%rsp), %rax          # 8-byte Reload
	movb	$47, (%rax,%rbx)
.LBB46_29:                              # %if.end88
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1053, %edi             # imm = 0x41D
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	strncpy
	addq	%rbp, %r13
	jmp	.LBB46_30
.LBB46_21:                              # %if.then59
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1047, %edi             # imm = 0x417
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rbp
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strrchr
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB46_23
# BB#22:                                #   in Loop: Header=BB46_15 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB46_30
.LBB46_23:                              # %if.else64
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1048, %edi             # imm = 0x418
	callq	_StraightTaint_log
	subq	%rbp, %r13
	jne	.LBB46_25
# BB#24:                                #   in Loop: Header=BB46_15 Depth=2
	movl	$1, %r13d
	jmp	.LBB46_30
.LBB46_25:                              # %if.else68
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1049, %edi             # imm = 0x419
	callq	_StraightTaint_log
	.align	16, 0x90
.LBB46_30:                              # %if.end95
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1054, %edi             # imm = 0x41E
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rax
	movb	$0, (%rax,%r13)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %r14
	sarq	$32, %r14
	movq	%r15, %rax
	subq	%r14, %rax
.LBB46_43:                              # %if.end192
                                        #   in Loop: Header=BB46_15 Depth=2
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	$1067, %edi             # imm = 0x42B
	callq	_StraightTaint_log
	leaq	(%r12,%r14), %rbp
	movq	expand_symlinks.checked(%rip), %rbx
	cmpb	$0, (%rbx)
	je	.LBB46_44
# BB#45:                                # %if.end198
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1069, %edi             # imm = 0x42D
	callq	_StraightTaint_log
	movl	$4999, %edx             # imm = 0x1387
	movq	%rbx, %rdi
	leaq	192(%rsp), %rsi
	callq	readlink
	cmpq	$-1, %rax
	jne	.LBB46_56
# BB#46:                                # %if.then202
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1070, %edi             # imm = 0x42E
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$12, %eax
	jle	.LBB46_47
# BB#49:                                # %if.then202
                                        #   in Loop: Header=BB46_15 Depth=2
	cmpl	$22, %eax
	jne	.LBB46_50
.LBB46_44:                              # %while.cond35.backedge
                                        #   in Loop: Header=BB46_15 Depth=2
	movl	$1068, %edi             # imm = 0x42C
	callq	_StraightTaint_log
	movq	40(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movq	%r13, %r12
	movq	%rax, %r15
	movq	%rbp, %rbx
	jne	.LBB46_15
	jmp	.LBB46_69
.LBB46_56:                              # %if.end229
                                        #   in Loop: Header=BB46_14 Depth=1
	movq	%rax, %r14
	movl	$1076, %edi             # imm = 0x434
	callq	_StraightTaint_log
	movl	12(%rsp), %ebx          # 4-byte Reload
	cmpl	$32, %ebx
	jge	.LBB46_57
# BB#58:                                # %if.end234
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1078, %edi             # imm = 0x436
	callq	_StraightTaint_log
	movb	$0, 192(%rsp,%r14)
	movzbl	191(%rsp,%r14), %eax
	cmpl	$47, %eax
	jne	.LBB46_60
# BB#59:                                # %if.then241
                                        #   in Loop: Header=BB46_14 Depth=1
	decq	%r14
	movl	$1079, %edi             # imm = 0x437
	callq	_StraightTaint_log
	movb	$0, 192(%rsp,%r14)
.LBB46_60:                              # %if.end244
                                        #   in Loop: Header=BB46_14 Depth=1
	movq	%r14, %r12
	incl	%ebx
	movl	$1080, %edi             # imm = 0x438
	callq	_StraightTaint_log
	movq	40(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB46_61
# BB#65:                                # %if.else265
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movl	$1085, %edi             # imm = 0x43D
	callq	_StraightTaint_log
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%r12, %rbx
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rdi
	leaq	192(%rsp), %rsi
	callq	strcpy
	movq	%rbx, %r15
	jmp	.LBB46_66
.LBB46_61:                              # %if.then247
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movl	$1081, %edi             # imm = 0x439
	movq	%rax, %rbx
	callq	_StraightTaint_log
	movq	expand_symlinks.rest(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcpy
	leaq	1(%rbx,%r12), %r15
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%r15, %rdx
	callq	httpd_realloc_str
	testl	%ebx, %ebx
	js	.LBB46_64
# BB#62:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1082, %edi             # imm = 0x43A
	callq	_StraightTaint_log
	leaq	1(%r12), %r14
	movslq	%ebx, %rbp
	leal	1(%rbp), %ebx
.LBB46_63:                              # %for.body
                                        #   Parent Loop BB46_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1083, %edi             # imm = 0x43B
	callq	_StraightTaint_log
	movq	expand_symlinks.rest(%rip), %rax
	movb	(%rax,%rbp), %cl
	addq	%r14, %rax
	movb	%cl, (%rbp,%rax)
	decq	%rbp
	decl	%ebx
	testl	%ebx, %ebx
	jg	.LBB46_63
.LBB46_64:                              # %for.end
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1084, %edi             # imm = 0x43C
	callq	_StraightTaint_log
	movq	expand_symlinks.rest(%rip), %rdi
	leaq	192(%rsp), %rsi
	callq	strcpy
	movq	expand_symlinks.rest(%rip), %rax
	movb	$47, (%rax,%r12)
.LBB46_66:                              # %if.end268
                                        #   in Loop: Header=BB46_14 Depth=1
	movq	32(%rsp), %r12          # 8-byte Reload
	movl	$1086, %edi             # imm = 0x43E
	callq	_StraightTaint_log
	movq	expand_symlinks.rest(%rip), %rbp
	movzbl	(%rbp), %eax
	cmpl	$47, %eax
	movq	expand_symlinks.checked(%rip), %r14
	jne	.LBB46_73
# BB#67:                                # %if.then273
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1087, %edi             # imm = 0x43F
	callq	_StraightTaint_log
	movb	$0, (%r14)
	xorl	%r12d, %r12d
	jmp	.LBB46_68
.LBB46_73:                              # %if.else275
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1089, %edi             # imm = 0x441
	callq	_StraightTaint_log
	movb	$0, (%r14,%r12)
.LBB46_68:                              # %while.cond35.outer.backedge
                                        #   in Loop: Header=BB46_14 Depth=1
	movl	$1088, %edi             # imm = 0x440
	callq	_StraightTaint_log
	testq	%r15, %r15
	jne	.LBB46_14
.LBB46_69:                              # %while.end278
	movl	$1090, %edi             # imm = 0x442
	callq	_StraightTaint_log
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movq	expand_symlinks.checked(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB46_72
# BB#70:                                # %if.then283
	movl	$1091, %edi             # imm = 0x443
	callq	_StraightTaint_log
	movw	$46, (%rbx)
	jmp	.LBB46_71
.LBB46_47:                              # %if.then202
	cmpl	$2, %eax
	je	.LBB46_52
	jmp	.LBB46_48
.LBB46_50:                              # %if.then202
	cmpl	$13, %eax
	je	.LBB46_52
# BB#51:                                # %if.then202
	cmpl	$20, %eax
	jne	.LBB46_48
.LBB46_52:                              # %if.then218
	movl	$1071, %edi             # imm = 0x42F
	callq	_StraightTaint_log
	subq	%r15, %r14
	addq	40(%rsp), %r14          # 8-byte Folded Reload
	addq	%r14, %r12
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	movq	32(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	movq	expand_symlinks.checked(%rip), %rbx
	je	.LBB46_53
# BB#54:                                # %if.else225
	movl	$1073, %edi             # imm = 0x431
	callq	_StraightTaint_log
	movb	$0, (%rbx,%rbp)
	jmp	.LBB46_55
.LBB46_48:                              # %if.end228
	movl	$1075, %edi             # imm = 0x433
	callq	_StraightTaint_log
	movq	expand_symlinks.checked(%rip), %rdx
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str517, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB46_72
.LBB46_53:                              # %if.then223
	movl	$1072, %edi             # imm = 0x430
	callq	_StraightTaint_log
	movw	$46, (%rbx)
.LBB46_55:                              # %if.end227
	movl	$1074, %edi             # imm = 0x432
	callq	_StraightTaint_log
.LBB46_71:                              # %cleanup286
	movq	expand_symlinks.checked(%rip), %rbx
.LBB46_72:                              # %cleanup286
	movl	$1092, %edi             # imm = 0x444
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$5192, %rsp             # imm = 0x1448
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB46_57:                              # %if.then233
	movl	$1077, %edi             # imm = 0x435
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str518, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	syslog
	jmp	.LBB46_72
.Ltmp620:
	.size	expand_symlinks, .Ltmp620-expand_symlinks
	.cfi_endproc

	.align	16, 0x90
	.type	really_start_request,@function
really_start_request:                   # @really_start_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp628:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp629:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp630:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp631:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp632:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp633:
	.cfi_def_cfa_offset 56
	subq	$5608, %rsp             # imm = 0x15E8
.Ltmp634:
	.cfi_def_cfa_offset 5664
.Ltmp635:
	.cfi_offset %rbx, -56
.Ltmp636:
	.cfi_offset %r12, -48
.Ltmp637:
	.cfi_offset %r13, -40
.Ltmp638:
	.cfi_offset %r14, -32
.Ltmp639:
	.cfi_offset %r15, -24
.Ltmp640:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movq	%r12, 96(%rsp)          # 8-byte Spill
	movl	$1093, %edi             # imm = 0x445
	callq	_StraightTaint_log
	movq	240(%r12), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	movl	180(%r12), %eax
	decl	%eax
	cmpl	$3, %eax
	jae	.LBB47_1
# BB#4:                                 # %if.end
	movl	$1095, %edi             # imm = 0x447
	callq	_StraightTaint_log
	leaq	560(%r12), %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	$1, %edi
	movq	%rbx, %rsi
	callq	__xstat
	testl	%eax, %eax
	js	.LBB47_5
# BB#7:                                 # %if.end12
	movl	$1097, %edi             # imm = 0x449
	callq	_StraightTaint_log
	movl	584(%r12), %ebx
	testb	$5, %bl
	je	.LBB47_8
# BB#9:                                 # %if.end18
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	leaq	240(%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$1099, %edi             # imm = 0x44B
	callq	_StraightTaint_log
	andl	$61440, %ebx            # imm = 0xF000
	cmpl	$16384, %ebx            # imm = 0x4000
	jne	.LBB47_154
# BB#10:                                # %if.then23
	movl	$1100, %edi             # imm = 0x44C
	callq	_StraightTaint_log
	movq	256(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB47_12
# BB#11:                                # %if.then26
	movl	$1101, %edi             # imm = 0x44D
	callq	_StraightTaint_log
	movq	208(%r12), %r9
	movl	$404, %esi              # imm = 0x194
	movl	$.L.str510, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str509, %r8d
	jmp	.LBB47_2
.LBB47_1:                               # %httpd_method_str.exit
	movl	$1094, %edi             # imm = 0x446
	callq	_StraightTaint_log
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movl	$.L.str2366, %r9d
	jmp	.LBB47_2
.LBB47_5:                               # %if.then11
	movl	$1096, %edi             # imm = 0x448
.LBB47_6:                               # %return
	callq	_StraightTaint_log
	movq	208(%r12), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB47_2
.LBB47_8:                               # %if.then14
	movl	$1098, %edi             # imm = 0x44A
	callq	_StraightTaint_log
	leaq	16(%r12), %rdi
	callq	httpd_ntoa
	movq	208(%r12), %rcx
	movl	$6, %edi
	movl	$.L.str72, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str73, %r8d
.LBB47_2:                               # %return
	movq	%r12, %rdi
.LBB47_3:                               # %return
	callq	httpd_send_err
	movl	$-1, %r14d
.LBB47_470:                             # %return
	movl	$1467, %edi             # imm = 0x5BB
	callq	_StraightTaint_log
	movl	%r14d, %eax
	addq	$5608, %rsp             # imm = 0x15E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB47_12:                              # %if.end69
	movl	$1102, %edi             # imm = 0x44E
	callq	_StraightTaint_log
	movq	232(%r12), %rbx
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB47_13
# BB#15:                                # %cond.end131
	movl	$1104, %edi             # imm = 0x450
	callq	_StraightTaint_log
	cmpb	$0, 1(%rbx)
	jne	.LBB47_16
	jmp	.LBB47_14
.LBB47_13:                              # %if.end69
	testb	%al, %al
	je	.LBB47_14
.LBB47_16:                              # %land.lhs.true135
	movl	$1105, %edi             # imm = 0x451
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$47, %eax
	jne	.LBB47_17
.LBB47_14:                              # %for.cond.preheader
	movq	%r12, %r13
	movl	$1103, %edi             # imm = 0x44F
	callq	_StraightTaint_log
	incq	%r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB47_24:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1113, %edi             # imm = 0x459
	callq	_StraightTaint_log
	movq	really_start_request.index_names(,%r12,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	addq	%r15, %rax
	movl	$really_start_request.indexname, %edi
	movl	$really_start_request.maxindexname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	really_start_request.indexname(%rip), %rdi
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	callq	strcpy
	movq	really_start_request.indexname(%rip), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB47_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1114, %edi             # imm = 0x45A
	callq	_StraightTaint_log
	movzbl	-1(%rbp,%r14), %eax
	cmpl	$47, %eax
	je	.LBB47_27
.LBB47_26:                              # %if.then162
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1115, %edi             # imm = 0x45B
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	strlen
	movw	$47, (%r14,%rax)
	movq	really_start_request.indexname(%rip), %r14
.LBB47_27:                              # %cond.true173
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1116, %edi             # imm = 0x45C
	callq	_StraightTaint_log
	movzbl	(%r14), %eax
	cmpl	$46, %eax
	jne	.LBB47_31
# BB#28:                                # %if.then187
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1117, %edi             # imm = 0x45D
	callq	_StraightTaint_log
	movzbl	1(%r14), %eax
	cmpl	$47, %eax
	jne	.LBB47_31
# BB#29:                                # %cond.end218
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1118, %edi             # imm = 0x45E
	callq	_StraightTaint_log
	cmpb	$0, 2(%r14)
	jne	.LBB47_31
# BB#30:                                # %if.then222
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1119, %edi             # imm = 0x45F
	callq	_StraightTaint_log
	movb	$0, (%r14)
	movq	really_start_request.indexname(%rip), %r14
	.align	16, 0x90
.LBB47_31:                              # %if.end224
                                        #   in Loop: Header=BB47_24 Depth=1
	movl	$1120, %edi             # imm = 0x460
	callq	_StraightTaint_log
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movq	really_start_request.indexname(%rip), %rsi
	movl	$1, %edi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	__xstat
	testl	%eax, %eax
	jns	.LBB47_32
# BB#23:                                # %for.cond
                                        #   in Loop: Header=BB47_24 Depth=1
	incq	%r12
	movl	$1112, %edi             # imm = 0x458
	callq	_StraightTaint_log
	cmpl	$5, %r12d
	jbe	.LBB47_24
# BB#35:                                # %for.end
	movl	$1121, %edi             # imm = 0x461
	callq	_StraightTaint_log
	movq	%r13, %rbx
	testb	$4, 584(%rbx)
	je	.LBB47_36
# BB#37:                                # %if.end243
	movl	$1123, %edi             # imm = 0x463
	callq	_StraightTaint_log
	movq	8(%rbx), %rbp
	movq	240(%rbx), %r14
	cmpl	$0, 104(%rbp)
	je	.LBB47_43
# BB#38:                                # %if.then.i723
	movl	$1124, %edi             # imm = 0x464
	callq	_StraightTaint_log
	cmpl	$0, 100(%rbp)
	je	.LBB47_40
# BB#39:                                # %land.lhs.true.i
	movl	$1125, %edi             # imm = 0x465
	callq	_StraightTaint_log
	movq	344(%rbx), %rbp
	cmpb	$0, (%rbp)
	jne	.LBB47_41
.LBB47_40:                              # %if.else.i725
	movl	$1126, %edi             # imm = 0x466
	callq	_StraightTaint_log
	movl	$.L.str3174, %ebp
.LBB47_41:                              # %if.end.i727
	movl	$1127, %edi             # imm = 0x467
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	auth_check2
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	je	.LBB47_44
# BB#42:                                # %if.end.i727
	cmpl	$1, %ebp
	je	.LBB47_44
.LBB47_43:                              # %if.end7.i
	movl	$1128, %edi             # imm = 0x468
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	auth_check2
	movl	%eax, %ebp
.LBB47_44:                              # %auth_check.exit
	movl	$1129, %edi             # imm = 0x469
	callq	_StraightTaint_log
	movl	$-1, %r14d
	cmpl	$-1, %ebp
	je	.LBB47_470
# BB#45:                                # %if.end249
	movl	$1130, %edi             # imm = 0x46A
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	check_referer
	testl	%eax, %eax
	je	.LBB47_470
# BB#46:                                # %if.end253
	movl	$1131, %edi             # imm = 0x46B
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	callq	opendir
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB47_47
# BB#48:                                # %if.end.i734
	movl	$1133, %edi             # imm = 0x46D
	callq	_StraightTaint_log
	movl	180(%rbx), %eax
	cmpl	$1, %eax
	jne	.LBB47_49
# BB#51:                                # %if.then8.i
	movl	$1135, %edi             # imm = 0x46F
	callq	_StraightTaint_log
	movq	8(%rbx), %rbp
	movl	32(%rbp), %eax
	movl	36(%rbp), %r12d
	testl	%eax, %eax
	je	.LBB47_55
# BB#52:                                # %if.then8.i
	cmpl	%eax, %r12d
	jge	.LBB47_53
.LBB47_55:                              # %if.end17.i
	movl	$1137, %edi             # imm = 0x471
	callq	_StraightTaint_log
	incl	%r12d
	movl	%r12d, 36(%rbp)
	movl	$1137, %edi             # imm = 0x471
	callq	_StraightTaint_flush
	callq	fork
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_StraightTaint_fork32
	testl	%ebp, %ebp
	js	.LBB47_56
# BB#57:                                # %if.end25.i
	movl	$1139, %edi             # imm = 0x473
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	je	.LBB47_58
# BB#141:                               # %if.end366.i
	movl	$1197, %edi             # imm = 0x4AD
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	closedir
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%r14d, %r14d
	movl	$6, %edi
	movl	$.L.str492, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
	movl	%ebp, %edx
	xorl	%edi, %edi
	movl	$cgi_kill, %esi
	movl	$30000, %ecx            # imm = 0x7530
	xorl	%r8d, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB47_142
# BB#143:                               # %if.end374.i
	movl	$1199, %edi             # imm = 0x4AF
	callq	_StraightTaint_log
	movl	$200, 184(%rbx)
	movq	$25000, 200(%rbx)       # imm = 0x61A8
	movl	$0, 556(%rbx)
	jmp	.LBB47_470
.LBB47_32:                              # %got_one
	movl	$1205, %edi             # imm = 0x4B5
	callq	_StraightTaint_log
	movq	really_start_request.indexname(%rip), %rdi
	movq	%r13, %r12
	movq	8(%r12), %rax
	movl	96(%rax), %edx
	movl	532(%r12), %ecx
	leaq	104(%rsp), %rsi
	callq	expand_symlinks
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB47_34
# BB#33:                                # %lor.lhs.false258
	movl	$1206, %edi             # imm = 0x4B6
	callq	_StraightTaint_log
	movq	104(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB47_152
.LBB47_34:                              # %if.then263
	movl	$1207, %edi             # imm = 0x4B7
	jmp	.LBB47_6
.LBB47_17:                              # %if.then144
	movl	$1106, %edi             # imm = 0x452
	callq	_StraightTaint_log
	movq	208(%r12), %rbx
	movq	264(%r12), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_21
# BB#18:                                # %if.then.i
	movl	$1107, %edi             # imm = 0x453
	callq	_StraightTaint_log
	movl	$63, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB47_20
# BB#19:                                # %if.then4.i
	movl	$1108, %edi             # imm = 0x454
	callq	_StraightTaint_log
	movb	$0, (%r14)
	movq	208(%r12), %rbx
	movq	264(%r12), %rbp
.LBB47_20:                              # %if.end.i
	movl	$1109, %edi             # imm = 0x455
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	strlen
	leaq	2(%rbx,%rax), %rdx
	movl	$send_dirredirect.location, %edi
	movl	$send_dirredirect.maxlocation, %esi
	callq	httpd_realloc_str
	movq	send_dirredirect.location(%rip), %rdi
	movq	send_dirredirect.maxlocation(%rip), %rsi
	movq	208(%r12), %rcx
	movq	264(%r12), %r8
	movl	$.L.str505, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB47_22
.LBB47_36:                              # %if.then238
	movl	$1122, %edi             # imm = 0x462
	callq	_StraightTaint_log
	leaq	16(%rbx), %rdi
	callq	httpd_ntoa
	movq	208(%rbx), %rcx
	movl	$6, %edi
	movl	$.L.str76, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%rbx), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str77, %r8d
	movq	%rbx, %rdi
	jmp	.LBB47_3
.LBB47_21:                              # %if.else.i
	movl	$1110, %edi             # imm = 0x456
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	leaq	1(%rax), %rdx
	movl	$send_dirredirect.location, %edi
	movl	$send_dirredirect.maxlocation, %esi
	callq	httpd_realloc_str
	movq	send_dirredirect.location(%rip), %rdi
	movq	send_dirredirect.maxlocation(%rip), %rsi
	movq	208(%r12), %rcx
	movl	$.L.str506, %edx
	xorl	%eax, %eax
	callq	my_snprintf
.LBB47_22:                              # %send_dirredirect.exit
	movl	$1111, %edi             # imm = 0x457
	callq	_StraightTaint_log
	movq	send_dirredirect.location(%rip), %rdi
	callq	strlen
	leaq	11(%rax), %rdx
	movl	$send_dirredirect.header, %edi
	movl	$send_dirredirect.maxheader, %esi
	callq	httpd_realloc_str
	movq	send_dirredirect.header(%rip), %rdi
	movq	send_dirredirect.maxheader(%rip), %rsi
	movq	send_dirredirect.location(%rip), %r8
	movl	$.L.str507, %edx
	movl	$send_dirredirect.headstr, %ecx
	xorl	%eax, %eax
	callq	my_snprintf
	movq	send_dirredirect.header(%rip), %rcx
	movq	send_dirredirect.location(%rip), %r9
	movl	$302, %esi              # imm = 0x12E
	movl	$.L.str447, %edx
	movl	$.L.str508, %r8d
	movq	%r12, %rdi
	callq	send_response
	movl	$-1, %r14d
	jmp	.LBB47_470
.LBB47_152:                             # %if.end265
	movl	$1208, %edi             # imm = 0x4B8
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r15
	leaq	392(%r12), %rsi
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rdx
	callq	httpd_realloc_str
	movq	240(%r12), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	testb	$5, 584(%r12)
	je	.LBB47_153
.LBB47_154:                             # %if.end280
	movl	$1210, %edi             # imm = 0x4BA
	callq	_StraightTaint_log
	movl	$really_start_request.dirname, %edi
	movl	$really_start_request.maxdirname, %esi
	movq	%r15, %rdx
	callq	httpd_realloc_str
	movq	really_start_request.dirname(%rip), %rdi
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	callq	strcpy
	movq	really_start_request.dirname(%rip), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB47_155
# BB#156:                               # %if.else
	movl	$1212, %edi             # imm = 0x4BC
	callq	_StraightTaint_log
	movb	$0, (%rbp)
	jmp	.LBB47_157
.LBB47_155:                             # %if.then286
	movl	$1211, %edi             # imm = 0x4BB
	callq	_StraightTaint_log
	movw	$46, (%rbx)
.LBB47_157:                             # %if.end288
	movl	$1213, %edi             # imm = 0x4BD
	callq	_StraightTaint_log
	movq	really_start_request.dirname(%rip), %r14
	movq	8(%r12), %rbx
	cmpl	$0, 104(%rbx)
	je	.LBB47_163
# BB#158:                               # %if.then.i746
	movl	$1214, %edi             # imm = 0x4BE
	callq	_StraightTaint_log
	cmpl	$0, 100(%rbx)
	je	.LBB47_160
# BB#159:                               # %land.lhs.true.i749
	movl	$1215, %edi             # imm = 0x4BF
	callq	_StraightTaint_log
	movq	344(%r12), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB47_161
.LBB47_160:                             # %if.else.i750
	movl	$1216, %edi             # imm = 0x4C0
	callq	_StraightTaint_log
	movl	$.L.str3174, %ebx
.LBB47_161:                             # %if.end.i753
	movl	$1217, %edi             # imm = 0x4C1
	callq	_StraightTaint_log
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	auth_check2
	movl	%eax, %ebx
	cmpl	$-1, %ebx
	je	.LBB47_164
# BB#162:                               # %if.end.i753
	cmpl	$1, %ebx
	je	.LBB47_164
.LBB47_163:                             # %if.end7.i755
	movl	$1218, %edi             # imm = 0x4C2
	callq	_StraightTaint_log
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	auth_check2
	movl	%eax, %ebx
.LBB47_164:                             # %auth_check.exit757
	movl	$1219, %edi             # imm = 0x4C3
	callq	_StraightTaint_log
	movl	$-1, %r14d
	cmpl	$-1, %ebx
	je	.LBB47_470
# BB#165:                               # %if.end293
	movl	$1220, %edi             # imm = 0x4C4
	callq	_StraightTaint_log
	cmpq	$9, %r15
	jne	.LBB47_169
# BB#166:                               # %cond.false349
	movl	$1221, %edi             # imm = 0x4C5
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str80, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB47_173
# BB#167:                               # %if.then356
	movl	$1222, %edi             # imm = 0x4C6
	jmp	.LBB47_168
.LBB47_169:                             # %if.else362
	movl	$1223, %edi             # imm = 0x4C7
	callq	_StraightTaint_log
	cmpq	$10, %r15
	jb	.LBB47_173
# BB#170:                               # %cond.false421
	movl	$1224, %edi             # imm = 0x4C8
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	leaq	-9(%r15,%rbx), %rdi
	movl	$.L.str80, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB47_173
# BB#171:                               # %land.lhs.true431
	movl	$1225, %edi             # imm = 0x4C9
	callq	_StraightTaint_log
	movzbl	-10(%r15,%rbx), %eax
	cmpl	$47, %eax
	jne	.LBB47_173
# BB#172:                               # %if.then438
	movl	$1226, %edi             # imm = 0x4CA
.LBB47_168:                             # %return
	callq	_StraightTaint_log
	leaq	16(%r12), %rdi
	callq	httpd_ntoa
	movq	208(%r12), %rcx
	movl	$5, %edi
	movl	$.L.str81, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str82116, %r8d
	jmp	.LBB47_183
.LBB47_173:                             # %if.end444
	movl	$1227, %edi             # imm = 0x4CB
	callq	_StraightTaint_log
	movq	%r12, %rdi
	callq	check_referer
	testl	%eax, %eax
	je	.LBB47_470
# BB#174:                               # %if.end448
	movl	$1228, %edi             # imm = 0x4CC
	callq	_StraightTaint_log
	movq	8(%r12), %rax
	movq	24(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB47_422
# BB#175:                               # %land.lhs.true452
	movl	$1229, %edi             # imm = 0x4CD
	callq	_StraightTaint_log
	testb	$1, 584(%r12)
	je	.LBB47_422
# BB#176:                               # %land.lhs.true457
	movl	$1230, %edi             # imm = 0x4CE
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	callq	match
	testl	%eax, %eax
	je	.LBB47_422
# BB#177:                               # %if.then463
	movl	$1231, %edi             # imm = 0x4CF
	callq	_StraightTaint_log
	movl	$.L.str2164, %ebp
	movl	180(%r12), %eax
	cmpl	$1, %eax
	je	.LBB47_180
# BB#178:                               # %if.then463
	cmpl	$2, %eax
	je	.LBB47_421
# BB#179:                               # %if.then463
	cmpl	$3, %eax
	jne	.LBB47_420
.LBB47_180:                             # %if.then.i763
	movl	$1232, %edi             # imm = 0x4D0
	callq	_StraightTaint_log
	movq	8(%r12), %rbx
	movl	32(%rbx), %eax
	movl	36(%rbx), %ebp
	testl	%eax, %eax
	je	.LBB47_184
# BB#181:                               # %if.then.i763
	cmpl	%eax, %ebp
	jge	.LBB47_182
.LBB47_184:                             # %if.end.i770
	movl	$1234, %edi             # imm = 0x4D2
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, 36(%rbx)
	movl	704(%r12), %r15d
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r15d, %edi
	callq	fcntl
	movl	%eax, %ebp
	cmpl	$-1, %ebp
	je	.LBB47_187
# BB#185:                               # %if.then.i.i772
	movl	$1235, %edi             # imm = 0x4D3
	callq	_StraightTaint_log
	movl	%ebp, %ebx
	andl	$-2049, %ebx            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%ebp, %ebx
	je	.LBB47_187
# BB#186:                               # %if.then2.i.i
	movl	$1236, %edi             # imm = 0x4D4
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r15d, %edi
	movl	%ebx, %edx
	callq	fcntl
.LBB47_187:                             # %httpd_clear_ndelay.exit.i
	movl	$1237, %edi             # imm = 0x4D5
	callq	_StraightTaint_log
	movl	$1237, %edi             # imm = 0x4D5
	callq	_StraightTaint_flush
	callq	fork
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_StraightTaint_fork32
	testl	%ebp, %ebp
	js	.LBB47_188
# BB#189:                               # %if.end14.i
	movl	$1239, %edi             # imm = 0x4D7
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	je	.LBB47_190
# BB#417:                               # %if.end18.i
	movl	$1421, %edi             # imm = 0x58D
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%r14d, %r14d
	movl	$6, %edi
	movl	$.L.str431, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
	movl	%ebp, %edx
	xorl	%edi, %edi
	movl	$cgi_kill, %esi
	movl	$30000, %ecx            # imm = 0x7530
	xorl	%r8d, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB47_418
# BB#419:                               # %if.end22.i
	movl	$1423, %edi             # imm = 0x58F
	callq	_StraightTaint_log
	movl	$200, 184(%r12)
	movq	$25000, 200(%r12)       # imm = 0x61A8
	movl	$0, 556(%r12)
	jmp	.LBB47_470
.LBB47_422:                             # %if.end465
	movl	$1426, %edi             # imm = 0x592
	callq	_StraightTaint_log
	testb	$1, 584(%r12)
	je	.LBB47_424
# BB#423:                               # %if.then470
	movl	$1427, %edi             # imm = 0x593
	callq	_StraightTaint_log
	leaq	16(%r12), %rdi
	callq	httpd_ntoa
	movq	208(%r12), %rcx
	movl	$5, %edi
	movl	$.L.str83, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str84, %r8d
	jmp	.LBB47_183
.LBB47_424:                             # %if.end475
	movl	$1428, %edi             # imm = 0x594
	callq	_StraightTaint_log
	movq	256(%r12), %rax
	cmpb	$0, (%rax)
	je	.LBB47_426
# BB#425:                               # %if.then481
	movl	$1429, %edi             # imm = 0x595
	callq	_StraightTaint_log
	leaq	16(%r12), %rdi
	callq	httpd_ntoa
	movq	208(%r12), %rcx
	movl	$6, %edi
	movl	$.L.str85, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str86, %r8d
.LBB47_183:                             # %return
	movq	%r12, %rdi
	callq	httpd_send_err
	jmp	.LBB47_470
.LBB47_426:                             # %if.end486
	movl	$1430, %edi             # imm = 0x596
	callq	_StraightTaint_log
	cmpl	$0, 528(%r12)
	je	.LBB47_430
# BB#427:                               # %land.lhs.true488
	movl	$1431, %edi             # imm = 0x597
	callq	_StraightTaint_log
	movq	544(%r12), %rax
	movq	608(%r12), %rbx
	cmpq	$-1, %rax
	je	.LBB47_429
# BB#428:                               # %land.lhs.true488
	cmpq	%rbx, %rax
	jl	.LBB47_430
.LBB47_429:                             # %if.then496
	movl	$1432, %edi             # imm = 0x598
	callq	_StraightTaint_log
	decq	%rbx
	movq	%rbx, 544(%r12)
.LBB47_430:                             # %if.end501
	movl	$1433, %edi             # imm = 0x599
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	addq	%r14, %rbp
	movl	$-1, %r12d
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB47_431
.LBB47_153:                             # %if.then274
	movl	$1209, %edi             # imm = 0x4B9
	callq	_StraightTaint_log
	leaq	16(%r12), %rdi
	callq	httpd_ntoa
	movq	208(%r12), %rcx
	movl	$6, %edi
	movl	$.L.str78, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str79115, %r8d
	jmp	.LBB47_2
.LBB47_420:                             # %sw.default.i.i790
	movl	$1424, %edi             # imm = 0x590
	callq	_StraightTaint_log
	movl	$.L.str2366, %ebp
.LBB47_421:                             # %httpd_method_str.exit.i792
	movl	$1425, %edi             # imm = 0x591
	callq	_StraightTaint_log
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movq	%r12, %rdi
.LBB47_151:                             # %return
	movq	%rbp, %r9
	callq	httpd_send_err
	jmp	.LBB47_470
.LBB47_47:                              # %if.then.i733
	movl	$1132, %edi             # imm = 0x46C
	callq	_StraightTaint_log
	movq	240(%rbx), %rdx
	movl	$3, %edi
	movl	$.L.str480, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	208(%rbx), %r9
	movl	$404, %esi              # imm = 0x194
	movl	$.L.str510, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str509, %r8d
	jmp	.LBB47_54
.LBB47_49:                              # %if.end.i734
	cmpl	$2, %eax
	jne	.LBB47_144
# BB#50:                                # %if.then3.i
	movl	$1134, %edi             # imm = 0x46E
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	closedir
	movq	648(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$200, %esi
	movl	$.L.str88, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r8d
	movl	$.L.str183, %r9d
	jmp	.LBB47_469
.LBB47_188:                             # %if.then12.i
	movl	$1238, %edi             # imm = 0x4D6
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str430, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r12), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB47_183
.LBB47_182:                             # %if.then8.i765
	movl	$1233, %edi             # imm = 0x4D1
	callq	_StraightTaint_log
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%r12), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str2669, %ecx
	jmp	.LBB47_183
.LBB47_190:                             # %if.then16.i
	movl	$1240, %edi             # imm = 0x4D8
	callq	_StraightTaint_log
	movb	$1, sub_process(%rip)
	movq	8(%r12), %rbp
	movl	72(%rbp), %ebx
	cmpl	$-1, %ebx
	je	.LBB47_192
# BB#191:                               # %if.then.i49.i
	movl	$1241, %edi             # imm = 0x4D9
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	close
	movl	$-1, 72(%rbp)
.LBB47_192:                             # %if.end.i.i777
	movl	$1242, %edi             # imm = 0x4DA
	callq	_StraightTaint_log
	movl	76(%rbp), %ebx
	cmpl	$-1, %ebx
	je	.LBB47_194
# BB#193:                               # %if.then4.i.i779
	movl	$1243, %edi             # imm = 0x4DB
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	close
	movl	$-1, 76(%rbp)
.LBB47_194:                             # %httpd_unlisten.exit.i780
	movl	$1244, %edi             # imm = 0x4DC
	callq	_StraightTaint_log
	movl	704(%r12), %edi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fcntl
	callq	closelog
	movl	704(%r12), %ebx
	cmpl	$2, %ebx
	ja	.LBB47_197
# BB#195:                               # %if.then.i51.i
	movl	$1245, %edi             # imm = 0x4DD
	callq	_StraightTaint_log
	movl	$3, %esi
	movl	%ebx, %edi
	callq	dup2
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB47_197
# BB#196:                               # %if.then10.i.i
	movl	$1246, %edi             # imm = 0x4DE
	callq	_StraightTaint_log
	movl	%ebx, 704(%r12)
.LBB47_197:                             # %if.end12.i.i
	movl	$1247, %edi             # imm = 0x4DF
	callq	_StraightTaint_log
	movl	$.L.str448, %edi
	movl	$.L.str449, %esi
	callq	build_env
	movq	%rax, make_envp.envp(%rip)
	movl	$.L.str450, %edi
	movl	$.L.str840, %esi
	callq	build_env
	movq	%rax, make_envp.envp+8(%rip)
	movq	8(%r12), %rbp
	movq	%r12, %r14
	cmpl	$0, 100(%rbp)
	je	.LBB47_199
# BB#198:                               # %land.lhs.true.i.i.i
	movl	$1248, %edi             # imm = 0x4E0
	callq	_StraightTaint_log
	movq	512(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB47_200
.LBB47_199:                             # %if.end.i.i.i
	movl	$1249, %edi             # imm = 0x4E1
	callq	_StraightTaint_log
	movq	8(%rbp), %rbx
	testq	%rbx, %rbx
	movl	$2, %r12d
	je	.LBB47_201
.LBB47_200:                             # %if.then8.i.i.i
	movl	$1250, %edi             # imm = 0x4E2
	callq	_StraightTaint_log
	movl	$.L.str451, %edi
	movq	%rbx, %rsi
	callq	build_env
	movq	%rax, make_envp.envp+16(%rip)
	movl	$3, %r12d
.LBB47_201:                             # %if.end13.i.i.i
	movl	$1251, %edi             # imm = 0x4E3
	callq	_StraightTaint_log
	leal	1(%r12), %ebx
	movq	$.L.str452, make_envp.envp(,%r12,8)
	movq	224(%r14), %rsi
	movl	$.L.str453, %edi
	callq	build_env
	leal	2(%r12), %ebp
	movq	%rax, make_envp.envp(,%rbx,8)
	movq	8(%r14), %rax
	movzwl	16(%rax), %ecx
	leaq	4560(%rsp), %rbx
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str454, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	my_snprintf
	movl	$.L.str455, %edi
	movq	%rbx, %rsi
	callq	build_env
	movq	%rax, make_envp.envp(,%rbp,8)
	movl	$.L.str2063, %ebx
	movl	180(%r14), %eax
	cmpl	$1, %eax
	je	.LBB47_207
# BB#202:                               # %if.end13.i.i.i
	cmpl	$3, %eax
	jne	.LBB47_203
# BB#205:                               # %sw.bb2.i.i.i.i
	movl	$1253, %edi             # imm = 0x4E5
	callq	_StraightTaint_log
	movl	$.L.str2265, %ebx
	jmp	.LBB47_207
.LBB47_144:                             # %if.else375.i
	movl	$1200, %edi             # imm = 0x4B0
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	closedir
	movl	$.L.str2063, %ebp
	movl	180(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB47_150
# BB#145:                               # %if.else375.i
	cmpl	$3, %eax
	jne	.LBB47_146
# BB#148:                               # %sw.bb2.i.i
	movl	$1202, %edi             # imm = 0x4B2
	callq	_StraightTaint_log
	movl	$.L.str2265, %ebp
	jmp	.LBB47_150
.LBB47_53:                              # %if.then14.i
	movl	$1136, %edi             # imm = 0x470
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	closedir
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%rbx), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str2669, %ecx
	jmp	.LBB47_54
.LBB47_56:                              # %if.then22.i
	movl	$1138, %edi             # imm = 0x472
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str430, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	%r15, %rdi
	callq	closedir
	movq	208(%rbx), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
.LBB47_54:                              # %return
	movq	%rbx, %rdi
	callq	httpd_send_err
	jmp	.LBB47_470
.LBB47_58:                              # %if.then27.i
	movl	$1140, %edi             # imm = 0x474
	callq	_StraightTaint_log
	movb	$1, sub_process(%rip)
	movq	8(%rbx), %r14
	movl	72(%r14), %ebp
	cmpl	$-1, %ebp
	je	.LBB47_60
# BB#59:                                # %if.then.i.i
	movl	$1141, %edi             # imm = 0x475
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
	movl	$-1, 72(%r14)
.LBB47_60:                              # %if.end.i.i
	movq	%rbx, %rbp
	movl	$1142, %edi             # imm = 0x476
	callq	_StraightTaint_log
	movl	76(%r14), %ebx
	cmpl	$-1, %ebx
	je	.LBB47_62
# BB#61:                                # %if.then4.i.i
	movl	$1143, %edi             # imm = 0x477
	callq	_StraightTaint_log
	movl	%ebx, %edi
	callq	close
	movl	$-1, 76(%r14)
.LBB47_62:                              # %httpd_unlisten.exit.i
	movl	$1144, %edi             # imm = 0x478
	callq	_StraightTaint_log
	movq	%rbp, %rbx
	movq	648(%rbx), %rax
	movq	%rax, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$200, %esi
	movl	$.L.str88, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r8d
	movl	$.L.str183, %r9d
	movq	%rbx, %rdi
	callq	send_mime
	movq	%rbx, %rdi
	callq	httpd_write_response
	movl	$10, %edi
	callq	nice
	movl	704(%rbx), %eax
	movl	$.L.str481, %esi
	movl	%eax, %edi
	callq	fdopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB47_471
# BB#63:                                # %if.end38.i
	movl	$1146, %edi             # imm = 0x47A
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	208(%rax), %rcx
	xorl	%ebp, %ebp
	movl	$.L.str483, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movq	%r15, %rdi
	callq	readdir
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB47_79
# BB#64:
	movabsq	$17596481011712, %r13   # imm = 0x100100000000
.LBB47_65:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_74 Depth 2
	movl	$1147, %edi             # imm = 0x47B
	callq	_StraightTaint_log
	movl	ls.maxnames(%rip), %r12d
	cmpl	%r12d, %ebp
	jl	.LBB47_78
# BB#66:                                # %if.then45.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1148, %edi             # imm = 0x47C
	callq	_StraightTaint_log
	testl	%r12d, %r12d
	jne	.LBB47_68
# BB#67:                                # %if.then47.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1149, %edi             # imm = 0x47D
	callq	_StraightTaint_log
	movl	$100, ls.maxnames(%rip)
	movl	$409700, %edi           # imm = 0x64064
	callq	malloc
	movq	%rax, %r12
	movq	%r12, ls.names(%rip)
	movl	$800, %edi              # imm = 0x320
	callq	malloc
	movq	%rax, 88(%rsp)          # 8-byte Spill
	jmp	.LBB47_69
.LBB47_68:                              # %if.else53.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1150, %edi             # imm = 0x47E
	callq	_StraightTaint_log
	leal	(%r12,%r12), %eax
	movl	%eax, ls.maxnames(%rip)
	movq	ls.names(%rip), %rax
	imull	$8194, %r12d, %ecx      # imm = 0x2002
	movslq	%ecx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	realloc
	movq	%rax, ls.names(%rip)
	movq	ls.nameptrs(%rip), %rax
	movslq	ls.maxnames(%rip), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	realloc
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	ls.names(%rip), %r12
.LBB47_69:                              # %if.end62.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1151, %edi             # imm = 0x47F
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%rax, ls.nameptrs(%rip)
	testq	%r12, %r12
	je	.LBB47_76
# BB#70:                                # %if.end62.i
                                        #   in Loop: Header=BB47_65 Depth=1
	cmpq	$0, 88(%rsp)            # 8-byte Folded Reload
	je	.LBB47_76
# BB#71:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1152, %edi             # imm = 0x480
	callq	_StraightTaint_log
	movl	ls.maxnames(%rip), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB47_78
# BB#72:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1153, %edi             # imm = 0x481
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	%r12, (%rax)
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB47_78
# BB#73:                                # %for.body.for.body_crit_edge.i.preheader
                                        #   in Loop: Header=BB47_65 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	addl	$-2, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movabsq	$17596481011712, %rax   # imm = 0x100100000000
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB47_74
.LBB47_75:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB47_74 Depth=2
	movl	$1156, %edi             # imm = 0x484
	callq	_StraightTaint_log
	movq	ls.names(%rip), %r12
	movq	ls.nameptrs(%rip), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	incq	64(%rsp)                # 8-byte Folded Spill
	addq	%r13, 72(%rsp)          # 8-byte Folded Spill
.LBB47_74:                              # %for.body.for.body_crit_edge.i
                                        #   Parent Loop BB47_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1155, %edi             # imm = 0x483
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	sarq	$32, %rax
	addq	%r12, %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%rax, 8(%rcx,%rdx,8)
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	%edx, %eax
	jne	.LBB47_75
.LBB47_78:                              # %if.end75.i
                                        #   in Loop: Header=BB47_65 Depth=1
	movl	$1157, %edi             # imm = 0x485
	callq	_StraightTaint_log
	addq	$19, %r14
	movq	%r14, %rdi
	callq	strlen
	movq	ls.nameptrs(%rip), %rcx
	movq	(%rcx,%rbp,8), %rcx
	movslq	%eax, %r12
	movq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	strncpy
	movq	ls.nameptrs(%rip), %rax
	movq	(%rax,%rbp,8), %rax
	movb	$0, (%rax,%r12)
	incq	%rbp
	movq	%r15, %rdi
	callq	readdir
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.LBB47_65
.LBB47_79:                              # %while.end.i
	movl	$1158, %edi             # imm = 0x486
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	closedir
	movq	ls.nameptrs(%rip), %rax
	movslq	%ebp, %r14
	movl	$8, %edx
	movl	$name_compare, %ecx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	qsort
	testl	%r14d, %r14d
	jle	.LBB47_140
# BB#80:                                # %for.body94.lr.ph.i
	movl	$1159, %edi             # imm = 0x487
	callq	_StraightTaint_log
	leaq	4344(%rsp), %r14
	leaq	4400(%rsp), %r15
	leaq	4256(%rsp), %r13
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB47_81:                              # %for.body94.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_93 Depth 2
	movl	$1160, %edi             # imm = 0x488
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%r12,%rax), %rax
	movl	$ls.name, %edi
	movl	$ls.maxname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%r12,%rax), %rax
	movl	$ls.rname, %edi
	movl	$ls.maxrname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	240(%rax), %r12
	movb	(%r12), %al
	testb	%al, %al
	je	.LBB47_84
# BB#82:                                # %for.body94.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movzbl	%al, %eax
	cmpl	$46, %eax
	jne	.LBB47_85
# BB#83:                                # %cond.end.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1161, %edi             # imm = 0x489
	callq	_StraightTaint_log
	cmpb	$0, 1(%r12)
	jne	.LBB47_85
.LBB47_84:                              # %if.then160.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1162, %edi             # imm = 0x48A
	callq	_StraightTaint_log
	movq	ls.name(%rip), %rax
	movq	ls.nameptrs(%rip), %rcx
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	(%rcx,%r12,8), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	movq	ls.rname(%rip), %rax
	movq	ls.nameptrs(%rip), %rcx
	movq	(%rcx,%r12,8), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	jmp	.LBB47_90
.LBB47_85:                              # %if.else167.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1163, %edi             # imm = 0x48B
	callq	_StraightTaint_log
	movq	ls.name(%rip), %rcx
	movq	ls.maxname(%rip), %rsi
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %r8
	movl	$.L.str485, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r12, %rcx
	callq	my_snprintf
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %r12
	movzbl	(%r12), %eax
	cmpl	$46, %eax
	jne	.LBB47_86
# BB#88:                                # %cond.end227.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1165, %edi             # imm = 0x48D
	callq	_StraightTaint_log
	cmpb	$0, 1(%r12)
	movq	ls.rname(%rip), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	ls.maxrname(%rip), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jne	.LBB47_87
# BB#89:                                # %if.then231.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1166, %edi             # imm = 0x48E
	callq	_StraightTaint_log
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movl	$.L.str486, %edx
	xorl	%eax, %eax
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	my_snprintf
	jmp	.LBB47_90
.LBB47_86:                              # %cond.end227.thread.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1164, %edi             # imm = 0x48C
	callq	_StraightTaint_log
	movq	ls.rname(%rip), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	ls.maxrname(%rip), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_87:                              # %if.else235.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1167, %edi             # imm = 0x48F
	callq	_StraightTaint_log
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %r8
	movl	$.L.str458, %edx
	xorl	%eax, %eax
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	72(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rcx
	callq	my_snprintf
.LBB47_90:                              # %if.end241.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1168, %edi             # imm = 0x490
	callq	_StraightTaint_log
	movq	ls.rname(%rip), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%rax,%rax,2), %rax
	movl	$ls.encrname, %edi
	movl	$ls.maxencrname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	ls.encrname(%rip), %r12
	movq	ls.rname(%rip), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movb	(%rax), %al
	movb	%al, 48(%rsp)           # 1-byte Spill
	testb	%al, %al
	je	.LBB47_99
# BB#91:                                # %if.end241.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	ls.maxencrname(%rip), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$5, %eax
	jl	.LBB47_99
# BB#92:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1169, %edi             # imm = 0x491
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, 64(%rsp)          # 8-byte Spill
	incq	80(%rsp)                # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB47_93:                              # %for.body.i.i
                                        #   Parent Loop BB47_81 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1170, %edi             # imm = 0x492
	callq	_StraightTaint_log
	movsbq	48(%rsp), %rax          # 1-byte Folded Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	testb	$8, (%rcx,%rax,2)
	jne	.LBB47_95
# BB#94:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB47_93 Depth=2
	movl	$1171, %edi             # imm = 0x493
	callq	_StraightTaint_log
	movsbl	48(%rsp), %eax          # 1-byte Folded Reload
	movl	$.L.str494, %edi
	movl	$6, %edx
	movl	%eax, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB47_95
# BB#96:                                # %if.else.i.i
                                        #   in Loop: Header=BB47_93 Depth=2
	movl	$1173, %edi             # imm = 0x495
	callq	_StraightTaint_log
	movzbl	48(%rsp), %ecx          # 1-byte Folded Reload
	movl	$.L.str495, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ecx, %edx
	callq	sprintf
	addq	$3, %r12
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	$3, %eax
	jmp	.LBB47_97
.LBB47_95:                              # %if.then.i514.i
                                        #   in Loop: Header=BB47_93 Depth=2
	movl	$1172, %edi             # imm = 0x494
	callq	_StraightTaint_log
	movb	48(%rsp), %al           # 1-byte Reload
	movb	%al, (%r12)
	incq	%r12
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
.LBB47_97:                              # %for.inc.i.i
                                        #   in Loop: Header=BB47_93 Depth=2
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$1174, %edi             # imm = 0x496
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 48(%rsp)           # 1-byte Spill
	testb	%al, %al
	je	.LBB47_99
# BB#98:                                # %for.inc.i.i
                                        #   in Loop: Header=BB47_93 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	4(%rax), %eax
	incq	80(%rsp)                # 8-byte Folded Spill
	cmpl	72(%rsp), %eax          # 4-byte Folded Reload
	jl	.LBB47_93
.LBB47_99:                              # %strencode.exit.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1175, %edi             # imm = 0x497
	callq	_StraightTaint_log
	movb	$0, (%r12)
	movq	ls.name(%rip), %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	__xstat
	testl	%eax, %eax
	js	.LBB47_139
# BB#100:                               # %lor.lhs.false249.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1176, %edi             # imm = 0x498
	callq	_StraightTaint_log
	movq	ls.name(%rip), %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	__lxstat
	testl	%eax, %eax
	js	.LBB47_139
# BB#101:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1177, %edi             # imm = 0x499
	callq	_StraightTaint_log
	movb	$0, 112(%rsp)
	movl	4280(%rsp), %eax
	movl	$61440, %ecx            # imm = 0xF000
	andl	%ecx, %eax
	cmpl	$49151, %eax            # imm = 0xBFFF
	jg	.LBB47_115
# BB#102:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$40959, %eax            # imm = 0x9FFF
	jg	.LBB47_117
# BB#103:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB47_113
# BB#104:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$24575, %eax            # imm = 0x5FFF
	jg	.LBB47_111
# BB#105:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$4096, %eax             # imm = 0x1000
	je	.LBB47_109
# BB#106:                               # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB47_107
# BB#110:                               # %sw.bb257.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1179, %edi             # imm = 0x49B
	callq	_StraightTaint_log
	movb	$99, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_115:                             # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$49152, %eax            # imm = 0xC000
	jne	.LBB47_120
# BB#116:                               # %sw.bb265.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1183, %edi             # imm = 0x49F
	callq	_StraightTaint_log
	movb	$115, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_117:                             # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB47_120
# BB#118:                               # %sw.bb267.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1184, %edi             # imm = 0x4A0
	callq	_StraightTaint_log
	movb	$108, 4224(%rsp)
	movq	ls.name(%rip), %rax
	movl	$4096, %edx             # imm = 0x1000
	movq	%rax, %rdi
	leaq	112(%rsp), %rax
	movq	%rax, %rsi
	callq	readlink
	movq	%rax, %r12
	cmpl	$-1, %r12d
	movl	$.L.str2669, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	je	.LBB47_123
# BB#119:                               # %if.then274.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1185, %edi             # imm = 0x4A1
	callq	_StraightTaint_log
	movslq	%r12d, %rax
	movb	$0, 112(%rsp,%rax)
	movl	$.L.str487, %eax
	jmp	.LBB47_122
.LBB47_113:                             # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB47_120
# BB#114:                               # %sw.bb263.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1182, %edi             # imm = 0x49E
	callq	_StraightTaint_log
	movb	$45, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_111:                             # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$24576, %eax            # imm = 0x6000
	jne	.LBB47_120
# BB#112:                               # %sw.bb261.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1181, %edi             # imm = 0x49D
	callq	_StraightTaint_log
	movb	$98, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_109:                             # %sw.bb.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1178, %edi             # imm = 0x49A
	callq	_StraightTaint_log
	movb	$112, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_107:                             # %if.end254.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB47_120
# BB#108:                               # %sw.bb259.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1180, %edi             # imm = 0x49C
	callq	_StraightTaint_log
	movb	$100, 4224(%rsp)
	jmp	.LBB47_121
.LBB47_120:                             # %sw.default.i738
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1186, %edi             # imm = 0x4A2
	callq	_StraightTaint_log
	movb	$63, 4224(%rsp)
.LBB47_121:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$.L.str2669, %eax
.LBB47_122:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB47_123:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1187, %edi             # imm = 0x4A3
	callq	_StraightTaint_log
	movl	4280(%rsp), %eax
	movl	%eax, %ecx
	andl	$4, %ecx
	shrl	$2, %ecx
	movb	$114, %cl
	jne	.LBB47_125
# BB#124:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	$45, %cl
.LBB47_125:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	%cl, 4225(%rsp)
	movl	%eax, %ecx
	andl	$2, %ecx
	shrl	%ecx
	movb	$119, %cl
	jne	.LBB47_127
# BB#126:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	$45, %cl
.LBB47_127:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	%cl, 4226(%rsp)
	testb	$1, %al
	movb	$120, %al
	jne	.LBB47_129
# BB#128:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	$45, %al
.LBB47_129:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movb	%al, 4227(%rsp)
	movb	$0, 4228(%rsp)
	xorl	%edi, %edi
	callq	time
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	ctime
	movq	%rax, %r12
	movb	4(%r12), %al
	movb	%al, (%r12)
	movb	5(%r12), %al
	movb	%al, 1(%r12)
	movb	6(%r12), %al
	movb	%al, 2(%r12)
	movb	$32, 3(%r12)
	movb	8(%r12), %al
	movb	%al, 4(%r12)
	movb	9(%r12), %al
	movb	%al, 5(%r12)
	movb	$32, 6(%r12)
	movq	72(%rsp), %rax          # 8-byte Reload
	subq	4344(%rsp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpq	$15724801, 72(%rsp)     # 8-byte Folded Reload
                                        # imm = 0xEFF101
	jl	.LBB47_131
# BB#130:                               # %if.then318.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1188, %edi             # imm = 0x4A4
	callq	_StraightTaint_log
	movb	$32, 7(%r12)
	movb	20(%r12), %al
	movb	%al, 8(%r12)
	movb	21(%r12), %al
	movb	%al, 9(%r12)
	movb	22(%r12), %al
	movb	%al, 10(%r12)
	movb	23(%r12), %al
	movb	%al, 11(%r12)
	leaq	12(%r12), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB47_132
.LBB47_131:                             # %if.else328.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1189, %edi             # imm = 0x4A5
	callq	_StraightTaint_log
	movb	11(%r12), %al
	movb	%al, 7(%r12)
	leaq	12(%r12), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movb	12(%r12), %al
	movb	%al, 8(%r12)
	movb	$58, 9(%r12)
	movb	14(%r12), %al
	movb	%al, 10(%r12)
	movb	15(%r12), %al
	movb	%al, 11(%r12)
.LBB47_132:                             # %if.end338.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1190, %edi             # imm = 0x4A6
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	movb	$0, (%rax)
	movl	4424(%rsp), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	andl	$61440, %eax            # imm = 0xF000
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$16384, %eax            # imm = 0x4000
	movl	$.L.str74114, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	je	.LBB47_138
# BB#133:                               # %if.end338.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$40960, 72(%rsp)        # 4-byte Folded Reload
                                        # imm = 0xA000
	jne	.LBB47_134
# BB#136:                               # %sw.bb344.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1192, %edi             # imm = 0x4A8
	callq	_StraightTaint_log
	movl	$.L.str488, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB47_138
.LBB47_134:                             # %if.end338.i
                                        #   in Loop: Header=BB47_81 Depth=1
	cmpl	$49152, 72(%rsp)        # 4-byte Folded Reload
                                        # imm = 0xC000
	jne	.LBB47_137
# BB#135:                               # %sw.bb343.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1191, %edi             # imm = 0x4A7
	callq	_StraightTaint_log
	movl	$.L.str4688, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB47_138
.LBB47_137:                             # %sw.default345.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1193, %edi             # imm = 0x4A9
	callq	_StraightTaint_log
	movl	56(%rsp), %eax          # 4-byte Reload
	testb	$1, %al
	movl	$.L.str2669, %ecx
	movl	$.L.str489, %eax
	cmovneq	%rax, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
.LBB47_138:                             # %sw.epilog350.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1194, %edi             # imm = 0x4AA
	callq	_StraightTaint_log
	movq	4272(%rsp), %rcx
	movq	4304(%rsp), %r8
	movq	ls.encrname(%rip), %rax
	cmpl	$16384, 72(%rsp)        # 4-byte Folded Reload
                                        # imm = 0x4000
	movl	$.L.str2669, %edx
	movl	$.L.str74114, %esi
	cmoveq	%rsi, %rdx
	movq	ls.nameptrs(%rip), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	(%rsi,%rdi,8), %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	%rdi, 40(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rdi, 32(%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$.L.str490, %esi
	xorl	%eax, %eax
	leaq	4224(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r12, %r9
	callq	fprintf
.LBB47_139:                             # %for.inc361.i
                                        #   in Loop: Header=BB47_81 Depth=1
	movl	$1195, %edi             # imm = 0x4AB
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpl	%ebp, %eax
	jne	.LBB47_81
.LBB47_140:                             # %for.end363.i
	movl	$1196, %edi             # imm = 0x4AC
	callq	_StraightTaint_log
	movl	$.L.str491, %edi
	movl	$22, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rbx, %rdi
	callq	fclose
	xorl	%edi, %edi
	callq	exit
.LBB47_146:                             # %if.else375.i
	cmpl	$2, %eax
	jne	.LBB47_149
# BB#147:                               # %sw.bb1.i.i
	movl	$1201, %edi             # imm = 0x4B1
	callq	_StraightTaint_log
	movl	$.L.str2164, %ebp
	jmp	.LBB47_150
.LBB47_203:                             # %if.end13.i.i.i
	cmpl	$2, %eax
	jne	.LBB47_206
# BB#204:                               # %sw.bb1.i.i.i.i
	movl	$1252, %edi             # imm = 0x4E4
	callq	_StraightTaint_log
	movl	$.L.str2164, %ebx
	jmp	.LBB47_207
.LBB47_149:                             # %sw.default.i.i
	movl	$1203, %edi             # imm = 0x4B3
	callq	_StraightTaint_log
	movl	$.L.str2366, %ebp
.LBB47_150:                             # %httpd_method_str.exit.i
	movl	$1204, %edi             # imm = 0x4B4
	callq	_StraightTaint_log
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movq	%rbx, %rdi
	jmp	.LBB47_151
.LBB47_142:                             # %if.then373.i
	movl	$1198, %edi             # imm = 0x4AE
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str493, %esi
	jmp	.LBB47_77
.LBB47_418:                             # %if.then21.i
	movl	$1422, %edi             # imm = 0x58E
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str432, %esi
	jmp	.LBB47_77
.LBB47_439:                             # %if.then28.i
                                        #   in Loop: Header=BB47_431 Depth=1
	movl	$1443, %edi             # imm = 0x5A3
	callq	_StraightTaint_log
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%r15d, 4560(%rsp,%rax,4)
	incq	%rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	incl	%r12d
	incq	%rbx
	movq	%rbx, %rbp
.LBB47_431:                             # %for.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_432 Depth 2
                                        #       Child Loop BB47_433 Depth 3
                                        #       Child Loop BB47_436 Depth 3
	movl	%r12d, 48(%rsp)         # 4-byte Spill
	movl	$1434, %edi             # imm = 0x59A
	callq	_StraightTaint_log
.LBB47_432:                             # %for.cond.i
                                        #   Parent Loop BB47_431 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_433 Depth 3
                                        #       Child Loop BB47_436 Depth 3
	movl	$1435, %edi             # imm = 0x59B
	callq	_StraightTaint_log
	leaq	-1(%rbp), %rbx
	movq	%rbp, %r15
	movq	96(%rsp), %rbp          # 8-byte Reload
.LBB47_433:                             # %for.cond2.i
                                        #   Parent Loop BB47_431 Depth=1
                                        #     Parent Loop BB47_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1436, %edi             # imm = 0x59C
	callq	_StraightTaint_log
	cmpq	%r14, %rbx
	jb	.LBB47_472
# BB#434:                               # %land.rhs.i
                                        #   in Loop: Header=BB47_433 Depth=3
	movl	$1437, %edi             # imm = 0x59D
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	decq	%rbx
	cmpl	$46, %eax
	jne	.LBB47_433
# BB#435:                               # %if.end.i800
                                        #   in Loop: Header=BB47_432 Depth=2
	movl	$1439, %edi             # imm = 0x59F
	callq	_StraightTaint_log
	leaq	2(%rbx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r15, %r12
	subq	%rax, %r12
	leaq	1(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$enc_tab+8, %ebp
.LBB47_436:                             # %for.body13.i
                                        #   Parent Loop BB47_431 Depth=1
                                        #     Parent Loop BB47_432 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1440, %edi             # imm = 0x5A0
	callq	_StraightTaint_log
	cmpq	(%rbp), %r12
	jne	.LBB47_440
# BB#437:                               # %land.lhs.true.i801
                                        #   in Loop: Header=BB47_436 Depth=3
	movl	$1441, %edi             # imm = 0x5A1
	callq	_StraightTaint_log
	movq	-8(%rbp), %rsi
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB47_438
.LBB47_440:                             # %for.inc33.i
                                        #   in Loop: Header=BB47_436 Depth=3
	movl	$1444, %edi             # imm = 0x5A4
	callq	_StraightTaint_log
	incl	%r15d
	addq	$32, %rbp
	cmpl	$3, %r15d
	jl	.LBB47_436
	jmp	.LBB47_441
.LBB47_438:                             # %if.then24.i
                                        #   in Loop: Header=BB47_432 Depth=2
	movl	$1442, %edi             # imm = 0x5A2
	callq	_StraightTaint_log
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$99, %eax
	movl	48(%rsp), %r12d         # 4-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	ja	.LBB47_432
	jmp	.LBB47_439
.LBB47_472:                             # %if.then.i799
	movl	$1438, %edi             # imm = 0x59E
	callq	_StraightTaint_log
	movq	$.L.str99120, 504(%rbp)
	jmp	.LBB47_452
.LBB47_441:                             # %while.body.lr.ph.i.preheader
	movl	$189, %r13d
	xorl	%r14d, %r14d
.LBB47_444:                             # %while.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_442 Depth 2
	movl	$1447, %edi             # imm = 0x5A7
	callq	_StraightTaint_log
.LBB47_442:                             # %while.body.i806
                                        #   Parent Loop BB47_444 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1445, %edi             # imm = 0x5A5
	callq	_StraightTaint_log
	leal	(%r14,%r13), %eax
	movl	%eax, %r15d
	shrl	$31, %r15d
	addl	%eax, %r15d
	sarl	%r15d
	movslq	%r15d, %rbp
	shlq	$5, %rbp
	movq	typ_tab(%rbp), %rsi
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	strncasecmp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB47_443
# BB#445:                               # %if.else.i807
                                        #   in Loop: Header=BB47_442 Depth=2
	movl	$1448, %edi             # imm = 0x5A8
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jg	.LBB47_446
# BB#448:                               # %if.else51.i
                                        #   in Loop: Header=BB47_442 Depth=2
	movl	$1450, %edi             # imm = 0x5AA
	callq	_StraightTaint_log
	movq	typ_tab+8(%rbp), %rbx
	cmpq	%rbx, %r12
	jb	.LBB47_443
# BB#449:                               # %if.else59.i
                                        #   in Loop: Header=BB47_442 Depth=2
	movl	$1451, %edi             # imm = 0x5AB
	callq	_StraightTaint_log
	cmpq	%rbx, %r12
	jbe	.LBB47_450
.LBB47_446:                             # %while.cond.backedge.i
                                        #   in Loop: Header=BB47_442 Depth=2
	movl	$1449, %edi             # imm = 0x5A9
	callq	_StraightTaint_log
	incl	%r15d
	cmpl	%r15d, %r13d
	movl	%r15d, %r14d
	jge	.LBB47_442
	jmp	.LBB47_447
.LBB47_443:                             # %while.cond.outer.backedge.i
                                        #   in Loop: Header=BB47_444 Depth=1
	movl	$1446, %edi             # imm = 0x5A6
	callq	_StraightTaint_log
	leal	-1(%r15), %r13d
	cmpl	%r14d, %r15d
	jg	.LBB47_444
.LBB47_447:                             # %while.end.i809
	movl	$1453, %edi             # imm = 0x5AD
	callq	_StraightTaint_log
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	$.L.str99120, 504(%rbp)
	jmp	.LBB47_451
.LBB47_450:                             # %if.else67.i
	movl	$1452, %edi             # imm = 0x5AC
	callq	_StraightTaint_log
	movq	typ_tab+16(%rbp), %rax
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rax, 504(%rbp)
.LBB47_451:                             # %done.i
	movl	48(%rsp), %r12d         # 4-byte Reload
.LBB47_452:                             # %done.i
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	$1454, %edi             # imm = 0x5AE
	callq	_StraightTaint_log
	movq	248(%rbp), %rax
	movb	$0, (%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB47_458
# BB#453:                               # %for.body81.lr.ph.i
	movq	96(%rsp), %rbx          # 8-byte Reload
	leaq	248(%rbx), %rbp
	movl	$1455, %edi             # imm = 0x5AF
	callq	_StraightTaint_log
	leaq	400(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movslq	%r12d, %rax
	leaq	4560(%rsp,%rax,4), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
.LBB47_454:                             # %for.body81.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1456, %edi             # imm = 0x5B0
	callq	_StraightTaint_log
	movq	48(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%r15,4), %r12
	shlq	$5, %r12
	leaq	enc_tab+24(%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1(%r13), %r14
	movq	enc_tab+24(%r12), %rdx
	addq	%r14, %rdx
	movq	%rbp, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	movq	%rbp, %rbx
	movq	(%rbx), %rbp
	cmpb	$0, (%rbp)
	jne	.LBB47_456
# BB#455:                               #   in Loop: Header=BB47_454 Depth=1
	movq	%r13, %r14
	jmp	.LBB47_457
.LBB47_456:                             # %if.then94.i
                                        #   in Loop: Header=BB47_454 Depth=1
	movl	$1457, %edi             # imm = 0x5B1
	callq	_StraightTaint_log
	movw	$44, (%rbp,%r13)
	movq	(%rbx), %rbp
.LBB47_457:                             # %if.end99.i
                                        #   in Loop: Header=BB47_454 Depth=1
	movl	$1458, %edi             # imm = 0x5B2
	callq	_StraightTaint_log
	addq	%r14, %rbp
	movq	enc_tab+16(%r12), %rsi
	movq	%rbp, %rdi
	callq	strcpy
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	(%rax), %r14
	decq	%r15
	movl	%r15d, %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	testl	%eax, %eax
	movq	%r14, %r13
	movq	%rbx, %rbp
	jg	.LBB47_454
.LBB47_458:                             # %figure_mime.exit
	movl	$1459, %edi             # imm = 0x5B3
	callq	_StraightTaint_log
	movq	96(%rsp), %rbx          # 8-byte Reload
	cmpl	$2, 180(%rbx)
	jne	.LBB47_460
# BB#459:                               # %if.then505
	movl	$1460, %edi             # imm = 0x5B4
	jmp	.LBB47_467
.LBB47_460:                             # %if.else509
	movl	$1461, %edi             # imm = 0x5B5
	callq	_StraightTaint_log
	movq	480(%rbx), %rbp
	cmpq	$-1, %rbp
	je	.LBB47_463
# BB#461:                               # %land.lhs.true512
	movl	$1462, %edi             # imm = 0x5B6
	callq	_StraightTaint_log
	movq	648(%rbx), %r14
	cmpq	%r14, %rbp
	jge	.LBB47_462
.LBB47_463:                             # %if.else525
	movl	$1464, %edi             # imm = 0x5B8
	callq	_StraightTaint_log
	movq	240(%rbx), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	mmc_map
	testq	%rax, %rax
	movq	%rax, 712(%rbx)
	je	.LBB47_464
# BB#466:                               # %if.end534
	movl	$1466, %edi             # imm = 0x5BA
.LBB47_467:                             # %return
	callq	_StraightTaint_log
	movq	248(%rbx), %rcx
	movq	504(%rbx), %r9
	movq	608(%rbx), %rax
	movq	648(%rbx), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$200, %esi
	movl	$.L.str88, %edx
	jmp	.LBB47_468
.LBB47_462:                             # %if.then519
	movl	$1463, %edi             # imm = 0x5B7
	callq	_StraightTaint_log
	movq	248(%rbx), %rcx
	movq	504(%rbx), %r9
	movq	%r14, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$304, %esi              # imm = 0x130
	movl	$.L.str87, %edx
.LBB47_468:                             # %return
	movl	$.L.str2669, %r8d
.LBB47_469:                             # %return
	movq	%rbx, %rdi
	callq	send_mime
	xorl	%r14d, %r14d
	jmp	.LBB47_470
.LBB47_464:                             # %if.then532
	movl	$1465, %edi             # imm = 0x5B9
	callq	_StraightTaint_log
	movq	208(%rbx), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	movq	%rbx, %rdi
	jmp	.LBB47_3
.LBB47_471:                             # %if.then35.i
	movl	$1145, %edi             # imm = 0x479
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str482, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	208(%rbx), %rax
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	movq	%rbx, %rdi
	movq	%rax, %r9
	callq	httpd_send_err
	movq	%rbx, %rdi
	callq	httpd_write_response
	movq	%r15, %rdi
	callq	closedir
	movl	$1, %edi
	callq	exit
.LBB47_76:                              # %if.then67.i
	movl	$1154, %edi             # imm = 0x482
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str484, %esi
.LBB47_77:                              # %if.then67.i
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB47_206:                             # %sw.default.i.i.i.i
	movl	$1254, %edi             # imm = 0x4E6
	callq	_StraightTaint_log
	movl	$.L.str2366, %ebx
.LBB47_207:                             # %httpd_method_str.exit.i.i.i
	leal	3(%r12), %ebp
	movl	$1255, %edi             # imm = 0x4E7
	callq	_StraightTaint_log
	movl	$.L.str456, %edi
	movq	%rbx, %rsi
	callq	build_env
	orl	$4, %r12d
	movq	%rax, make_envp.envp(,%rbp,8)
	movq	%r14, %rbp
	movq	256(%rbp), %rbx
	cmpb	$0, (%rbx)
	je	.LBB47_208
# BB#209:                               # %if.then37.i.i.i
	movl	$1256, %edi             # imm = 0x4E8
	callq	_StraightTaint_log
	movl	$.L.str457, %edi
	movq	%rbx, %rsi
	callq	build_env
	leal	1(%r12), %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%rax, make_envp.envp(,%r12,8)
	movq	8(%rbp), %r13
	movq	64(%r13), %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	256(%rbp), %r14
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	strlen
	leaq	1(%rbx,%rax), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB47_210
# BB#211:                               # %if.then51.i.i.i
	movl	$1257, %edi             # imm = 0x4E9
	callq	_StraightTaint_log
	movq	64(%r13), %rcx
	movl	$.L.str458, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %r8
	callq	my_snprintf
	movl	$.L.str459, %edi
	movq	%r15, %rsi
	callq	build_env
	addl	$2, %r12d
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rax, make_envp.envp(,%rcx,8)
	jmp	.LBB47_212
.LBB47_208:
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	jmp	.LBB47_212
.LBB47_210:
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
.LBB47_212:                             # %cond.true.i.i.i
	movl	$1258, %edi             # imm = 0x4EA
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %rbx
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB47_214
# BB#213:                               # %cond.end.i.i.i
	movl	$1259, %edi             # imm = 0x4EB
	callq	_StraightTaint_log
	cmpb	$0, 1(%rbx)
	movl	$.L.str2669, %r14d
	je	.LBB47_215
.LBB47_214:                             # %cond.false109.i.i.i
	movl	$1260, %edi             # imm = 0x4EC
	callq	_StraightTaint_log
	movq	%rbx, %r14
.LBB47_215:                             # %cond.end111.i.i.i
	movl	$1261, %edi             # imm = 0x4ED
	callq	_StraightTaint_log
	movl	$.L.str460, %edi
	movq	%r14, %rsi
	callq	build_env
	leal	1(%r12), %r14d
	movslq	%r12d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	264(%rax), %rbx
	cmpb	$0, (%rbx)
	je	.LBB47_217
# BB#216:                               # %if.then121.i.i.i
	movl	$1262, %edi             # imm = 0x4EE
	callq	_StraightTaint_log
	movl	$.L.str461, %edi
	movq	%rbx, %rsi
	callq	build_env
	addl	$2, %r12d
	movslq	%r14d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movl	%r12d, %r14d
.LBB47_217:                             # %if.end127.i.i.i
	movl	$1263, %edi             # imm = 0x4EF
	callq	_StraightTaint_log
	movq	96(%rsp), %r15          # 8-byte Reload
	leaq	16(%r15), %rax
	movq	%rax, %rdi
	callq	httpd_ntoa
	movl	$.L.str462, %edi
	movl	$httpd_ntoa.str, %esi
	callq	build_env
	leal	1(%r14), %ebx
	movslq	%r14d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movq	272(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_219
# BB#218:                               # %if.then137.i.i.i
	movl	$1264, %edi             # imm = 0x4F0
	callq	_StraightTaint_log
	movl	$.L.str463, %edi
	movq	%rbp, %rsi
	callq	build_env
	addl	$2, %r14d
	movslq	%ebx, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movl	%r14d, %ebx
.LBB47_219:                             # %if.end143.i.i.i
	movl	$1265, %edi             # imm = 0x4F1
	callq	_StraightTaint_log
	movq	280(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_221
# BB#220:                               # %if.then148.i.i.i
	movl	$1266, %edi             # imm = 0x4F2
	callq	_StraightTaint_log
	movl	$.L.str464, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_221:                             # %if.end154.i.i.i
	movl	$1267, %edi             # imm = 0x4F3
	callq	_StraightTaint_log
	movq	288(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_223
# BB#222:                               # %if.then159.i.i.i
	movl	$1268, %edi             # imm = 0x4F4
	callq	_StraightTaint_log
	movl	$.L.str465, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_223:                             # %if.end165.i.i.i
	movl	$1269, %edi             # imm = 0x4F5
	callq	_StraightTaint_log
	movq	296(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_225
# BB#224:                               # %if.then170.i.i.i
	movl	$1270, %edi             # imm = 0x4F6
	callq	_StraightTaint_log
	movl	$.L.str466, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_225:                             # %if.end176.i.i.i
	movl	$1271, %edi             # imm = 0x4F7
	callq	_StraightTaint_log
	movq	304(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_227
# BB#226:                               # %if.then181.i.i.i
	movl	$1272, %edi             # imm = 0x4F8
	callq	_StraightTaint_log
	movl	$.L.str467, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_227:                             # %if.end187.i.i.i
	movl	$1273, %edi             # imm = 0x4F9
	callq	_StraightTaint_log
	movq	312(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_229
# BB#228:                               # %if.then192.i.i.i
	movl	$1274, %edi             # imm = 0x4FA
	callq	_StraightTaint_log
	movl	$.L.str468, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_229:                             # %if.end198.i.i.i
	movl	$1275, %edi             # imm = 0x4FB
	callq	_StraightTaint_log
	movq	320(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_231
# BB#230:                               # %if.then203.i.i.i
	movl	$1276, %edi             # imm = 0x4FC
	callq	_StraightTaint_log
	movl	$.L.str469, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_231:                             # %if.end209.i.i.i
	movl	$1277, %edi             # imm = 0x4FD
	callq	_StraightTaint_log
	movq	336(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_233
# BB#232:                               # %if.then214.i.i.i
	movl	$1278, %edi             # imm = 0x4FE
	callq	_StraightTaint_log
	movl	$.L.str470, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_233:                             # %if.end220.i.i.i
	movl	$1279, %edi             # imm = 0x4FF
	callq	_StraightTaint_log
	movq	496(%r15), %rbp
	cmpq	$-1, %rbp
	je	.LBB47_235
# BB#234:                               # %if.then223.i.i.i
	movl	$1280, %edi             # imm = 0x500
	callq	_StraightTaint_log
	leaq	4560(%rsp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str471, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	my_snprintf
	movl	$.L.str472, %edi
	movq	%r14, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_235:                             # %if.end232.i.i.i
	movl	$1281, %edi             # imm = 0x501
	callq	_StraightTaint_log
	movq	360(%r15), %rbp
	cmpb	$0, (%rbp)
	je	.LBB47_237
# BB#236:                               # %if.then237.i.i.i
	movl	$1282, %edi             # imm = 0x502
	callq	_StraightTaint_log
	movl	$.L.str473, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_237:                             # %if.end243.i.i.i
	movl	$1283, %edi             # imm = 0x503
	callq	_StraightTaint_log
	movq	352(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_239
# BB#238:                               # %if.then248.i.i.i
	movl	$1284, %edi             # imm = 0x504
	callq	_StraightTaint_log
	movl	$.L.str474, %edi
	movl	$.L.str475, %esi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_239:                             # %if.end253.i.i.i
	movl	$1285, %edi             # imm = 0x505
	callq	_StraightTaint_log
	movl	$.L.str476, %edi
	callq	getenv
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB47_241
# BB#240:                               # %if.then257.i.i.i
	movl	$1286, %edi             # imm = 0x506
	callq	_StraightTaint_log
	movl	$.L.str477, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_241:                             # %make_envp.exit.i.i
	movl	$1287, %edi             # imm = 0x507
	callq	_StraightTaint_log
	movq	%r15, %rbp
	movq	8(%rbp), %rax
	movq	24(%rax), %rax
	movl	$.L.str478, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
	movslq	%ebx, %rax
	movq	$0, make_envp.envp(,%rax,8)
	movq	264(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	leaq	16(,%rax,8), %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	je	.LBB47_252
# BB#242:                               # %if.end.i180.i.i
	movl	$1288, %edi             # imm = 0x508
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	leaq	1(%rax), %rax
	cmoveq	%rbx, %rax
	movq	%rax, (%rbp)
	movl	$61, %esi
	movq	%r14, %rdi
	callq	strchr
	testq	%rax, %rax
	movl	$1, %r15d
	movl	$1, %ebx
	jne	.LBB47_251
	jmp	.LBB47_243
.LBB47_247:                             # %if.then20.i.i.i
                                        #   in Loop: Header=BB47_243 Depth=1
	movl	$1292, %edi             # imm = 0x50C
	callq	_StraightTaint_log
	movb	$0, (%r14,%r15)
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	strdecode
	movq	%r14, (%rbp,%rbx,8)
	incq	%rbx
	leaq	1(%r14,%r15), %r14
.LBB47_243:                             # %for.cond.i.outer.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_244 Depth 2
	movl	$1289, %edi             # imm = 0x509
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	jmp	.LBB47_244
.LBB47_246:                             # %for.cond.for.inc_crit_edge.i.i.i
                                        #   in Loop: Header=BB47_244 Depth=2
	movl	$1291, %edi             # imm = 0x50B
	callq	_StraightTaint_log
	incq	%r15
.LBB47_244:                             # %for.cond.i.i.i
                                        #   Parent Loop BB47_243 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1290, %edi             # imm = 0x50A
	callq	_StraightTaint_log
	movb	(%r14,%r15), %al
	testb	%al, %al
	je	.LBB47_248
# BB#245:                               # %for.cond.i.i.i
                                        #   in Loop: Header=BB47_244 Depth=2
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	.LBB47_246
	jmp	.LBB47_247
.LBB47_248:                             # %for.end.i.i.i
	movl	$1293, %edi             # imm = 0x50D
	callq	_StraightTaint_log
	testq	%r15, %r15
	je	.LBB47_249
# BB#250:                               # %if.then26.i.i.i
	movl	$1294, %edi             # imm = 0x50E
	callq	_StraightTaint_log
	movq	%r14, %rdi
	movq	%r14, %rsi
	callq	strdecode
	movslq	%ebx, %rax
	leal	1(%rbx), %r15d
	movq	%r14, (%rbp,%rax,8)
	jmp	.LBB47_251
.LBB47_249:
	movl	%ebx, %r15d
.LBB47_251:                             # %if.end31.i.i.i
	movl	$1295, %edi             # imm = 0x50F
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movq	$0, (%rbp,%rax,8)
	movq	%rbp, %rbx
.LBB47_252:                             # %make_argp.exit.i.i
	movl	$1296, %edi             # imm = 0x510
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$3, 180(%rax)
	jne	.LBB47_301
# BB#253:                               # %land.lhs.true.i.i
	movl	$1297, %edi             # imm = 0x511
	callq	_StraightTaint_log
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	160(%rcx), %rax
	cmpq	168(%rcx), %rax
	jbe	.LBB47_301
# BB#254:                               # %if.then17.i.i
	movl	$1298, %edi             # imm = 0x512
	callq	_StraightTaint_log
	leaq	4552(%rsp), %rax
	movq	%rax, %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB47_255
# BB#259:                               # %if.end21.i.i
	movl	$1300, %edi             # imm = 0x514
	callq	_StraightTaint_log
	movl	$1300, %edi             # imm = 0x514
	callq	_StraightTaint_flush
	callq	fork
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_StraightTaint_fork32
	testl	%ebp, %ebp
	js	.LBB47_260
# BB#262:                               # %if.end26.i.i
	movl	$1302, %edi             # imm = 0x516
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	je	.LBB47_263
# BB#299:                               # %if.end31.i.i
	movl	$1332, %edi             # imm = 0x534
	callq	_StraightTaint_log
	movl	4556(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4552(%rsp), %ebp
	testl	%ebp, %ebp
	je	.LBB47_303
# BB#300:                               # %if.then36.i.i
	movl	$1333, %edi             # imm = 0x535
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	%ebp, %edi
	callq	dup2
	movl	4552(%rsp), %eax
	movl	%eax, %edi
	callq	close
	jmp	.LBB47_303
.LBB47_301:                             # %if.else.i.i781
	movl	$1334, %edi             # imm = 0x536
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ebp
	testl	%ebp, %ebp
	je	.LBB47_303
# BB#302:                               # %if.then44.i.i
	movl	$1335, %edi             # imm = 0x537
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	%ebp, %edi
	callq	dup2
.LBB47_303:                             # %if.end48.i.i
	movl	$1336, %edi             # imm = 0x538
	callq	_StraightTaint_log
	movq	(%rbx), %rax
	movl	$.L.str437, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB47_407
# BB#304:                               # %land.lhs.true52.i.i
	movl	$1337, %edi             # imm = 0x539
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 520(%rax)
	je	.LBB47_407
# BB#305:                               # %if.then53.i.i
	movl	$1338, %edi             # imm = 0x53A
	callq	_StraightTaint_log
	leaq	4544(%rsp), %rax
	movq	%rax, %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB47_306
# BB#307:                               # %if.end60.i.i
	movl	$1340, %edi             # imm = 0x53C
	callq	_StraightTaint_log
	movl	$1340, %edi             # imm = 0x53C
	callq	_StraightTaint_flush
	callq	fork
	movl	%eax, %ebp
	movl	%ebp, %edi
	callq	_StraightTaint_fork32
	testl	%ebp, %ebp
	js	.LBB47_308
# BB#309:                               # %if.end65.i.i
	movl	$1342, %edi             # imm = 0x53E
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	jne	.LBB47_403
# BB#310:                               # %if.then67.i.i
	movl	$1343, %edi             # imm = 0x53F
	callq	_StraightTaint_log
	movb	$1, sub_process(%rip)
	movl	4548(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4544(%rsp), %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ebp
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	fcntl
	movl	%eax, %r15d
	cmpl	$-1, %r15d
	je	.LBB47_313
# BB#311:                               # %if.then.i.i194.i.i
	movl	$1344, %edi             # imm = 0x540
	callq	_StraightTaint_log
	movl	%r15d, %r14d
	andl	$-2049, %r14d           # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%r15d, %r14d
	je	.LBB47_313
# BB#312:                               # %if.then2.i.i.i.i
	movl	$1345, %edi             # imm = 0x541
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebp, %edi
	movl	%r14d, %edx
	callq	fcntl
.LBB47_313:                             # %httpd_clear_ndelay.exit.i.i.i
	movl	$1346, %edi             # imm = 0x542
	callq	_StraightTaint_log
	movq	$0, 5600(%rsp)
	leaq	5592(%rsp), %r13
	leaq	5600(%rsp), %rax
	movl	$500, %edx              # imm = 0x1F4
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	httpd_realloc_str
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	4560(%rsp), %r12
.LBB47_314:                             # %for.cond.outer.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_316 Depth 2
	movl	$1347, %edi             # imm = 0x543
	callq	_StraightTaint_log
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	movq	%r12, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	jns	.LBB47_319
# BB#315:                               # %land.lhs.true.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_314 Depth=1
	movl	$1348, %edi             # imm = 0x544
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, %r14
.LBB47_316:                             # %land.lhs.true.i196.i.i
                                        #   Parent Loop BB47_314 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1349, %edi             # imm = 0x545
	callq	_StraightTaint_log
	movl	(%r14), %eax
	cmpl	$4, %eax
	je	.LBB47_318
# BB#317:                               # %land.lhs.true.i196.i.i
                                        #   in Loop: Header=BB47_316 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_319
.LBB47_318:                             # %if.then.i.i.i
                                        #   in Loop: Header=BB47_316 Depth=2
	movl	$1350, %edi             # imm = 0x546
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	movq	%r12, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	js	.LBB47_316
.LBB47_319:                             # %if.end.i200.i.i
                                        #   in Loop: Header=BB47_314 Depth=1
	movl	$1351, %edi             # imm = 0x547
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	jle	.LBB47_320
# BB#321:                               # %if.end12.i.i.i
                                        #   in Loop: Header=BB47_314 Depth=1
	movl	$1353, %edi             # imm = 0x549
	callq	_StraightTaint_log
	movslq	%ebp, %r15
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %rbp
	movq	%r13, %rdi
	leaq	5600(%rsp), %rax
	movq	%rax, %rsi
	movq	%rbp, %rdx
	callq	httpd_realloc_str
	movq	5592(%rsp), %r14
	addq	%r14, 88(%rsp)          # 8-byte Folded Spill
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%r14,%rbp)
	movl	$.L.str439, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r15
	testq	%r15, %r15
	jne	.LBB47_323
# BB#322:                               # %lor.lhs.false22.i.i.i
                                        #   in Loop: Header=BB47_314 Depth=1
	movl	$1354, %edi             # imm = 0x54A
	callq	_StraightTaint_log
	movl	$.L.str440, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r15
	testq	%r15, %r15
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	je	.LBB47_314
	jmp	.LBB47_323
.LBB47_255:                             # %if.then20.i.i
	movl	$1299, %edi             # imm = 0x513
	jmp	.LBB47_256
.LBB47_260:                             # %if.then24.i.i
	movl	$1301, %edi             # imm = 0x515
	jmp	.LBB47_261
.LBB47_263:                             # %if.then28.i.i
	movl	$1303, %edi             # imm = 0x517
	callq	_StraightTaint_log
	movb	$1, sub_process(%rip)
	movl	4552(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4556(%rsp), %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	160(%rax), %rbp
	movq	168(%rax), %r14
	subq	%r14, %rbp
	je	.LBB47_274
# BB#264:                               # %while.body.lr.ph.i.preheader.i.i.i
	movl	$1304, %edi             # imm = 0x518
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	144(%rax), %r15
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
.LBB47_266:                             # %while.body.lr.ph.i.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_268 Depth 2
	movl	$1306, %edi             # imm = 0x51A
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rdx
	leaq	(%rdx,%r14), %rax
	addq	%r15, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rbp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	jns	.LBB47_271
# BB#267:                               # %land.lhs.true.i.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_266 Depth=1
	movl	$1307, %edi             # imm = 0x51B
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_268:                             # %land.lhs.true.i.i.i.i
                                        #   Parent Loop BB47_266 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1308, %edi             # imm = 0x51C
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_270
# BB#269:                               # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB47_268 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_273
.LBB47_270:                             # %if.then.i.i.i.i
                                        #   in Loop: Header=BB47_268 Depth=2
	movl	$1309, %edi             # imm = 0x51D
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%ebx, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	js	.LBB47_268
.LBB47_271:                             # %if.end16.i.i.i.i
                                        #   in Loop: Header=BB47_266 Depth=1
	movl	$1310, %edi             # imm = 0x51E
	callq	_StraightTaint_log
	testl	%r13d, %r13d
	je	.LBB47_272
# BB#265:                               # %while.cond.outer.i.i.i.i
                                        #   in Loop: Header=BB47_266 Depth=1
	addl	%r12d, %r13d
	movl	$1305, %edi             # imm = 0x519
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpq	%rbp, %rax
	movl	%r13d, %r12d
	jb	.LBB47_266
	jmp	.LBB47_273
.LBB47_407:                             # %if.else95.i.i
	movl	$1412, %edi             # imm = 0x584
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r14d
	cmpl	$1, %r14d
	movl	$1, %ebp
	je	.LBB47_409
# BB#408:                               # %if.end101.i.i
	movl	$1413, %edi             # imm = 0x585
	callq	_StraightTaint_log
	movl	$1, %esi
	movl	%r14d, %edi
	callq	dup2
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ebp
	cmpl	$2, %ebp
	je	.LBB47_410
.LBB47_409:                             # %if.then104.i.i
	movl	$1414, %edi             # imm = 0x586
	callq	_StraightTaint_log
	movl	$2, %esi
	movl	%ebp, %edi
	callq	dup2
	jmp	.LBB47_410
.LBB47_306:                             # %if.then58.i.i
	movl	$1339, %edi             # imm = 0x53B
.LBB47_256:                             # %if.then20.i.i
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str436156, %esi
	jmp	.LBB47_257
.LBB47_308:                             # %if.then63.i.i
	movl	$1341, %edi             # imm = 0x53D
.LBB47_261:                             # %if.then24.i.i
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str430, %esi
.LBB47_257:                             # %if.then20.i.i
	xorl	%eax, %eax
	callq	syslog
	movq	96(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB47_258
.LBB47_403:                             # %if.end71.i.i
	movl	$1408, %edi             # imm = 0x580
	callq	_StraightTaint_log
	movl	4544(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4548(%rsp), %r14d
	cmpl	$1, %r14d
	movl	$1, %ebp
	je	.LBB47_405
# BB#404:                               # %if.end79.i.i
	movl	$1409, %edi             # imm = 0x581
	callq	_StraightTaint_log
	movl	$1, %esi
	movl	%r14d, %edi
	callq	dup2
	movl	4548(%rsp), %ebp
	cmpl	$2, %ebp
	je	.LBB47_410
.LBB47_405:                             # %if.end85.i.i
	movl	$1410, %edi             # imm = 0x582
	callq	_StraightTaint_log
	movl	$2, %esi
	movl	%ebp, %edi
	callq	dup2
	movl	4548(%rsp), %ebp
	leal	-1(%rbp), %eax
	cmpl	$2, %eax
	jb	.LBB47_410
# BB#406:                               # %if.then91.i.i
	movl	$1411, %edi             # imm = 0x583
	callq	_StraightTaint_log
	movl	%ebp, %edi
	callq	close
.LBB47_410:                             # %if.end108.i.i
	movl	$1415, %edi             # imm = 0x587
	callq	_StraightTaint_log
	movl	$10, %edi
	callq	nice
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	__strdup
	movq	%rax, %r14
	testq	%r14, %r14
	jne	.LBB47_413
# BB#411:                               # %if.then112.i.i
	movl	$1416, %edi             # imm = 0x588
	jmp	.LBB47_412
.LBB47_320:                             # %if.then11.i.i.i
	movl	$1352, %edi             # imm = 0x548
	callq	_StraightTaint_log
	movq	5592(%rsp), %r14
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax), %r15
	movq	%rax, %rbp
.LBB47_323:                             # %for.end.i203.i.i
	movl	$1355, %edi             # imm = 0x54B
	callq	_StraightTaint_log
	movb	(%r14), %al
	movb	%al, 88(%rsp)           # 1-byte Spill
	testb	%al, %al
	je	.LBB47_402
# BB#324:                               # %if.end33.i.i.i
	movl	$1356, %edi             # imm = 0x54C
	callq	_StraightTaint_log
	movl	$.L.str441, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	strncmp
	testl	%eax, %eax
	movl	$200, %r13d
	jne	.LBB47_330
# BB#325:
	movq	%r14, %r12
.LBB47_326:                             # %switch.early.test.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1357, %edi             # imm = 0x54D
	callq	_StraightTaint_log
	movsbl	88(%rsp), %eax          # 1-byte Folded Reload
	cmpl	$9, %eax
	je	.LBB47_329
# BB#327:                               # %switch.early.test.i.i.i
                                        #   in Loop: Header=BB47_326 Depth=1
	cmpl	$32, %eax
	je	.LBB47_329
# BB#328:                               # %switch.early.test.while.cond.i_crit_edge.i.i.i
                                        #   in Loop: Header=BB47_326 Depth=1
	movl	$1358, %edi             # imm = 0x54E
	callq	_StraightTaint_log
	movb	1(%r12), %al
	movb	%al, 88(%rsp)           # 1-byte Spill
	incq	%r12
	testb	%al, %al
	jne	.LBB47_326
.LBB47_329:                             # %__strcspn_c2.exit.i.i.i
	movl	$1359, %edi             # imm = 0x54F
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strtol
	movq	%rax, %r13
.LBB47_330:                             # %if.end79.i.i.i
	movl	$1360, %edi             # imm = 0x550
	callq	_StraightTaint_log
	movl	$.L.str442, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_339
# BB#331:                               # %if.end79.i.i.i
	cmpq	%r15, %r12
	jae	.LBB47_339
# BB#332:                               # %land.lhs.true86.i.i.i
	movl	$1361, %edi             # imm = 0x551
	callq	_StraightTaint_log
	cmpq	%r14, %r12
	je	.LBB47_334
# BB#333:                               # %lor.lhs.false89.i.i.i
	movl	$1362, %edi             # imm = 0x552
	callq	_StraightTaint_log
	movzbl	-1(%r12), %eax
	cmpl	$10, %eax
	jne	.LBB47_339
.LBB47_334:                             # %while.cond.i273.i.i.i.preheader
	addq	$7, %r12
	jmp	.LBB47_335
.LBB47_272:
	movl	%r12d, %r13d
.LBB47_273:                             # %httpd_write_fully.exit.i.i.i
	movl	$1311, %edi             # imm = 0x51F
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	cmpq	%rbp, %rax
	jne	.LBB47_297
.LBB47_274:                             # %while.cond.preheader.i.i.i
	movl	$1312, %edi             # imm = 0x520
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	496(%rax), %r12
	cmpq	%rbp, %r12
	jbe	.LBB47_282
# BB#275:
	movl	$1024, %r14d            # imm = 0x400
	leaq	4560(%rsp), %r15
.LBB47_277:                             # %while.body.lr.ph.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_278 Depth 2
                                        #     Child Loop BB47_289 Depth 2
                                        #       Child Loop BB47_291 Depth 3
	movl	$1314, %edi             # imm = 0x522
	callq	_StraightTaint_log
.LBB47_278:                             # %while.body.i.i.i
                                        #   Parent Loop BB47_277 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1315, %edi             # imm = 0x523
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	subq	%rbp, %r12
	cmpq	$1024, %r12             # imm = 0x400
	cmovaq	%r14, %r12
	movl	%eax, %edi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	read
	movq	%rax, %r12
	testq	%r12, %r12
	jns	.LBB47_287
# BB#279:                               # %land.lhs.true.i187.i.i
                                        #   in Loop: Header=BB47_278 Depth=2
	movl	$1316, %edi             # imm = 0x524
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_281
# BB#280:                               # %land.lhs.true.i187.i.i
                                        #   in Loop: Header=BB47_278 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_297
.LBB47_281:                             # %if.then23.i.i.i
                                        #   in Loop: Header=BB47_278 Depth=2
	movl	$1317, %edi             # imm = 0x525
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	496(%rax), %r12
	cmpq	%rbp, %r12
	ja	.LBB47_278
	jmp	.LBB47_282
.LBB47_287:                             # %if.end25.i.i.i
                                        #   in Loop: Header=BB47_277 Depth=1
	movl	$1318, %edi             # imm = 0x526
	callq	_StraightTaint_log
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testq	%r12, %r12
	movl	$0, %r13d
	jle	.LBB47_297
.LBB47_289:                             # %while.body.lr.ph.i63.i.i.i
                                        #   Parent Loop BB47_277 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_291 Depth 3
	movl	$1320, %edi             # imm = 0x528
	callq	_StraightTaint_log
	movq	72(%rsp), %rdx          # 8-byte Reload
	leaq	4560(%rsp,%rdx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r12, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	write
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB47_294
# BB#290:                               # %land.lhs.true.i69.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_289 Depth=2
	movl	$1321, %edi             # imm = 0x529
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB47_291:                             # %land.lhs.true.i69.i.i.i
                                        #   Parent Loop BB47_277 Depth=1
                                        #     Parent Loop BB47_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1322, %edi             # imm = 0x52A
	callq	_StraightTaint_log
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_293
# BB#292:                               # %land.lhs.true.i69.i.i.i
                                        #   in Loop: Header=BB47_291 Depth=3
	cmpl	$11, %eax
	jne	.LBB47_296
.LBB47_293:                             # %if.then.i71.i.i.i
                                        #   in Loop: Header=BB47_291 Depth=3
	movl	$1323, %edi             # imm = 0x52B
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%ebx, %edi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB47_291
.LBB47_294:                             # %if.end16.i74.i.i.i
                                        #   in Loop: Header=BB47_289 Depth=2
	movl	$1324, %edi             # imm = 0x52C
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB47_295
# BB#288:                               # %while.cond.outer.i58.i.i.i
                                        #   in Loop: Header=BB47_289 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	addl	%r13d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$1319, %edi             # imm = 0x527
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpq	%r12, %rax
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	jb	.LBB47_289
	jmp	.LBB47_296
.LBB47_295:                             #   in Loop: Header=BB47_277 Depth=1
	movl	%r13d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB47_296:                             # %httpd_write_fully.exit76.i.i.i
                                        #   in Loop: Header=BB47_277 Depth=1
	movl	$1325, %edi             # imm = 0x52D
	callq	_StraightTaint_log
	movq	88(%rsp), %rax          # 8-byte Reload
	cltq
	cmpq	%r12, %rax
	jne	.LBB47_297
# BB#276:                               # %while.cond.outer.i.i.i
                                        #   in Loop: Header=BB47_277 Depth=1
	addq	%r12, %rbp
	movl	$1313, %edi             # imm = 0x521
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	496(%rax), %r12
	cmpq	%rbp, %r12
	ja	.LBB47_277
.LBB47_282:                             # %while.end.i.i.i
	movl	$1326, %edi             # imm = 0x52E
	callq	_StraightTaint_log
	movzbl	sub_process(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB47_286
# BB#283:                               # %if.then.i77.i.i.i
	movl	$1327, %edi             # imm = 0x52F
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ebx
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	callq	fcntl
	movl	%eax, %r14d
	cmpl	$-1, %r14d
	je	.LBB47_286
# BB#284:                               # %if.then.i.i.i.i.i
	movl	$1328, %edi             # imm = 0x530
	callq	_StraightTaint_log
	movl	%r14d, %ebp
	orl	$2048, %ebp             # imm = 0x800
	cmpl	%r14d, %ebp
	je	.LBB47_286
# BB#285:                               # %if.then2.i.i.i.i.i
	movl	$1329, %edi             # imm = 0x531
	callq	_StraightTaint_log
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebx, %edi
	movl	%ebp, %edx
	callq	fcntl
.LBB47_286:                             # %post_post_garbage_hack.exit.i.i.i
	movl	$1330, %edi             # imm = 0x532
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	leaq	5600(%rsp), %rcx
	movl	$2, %edx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	read
.LBB47_297:                             # %cgi_interpose_input.exit.i.i
	movl	$1331, %edi             # imm = 0x533
	jmp	.LBB47_298
.LBB47_413:                             # %if.else114.i.i
	movl	$1417, %edi             # imm = 0x589
	callq	_StraightTaint_log
	movl	$47, %esi
	movq	%r14, %rdi
	callq	strrchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB47_415
# BB#414:                               # %if.then117.i.i
	movl	$1418, %edi             # imm = 0x58A
.LBB47_412:                             # %if.end122.i.i
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbp
	jmp	.LBB47_416
.LBB47_337:                             # %while.cond.i273.i.i.i.backedge
                                        #   in Loop: Header=BB47_335 Depth=1
	incq	%r12
.LBB47_335:                             # %while.cond.i273.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1363, %edi             # imm = 0x553
	callq	_StraightTaint_log
	movsbl	(%r12), %eax
	cmpl	$9, %eax
	je	.LBB47_337
# BB#336:                               # %while.cond.i273.i.i.i
                                        #   in Loop: Header=BB47_335 Depth=1
	cmpl	$32, %eax
	je	.LBB47_337
# BB#338:                               # %__strspn_c2.exit.i.i.i
	movl	$1364, %edi             # imm = 0x554
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	strtol
	movq	%rax, %r13
.LBB47_339:                             # %if.end145.i.i.i
	movl	$1365, %edi             # imm = 0x555
	callq	_StraightTaint_log
	movl	$.L.str443, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_343
# BB#340:                               # %if.end145.i.i.i
	cmpq	%r15, %r12
	jae	.LBB47_343
# BB#341:                               # %land.lhs.true152.i.i.i
	movl	$1366, %edi             # imm = 0x556
	callq	_StraightTaint_log
	cmpq	%r14, %r12
	je	.LBB47_357
# BB#342:                               # %lor.lhs.false155.i.i.i
	movl	$1367, %edi             # imm = 0x557
	callq	_StraightTaint_log
	movzbl	-1(%r12), %eax
	cmpl	$10, %eax
	je	.LBB47_357
.LBB47_343:                             # %if.end161.i.i.i
	movl	$1368, %edi             # imm = 0x558
	callq	_StraightTaint_log
	movl	$.L.str88, %r15d
	cmpl	$301, %r13d             # imm = 0x12D
	jg	.LBB47_346
# BB#344:                               # %if.end161.i.i.i
	movl	$200, %r12d
	cmpl	$200, %r13d
	je	.LBB47_366
	jmp	.LBB47_345
.LBB47_415:                             # %if.else119.i.i
	movl	$1419, %edi             # imm = 0x58B
	callq	_StraightTaint_log
	movb	$0, (%rbp)
	incq	%rbp
	movq	%r14, %rdi
	callq	chdir
.LBB47_416:                             # %if.end122.i.i
	movl	$1420, %edi             # imm = 0x58C
	callq	_StraightTaint_log
	movl	$13, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	sigset
	movl	$make_envp.envp, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	execve
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	240(%rbx), %rcx
	movl	$3, %edi
	movl	$.L.str438, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
.LBB47_258:                             # %if.then20.i.i
	movq	208(%rbx), %rax
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	movq	%rbx, %rdi
	movq	%rax, %r9
	callq	httpd_send_err
	movq	%rbx, %rdi
	callq	httpd_write_response
	movl	$1, %edi
	callq	exit
.LBB47_346:                             # %if.end161.i.i.i
	cmpl	$499, %r13d             # imm = 0x1F3
	jg	.LBB47_353
# BB#347:                               # %if.end161.i.i.i
	cmpl	$399, %r13d             # imm = 0x18F
	jg	.LBB47_351
# BB#348:                               # %if.end161.i.i.i
	cmpl	$302, %r13d             # imm = 0x12E
	jne	.LBB47_349
.LBB47_357:                             # %sw.bb162.i.i.i
	movl	$1369, %edi             # imm = 0x559
	callq	_StraightTaint_log
	movl	$.L.str447, %r15d
	movl	$302, %r12d             # imm = 0x12E
	jmp	.LBB47_366
.LBB47_353:                             # %if.end161.i.i.i
	cmpl	$500, %r13d             # imm = 0x1F4
	je	.LBB47_363
# BB#354:                               # %if.end161.i.i.i
	cmpl	$501, %r13d             # imm = 0x1F5
	jne	.LBB47_355
# BB#364:                               # %sw.bb170.i.i.i
	movl	$1377, %edi             # imm = 0x561
	callq	_StraightTaint_log
	movl	$.L.str523, %r15d
	jmp	.LBB47_365
.LBB47_351:                             # %if.end161.i.i.i
	leal	-400(%r13), %eax
	cmpl	$8, %eax
	ja	.LBB47_345
# BB#352:                               # %if.end161.i.i.i
	jmpq	*.LJTI47_0(,%rax,8)
.LBB47_358:                             # %sw.bb164.i.i.i
	movl	$1371, %edi             # imm = 0x55B
	callq	_StraightTaint_log
	movl	$400, %r12d             # imm = 0x190
	movq	httpd_err400title(%rip), %r15
	jmp	.LBB47_366
.LBB47_349:                             # %if.end161.i.i.i
	cmpl	$304, %r13d             # imm = 0x130
	jne	.LBB47_345
# BB#350:                               # %sw.bb163.i.i.i
	movl	$1370, %edi             # imm = 0x55A
	callq	_StraightTaint_log
	movl	$.L.str87, %r15d
	jmp	.LBB47_365
.LBB47_363:                             # %sw.bb169.i.i.i
	movl	$1376, %edi             # imm = 0x560
	callq	_StraightTaint_log
	movl	$.L.str520, %r15d
	jmp	.LBB47_365
.LBB47_355:                             # %if.end161.i.i.i
	cmpl	$503, %r13d             # imm = 0x1F7
	jne	.LBB47_345
# BB#356:                               # %sw.bb171.i.i.i
	movl	$1378, %edi             # imm = 0x562
	callq	_StraightTaint_log
	movl	$503, %r12d             # imm = 0x1F7
	movq	httpd_err503title(%rip), %r15
	jmp	.LBB47_366
.LBB47_359:                             # %sw.bb165.i.i.i
	movl	$1372, %edi             # imm = 0x55C
	callq	_StraightTaint_log
	movl	$.L.str446, %r15d
	jmp	.LBB47_365
.LBB47_360:                             # %sw.bb166.i.i.i
	movl	$1373, %edi             # imm = 0x55D
	callq	_StraightTaint_log
	movl	$.L.str515, %r15d
	jmp	.LBB47_365
.LBB47_361:                             # %sw.bb167.i.i.i
	movl	$1374, %edi             # imm = 0x55E
	callq	_StraightTaint_log
	movl	$.L.str510, %r15d
	jmp	.LBB47_365
.LBB47_362:                             # %sw.bb168.i.i.i
	movl	$1375, %edi             # imm = 0x55F
	callq	_StraightTaint_log
	movl	$408, %r12d             # imm = 0x198
	movq	httpd_err408title(%rip), %r15
	jmp	.LBB47_366
.LBB47_345:                             # %sw.default.i.i.i
	movl	$1379, %edi             # imm = 0x563
	callq	_StraightTaint_log
	movl	$.L.str444, %r15d
.LBB47_365:                             # %sw.epilog.i.i.i
	movl	%r13d, %r12d
.LBB47_366:                             # %sw.epilog.i.i.i
	movl	$1380, %edi             # imm = 0x564
	callq	_StraightTaint_log
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	4560(%rsp), %r13
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str445, %edx
	xorl	%eax, %eax
	movl	%r12d, %ecx
	movq	%r13, %rdi
	movq	%r15, %r8
	callq	my_snprintf
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r15d
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_375
# BB#367:
	xorl	%r13d, %r13d
.LBB47_369:                             # %while.body.lr.ph.i289.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_371 Depth 2
	movl	$1382, %edi             # imm = 0x566
	callq	_StraightTaint_log
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	4560(%rsp,%rdx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r12, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%r15d, %edi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	write
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB47_374
# BB#370:                               # %land.lhs.true.i295.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_369 Depth=1
	movl	$1383, %edi             # imm = 0x567
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_371:                             # %land.lhs.true.i295.i.i.i
                                        #   Parent Loop BB47_369 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1384, %edi             # imm = 0x568
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_373
# BB#372:                               # %land.lhs.true.i295.i.i.i
                                        #   in Loop: Header=BB47_371 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_375
.LBB47_373:                             # %if.then.i297.i.i.i
                                        #   in Loop: Header=BB47_371 Depth=2
	movl	$1385, %edi             # imm = 0x569
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, 64(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB47_371
.LBB47_374:                             # %if.end16.i300.i.i.i
                                        #   in Loop: Header=BB47_369 Depth=1
	movl	$1386, %edi             # imm = 0x56A
	callq	_StraightTaint_log
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB47_375
# BB#368:                               # %while.cond.outer.i284.i.i.i
                                        #   in Loop: Header=BB47_369 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	addl	%r13d, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$1381, %edi             # imm = 0x565
	callq	_StraightTaint_log
	movq	64(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpq	%r12, %rax
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	jb	.LBB47_369
.LBB47_375:                             # %httpd_write_fully.exit302.i.i.i
	movl	$1387, %edi             # imm = 0x56B
	callq	_StraightTaint_log
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB47_384
# BB#376:
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r15d
	xorl	%r12d, %r12d
.LBB47_378:                             # %while.body.lr.ph.i311.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_380 Depth 2
	movl	$1389, %edi             # imm = 0x56D
	callq	_StraightTaint_log
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%r14,%rcx), %r13
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r15d, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	write
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB47_383
# BB#379:                               # %land.lhs.true.i317.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_378 Depth=1
	movl	$1390, %edi             # imm = 0x56E
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB47_380:                             # %land.lhs.true.i317.i.i.i
                                        #   Parent Loop BB47_378 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1391, %edi             # imm = 0x56F
	callq	_StraightTaint_log
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_382
# BB#381:                               # %land.lhs.true.i317.i.i.i
                                        #   in Loop: Header=BB47_380 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_384
.LBB47_382:                             # %if.then.i319.i.i.i
                                        #   in Loop: Header=BB47_380 Depth=2
	movl	$1392, %edi             # imm = 0x570
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	%r13, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, 72(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB47_380
.LBB47_383:                             # %if.end16.i322.i.i.i
                                        #   in Loop: Header=BB47_378 Depth=1
	movl	$1393, %edi             # imm = 0x571
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB47_384
# BB#377:                               # %while.cond.outer.i306.i.i.i
                                        #   in Loop: Header=BB47_378 Depth=1
	movq	72(%rsp), %r13          # 8-byte Reload
	addl	%r12d, %r13d
	movl	$1388, %edi             # imm = 0x56C
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpq	%rbp, %rax
	movl	%r13d, %r12d
	jb	.LBB47_378
	jmp	.LBB47_384
.LBB47_387:                             # %if.then195.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	movl	$1396, %edi             # imm = 0x574
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
.LBB47_384:                             # %for.cond181.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_393 Depth 2
                                        #       Child Loop BB47_395 Depth 3
	movl	$1394, %edi             # imm = 0x572
	callq	_StraightTaint_log
	leaq	4560(%rsp), %rax
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	jns	.LBB47_388
# BB#385:                               # %land.lhs.true187.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	movl	$1395, %edi             # imm = 0x573
	callq	_StraightTaint_log
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_387
# BB#386:                               # %land.lhs.true187.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	cmpl	$11, %eax
	je	.LBB47_387
.LBB47_388:                             # %if.end197.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	movl	$1397, %edi             # imm = 0x575
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	jle	.LBB47_401
# BB#389:                               # %if.end201.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	movl	$1398, %edi             # imm = 0x576
	callq	_StraightTaint_log
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	jne	.LBB47_391
# BB#390:                               #   in Loop: Header=BB47_384 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB47_400
.LBB47_391:                             #   in Loop: Header=BB47_384 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r14d
	movslq	%ebp, %r15
	xorl	%r12d, %r12d
.LBB47_393:                             # %while.body.lr.ph.i.i212.i.i
                                        #   Parent Loop BB47_384 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_395 Depth 3
	movl	$1400, %edi             # imm = 0x578
	callq	_StraightTaint_log
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	4560(%rsp,%rdx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%r15, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%r14d, %edi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	jns	.LBB47_398
# BB#394:                               # %land.lhs.true.i.lr.ph.i214.i.i
                                        #   in Loop: Header=BB47_393 Depth=2
	movl	$1401, %edi             # imm = 0x579
	callq	_StraightTaint_log
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_395:                             # %land.lhs.true.i.i215.i.i
                                        #   Parent Loop BB47_384 Depth=1
                                        #     Parent Loop BB47_393 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1402, %edi             # imm = 0x57A
	callq	_StraightTaint_log
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_397
# BB#396:                               # %land.lhs.true.i.i215.i.i
                                        #   in Loop: Header=BB47_395 Depth=3
	cmpl	$11, %eax
	jne	.LBB47_400
.LBB47_397:                             # %if.then.i278.i.i.i
                                        #   in Loop: Header=BB47_395 Depth=3
	movl	$1403, %edi             # imm = 0x57B
	callq	_StraightTaint_log
	movl	$1, %edi
	callq	sleep
	movl	%r14d, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	js	.LBB47_395
.LBB47_398:                             # %if.end16.i.i221.i.i
                                        #   in Loop: Header=BB47_393 Depth=2
	movl	$1404, %edi             # imm = 0x57C
	callq	_StraightTaint_log
	testl	%r13d, %r13d
	je	.LBB47_399
# BB#392:                               # %while.cond.outer.i.i207.i.i
                                        #   in Loop: Header=BB47_393 Depth=2
	addl	%r12d, %r13d
	movl	$1399, %edi             # imm = 0x577
	callq	_StraightTaint_log
	movslq	%r13d, %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpq	%r15, %rax
	movl	%r13d, %r12d
	jb	.LBB47_393
	jmp	.LBB47_400
.LBB47_399:                             #   in Loop: Header=BB47_384 Depth=1
	movl	%r12d, %r13d
.LBB47_400:                             # %httpd_write_fully.exit.i223.i.i
                                        #   in Loop: Header=BB47_384 Depth=1
	movl	$1405, %edi             # imm = 0x57D
	callq	_StraightTaint_log
	cmpl	%ebp, %r13d
	je	.LBB47_384
.LBB47_401:                             # %for.end210.i.i.i
	movl	$1406, %edi             # imm = 0x57E
	callq	_StraightTaint_log
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	callq	shutdown
.LBB47_402:                             # %cgi_interpose_output.exit.i.i
	movl	$1407, %edi             # imm = 0x57F
.LBB47_298:                             # %cgi_interpose_input.exit.i.i
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	exit
.Ltmp641:
	.size	really_start_request, .Ltmp641-really_start_request
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI47_0:
	.quad	.LBB47_358
	.quad	.LBB47_359
	.quad	.LBB47_345
	.quad	.LBB47_360
	.quad	.LBB47_361
	.quad	.LBB47_345
	.quad	.LBB47_345
	.quad	.LBB47_345
	.quad	.LBB47_362

	.text
	.align	16, 0x90
	.type	send_mime,@function
send_mime:                              # @send_mime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp649:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp650:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp651:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp652:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp653:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp654:
	.cfi_def_cfa_offset 56
	subq	$1960, %rsp             # imm = 0x7A8
.Ltmp655:
	.cfi_def_cfa_offset 2016
.Ltmp656:
	.cfi_offset %rbx, -56
.Ltmp657:
	.cfi_offset %r12, -48
.Ltmp658:
	.cfi_offset %r13, -40
.Ltmp659:
	.cfi_offset %r14, -32
.Ltmp660:
	.cfi_offset %r15, -24
.Ltmp661:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	2024(%rsp), %r15
	movq	2016(%rsp), %r13
	movl	$1468, %edi             # imm = 0x5BC
	callq	_StraightTaint_log
	movq	%r15, 1952(%rsp)
	movl	%r14d, 184(%r12)
	movq	%r13, 192(%r12)
	cmpl	$0, 520(%r12)
	je	.LBB48_30
# BB#1:                                 # %if.then
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	$1469, %edi             # imm = 0x5BD
	callq	_StraightTaint_log
	cmpl	$200, %r14d
	jne	.LBB48_9
# BB#2:                                 # %land.lhs.true
	movl	$1470, %edi             # imm = 0x5BE
	callq	_StraightTaint_log
	cmpl	$0, 528(%r12)
	je	.LBB48_9
# BB#3:                                 # %land.lhs.true3
	movl	$1471, %edi             # imm = 0x5BF
	callq	_StraightTaint_log
	movq	536(%r12), %r13
	movq	544(%r12), %rbp
	cmpq	%r13, %rbp
	jl	.LBB48_9
# BB#4:                                 # %land.lhs.true5
	movl	$1472, %edi             # imm = 0x5C0
	callq	_StraightTaint_log
	movq	2016(%rsp), %rax
	leaq	-1(%rax), %rax
	cmpq	%rax, %rbp
	jne	.LBB48_6
# BB#5:                                 # %land.lhs.true5
	testq	%r13, %r13
	je	.LBB48_9
.LBB48_6:                               # %land.lhs.true10
	movl	$1473, %edi             # imm = 0x5C1
	callq	_StraightTaint_log
	movq	488(%r12), %rbp
	cmpq	$-1, %rbp
	je	.LBB48_8
# BB#7:                                 # %lor.lhs.false12
	movl	$1474, %edi             # imm = 0x5C2
	callq	_StraightTaint_log
	cmpq	648(%r12), %rbp
	jne	.LBB48_9
.LBB48_8:                               # %if.then15
	movl	$1475, %edi             # imm = 0x5C3
	callq	_StraightTaint_log
	movl	$206, 184(%r12)
	movl	$.L.str98119, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$206, %r14d
	movl	$1, 52(%rsp)            # 4-byte Folded Spill
	jmp	.LBB48_10
.LBB48_9:                               # %if.else
	movl	$1476, %edi             # imm = 0x5C4
	callq	_StraightTaint_log
	movl	$0, 528(%r12)
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
.LBB48_10:                              # %if.end
	movl	$1477, %edi             # imm = 0x5C5
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rbp
	movq	%rbp, 1944(%rsp)
	testq	%r15, %r15
	jne	.LBB48_12
# BB#11:                                # %if.then19
	movl	$1478, %edi             # imm = 0x5C6
	callq	_StraightTaint_log
	movq	%rbp, 1952(%rsp)
.LBB48_12:                              # %if.end20
	movl	$1479, %edi             # imm = 0x5C7
	callq	_StraightTaint_log
	leaq	1944(%rsp), %rdi
	callq	gmtime
	leaq	1824(%rsp), %r13
	movl	$100, %esi
	movl	$.L.str89117, %edx
	movq	%r13, %rdi
	movq	%rax, %rcx
	callq	strftime
	leaq	1952(%rsp), %rdi
	callq	gmtime
	leaq	1712(%rsp), %rbp
	movl	$100, %esi
	movl	$.L.str89117, %edx
	movq	%rbp, %rdi
	movq	%rax, %rcx
	callq	strftime
	movq	8(%r12), %rax
	movq	40(%rax), %rcx
	leaq	1088(%rsp), %r15
	movl	$500, %esi              # imm = 0x1F4
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	my_snprintf
	movq	224(%r12), %rcx
	movq	%rbp, 24(%rsp)
	movq	%r13, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	$.L.str840, (%rsp)
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str90, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %r8d
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	leaq	368(%r12), %rdi
	leaq	464(%r12), %rsi
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%rdi, %r15
	movq	%rsi, %rbx
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
	leal	-200(%r14), %eax
	cmpl	$100, %eax
	jb	.LBB48_13
# BB#14:                                # %if.end20
	addl	$-300, %r14d            # imm = 0xFFFFFFFFFFFFFED4
	cmpl	$100, %r14d
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	%r15, %rbp
	movq	%rbx, %r15
	jb	.LBB48_16
# BB#15:                                # %if.then37
	movl	$1480, %edi             # imm = 0x5C8
	callq	_StraightTaint_log
	leaq	80(%rsp), %rbx
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str91118, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	my_snprintf
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
	jmp	.LBB48_16
.LBB48_13:
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	%r15, %rbp
	movq	%rbx, %r15
.LBB48_16:                              # %if.end41
	movl	$1481, %edi             # imm = 0x5C9
	callq	_StraightTaint_log
	cmpb	$0, (%r14)
	movq	%rbp, %rbx
	je	.LBB48_18
# BB#17:                                # %if.then44
	movl	$1482, %edi             # imm = 0x5CA
	callq	_StraightTaint_log
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str92, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %rcx
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
.LBB48_18:                              # %if.end48
	movl	$1483, %edi             # imm = 0x5CB
	callq	_StraightTaint_log
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB48_20
# BB#19:                                # %if.then50
	movl	$1484, %edi             # imm = 0x5CC
	callq	_StraightTaint_log
	movq	536(%r12), %rcx
	movq	544(%r12), %r8
	movl	$1, %eax
	subq	%rcx, %rax
	addq	%r8, %rax
	movq	%rax, (%rsp)
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str93, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	2016(%rsp), %r9
	callq	my_snprintf
	jmp	.LBB48_22
.LBB48_20:                              # %if.else59
	movl	$1485, %edi             # imm = 0x5CD
	callq	_StraightTaint_log
	movq	2016(%rsp), %rbp
	testq	%rbp, %rbp
	js	.LBB48_23
# BB#21:                                # %if.then62
	movl	$1486, %edi             # imm = 0x5CE
	callq	_StraightTaint_log
	movq	%rbp, %rcx
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str94, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	my_snprintf
.LBB48_22:                              # %if.end67
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
.LBB48_23:                              # %if.end67
	movq	%rbx, %r14
	movq	%r15, %rbx
	movl	$1487, %edi             # imm = 0x5CF
	callq	_StraightTaint_log
	movq	8(%r12), %rbp
	movq	48(%rbp), %r15
	cmpb	$0, (%r15)
	je	.LBB48_25
# BB#24:                                # %if.then73
	movl	$1488, %edi             # imm = 0x5D0
	callq	_StraightTaint_log
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str95, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r15, %rcx
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
	movq	8(%r12), %rbp
.LBB48_25:                              # %if.end79
	movl	$1489, %edi             # imm = 0x5D1
	callq	_StraightTaint_log
	movslq	56(%rbp), %rbp
	testq	%rbp, %rbp
	movq	%rbx, %r15
	movq	%r14, %rbx
	js	.LBB48_27
# BB#26:                                # %if.then83
	movl	$1490, %edi             # imm = 0x5D2
	callq	_StraightTaint_log
	addq	1944(%rsp), %rbp
	movq	%rbp, 1936(%rsp)
	leaq	1936(%rsp), %rdi
	callq	gmtime
	leaq	1600(%rsp), %r14
	movl	$100, %esi
	movl	$.L.str89117, %edx
	movq	%r14, %rdi
	movq	%rax, %rcx
	callq	strftime
	movq	8(%r12), %rax
	movl	56(%rax), %ecx
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str96, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%r14, %r8
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%r12), %rdx
	addq	%r13, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%r12), %r13
	movq	%r13, 472(%r12)
.LBB48_27:                              # %if.end97
	movq	%rbx, %r14
	movl	$1491, %edi             # imm = 0x5D3
	callq	_StraightTaint_log
	movq	72(%rsp), %rbx          # 8-byte Reload
	cmpb	$0, (%rbx)
	je	.LBB48_29
# BB#28:                                # %if.then102
	movl	$1492, %edi             # imm = 0x5D4
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	addq	%rbp, %r13
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	httpd_realloc_str
	movq	368(%r12), %rdi
	addq	472(%r12), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memmove
	addq	472(%r12), %rbp
	movq	%rbp, 472(%r12)
	movq	%rbp, %r13
.LBB48_29:                              # %if.end103
	movl	$1493, %edi             # imm = 0x5D5
	callq	_StraightTaint_log
	addq	$2, %r13
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	httpd_realloc_str
	movq	368(%r12), %rax
	movq	472(%r12), %rcx
	movw	$2573, (%rax,%rcx)      # imm = 0xA0D
	addq	$2, 472(%r12)
.LBB48_30:                              # %if.end104
	movl	$1494, %edi             # imm = 0x5D6
	callq	_StraightTaint_log
	addq	$1960, %rsp             # imm = 0x7A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp662:
	.size	send_mime, .Ltmp662-send_mime
	.cfi_endproc

	.align	16, 0x90
	.type	auth_check2,@function
auth_check2:                            # @auth_check2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp670:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp671:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp672:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp673:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp674:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp675:
	.cfi_def_cfa_offset 56
	subq	$1176, %rsp             # imm = 0x498
.Ltmp676:
	.cfi_def_cfa_offset 1232
.Ltmp677:
	.cfi_offset %rbx, -56
.Ltmp678:
	.cfi_offset %r12, -48
.Ltmp679:
	.cfi_offset %r13, -40
.Ltmp680:
	.cfi_offset %r14, -32
.Ltmp681:
	.cfi_offset %r15, -24
.Ltmp682:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movl	$1495, %edi             # imm = 0x5D7
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	strlen
	leaq	11(%rax), %rdx
	movl	$auth_check2.authpath, %edi
	movl	$auth_check2.maxauthpath, %esi
	callq	httpd_realloc_str
	movq	auth_check2.authpath(%rip), %rdi
	movq	auth_check2.maxauthpath(%rip), %rsi
	xorl	%ebx, %ebx
	movl	$.L.str485, %edx
	movl	$.L.str80, %r8d
	xorl	%eax, %eax
	movq	%rbp, %rcx
	callq	my_snprintf
	movq	auth_check2.authpath(%rip), %rsi
	leaq	1032(%rsp), %rdx
	movl	$1, %edi
	callq	__xstat
	testl	%eax, %eax
	js	.LBB49_32
# BB#1:                                 # %if.end
	movl	$1496, %edi             # imm = 0x5D8
	callq	_StraightTaint_log
	movq	352(%r14), %rbx
	cmpb	$0, (%rbx)
	je	.LBB49_3
# BB#2:                                 # %lor.lhs.false
	movl	$1497, %edi             # imm = 0x5D9
	callq	_StraightTaint_log
	movl	$.L.str499, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB49_4
.LBB49_3:                               # %if.then10
	movl	$1498, %edi             # imm = 0x5DA
	callq	_StraightTaint_log
	movq	%r14, %rdi
	movq	%rbp, %rsi
	jmp	.LBB49_43
.LBB49_4:                               # %if.end11
	movq	%rbp, (%rsp)            # 8-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movl	$1499, %edi             # imm = 0x5DB
	callq	_StraightTaint_log
	movb	6(%rbx), %r12b
	xorl	%r15d, %r15d
	testb	%r12b, %r12b
	je	.LBB49_20
# BB#5:                                 # %for.body.i.preheader
	addq	$7, %rbx
	xorl	%ebp, %ebp
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB49_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1500, %edi             # imm = 0x5DC
	callq	_StraightTaint_log
	movsbq	%r12b, %rax
	movl	b64_decode_table(,%rax,4), %r14d
	cmpl	$-1, %r14d
	jne	.LBB49_8
# BB#7:                                 #   in Loop: Header=BB49_6 Depth=1
	movl	%ebp, %r14d
	jmp	.LBB49_19
	.align	16, 0x90
.LBB49_8:                               # %if.then.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1501, %edi             # imm = 0x5DD
	callq	_StraightTaint_log
	movl	%r13d, %eax
	cmpl	$3, %r13d
	ja	.LBB49_19
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB49_6 Depth=1
	jmpq	*.LJTI49_0(,%rax,8)
.LBB49_10:                              # %sw.bb.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1502, %edi             # imm = 0x5DE
	callq	_StraightTaint_log
	movl	$1, %r13d
	jmp	.LBB49_19
.LBB49_11:                              # %sw.bb5.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1503, %edi             # imm = 0x5DF
	callq	_StraightTaint_log
	movl	$2, %r13d
	cmpl	$498, %r15d             # imm = 0x1F2
	jg	.LBB49_19
# BB#12:                                # %if.then9.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1504, %edi             # imm = 0x5E0
	callq	_StraightTaint_log
	movl	%r14d, %eax
	shrl	$4, %eax
	andl	$3, %eax
	shll	$2, %ebp
	orl	%eax, %ebp
	jmp	.LBB49_18
.LBB49_14:                              # %sw.bb14.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1505, %edi             # imm = 0x5E1
	callq	_StraightTaint_log
	movl	$3, %r13d
	cmpl	$498, %r15d             # imm = 0x1F2
	jg	.LBB49_19
# BB#15:                                # %if.then23.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1506, %edi             # imm = 0x5E2
	callq	_StraightTaint_log
	movl	%r14d, %eax
	shrl	$2, %eax
	andl	$15, %eax
	shll	$4, %ebp
	orl	%eax, %ebp
	jmp	.LBB49_18
.LBB49_16:                              # %sw.bb29.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1507, %edi             # imm = 0x5E3
	callq	_StraightTaint_log
	xorl	%r13d, %r13d
	cmpl	$498, %r15d             # imm = 0x1F2
	jg	.LBB49_19
# BB#17:                                # %if.then36.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1508, %edi             # imm = 0x5E4
	callq	_StraightTaint_log
	shll	$6, %ebp
	orl	%r14d, %ebp
.LBB49_18:                              # %for.inc.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movslq	%r15d, %rax
	incl	%r15d
	movb	%bpl, 528(%rsp,%rax)
	.align	16, 0x90
.LBB49_19:                              # %for.inc.i
                                        #   in Loop: Header=BB49_6 Depth=1
	movl	$1509, %edi             # imm = 0x5E5
	callq	_StraightTaint_log
	movb	(%rbx), %r12b
	incq	%rbx
	testb	%r12b, %r12b
	movl	%r14d, %ebp
	jne	.LBB49_6
.LBB49_20:                              # %b64_decode.exit
	movl	$1510, %edi             # imm = 0x5E6
	callq	_StraightTaint_log
	movslq	%r15d, %rax
	movb	$0, 528(%rsp,%rax)
	leaq	528(%rsp), %rdi
	movl	$58, %esi
	callq	strchr
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB49_21
# BB#23:                                # %if.end21
	movl	$1512, %edi             # imm = 0x5E8
	callq	_StraightTaint_log
	movb	$0, (%r15)
	incq	%r15
	movl	$58, %esi
	movq	%r15, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB49_25
# BB#24:                                # %if.then25
	movl	$1513, %edi             # imm = 0x5E9
	callq	_StraightTaint_log
	movb	$0, (%rbx)
.LBB49_25:                              # %if.end26
	movl	$1514, %edi             # imm = 0x5EA
	callq	_StraightTaint_log
	cmpq	$0, auth_check2.maxprevauthpath(%rip)
	movq	auth_check2.authpath(%rip), %rbx
	je	.LBB49_34
# BB#26:                                # %land.lhs.true
	movl	$1515, %edi             # imm = 0x5EB
	callq	_StraightTaint_log
	movq	auth_check2.prevauthpath(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB49_34
# BB#27:                                # %land.lhs.true32
	movl	$1516, %edi             # imm = 0x5EC
	callq	_StraightTaint_log
	movq	1120(%rsp), %rax
	cmpq	auth_check2.prevmtime(%rip), %rax
	jne	.LBB49_34
# BB#28:                                # %land.lhs.true35
	movl	$1517, %edi             # imm = 0x5ED
	callq	_StraightTaint_log
	movq	auth_check2.prevuser(%rip), %rsi
	leaq	528(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_29
.LBB49_34:                              # %if.end61
	movl	$1521, %edi             # imm = 0x5F1
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	movl	$.L.str500, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB49_49
# BB#35:                                # %while.cond.preheader
	movl	$1522, %edi             # imm = 0x5F2
	callq	_StraightTaint_log
	leaq	16(%rsp), %rdi
	movl	$500, %esi              # imm = 0x1F4
	movq	%r13, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB49_41
# BB#36:
	leaq	16(%rsp), %rbp
	movabsq	$-4294967296, %r14      # imm = 0xFFFFFFFF00000000
	leaq	528(%rsp), %r12
	.align	16, 0x90
.LBB49_37:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1524, %edi             # imm = 0x5F4
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %rbx
	shlq	$32, %rbx
	addq	%r14, %rbx
	sarq	$32, %rbx
	movzbl	16(%rsp,%rbx), %eax
	cmpl	$10, %eax
	jne	.LBB49_39
# BB#38:                                # %if.then80
                                        #   in Loop: Header=BB49_37 Depth=1
	movl	$1525, %edi             # imm = 0x5F5
	callq	_StraightTaint_log
	movb	$0, 16(%rsp,%rbx)
.LBB49_39:                              # %if.end84
                                        #   in Loop: Header=BB49_37 Depth=1
	movl	$1526, %edi             # imm = 0x5F6
	callq	_StraightTaint_log
	movl	$58, %esi
	movq	%rbp, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB49_40
# BB#45:                                # %if.end90
                                        #   in Loop: Header=BB49_37 Depth=1
	movl	$1528, %edi             # imm = 0x5F8
	callq	_StraightTaint_log
	movb	$0, (%rbx)
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_46
.LBB49_40:                              # %while.cond.backedge
                                        #   in Loop: Header=BB49_37 Depth=1
	movl	$1527, %edi             # imm = 0x5F7
	callq	_StraightTaint_log
	movl	$500, %esi              # imm = 0x1F4
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB49_37
.LBB49_41:                              # %while.end
	movl	$1532, %edi             # imm = 0x5FC
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	fclose
	jmp	.LBB49_42
.LBB49_21:                              # %if.then20
	movl	$1511, %edi             # imm = 0x5E7
	callq	_StraightTaint_log
.LBB49_42:                              # %cleanup
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
.LBB49_43:                              # %cleanup
	callq	send_authenticate
	movl	$-1, %ebx
.LBB49_32:                              # %cleanup
	movl	$1533, %edi             # imm = 0x5FD
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB49_49:                              # %if.then65
	movl	$1523, %edi             # imm = 0x5F3
	callq	_StraightTaint_log
	movq	8(%rsp), %rbx           # 8-byte Reload
	leaq	16(%rbx), %rdi
	callq	httpd_ntoa
	movq	auth_check2.authpath(%rip), %rcx
	movl	$3, %edi
	movl	$.L.str501, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%rbx), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str502, %r8d
	movq	%rbx, %rdi
	callq	httpd_send_err
	movl	$-1, %ebx
	jmp	.LBB49_32
.LBB49_46:                              # %if.then102
	incq	%rbx
	movl	$1529, %edi             # imm = 0x5F9
	callq	_StraightTaint_log
	movq	%r13, %rdi
	callq	fclose
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	crypt
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_47
# BB#48:                                # %if.else131
	movl	$1531, %edi             # imm = 0x5FB
	callq	_StraightTaint_log
	jmp	.LBB49_42
.LBB49_47:                              # %if.then113
	movl	$1530, %edi             # imm = 0x5FA
	callq	_StraightTaint_log
	movq	8(%rsp), %rbp           # 8-byte Reload
	leaq	360(%rbp), %r14
	leaq	456(%rbp), %r15
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	360(%rbp), %rdi
	movq	%r12, %rsi
	callq	strcpy
	movq	auth_check2.authpath(%rip), %rdi
	callq	strlen
	movl	$auth_check2.prevauthpath, %edi
	movl	$auth_check2.maxprevauthpath, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	auth_check2.prevauthpath(%rip), %rdi
	movq	auth_check2.authpath(%rip), %rsi
	callq	strcpy
	movq	1120(%rsp), %rax
	movq	%rax, auth_check2.prevmtime(%rip)
	leaq	528(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	movl	$auth_check2.prevuser, %edi
	movl	$auth_check2.maxprevuser, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	auth_check2.prevuser(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	movl	$auth_check2.prevcryp, %edi
	movl	$auth_check2.maxprevcryp, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	auth_check2.prevcryp(%rip), %rdi
	movq	%rbx, %rsi
	jmp	.LBB49_31
.LBB49_29:                              # %if.then45
	movl	$1518, %edi             # imm = 0x5EE
	callq	_StraightTaint_log
	movq	auth_check2.prevcryp(%rip), %rsi
	movq	%r15, %rdi
	callq	crypt
	movq	auth_check2.prevcryp(%rip), %rsi
	movq	%rax, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_30
# BB#33:                                # %if.else
	movl	$1520, %edi             # imm = 0x5F0
	callq	_StraightTaint_log
	jmp	.LBB49_42
.LBB49_30:                              # %if.then55
	movl	$1519, %edi             # imm = 0x5EF
	callq	_StraightTaint_log
	movq	8(%rsp), %rbx           # 8-byte Reload
	leaq	360(%rbx), %r14
	leaq	456(%rbx), %rbp
	leaq	528(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	360(%rbx), %rdi
	movq	%r15, %rsi
.LBB49_31:                              # %cleanup
	callq	strcpy
	movl	$1, %ebx
	jmp	.LBB49_32
.Ltmp683:
	.size	auth_check2, .Ltmp683-auth_check2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI49_0:
	.quad	.LBB49_10
	.quad	.LBB49_11
	.quad	.LBB49_14
	.quad	.LBB49_16

	.text
	.align	16, 0x90
	.type	check_referer,@function
check_referer:                          # @check_referer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp691:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp692:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp693:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp694:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp695:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp696:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp697:
	.cfi_def_cfa_offset 80
.Ltmp698:
	.cfi_offset %rbx, -56
.Ltmp699:
	.cfi_offset %r12, -48
.Ltmp700:
	.cfi_offset %r13, -40
.Ltmp701:
	.cfi_offset %r14, -32
.Ltmp702:
	.cfi_offset %r15, -24
.Ltmp703:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movl	$1534, %edi             # imm = 0x5FE
	callq	_StraightTaint_log
	movq	8(%r15), %rbx
	movq	112(%rbx), %r12
	testq	%r12, %r12
	movl	$1, %r14d
	je	.LBB50_29
# BB#1:                                 # %if.end
	movl	$1535, %edi             # imm = 0x5FF
	callq	_StraightTaint_log
	movq	272(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB50_4
# BB#2:                                 # %lor.lhs.false.i
	movl	$1536, %edi             # imm = 0x600
	callq	_StraightTaint_log
	cmpb	$0, (%rbp)
	je	.LBB50_4
# BB#3:                                 # %lor.lhs.false5.i
	movl	$1537, %edi             # imm = 0x601
	callq	_StraightTaint_log
	movl	$.L.str498, %esi
	movq	%rbp, %rdi
	callq	strstr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB50_4
# BB#6:                                 # %if.end12.i
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	$1540, %edi             # imm = 0x604
	callq	_StraightTaint_log
	leaq	2(%rbp), %r14
	xorl	%ebx, %ebx
	movabsq	$288371113640067073, %r12 # imm = 0x400800000000001
	jmp	.LBB50_7
	.align	16, 0x90
.LBB50_9:                               # %for.inc.i
                                        #   in Loop: Header=BB50_7 Depth=1
	movl	$1542, %edi             # imm = 0x606
	callq	_StraightTaint_log
	incq	%rbx
.LBB50_7:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1541, %edi             # imm = 0x605
	callq	_StraightTaint_log
	movzbl	2(%rbp,%rbx), %eax
	cmpq	$58, %rax
	ja	.LBB50_9
# BB#8:                                 # %for.cond.i
                                        #   in Loop: Header=BB50_7 Depth=1
	btq	%rax, %r12
	jae	.LBB50_9
# BB#10:                                # %for.end.i
	movq	%r15, (%rsp)            # 8-byte Spill
	movl	$1543, %edi             # imm = 0x607
	callq	_StraightTaint_log
	leaq	2(%rbp,%rbx), %r15
	movq	%r15, %rdx
	subq	%r14, %rdx
	movl	$really_check_referer.refhost, %edi
	movl	$really_check_referer.refhost_size, %esi
	callq	httpd_realloc_str
	cmpq	%r15, %r14
	movq	really_check_referer.refhost(%rip), %r14
	jae	.LBB50_16
# BB#11:                                # %for.body26.lr.ph.i
	movl	$1544, %edi             # imm = 0x608
	callq	_StraightTaint_log
	xorl	%r12d, %r12d
	callq	__ctype_b_loc
	movq	%rax, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB50_12:                              # %for.body26.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %r13
	movl	$1545, %edi             # imm = 0x609
	callq	_StraightTaint_log
	movb	2(%rbp,%r12), %r15b
	movsbq	%r15b, %r14
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	testb	$1, 1(%rax,%r14,2)
	je	.LBB50_14
# BB#13:                                # %if.then32.i
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	$1546, %edi             # imm = 0x60A
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movb	(%rax,%r14,4), %r15b
.LBB50_14:                              # %for.inc39.i
                                        #   in Loop: Header=BB50_12 Depth=1
	movl	$1547, %edi             # imm = 0x60B
	callq	_StraightTaint_log
	leaq	1(%r12), %rax
	cmpq	%rax, %rbx
	movq	%r13, %r14
	movb	%r15b, (%r14,%r12)
	movq	%rax, %r12
	jne	.LBB50_12
# BB#15:                                # %for.end42.i.loopexit
	addq	%rax, %r14
.LBB50_16:                              # %for.end42.i
	movq	8(%rsp), %rbp           # 8-byte Reload
	movl	$1548, %edi             # imm = 0x60C
	callq	_StraightTaint_log
	movb	$0, (%r14)
	movq	120(%rbp), %rbx
	testq	%rbx, %rbx
	movq	(%rsp), %r15            # 8-byte Reload
	jne	.LBB50_22
# BB#17:                                # %if.else47.i
	movl	$1549, %edi             # imm = 0x60D
	callq	_StraightTaint_log
	cmpl	$0, 100(%rbp)
	je	.LBB50_18
# BB#20:                                # %if.else54.i
	movl	$1551, %edi             # imm = 0x60F
	callq	_StraightTaint_log
	movq	512(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB50_22
# BB#21:
	movl	$1, %r14d
	jmp	.LBB50_29
.LBB50_4:                               # %if.then.i
	movl	$1538, %edi             # imm = 0x602
	callq	_StraightTaint_log
	cmpl	$0, 128(%rbx)
	je	.LBB50_29
# BB#5:                                 # %land.lhs.true.i
	movl	$1539, %edi             # imm = 0x603
	callq	_StraightTaint_log
	movq	232(%r15), %rsi
	movq	%r12, %rdi
.LBB50_24:                              # %land.lhs.true63.i
	callq	match
	testl	%eax, %eax
	je	.LBB50_29
# BB#25:                                # %if.then1
	movl	$1554, %edi             # imm = 0x612
	callq	_StraightTaint_log
	movq	8(%r15), %rbp
	cmpl	$0, 100(%rbp)
	je	.LBB50_27
# BB#26:                                # %land.lhs.true
	movl	$1555, %edi             # imm = 0x613
	callq	_StraightTaint_log
	movq	512(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB50_28
.LBB50_27:                              # %if.else
	movl	$1556, %edi             # imm = 0x614
	callq	_StraightTaint_log
	movq	8(%rbp), %rbx
.LBB50_28:                              # %if.end8
	movl	$1557, %edi             # imm = 0x615
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	movl	$.L.str2669, %eax
	cmoveq	%rax, %rbx
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %r8
	movq	272(%r15), %r9
	xorl	%r14d, %r14d
	movl	$6, %edi
	movl	$.L.str496, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str497, %r8d
	movq	%r15, %rdi
	callq	httpd_send_err
	jmp	.LBB50_29
.LBB50_18:                              # %if.then49.i
	movl	$1550, %edi             # imm = 0x60E
	callq	_StraightTaint_log
	movq	8(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB50_19
.LBB50_22:                              # %if.end60.i
	movl	$1552, %edi             # imm = 0x610
	callq	_StraightTaint_log
	movq	really_check_referer.refhost(%rip), %rsi
	movq	%rbx, %rdi
	callq	match
	testl	%eax, %eax
	movl	$1, %r14d
	jne	.LBB50_29
# BB#23:                                # %land.lhs.true63.i
	movl	$1553, %edi             # imm = 0x611
	callq	_StraightTaint_log
	movq	112(%rbp), %rdi
	movq	232(%r15), %rsi
	jmp	.LBB50_24
.LBB50_19:
	movl	$1, %r14d
.LBB50_29:                              # %return
	movl	$1558, %edi             # imm = 0x616
	callq	_StraightTaint_log
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp704:
	.size	check_referer, .Ltmp704-check_referer
	.cfi_endproc

	.align	16, 0x90
	.type	name_compare,@function
name_compare:                           # @name_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp708:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp709:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp710:
	.cfi_def_cfa_offset 32
.Ltmp711:
	.cfi_offset %rbx, -24
.Ltmp712:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1559, %edi             # imm = 0x617
	callq	_StraightTaint_log
	movq	(%rbx), %rdi
	movq	(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcmp                  # TAILCALL
.Ltmp713:
	.size	name_compare, .Ltmp713-name_compare
	.cfi_endproc

	.align	16, 0x90
	.type	cgi_kill,@function
cgi_kill:                               # @cgi_kill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp717:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp718:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp719:
	.cfi_def_cfa_offset 32
.Ltmp720:
	.cfi_offset %rbx, -24
.Ltmp721:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1560, %edi             # imm = 0x618
	callq	_StraightTaint_log
	movl	$2, %esi
	movl	%ebx, %edi
	callq	kill
	testl	%eax, %eax
	jne	.LBB52_2
# BB#1:                                 # %if.then
	movl	$1561, %edi             # imm = 0x619
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str433, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
	movl	$cgi_kill2, %esi
	movl	$5000, %ecx             # imm = 0x1388
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB52_3
.LBB52_2:                               # %if.end5
	movl	$1563, %edi             # imm = 0x61B
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB52_3:                               # %if.then4
	movl	$1562, %edi             # imm = 0x61A
	callq	_StraightTaint_log
	movl	$2, %edi
	movl	$.L.str434, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp722:
	.size	cgi_kill, .Ltmp722-cgi_kill
	.cfi_endproc

	.align	16, 0x90
	.type	build_env,@function
build_env:                              # @build_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp728:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp729:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp730:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp731:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp732:
	.cfi_def_cfa_offset 48
.Ltmp733:
	.cfi_offset %rbx, -40
.Ltmp734:
	.cfi_offset %r12, -32
.Ltmp735:
	.cfi_offset %r14, -24
.Ltmp736:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$1564, %edi             # imm = 0x61C
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	%r12, %rbx
	movq	build_env.maxbuf(%rip), %r12
	cmpq	%r12, %rbx
	jbe	.LBB53_2
# BB#1:                                 # %if.then
	movl	$1565, %edi             # imm = 0x61D
	callq	_StraightTaint_log
	movl	$build_env.buf, %edi
	movl	$build_env.maxbuf, %esi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	build_env.maxbuf(%rip), %r12
.LBB53_2:                               # %if.end
	movl	$1566, %edi             # imm = 0x61E
	callq	_StraightTaint_log
	movq	build_env.buf(%rip), %rdi
	xorl	%eax, %eax
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	my_snprintf
	movq	build_env.buf(%rip), %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB53_4
# BB#3:                                 # %if.end6
	movl	$1568, %edi             # imm = 0x620
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB53_4:                               # %if.then5
	movl	$1567, %edi             # imm = 0x61F
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str479, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp737:
	.size	build_env, .Ltmp737-build_env
	.cfi_endproc

	.align	16, 0x90
	.type	send_authenticate,@function
send_authenticate:                      # @send_authenticate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp741:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp742:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp743:
	.cfi_def_cfa_offset 32
.Ltmp744:
	.cfi_offset %rbx, -24
.Ltmp745:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1569, %edi             # imm = 0x621
	callq	_StraightTaint_log
	movq	%r14, %rdi
	callq	strlen
	leaq	35(%rax), %rdx
	movl	$send_authenticate.header, %edi
	movl	$send_authenticate.maxheader, %esi
	callq	httpd_realloc_str
	movq	send_authenticate.header(%rip), %rdi
	movq	send_authenticate.maxheader(%rip), %rsi
	movl	$.L.str503, %edx
	movl	$send_authenticate.headstr, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	callq	my_snprintf
	movq	send_authenticate.header(%rip), %rcx
	movq	208(%rbx), %r9
	movl	$401, %esi              # imm = 0x191
	movl	$.L.str446, %edx
	movl	$.L.str504, %r8d
	movq	%rbx, %rdi
	callq	httpd_send_err
	cmpl	$3, 180(%rbx)
	jne	.LBB54_2
# BB#1:                                 # %if.then
	movl	$1570, %edi             # imm = 0x622
	callq	_StraightTaint_log
	movl	$1, 556(%rbx)
.LBB54_2:                               # %if.end
	movl	$1571, %edi             # imm = 0x623
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp746:
	.size	send_authenticate, .Ltmp746-send_authenticate
	.cfi_endproc

	.align	16, 0x90
	.type	cgi_kill2,@function
cgi_kill2:                              # @cgi_kill2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp749:
	.cfi_def_cfa_offset 16
.Ltmp750:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1572, %edi             # imm = 0x624
	callq	_StraightTaint_log
	movl	$9, %esi
	movl	%ebx, %edi
	callq	kill
	testl	%eax, %eax
	jne	.LBB55_2
# BB#1:                                 # %if.then
	movl	$1573, %edi             # imm = 0x625
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str435, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
.LBB55_2:                               # %if.end
	movl	$1574, %edi             # imm = 0x626
	callq	_StraightTaint_log
	popq	%rbx
	ret
.Ltmp751:
	.size	cgi_kill2, .Ltmp751-cgi_kill2
	.cfi_endproc

	.globl	fdwatch_get_nfiles
	.align	16, 0x90
	.type	fdwatch_get_nfiles,@function
fdwatch_get_nfiles:                     # @fdwatch_get_nfiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp759:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp760:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp761:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp762:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp763:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp764:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp765:
	.cfi_def_cfa_offset 80
.Ltmp766:
	.cfi_offset %rbx, -56
.Ltmp767:
	.cfi_offset %r12, -48
.Ltmp768:
	.cfi_offset %r13, -40
.Ltmp769:
	.cfi_offset %r14, -32
.Ltmp770:
	.cfi_offset %r15, -24
.Ltmp771:
	.cfi_offset %rbp, -16
	movl	$1575, %edi             # imm = 0x627
	callq	_StraightTaint_log
	callq	getdtablesize
	movl	%eax, nfiles(%rip)
	leaq	8(%rsp), %rsi
	movl	$7, %edi
	callq	getrlimit
	testl	%eax, %eax
	jne	.LBB56_7
# BB#1:                                 # %if.then
	movl	$1576, %edi             # imm = 0x628
	callq	_StraightTaint_log
	movq	8(%rsp), %rbp
	movl	%ebp, nfiles(%rip)
	movq	16(%rsp), %rbx
	cmpq	$-1, %rbx
	je	.LBB56_2
# BB#3:                                 # %if.else
	movl	$1578, %edi             # imm = 0x62A
	callq	_StraightTaint_log
	cmpq	%rbp, %rbx
	jbe	.LBB56_5
# BB#4:                                 # %if.then10
	movl	$1579, %edi             # imm = 0x62B
	callq	_StraightTaint_log
	movq	%rbx, 8(%rsp)
	jmp	.LBB56_5
.LBB56_2:                               # %if.then4
	movl	$1577, %edi             # imm = 0x629
	callq	_StraightTaint_log
	movq	$8192, 8(%rsp)          # imm = 0x2000
.LBB56_5:                               # %if.end13
	movl	$1580, %edi             # imm = 0x62C
	callq	_StraightTaint_log
	leaq	8(%rsp), %rsi
	movl	$7, %edi
	callq	setrlimit
	testl	%eax, %eax
	je	.LBB56_6
.LBB56_7:                               # %if.end21thread-pre-split
	movl	$1582, %edi             # imm = 0x62E
	callq	_StraightTaint_log
	movl	nfiles(%rip), %ebx
.LBB56_8:                               # %if.end21
	movl	%ebx, %r12d
	movl	$1583, %edi             # imm = 0x62F
	callq	_StraightTaint_log
	movq	$0, nwatches(%rip)
	movslq	%ebx, %r15
	leaq	(,%r15,4), %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbx, fd_rw(%rip)
	shlq	$3, %r15
	movq	%r15, %rdi
	callq	malloc
	testq	%rbx, %rbx
	movq	%rax, fd_data(%rip)
	movl	$-1, %ebp
	je	.LBB56_22
# BB#9:                                 # %if.end21
	testq	%rax, %rax
	je	.LBB56_22
# BB#10:                                # %for.cond.preheader
	movl	$1584, %edi             # imm = 0x630
	callq	_StraightTaint_log
	testl	%r12d, %r12d
	jle	.LBB56_17
# BB#11:                                # %for.body.preheader
	movl	$1585, %edi             # imm = 0x631
	callq	_StraightTaint_log
	leal	-1(%r12), %eax
	incq	%rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	movabsq	$8589934584, %r13       # imm = 0x1FFFFFFF8
	andq	%rax, %r13
	je	.LBB56_15
# BB#12:                                # %vector.body.preheader
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB56_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1586, %edi             # imm = 0x632
	callq	_StraightTaint_log
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, (%rbx,%rbp,4)
	movdqu	%xmm0, 16(%rbx,%rbp,4)
	addq	$8, %rbp
	cmpq	%rbp, %r13
	jne	.LBB56_13
# BB#14:
	movq	%r13, %rbp
.LBB56_15:                              # %middle.block
	movl	$1587, %edi             # imm = 0x633
	callq	_StraightTaint_log
	cmpq	%rbp, (%rsp)            # 8-byte Folded Reload
	je	.LBB56_17
	.align	16, 0x90
.LBB56_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1588, %edi             # imm = 0x634
	callq	_StraightTaint_log
	movl	$-1, (%rbx,%rbp,4)
	incq	%rbp
	cmpl	%r12d, %ebp
	jl	.LBB56_16
.LBB56_17:                              # %for.end
	movl	$1589, %edi             # imm = 0x635
	callq	_StraightTaint_log
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbx, pollfds(%rip)
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, %r15
	movq	%r15, poll_fdidx(%rip)
	movq	%r14, %rdi
	callq	malloc
	testq	%rbx, %rbx
	sete	%cl
	testq	%r15, %r15
	sete	%dl
	orb	%cl, %dl
	testq	%rax, %rax
	sete	%cl
	testl	%r12d, %r12d
	movq	%rax, poll_rfdidx(%rip)
	setle	%al
	orb	%dl, %cl
	movl	$-1, %ebp
	cmovel	%r12d, %ebp
	jne	.LBB56_22
# BB#18:                                # %for.end
	testb	%al, %al
	jne	.LBB56_22
# BB#19:                                # %for.body.i.preheader
	movl	$1590, %edi             # imm = 0x636
	callq	_StraightTaint_log
	leal	-1(%r12), %eax
	leaq	4(,%rax,4), %rdx
	movl	$255, %esi
	movq	%r15, %rdi
	callq	memset
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB56_20:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1591, %edi             # imm = 0x637
	callq	_StraightTaint_log
	movl	$-1, (%rbx,%rbp,8)
	incq	%rbp
	cmpl	%ebp, %r12d
	jne	.LBB56_20
# BB#21:                                # %poll_init.exit.loopexit
	movl	%r12d, %ebp
.LBB56_22:                              # %poll_init.exit
	movl	$1592, %edi             # imm = 0x638
	callq	_StraightTaint_log
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB56_6:                               # %if.then17
	movl	$1581, %edi             # imm = 0x62D
	callq	_StraightTaint_log
	movl	8(%rsp), %ebx
	movl	%ebx, nfiles(%rip)
	jmp	.LBB56_8
.Ltmp772:
	.size	fdwatch_get_nfiles, .Ltmp772-fdwatch_get_nfiles
	.cfi_endproc

	.globl	fdwatch_add_fd
	.align	16, 0x90
	.type	fdwatch_add_fd,@function
fdwatch_add_fd:                         # @fdwatch_add_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp780:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp781:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp782:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp783:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp784:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp785:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp786:
	.cfi_def_cfa_offset 64
.Ltmp787:
	.cfi_offset %rbx, -56
.Ltmp788:
	.cfi_offset %r12, -48
.Ltmp789:
	.cfi_offset %r13, -40
.Ltmp790:
	.cfi_offset %r14, -32
.Ltmp791:
	.cfi_offset %r15, -24
.Ltmp792:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	$1593, %edi             # imm = 0x639
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	js	.LBB57_3
# BB#1:                                 # %entry
	movl	nfiles(%rip), %ebp
	cmpl	%ebx, %ebp
	jle	.LBB57_3
# BB#2:                                 # %lor.lhs.false2
	movl	$1594, %edi             # imm = 0x63A
	callq	_StraightTaint_log
	movslq	%ebx, %rax
	movq	fd_rw(%rip), %r12
	cmpl	$-1, (%r12,%rax,4)
	je	.LBB57_4
.LBB57_3:                               # %if.then
	movl	$1595, %edi             # imm = 0x63B
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str514, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
.LBB57_13:                              # %return
	movl	$1604, %edi             # imm = 0x644
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB57_4:                               # %if.end
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	$1596, %edi             # imm = 0x63C
	callq	_StraightTaint_log
	movslq	npoll_fds(%rip), %r15
	cmpl	%ebp, %r15d
	jge	.LBB57_5
# BB#6:                                 # %if.end.i
	movl	$1598, %edi             # imm = 0x63E
	callq	_StraightTaint_log
	movq	pollfds(%rip), %rbp
	movl	%ebx, (%rbp,%r15,8)
	testl	%r13d, %r13d
	jne	.LBB57_7
# BB#9:                                 # %sw.bb.i
	movl	$1600, %edi             # imm = 0x640
	callq	_StraightTaint_log
	movslq	npoll_fds(%rip), %rbx
	movw	$1, 4(%rbp,%rbx,8)
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB57_11
.LBB57_5:                               # %if.then.i
	movl	$1597, %edi             # imm = 0x63D
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str8522, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	fd_rw(%rip), %r12
	movq	(%rsp), %rbp            # 8-byte Reload
	jmp	.LBB57_12
.LBB57_7:                               # %if.end.i
	movq	%rbp, %r15
	cmpl	$1, %r13d
	movq	(%rsp), %rbp            # 8-byte Reload
	jne	.LBB57_8
# BB#10:                                # %sw.bb4.i
	movl	$1601, %edi             # imm = 0x641
	callq	_StraightTaint_log
	movslq	npoll_fds(%rip), %rbx
	movw	$4, 4(%r15,%rbx,8)
	jmp	.LBB57_11
.LBB57_8:                               # %if.end.sw.epilog_crit_edge.i
	movl	$1599, %edi             # imm = 0x63F
	callq	_StraightTaint_log
	movl	npoll_fds(%rip), %ebx
.LBB57_11:                              # %sw.epilog.i
	movl	$1602, %edi             # imm = 0x642
	callq	_StraightTaint_log
	movq	poll_fdidx(%rip), %rax
	movl	%ebx, (%rax,%rbp,4)
	incl	npoll_fds(%rip)
.LBB57_12:                              # %poll_add_fd.exit
	movl	$1603, %edi             # imm = 0x643
	callq	_StraightTaint_log
	movl	%r13d, (%r12,%rbp,4)
	movq	fd_data(%rip), %rax
	movq	%r14, (%rax,%rbp,8)
	jmp	.LBB57_13
.Ltmp793:
	.size	fdwatch_add_fd, .Ltmp793-fdwatch_add_fd
	.cfi_endproc

	.globl	fdwatch_del_fd
	.align	16, 0x90
	.type	fdwatch_del_fd,@function
fdwatch_del_fd:                         # @fdwatch_del_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp798:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp799:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp800:
	.cfi_def_cfa_offset 32
.Ltmp801:
	.cfi_offset %rbx, -32
.Ltmp802:
	.cfi_offset %r14, -24
.Ltmp803:
	.cfi_offset %rbp, -16
	movl	%edi, %ebx
	movl	$1605, %edi             # imm = 0x645
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	js	.LBB58_3
# BB#1:                                 # %entry
	movl	nfiles(%rip), %ebp
	cmpl	%ebx, %ebp
	jle	.LBB58_3
# BB#2:                                 # %lor.lhs.false2
	movl	$1606, %edi             # imm = 0x646
	callq	_StraightTaint_log
	movslq	%ebx, %r14
	movq	fd_rw(%rip), %rax
	cmpl	$-1, (%rax,%r14,4)
	je	.LBB58_3
# BB#4:                                 # %if.end
	movl	$1608, %edi             # imm = 0x648
	callq	_StraightTaint_log
	movq	poll_fdidx(%rip), %rax
	movslq	(%rax,%r14,4), %rbx
	testq	%rbx, %rbx
	js	.LBB58_6
# BB#5:                                 # %if.end
	cmpl	%ebp, %ebx
	jge	.LBB58_6
# BB#7:                                 # %if.end.i
	movl	$1610, %edi             # imm = 0x64A
	callq	_StraightTaint_log
	movl	npoll_fds(%rip), %eax
	decl	%eax
	movl	%eax, npoll_fds(%rip)
	movq	pollfds(%rip), %rcx
	cltq
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%rcx,%rbx,8)
	movq	pollfds(%rip), %rax
	movslq	(%rax,%rbx,8), %rcx
	movq	poll_fdidx(%rip), %rdx
	movl	%ebx, (%rdx,%rcx,4)
	movslq	npoll_fds(%rip), %rcx
	movl	$-1, (%rax,%rcx,8)
	movl	$-1, (%rdx,%r14,4)
	jmp	.LBB58_8
.LBB58_3:                               # %if.then
	movl	$1607, %edi             # imm = 0x647
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str1515, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
.LBB58_9:                               # %return
	movl	$1612, %edi             # imm = 0x64C
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB58_6:                               # %if.then.i
	movl	$1609, %edi             # imm = 0x649
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str7521, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
.LBB58_8:                               # %poll_del_fd.exit
	movl	$1611, %edi             # imm = 0x64B
	callq	_StraightTaint_log
	movq	fd_rw(%rip), %rax
	movl	$-1, (%rax,%r14,4)
	movq	fd_data(%rip), %rax
	movq	$0, (%rax,%r14,8)
	jmp	.LBB58_9
.Ltmp804:
	.size	fdwatch_del_fd, .Ltmp804-fdwatch_del_fd
	.cfi_endproc

	.globl	fdwatch
	.align	16, 0x90
	.type	fdwatch,@function
fdwatch:                                # @fdwatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp812:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp813:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp814:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp815:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp816:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp817:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp818:
	.cfi_def_cfa_offset 64
.Ltmp819:
	.cfi_offset %rbx, -56
.Ltmp820:
	.cfi_offset %r12, -48
.Ltmp821:
	.cfi_offset %r13, -40
.Ltmp822:
	.cfi_offset %r14, -32
.Ltmp823:
	.cfi_offset %r15, -24
.Ltmp824:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1613, %edi             # imm = 0x64D
	callq	_StraightTaint_log
	incq	nwatches(%rip)
	movq	pollfds(%rip), %rdi
	movslq	npoll_fds(%rip), %rsi
	movl	%ebx, %edx
	callq	poll
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jle	.LBB59_1
# BB#2:                                 # %for.cond.preheader.i
	movl	$1614, %edi             # imm = 0x64E
	callq	_StraightTaint_log
	movl	npoll_fds(%rip), %r13d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jle	.LBB59_10
# BB#3:                                 # %for.body.lr.ph.i
	movl	$1615, %edi             # imm = 0x64F
	callq	_StraightTaint_log
	movq	pollfds(%rip), %r15
	xorl	%ebx, %ebx
	movq	poll_rfdidx(%rip), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB59_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1616, %edi             # imm = 0x650
	callq	_StraightTaint_log
	testb	$61, 6(%r15,%rbx,8)
	jne	.LBB59_6
# BB#5:                                 #   in Loop: Header=BB59_4 Depth=1
	movl	%r12d, %ebp
	jmp	.LBB59_9
	.align	16, 0x90
.LBB59_6:                               # %if.then6.i
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	$1617, %edi             # imm = 0x651
	callq	_StraightTaint_log
	movl	(%r15,%rbx,8), %eax
	leal	1(%r12), %ebp
	cmpl	%r14d, %ebp
	movslq	%r12d, %rcx
	movq	(%rsp), %rdx            # 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
	je	.LBB59_7
# BB#8:                                 # %if.then6.for.inc_crit_edge.i
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	$1618, %edi             # imm = 0x652
	callq	_StraightTaint_log
	movl	npoll_fds(%rip), %r13d
.LBB59_9:                               # %for.inc.i
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	$1619, %edi             # imm = 0x653
	callq	_StraightTaint_log
	incq	%rbx
	cmpl	%r13d, %ebx
	movl	%ebp, %r12d
	jl	.LBB59_4
	jmp	.LBB59_10
.LBB59_1:
	movl	%r14d, %ebp
	jmp	.LBB59_10
.LBB59_7:
	movl	%r14d, %ebp
.LBB59_10:                              # %poll_watch.exit
	movl	$1620, %edi             # imm = 0x654
	callq	_StraightTaint_log
	movl	%ebp, nreturned(%rip)
	movl	$0, next_ridx(%rip)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp825:
	.size	fdwatch, .Ltmp825-fdwatch
	.cfi_endproc

	.globl	fdwatch_check_fd
	.align	16, 0x90
	.type	fdwatch_check_fd,@function
fdwatch_check_fd:                       # @fdwatch_check_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp831:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp832:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp833:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp834:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp835:
	.cfi_def_cfa_offset 48
.Ltmp836:
	.cfi_offset %rbx, -40
.Ltmp837:
	.cfi_offset %r14, -32
.Ltmp838:
	.cfi_offset %r15, -24
.Ltmp839:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$1621, %edi             # imm = 0x655
	callq	_StraightTaint_log
	testl	%ebp, %ebp
	js	.LBB60_3
# BB#1:                                 # %entry
	movl	nfiles(%rip), %ebx
	cmpl	%ebp, %ebx
	jle	.LBB60_3
# BB#2:                                 # %lor.lhs.false2
	movl	$1622, %edi             # imm = 0x656
	callq	_StraightTaint_log
	movslq	%ebp, %r15
	movq	fd_rw(%rip), %rax
	movl	(%rax,%r15,4), %r14d
	cmpl	$-1, %r14d
	je	.LBB60_3
# BB#4:                                 # %if.end
	movl	$1624, %edi             # imm = 0x658
	callq	_StraightTaint_log
	movq	poll_fdidx(%rip), %rax
	movslq	(%rax,%r15,4), %rbp
	testq	%rbp, %rbp
	js	.LBB60_6
# BB#5:                                 # %if.end
	cmpl	%ebx, %ebp
	jge	.LBB60_6
# BB#7:                                 # %if.end.i
	movl	$1626, %edi             # imm = 0x65A
	callq	_StraightTaint_log
	movq	pollfds(%rip), %rax
	movswl	6(%rax,%rbp,8), %ebp
	xorl	%ebx, %ebx
	testb	$8, %bpl
	jne	.LBB60_13
# BB#8:                                 # %if.end5.i
	movl	$1627, %edi             # imm = 0x65B
	callq	_StraightTaint_log
	cmpl	$1, %r14d
	jne	.LBB60_9
# BB#11:                                # %sw.bb13.i
	movl	$1629, %edi             # imm = 0x65D
	callq	_StraightTaint_log
	andl	$52, %ebp
	jmp	.LBB60_12
.LBB60_3:                               # %if.then
	movl	$1623, %edi             # imm = 0x657
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str2516, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
.LBB60_13:                              # %return
	movl	$1630, %edi             # imm = 0x65E
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB60_6:                               # %if.then.i
	movl	$1625, %edi             # imm = 0x659
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str6520, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
	jmp	.LBB60_13
.LBB60_9:                               # %if.end5.i
	testl	%r14d, %r14d
	jne	.LBB60_13
# BB#10:                                # %sw.bb.i
	movl	$1628, %edi             # imm = 0x65C
	callq	_StraightTaint_log
	andl	$49, %ebp
.LBB60_12:                              # %return
	movl	%ebp, %ebx
	jmp	.LBB60_13
.Ltmp840:
	.size	fdwatch_check_fd, .Ltmp840-fdwatch_check_fd
	.cfi_endproc

	.globl	fdwatch_get_next_client_data
	.align	16, 0x90
	.type	fdwatch_get_next_client_data,@function
fdwatch_get_next_client_data:           # @fdwatch_get_next_client_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp845:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp846:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp847:
	.cfi_def_cfa_offset 32
.Ltmp848:
	.cfi_offset %rbx, -32
.Ltmp849:
	.cfi_offset %r14, -24
.Ltmp850:
	.cfi_offset %rbp, -16
	movl	$1631, %edi             # imm = 0x65F
	callq	_StraightTaint_log
	movslq	next_ridx(%rip), %rbx
	cmpl	nreturned(%rip), %ebx
	movq	$-1, %r14
	jge	.LBB61_7
# BB#1:                                 # %if.end
	movl	$1632, %edi             # imm = 0x660
	callq	_StraightTaint_log
	leal	1(%rbx), %eax
	testl	%ebx, %ebx
	movl	%eax, next_ridx(%rip)
	js	.LBB61_3
# BB#2:                                 # %if.end
	movl	nfiles(%rip), %ebp
	cmpl	%ebx, %ebp
	jle	.LBB61_3
# BB#4:                                 # %poll_get_fd.exit
	movl	$1634, %edi             # imm = 0x662
	callq	_StraightTaint_log
	movq	poll_rfdidx(%rip), %rax
	movslq	(%rax,%rbx,4), %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	js	.LBB61_7
# BB#5:                                 # %poll_get_fd.exit
	cmpl	%ebp, %ebx
	jge	.LBB61_7
# BB#6:                                 # %if.end4
	movl	$1635, %edi             # imm = 0x663
	callq	_StraightTaint_log
	movq	fd_data(%rip), %rax
	movq	(%rax,%rbx,8), %r14
	jmp	.LBB61_7
.LBB61_3:                               # %poll_get_fd.exit.thread
	movl	$1633, %edi             # imm = 0x661
	callq	_StraightTaint_log
	xorl	%r14d, %r14d
	movl	$3, %edi
	movl	$.L.str5519, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	syslog
.LBB61_7:                               # %return
	movl	$1636, %edi             # imm = 0x664
	callq	_StraightTaint_log
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp851:
	.size	fdwatch_get_next_client_data, .Ltmp851-fdwatch_get_next_client_data
	.cfi_endproc

	.globl	fdwatch_logstats
	.align	16, 0x90
	.type	fdwatch_logstats,@function
fdwatch_logstats:                       # @fdwatch_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp854:
	.cfi_def_cfa_offset 16
.Ltmp855:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1637, %edi             # imm = 0x665
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	jle	.LBB62_2
# BB#1:                                 # %if.then
	movl	$1638, %edi             # imm = 0x666
	callq	_StraightTaint_log
	movq	nwatches(%rip), %rdx
	cvtsi2ssq	%rdx, %xmm0
	cvtsi2ssq	%rbx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$6, %edi
	movl	$.L.str3517, %esi
	movl	$.L.str4518, %ecx
	movb	$1, %al
	callq	syslog
.LBB62_2:                               # %if.end
	movl	$1639, %edi             # imm = 0x667
	callq	_StraightTaint_log
	movq	$0, nwatches(%rip)
	popq	%rbx
	ret
.Ltmp856:
	.size	fdwatch_logstats, .Ltmp856-fdwatch_logstats
	.cfi_endproc

	.globl	mmc_map
	.align	16, 0x90
	.type	mmc_map,@function
mmc_map:                                # @mmc_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp864:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp865:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp866:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp867:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp868:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp869:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp870:
	.cfi_def_cfa_offset 256
.Ltmp871:
	.cfi_offset %rbx, -56
.Ltmp872:
	.cfi_offset %r12, -48
.Ltmp873:
	.cfi_offset %r13, -40
.Ltmp874:
	.cfi_offset %r14, -32
.Ltmp875:
	.cfi_offset %r15, -24
.Ltmp876:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	$1640, %edi             # imm = 0x668
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	je	.LBB63_4
# BB#1:                                 # %if.then
	movl	$1641, %edi             # imm = 0x669
	callq	_StraightTaint_log
	leaq	56(%rsp), %rdi
	movl	$144, %edx
	movq	%rbx, %rsi
	callq	memcpy
	jmp	.LBB63_2
.LBB63_4:                               # %if.else
	movl	$1642, %edi             # imm = 0x66A
	callq	_StraightTaint_log
	leaq	56(%rsp), %rdx
	movl	$1, %edi
	movq	%rbp, %rsi
	callq	__xstat
	testl	%eax, %eax
	je	.LBB63_2
# BB#5:                                 # %if.then2
	movl	$1643, %edi             # imm = 0x66B
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str538, %esi
	jmp	.LBB63_6
.LBB63_2:                               # %if.end3
	movl	$1644, %edi             # imm = 0x66C
	callq	_StraightTaint_log
	testq	%r14, %r14
	je	.LBB63_7
# BB#3:                                 # %if.then5
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$1645, %edi             # imm = 0x66D
	callq	_StraightTaint_log
	movq	(%r14), %rax
	jmp	.LBB63_8
.LBB63_7:                               # %if.else6
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	$1646, %edi             # imm = 0x66E
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
.LBB63_8:                               # %if.end8
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$1647, %edi             # imm = 0x66F
	callq	_StraightTaint_log
	movq	hash_table(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB63_9
# BB#10:                                # %if.else.i
	movl	$1649, %edi             # imm = 0x671
	callq	_StraightTaint_log
	movl	hash_size(%rip), %ebx
	imull	$3, map_count(%rip), %eax
	cmpl	%eax, %ebx
	jge	.LBB63_29
# BB#11:                                # %if.else3.i
	movl	$1650, %edi             # imm = 0x672
	callq	_StraightTaint_log
	movq	%rbp, %rdi
	callq	free
	imull	$6, map_count(%rip), %ebp
	movl	hash_size(%rip), %ebx
	.align	16, 0x90
.LBB63_12:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1651, %edi             # imm = 0x673
	callq	_StraightTaint_log
	addl	%ebx, %ebx
	cmpl	%ebp, %ebx
	jl	.LBB63_12
# BB#13:                                # %do.end.i
	movl	$1652, %edi             # imm = 0x674
	callq	_StraightTaint_log
	movl	%ebx, hash_size(%rip)
	leal	-1(%rbx), %r12d
	jmp	.LBB63_14
.LBB63_9:                               # %if.then.i
	movl	$1648, %edi             # imm = 0x670
	callq	_StraightTaint_log
	movl	$1024, hash_size(%rip)  # imm = 0x400
	movl	$1023, %r12d            # imm = 0x3FF
	movl	$1024, %ebx             # imm = 0x400
.LBB63_14:                              # %if.end7.i
	movl	$1653, %edi             # imm = 0x675
	callq	_StraightTaint_log
	movl	%r12d, hash_mask(%rip)
	movslq	%ebx, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	movq	%r15, hash_table(%rip)
	je	.LBB63_27
# BB#15:                                # %for.cond.preheader.i
	movl	$1654, %edi             # imm = 0x676
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jle	.LBB63_19
# BB#16:                                # %for.body.i.preheader
	movl	$1655, %edi             # imm = 0x677
	callq	_StraightTaint_log
	movq	$0, (%r15)
	cmpl	$2, %ebx
	jl	.LBB63_19
# BB#17:                                # %for.body.for.body_crit_edge.i.preheader
	leal	-2(%rbx), %r14d
	xorl	%ebp, %ebp
	jmp	.LBB63_18
	.align	16, 0x90
.LBB63_71:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB63_18 Depth=1
	movl	$1658, %edi             # imm = 0x67A
	callq	_StraightTaint_log
	movq	hash_table(%rip), %r15
	incq	%rbp
.LBB63_18:                              # %for.body.for.body_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1657, %edi             # imm = 0x679
	callq	_StraightTaint_log
	movq	$0, 8(%r15,%rbp,8)
	cmpl	%ebp, %r14d
	jne	.LBB63_71
.LBB63_19:                              # %for.cond15.preheader.i
	movl	$1656, %edi             # imm = 0x678
	callq	_StraightTaint_log
	movq	maps(%rip), %r15
	testq	%r15, %r15
	jne	.LBB63_20
	jmp	.LBB63_29
	.align	16, 0x90
.LBB63_26:                              # %for.inc24.for.body18_crit_edge.i
                                        #   in Loop: Header=BB63_20 Depth=1
	movl	$1663, %edi             # imm = 0x67F
	callq	_StraightTaint_log
	movl	hash_mask(%rip), %r12d
	movl	hash_size(%rip), %ebx
.LBB63_20:                              # %for.body18.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_22 Depth 2
	movl	$1659, %edi             # imm = 0x67B
	callq	_StraightTaint_log
	movl	(%r15), %eax
	movl	$177573, %ecx           # imm = 0x2B5A5
	xorl	%ecx, %eax
	imull	$33, %eax, %eax
	xorl	8(%r15), %eax
	imull	$33, %eax, %eax
	xorl	16(%r15), %eax
	imull	$33, %eax, %r13d
	xorl	24(%r15), %r13d
	andl	%r12d, %r13d
	movq	hash_table(%rip), %rbp
	cmpq	$0, (%rbp,%r13,8)
	jne	.LBB63_21
# BB#72:                                #   in Loop: Header=BB63_20 Depth=1
	leaq	(%rbp,%r13,8), %rbp
	movl	%r13d, %ebx
	jmp	.LBB63_25
	.align	16, 0x90
.LBB63_21:                              #   in Loop: Header=BB63_20 Depth=1
	leal	-1(%rbx,%r13), %r14d
	andl	%r12d, %r14d
	movl	%r13d, %ebx
	.align	16, 0x90
.LBB63_22:                              # %if.end.i.i
                                        #   Parent Loop BB63_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1660, %edi             # imm = 0x67C
	callq	_StraightTaint_log
	cmpl	%r14d, %ebx
	je	.LBB63_27
# BB#23:                                # %for.inc.i.i
                                        #   in Loop: Header=BB63_22 Depth=2
	movl	$1661, %edi             # imm = 0x67D
	callq	_StraightTaint_log
	incl	%ebx
	andl	%r12d, %ebx
	cmpq	$0, (%rbp,%rbx,8)
	jne	.LBB63_22
# BB#24:                                #   in Loop: Header=BB63_20 Depth=1
	leaq	(%rbp,%rbx,8), %rbp
.LBB63_25:                              # %for.inc24.i
                                        #   in Loop: Header=BB63_20 Depth=1
	movl	$1662, %edi             # imm = 0x67E
	callq	_StraightTaint_log
	movq	%r15, (%rbp)
	movl	%r13d, 56(%r15)
	movl	%ebx, 60(%r15)
	movq	64(%r15), %r15
	testq	%r15, %r15
	jne	.LBB63_26
# BB#28:                                # %if.end12.loopexit
	movl	$1665, %edi             # imm = 0x681
	callq	_StraightTaint_log
	movl	hash_size(%rip), %ebx
.LBB63_29:                              # %if.end12
	movl	$1666, %edi             # imm = 0x682
	callq	_StraightTaint_log
	movq	56(%rsp), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rbp
	movq	%rbp, 8(%rsp)           # 8-byte Spill
                                        # kill: EAX<def> EAX<kill> RAX<kill>
	xorl	$177573, %eax           # imm = 0x2B5A5
	imull	$33, %eax, %eax
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	xorl	%eax, %ecx
	imull	$33, %ecx, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$33, %ecx, %eax
                                        # kill: EBP<def> EBP<kill> RBP<kill> RBP<def>
	xorl	%eax, %ebp
	movl	hash_mask(%rip), %r15d
	andl	%r15d, %ebp
	movq	hash_table(%rip), %r13
	movq	(%r13,%rbp,8), %r12
	testq	%r12, %r12
	je	.LBB63_38
# BB#30:
	leal	-1(%rbx,%rbp), %ebx
	andl	%r15d, %ebx
	movl	%ebp, %r14d
	.align	16, 0x90
.LBB63_31:                              # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1667, %edi             # imm = 0x683
	callq	_StraightTaint_log
	cmpl	%ebp, 56(%r12)
	jne	.LBB63_36
# BB#32:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1668, %edi             # imm = 0x684
	callq	_StraightTaint_log
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, (%r12)
	jne	.LBB63_36
# BB#33:                                # %land.lhs.true4.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1669, %edi             # imm = 0x685
	callq	_StraightTaint_log
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 8(%r12)
	jne	.LBB63_36
# BB#34:                                # %land.lhs.true7.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1670, %edi             # imm = 0x686
	callq	_StraightTaint_log
	movq	16(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 16(%r12)
	jne	.LBB63_36
# BB#35:                                # %land.lhs.true10.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1671, %edi             # imm = 0x687
	callq	_StraightTaint_log
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpq	%rax, 24(%r12)
	je	.LBB63_40
	.align	16, 0x90
.LBB63_36:                              # %if.end14.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1672, %edi             # imm = 0x688
	callq	_StraightTaint_log
	cmpl	%ebx, %r14d
	je	.LBB63_38
# BB#37:                                # %for.inc.i
                                        #   in Loop: Header=BB63_31 Depth=1
	movl	$1673, %edi             # imm = 0x689
	callq	_StraightTaint_log
	incl	%r14d
	andl	%r15d, %r14d
	movq	(%r13,%r14,8), %r12
	testq	%r12, %r12
	jne	.LBB63_31
	jmp	.LBB63_38
.LBB63_27:                              # %if.then11
	movl	$1664, %edi             # imm = 0x680
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str1539, %esi
	jmp	.LBB63_6
.LBB63_40:                              # %find_hash.exit
	movl	$1674, %edi             # imm = 0x68A
	callq	_StraightTaint_log
	testq	%r12, %r12
	je	.LBB63_38
# BB#41:                                # %if.then16
	movl	$1675, %edi             # imm = 0x68B
	callq	_StraightTaint_log
	incl	32(%r12)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%r12)
	movq	48(%r12), %rbp
	jmp	.LBB63_70
.LBB63_38:                              # %if.end17
	movl	$1676, %edi             # imm = 0x68C
	callq	_StraightTaint_log
	movl	$20149999, %edi         # imm = 0x13376EF
	xorl	%esi, %esi
	callq	kill
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	open
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB63_39
# BB#42:                                # %if.end21
	movl	$1678, %edi             # imm = 0x68E
	callq	_StraightTaint_log
	movq	free_maps(%rip), %r13
	testq	%r13, %r13
	je	.LBB63_44
# BB#43:                                # %if.then23
	movl	$1679, %edi             # imm = 0x68F
	callq	_StraightTaint_log
	movq	64(%r13), %rax
	movq	%rax, free_maps(%rip)
	decl	free_count(%rip)
	jmp	.LBB63_47
.LBB63_39:                              # %if.then20
	movl	$1677, %edi             # imm = 0x68D
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str2540, %esi
	jmp	.LBB63_6
.LBB63_44:                              # %if.else24
	movl	$1680, %edi             # imm = 0x690
	callq	_StraightTaint_log
	movl	$72, %edi
	callq	malloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB63_45
# BB#46:                                # %if.end29
	movl	$1682, %edi             # imm = 0x692
	callq	_StraightTaint_log
	incl	alloc_count(%rip)
.LBB63_47:                              # %if.end31
	movl	$1683, %edi             # imm = 0x693
	callq	_StraightTaint_log
	movq	64(%rsp), %rax
	movq	%rax, (%r13)
	movq	56(%rsp), %rax
	movq	%rax, 8(%r13)
	movq	104(%rsp), %r12
	testq	%r12, %r12
	movq	%r12, 16(%r13)
	movq	160(%rsp), %rax
	movq	%rax, 24(%r13)
	movl	$1, 32(%r13)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 40(%r13)
	je	.LBB63_48
# BB#52:                                # %if.else43
	movl	$1685, %edi             # imm = 0x695
	callq	_StraightTaint_log
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movq	%r12, %rsi
	movl	%r15d, %r8d
	callq	mmap
	cmpq	$-1, %rax
	movq	%rax, 48(%r13)
	jne	.LBB63_49
# BB#53:                                # %land.lhs.true
	movl	$1686, %edi             # imm = 0x696
	callq	_StraightTaint_log
	callq	__errno_location
	cmpl	$12, (%rax)
	jne	.LBB63_63
# BB#54:                                # %if.then51
	movl	$1687, %edi             # imm = 0x697
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str11549, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$maps, %r14d
	movq	maps(%rip), %rbx
	jmp	.LBB63_55
.LBB63_48:                              # %if.then41
	movl	$1684, %edi             # imm = 0x694
	callq	_StraightTaint_log
	movq	$1, 48(%r13)
.LBB63_49:                              # %if.end61
	movl	$1697, %edi             # imm = 0x6A1
	callq	_StraightTaint_log
	movl	%r15d, %edi
	callq	close
	movq	16(%r13), %r14
	movl	$177573, %eax           # imm = 0x2B5A5
	xorl	(%r13), %eax
	imull	$33, %eax, %eax
	xorl	8(%r13), %eax
	imull	$33, %eax, %eax
	movl	%r14d, %ecx
	xorl	%eax, %ecx
	imull	$33, %ecx, %r15d
	xorl	24(%r13), %r15d
	movl	hash_mask(%rip), %r12d
	andl	%r12d, %r15d
	movl	hash_size(%rip), %eax
	movq	hash_table(%rip), %rbx
	cmpq	$0, (%rbx,%r15,8)
	je	.LBB63_50
# BB#64:
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leal	-1(%rax,%r15), %r14d
	andl	%r12d, %r14d
	movl	%r15d, %ebp
	.align	16, 0x90
.LBB63_65:                              # %if.end.i143
                                        # =>This Inner Loop Header: Depth=1
	movl	$1698, %edi             # imm = 0x6A2
	callq	_StraightTaint_log
	cmpl	%r14d, %ebp
	je	.LBB63_68
# BB#66:                                # %for.inc.i147
                                        #   in Loop: Header=BB63_65 Depth=1
	movl	$1699, %edi             # imm = 0x6A3
	callq	_StraightTaint_log
	incl	%ebp
	andl	%r12d, %ebp
	cmpq	$0, (%rbx,%rbp,8)
	jne	.LBB63_65
# BB#67:
	leaq	(%rbx,%rbp,8), %rbx
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB63_51
.LBB63_50:
	leaq	(%rbx,%r15,8), %rbx
	movl	%r15d, %ebp
.LBB63_51:                              # %if.end67
	movl	$1701, %edi             # imm = 0x6A5
	callq	_StraightTaint_log
	movq	%r13, (%rbx)
	movl	%r15d, 56(%r13)
	movl	%ebp, 60(%r13)
	movq	maps(%rip), %rax
	movq	%rax, 64(%r13)
	movq	%r13, maps(%rip)
	incl	map_count(%rip)
	addq	%r14, mapped_bytes(%rip)
	movq	48(%r13), %rbp
	jmp	.LBB63_70
.LBB63_68:                              # %if.then65
	movl	$1700, %edi             # imm = 0x6A4
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str5543, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB63_69
.LBB63_45:                              # %if.then27
	movl	$1681, %edi             # imm = 0x691
	callq	_StraightTaint_log
	movl	%r15d, %edi
	callq	close
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str3541, %esi
.LBB63_6:                               # %cleanup
	xorl	%eax, %eax
	callq	syslog
.LBB63_70:                              # %cleanup
	movl	$1702, %edi             # imm = 0x6A6
	callq	_StraightTaint_log
	movq	%rbp, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB63_73:                              # %if.else.i127
                                        #   in Loop: Header=BB63_55 Depth=1
	movl	$1694, %edi             # imm = 0x69E
	callq	_StraightTaint_log
	movq	%rbx, %r14
	movq	64(%rbx), %rbx
	addq	$64, %r14
.LBB63_55:                              # %if.then51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_57 Depth 2
	testq	%rbx, %rbx
	je	.LBB63_62
# BB#56:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB63_55 Depth=1
	movl	$1688, %edi             # imm = 0x698
	callq	_StraightTaint_log
	.align	16, 0x90
.LBB63_57:                              # %for.body.i116
                                        #   Parent Loop BB63_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1689, %edi             # imm = 0x699
	callq	_StraightTaint_log
	cmpl	$0, 32(%rbx)
	jne	.LBB63_73
# BB#58:                                # %if.then.i119
                                        #   in Loop: Header=BB63_57 Depth=2
	movl	$1690, %edi             # imm = 0x69A
	callq	_StraightTaint_log
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB63_61
# BB#59:                                # %if.then.i.i
                                        #   in Loop: Header=BB63_57 Depth=2
	movl	$1691, %edi             # imm = 0x69B
	callq	_StraightTaint_log
	movq	48(%rbx), %rdi
	movq	%rbp, %rsi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB63_61
# BB#60:                                # %if.then3.i.i
                                        #   in Loop: Header=BB63_57 Depth=2
	movl	$1692, %edi             # imm = 0x69C
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB63_61:                              # %really_unmap.exit.i
                                        #   in Loop: Header=BB63_57 Depth=2
	movl	$1693, %edi             # imm = 0x69D
	callq	_StraightTaint_log
	movq	16(%rbx), %rax
	subq	%rax, mapped_bytes(%rip)
	movq	64(%rbx), %rax
	movq	%rax, (%r14)
	decl	map_count(%rip)
	movq	free_maps(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	%rbx, free_maps(%rip)
	incl	free_count(%rip)
	movslq	60(%rbx), %rax
	movq	hash_table(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB63_57
.LBB63_62:                              # %if.end54
	movl	$1695, %edi             # imm = 0x69F
	callq	_StraightTaint_log
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movq	%r12, %rsi
	movl	%r15d, %r8d
	callq	mmap
	cmpq	$-1, %rax
	movq	%rax, 48(%r13)
	jne	.LBB63_49
.LBB63_63:                              # %if.then57
	movl	$1696, %edi             # imm = 0x6A0
	callq	_StraightTaint_log
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str4542, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	%r15d, %edi
	callq	close
.LBB63_69:                              # %cleanup
	movq	%r13, %rdi
	callq	free
	decl	alloc_count(%rip)
	jmp	.LBB63_70
.Ltmp877:
	.size	mmc_map, .Ltmp877-mmc_map
	.cfi_endproc

	.globl	mmc_unmap
	.align	16, 0x90
	.type	mmc_unmap,@function
mmc_unmap:                              # @mmc_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp885:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp886:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp887:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp888:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp889:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp890:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp891:
	.cfi_def_cfa_offset 112
.Ltmp892:
	.cfi_offset %rbx, -56
.Ltmp893:
	.cfi_offset %r12, -48
.Ltmp894:
	.cfi_offset %r13, -40
.Ltmp895:
	.cfi_offset %r14, -32
.Ltmp896:
	.cfi_offset %r15, -24
.Ltmp897:
	.cfi_offset %rbp, -16
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	$1703, %edi             # imm = 0x6A7
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	je	.LBB64_12
# BB#1:                                 # %if.then
	movl	$1704, %edi             # imm = 0x6A8
	callq	_StraightTaint_log
	movq	(%rbx), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	48(%rbx), %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	104(%rbx), %r15
	movq	%r15, 8(%rsp)           # 8-byte Spill
                                        # kill: EAX<def> EAX<kill> RAX<kill>
	xorl	$177573, %eax           # imm = 0x2B5A5
	imull	$33, %eax, %eax
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	xorl	%eax, %ecx
	imull	$33, %ecx, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	imull	$33, %ecx, %eax
                                        # kill: R15D<def> R15D<kill> R15<kill> R15<def>
	xorl	%eax, %r15d
	movl	hash_mask(%rip), %ebp
	andl	%ebp, %r15d
	movl	hash_size(%rip), %eax
	movq	hash_table(%rip), %r12
	movq	(%r12,%r15,8), %rbx
	testq	%rbx, %rbx
	je	.LBB64_12
# BB#2:
	leal	-1(%rax,%r15), %r13d
	andl	%ebp, %r13d
	movl	%r15d, %r14d
	.align	16, 0x90
.LBB64_3:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1705, %edi             # imm = 0x6A9
	callq	_StraightTaint_log
	cmpl	%r15d, 56(%rbx)
	jne	.LBB64_8
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1706, %edi             # imm = 0x6AA
	callq	_StraightTaint_log
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, (%rbx)
	jne	.LBB64_8
# BB#5:                                 # %land.lhs.true4.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1707, %edi             # imm = 0x6AB
	callq	_StraightTaint_log
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 8(%rbx)
	jne	.LBB64_8
# BB#6:                                 # %land.lhs.true7.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1708, %edi             # imm = 0x6AC
	callq	_StraightTaint_log
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 16(%rbx)
	jne	.LBB64_8
# BB#7:                                 # %land.lhs.true10.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1709, %edi             # imm = 0x6AD
	callq	_StraightTaint_log
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpq	%rax, 24(%rbx)
	je	.LBB64_10
	.align	16, 0x90
.LBB64_8:                               # %if.end14.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1710, %edi             # imm = 0x6AE
	callq	_StraightTaint_log
	cmpl	%r13d, %r14d
	je	.LBB64_12
# BB#9:                                 # %for.inc.i
                                        #   in Loop: Header=BB64_3 Depth=1
	movl	$1711, %edi             # imm = 0x6AF
	callq	_StraightTaint_log
	incl	%r14d
	andl	%ebp, %r14d
	movq	(%r12,%r14,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB64_3
	jmp	.LBB64_12
.LBB64_10:                              # %find_hash.exit
	movl	$1712, %edi             # imm = 0x6B0
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	je	.LBB64_12
# BB#11:                                # %land.lhs.true
	movl	$1713, %edi             # imm = 0x6B1
	callq	_StraightTaint_log
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 48(%rbx)
	je	.LBB64_17
.LBB64_12:                              # %for.cond.preheader
	movl	$1714, %edi             # imm = 0x6B2
	callq	_StraightTaint_log
	movq	maps(%rip), %rbx
	testq	%rbx, %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
	je	.LBB64_13
	.align	16, 0x90
.LBB64_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1716, %edi             # imm = 0x6B4
	callq	_StraightTaint_log
	cmpq	%rbp, 48(%rbx)
	je	.LBB64_17
# BB#15:                                # %for.cond
                                        #   in Loop: Header=BB64_16 Depth=1
	movl	$1715, %edi             # imm = 0x6B3
	callq	_StraightTaint_log
	movq	64(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB64_16
.LBB64_13:                              # %if.then15
	movl	$1717, %edi             # imm = 0x6B5
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str6544, %esi
.LBB64_14:                              # %if.end28
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB64_23
.LBB64_17:                              # %if.else
	movl	$1718, %edi             # imm = 0x6B6
	callq	_StraightTaint_log
	movl	32(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB64_18
# BB#19:                                # %if.else18
	movl	$1720, %edi             # imm = 0x6B8
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, 32(%rbx)
	movq	16(%rsp), %rbp          # 8-byte Reload
	testq	%rbp, %rbp
	je	.LBB64_21
# BB#20:                                # %if.then21
	movl	$1721, %edi             # imm = 0x6B9
	callq	_StraightTaint_log
	movq	(%rbp), %rax
	jmp	.LBB64_22
.LBB64_18:                              # %if.then17
	movl	$1719, %edi             # imm = 0x6B7
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str7545, %esi
	jmp	.LBB64_14
.LBB64_21:                              # %if.else23
	movl	$1722, %edi             # imm = 0x6BA
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
.LBB64_22:                              # %if.end28
	movq	%rax, 40(%rbx)
.LBB64_23:                              # %if.end28
	movl	$1723, %edi             # imm = 0x6BB
	callq	_StraightTaint_log
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp898:
	.size	mmc_unmap, .Ltmp898-mmc_unmap
	.cfi_endproc

	.globl	mmc_cleanup
	.align	16, 0x90
	.type	mmc_cleanup,@function
mmc_cleanup:                            # @mmc_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp905:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp906:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp907:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp908:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp909:
	.cfi_def_cfa_offset 48
.Ltmp910:
	.cfi_offset %rbx, -48
.Ltmp911:
	.cfi_offset %r12, -40
.Ltmp912:
	.cfi_offset %r13, -32
.Ltmp913:
	.cfi_offset %r14, -24
.Ltmp914:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$1724, %edi             # imm = 0x6BC
	callq	_StraightTaint_log
	testq	%rbx, %rbx
	je	.LBB65_2
# BB#1:                                 # %if.then
	movl	$1725, %edi             # imm = 0x6BD
	callq	_StraightTaint_log
	movq	(%rbx), %r14
	jmp	.LBB65_3
.LBB65_2:                               # %if.else
	movl	$1726, %edi             # imm = 0x6BE
	callq	_StraightTaint_log
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r14
.LBB65_3:                               # %if.end
	movl	$1727, %edi             # imm = 0x6BF
	callq	_StraightTaint_log
	movl	$maps, %r15d
	movq	maps(%rip), %r12
	testq	%r12, %r12
	je	.LBB65_12
.LBB65_4:                               # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_5 Depth 2
	movl	$1728, %edi             # imm = 0x6C0
	callq	_StraightTaint_log
	movq	%r12, %r13
	.align	16, 0x90
.LBB65_5:                               # %for.body
                                        #   Parent Loop BB65_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1729, %edi             # imm = 0x6C1
	callq	_StraightTaint_log
	cmpl	$0, 32(%r13)
	jne	.LBB65_11
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$1730, %edi             # imm = 0x6C2
	callq	_StraightTaint_log
	movq	%r14, %rax
	subq	40(%r13), %rax
	cmpq	expire_age(%rip), %rax
	jl	.LBB65_11
# BB#7:                                 # %if.then4
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$1731, %edi             # imm = 0x6C3
	callq	_StraightTaint_log
	movq	16(%r13), %r12
	testq	%r12, %r12
	je	.LBB65_10
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$1732, %edi             # imm = 0x6C4
	callq	_StraightTaint_log
	movq	48(%r13), %rdi
	movq	%r12, %rsi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB65_10
# BB#9:                                 # %if.then3.i
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$1733, %edi             # imm = 0x6C5
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB65_10:                              # %really_unmap.exit
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$1734, %edi             # imm = 0x6C6
	callq	_StraightTaint_log
	movq	mapped_bytes(%rip), %rbx
	subq	16(%r13), %rbx
	movq	%rbx, mapped_bytes(%rip)
	movq	64(%r13), %rax
	movq	%rax, (%r15)
	decl	map_count(%rip)
	movq	free_maps(%rip), %rax
	movq	%rax, 64(%r13)
	movq	%r13, free_maps(%rip)
	incl	free_count(%rip)
	movslq	60(%r13), %rax
	movq	hash_table(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	(%r15), %r13
	testq	%r13, %r13
	jne	.LBB65_5
	jmp	.LBB65_13
	.align	16, 0x90
.LBB65_11:                              # %if.else5
                                        #   in Loop: Header=BB65_4 Depth=1
	movl	$1735, %edi             # imm = 0x6C7
	callq	_StraightTaint_log
	movq	64(%r13), %r12
	addq	$64, %r13
	testq	%r12, %r12
	movq	%r13, %r15
	jne	.LBB65_4
.LBB65_12:                              # %for.end.loopexit
	movl	$1736, %edi             # imm = 0x6C8
	callq	_StraightTaint_log
	movq	mapped_bytes(%rip), %rbx
.LBB65_13:                              # %for.end
	movl	$1737, %edi             # imm = 0x6C9
	callq	_StraightTaint_log
	cmpq	$1000000001, %rbx       # imm = 0x3B9ACA01
	jl	.LBB65_18
# BB#14:                                # %if.then8
	movl	$1738, %edi             # imm = 0x6CA
	callq	_StraightTaint_log
	movq	expire_age(%rip), %rbx
	addq	%rbx, %rbx
	cmpq	$183, %rbx
	movl	$60, %r14d
	jl	.LBB65_16
# BB#15:                                # %cond.true
	movl	$1739, %edi             # imm = 0x6CB
	callq	_StraightTaint_log
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %r14
	shrq	$63, %r14
	addq	%rdx, %r14
.LBB65_16:                              # %cond.end
	movl	$1740, %edi             # imm = 0x6CC
	jmp	.LBB65_17
.LBB65_18:                              # %if.else12
	movl	$1741, %edi             # imm = 0x6CD
	callq	_StraightTaint_log
	movl	map_count(%rip), %ebx
	cmpl	$1001, %ebx             # imm = 0x3E9
	jl	.LBB65_22
# BB#19:                                # %if.then14
	movl	$1742, %edi             # imm = 0x6CE
	callq	_StraightTaint_log
	movq	expire_age(%rip), %rbx
	addq	%rbx, %rbx
	cmpq	$183, %rbx
	movl	$60, %r14d
	jl	.LBB65_21
# BB#20:                                # %cond.true18
	movl	$1743, %edi             # imm = 0x6CF
	callq	_StraightTaint_log
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %r14
	shrq	$63, %r14
	addq	%rdx, %r14
.LBB65_21:                              # %cond.end22
	movl	$1744, %edi             # imm = 0x6D0
.LBB65_17:                              # %while.cond.preheader
	callq	_StraightTaint_log
	movq	%r14, expire_age(%rip)
.LBB65_26:                              # %while.cond.preheader
	movl	$1749, %edi             # imm = 0x6D5
	callq	_StraightTaint_log
	movl	free_count(%rip), %ebx
	cmpl	$101, %ebx
	jl	.LBB65_28
	.align	16, 0x90
.LBB65_27:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1750, %edi             # imm = 0x6D6
	callq	_StraightTaint_log
	movq	free_maps(%rip), %rdi
	movq	64(%rdi), %rax
	movq	%rax, free_maps(%rip)
	decl	%ebx
	movl	%ebx, free_count(%rip)
	callq	free
	decl	alloc_count(%rip)
	movl	free_count(%rip), %ebx
	cmpl	$100, %ebx
	jg	.LBB65_27
.LBB65_28:                              # %while.end
	movl	$1751, %edi             # imm = 0x6D7
	callq	_StraightTaint_log
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.LBB65_22:                              # %if.else24
	movl	$1745, %edi             # imm = 0x6D1
	callq	_StraightTaint_log
	cmpl	$499, %ebx              # imm = 0x1F3
	jg	.LBB65_26
# BB#23:                                # %if.then26
	movl	$1746, %edi             # imm = 0x6D2
	callq	_StraightTaint_log
	imulq	$5, expire_age(%rip), %r14
	cmpq	$7199, %r14             # imm = 0x1C1F
	movl	$1800, %ebx             # imm = 0x708
	jg	.LBB65_25
# BB#24:                                # %cond.true30
	movl	$1747, %edi             # imm = 0x6D3
	callq	_StraightTaint_log
	movq	%r14, %rbx
	sarq	$63, %rbx
	shrq	$62, %rbx
	addq	%r14, %rbx
	sarq	$2, %rbx
.LBB65_25:                              # %cond.end34
	movl	$1748, %edi             # imm = 0x6D4
	callq	_StraightTaint_log
	movq	%rbx, expire_age(%rip)
	jmp	.LBB65_26
.Ltmp915:
	.size	mmc_cleanup, .Ltmp915-mmc_cleanup
	.cfi_endproc

	.globl	mmc_destroy
	.align	16, 0x90
	.type	mmc_destroy,@function
mmc_destroy:                            # @mmc_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp919:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp920:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp921:
	.cfi_def_cfa_offset 32
.Ltmp922:
	.cfi_offset %rbx, -24
.Ltmp923:
	.cfi_offset %r14, -16
	movl	$1752, %edi             # imm = 0x6D8
	callq	_StraightTaint_log
	jmp	.LBB66_1
	.align	16, 0x90
.LBB66_9:                               # %really_unmap.exit
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$1757, %edi             # imm = 0x6DD
	callq	_StraightTaint_log
	movq	16(%rbx), %rax
	subq	%rax, mapped_bytes(%rip)
	movq	64(%rbx), %rax
	movq	%rax, maps(%rip)
	decl	map_count(%rip)
	movq	free_maps(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	%rbx, free_maps(%rip)
	incl	free_count(%rip)
	movslq	60(%rbx), %rax
	movq	hash_table(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
.LBB66_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	maps(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB66_2
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$1754, %edi             # imm = 0x6DA
	callq	_StraightTaint_log
	movq	16(%rbx), %r14
	testq	%r14, %r14
	je	.LBB66_9
# BB#7:                                 # %if.then.i
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$1755, %edi             # imm = 0x6DB
	callq	_StraightTaint_log
	movq	48(%rbx), %rdi
	movq	%r14, %rsi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB66_9
# BB#8:                                 # %if.then3.i
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$1756, %edi             # imm = 0x6DC
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB66_9
.LBB66_2:                               # %while.cond1.preheader
	movl	$1753, %edi             # imm = 0x6D9
	callq	_StraightTaint_log
	jmp	.LBB66_4
	.align	16, 0x90
.LBB66_3:                               # %while.body3
                                        #   in Loop: Header=BB66_4 Depth=1
	movl	$1758, %edi             # imm = 0x6DE
	callq	_StraightTaint_log
	movq	64(%rbx), %rax
	movq	%rax, free_maps(%rip)
	decl	free_count(%rip)
	movq	%rbx, %rdi
	callq	free
	decl	alloc_count(%rip)
.LBB66_4:                               # %while.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	free_maps(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB66_3
# BB#5:                                 # %while.end5
	movl	$1759, %edi             # imm = 0x6DF
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp924:
	.size	mmc_destroy, .Ltmp924-mmc_destroy
	.cfi_endproc

	.globl	mmc_logstats
	.align	16, 0x90
	.type	mmc_logstats,@function
mmc_logstats:                           # @mmc_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp926:
	.cfi_def_cfa_offset 32
	movl	$1760, %edi             # imm = 0x6E0
	callq	_StraightTaint_log
	movl	alloc_count(%rip), %edx
	movl	map_count(%rip), %ecx
	movq	mapped_bytes(%rip), %r8
	movl	free_count(%rip), %r9d
	movl	hash_size(%rip), %eax
	movq	expire_age(%rip), %rsi
	movq	%rsi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$6, %edi
	movl	$.L.str8546, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	free_count(%rip), %eax
	addl	map_count(%rip), %eax
	cmpl	alloc_count(%rip), %eax
	je	.LBB67_2
# BB#1:                                 # %if.then
	movl	$1761, %edi             # imm = 0x6E1
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str9547, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB67_2:                               # %if.end
	movl	$1762, %edi             # imm = 0x6E2
	callq	_StraightTaint_log
	addq	$24, %rsp
	ret
.Ltmp927:
	.size	mmc_logstats, .Ltmp927-mmc_logstats
	.cfi_endproc

	.globl	tmr_init
	.align	16, 0x90
	.type	tmr_init,@function
tmr_init:                               # @tmr_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp929:
	.cfi_def_cfa_offset 16
	movl	$1763, %edi             # imm = 0x6E3
	callq	_StraightTaint_log
	movl	$timers, %edi
	xorl	%esi, %esi
	movl	$536, %edx              # imm = 0x218
	callq	memset
	movq	$0, free_timers(%rip)
	movl	$0, free_count560(%rip)
	movl	$0, active_count(%rip)
	movl	$0, alloc_count561(%rip)
	popq	%rax
	ret
.Ltmp930:
	.size	tmr_init, .Ltmp930-tmr_init
	.cfi_endproc

	.globl	tmr_create
	.align	16, 0x90
	.type	tmr_create,@function
tmr_create:                             # @tmr_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp938:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp939:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp940:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp941:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp942:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp943:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp944:
	.cfi_def_cfa_offset 64
.Ltmp945:
	.cfi_offset %rbx, -56
.Ltmp946:
	.cfi_offset %r12, -48
.Ltmp947:
	.cfi_offset %r13, -40
.Ltmp948:
	.cfi_offset %r14, -32
.Ltmp949:
	.cfi_offset %r15, -24
.Ltmp950:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebx
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	$1764, %edi             # imm = 0x6E4
	callq	_StraightTaint_log
	movq	free_timers(%rip), %r12
	testq	%r12, %r12
	je	.LBB69_2
# BB#1:                                 # %if.then
	movl	$1765, %edi             # imm = 0x6E5
	callq	_StraightTaint_log
	movq	56(%r12), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	jmp	.LBB69_4
.LBB69_2:                               # %if.else
	movl	%ebx, 4(%rsp)           # 4-byte Spill
	movl	$1766, %edi             # imm = 0x6E6
	callq	_StraightTaint_log
	movl	$72, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%r12d, %r12d
	testq	%rbx, %rbx
	je	.LBB69_10
# BB#3:                                 # %if.end
	movl	$1767, %edi             # imm = 0x6E7
	callq	_StraightTaint_log
	incl	alloc_count561(%rip)
	movq	%rbx, %r12
	movl	4(%rsp), %ebx           # 4-byte Reload
.LBB69_4:                               # %if.end3
	movl	$1768, %edi             # imm = 0x6E8
	callq	_StraightTaint_log
	movq	%rbp, (%r12)
	movq	%r13, 8(%r12)
	movq	%r14, 16(%r12)
	movl	%ebx, 24(%r12)
	leaq	32(%r12), %rbx
	testq	%r15, %r15
	je	.LBB69_6
# BB#5:                                 # %if.then9
	movl	$1769, %edi             # imm = 0x6E9
	callq	_StraightTaint_log
	movups	(%r15), %xmm0
	movups	%xmm0, (%rbx)
	jmp	.LBB69_7
.LBB69_6:                               # %if.else10
	movl	$1770, %edi             # imm = 0x6EA
	callq	_StraightTaint_log
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gettimeofday
.LBB69_7:                               # %if.end13
	movl	$1771, %edi             # imm = 0x6EB
	callq	_StraightTaint_log
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %rbp
	movq	%rbp, %rax
	shrq	$63, %rax
	sarq	$7, %rbp
	addq	%rax, %rbp
	imulq	$1000, %rbp, %rax       # imm = 0x3E8
	addq	32(%r12), %rbp
	movq	%rbp, 32(%r12)
	subq	%rax, %r14
	imulq	$1000, %r14, %rbx       # imm = 0x3E8
	addq	40(%r12), %rbx
	cmpq	$1000000, %rbx          # imm = 0xF4240
	movq	%rbx, 40(%r12)
	jl	.LBB69_9
# BB#8:                                 # %if.then20
	movl	$1772, %edi             # imm = 0x6EC
	callq	_StraightTaint_log
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rbp
	movq	%rbp, 32(%r12)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rbx
	movq	%rbx, 40(%r12)
.LBB69_9:                               # %if.end30
	movl	$1773, %edi             # imm = 0x6ED
	callq	_StraightTaint_log
	xorl	%ebp, %ebx
	imulq	$128207979, %rbx, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %ebx
	movl	%ebx, 64(%r12)
	movq	%r12, %rdi
	callq	l_add
	incl	active_count(%rip)
.LBB69_10:                              # %return
	movl	$1774, %edi             # imm = 0x6EE
	callq	_StraightTaint_log
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp951:
	.size	tmr_create, .Ltmp951-tmr_create
	.cfi_endproc

	.globl	tmr_timeout
	.align	16, 0x90
	.type	tmr_timeout,@function
tmr_timeout:                            # @tmr_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp959:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp960:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp961:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp962:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp963:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp964:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp965:
	.cfi_def_cfa_offset 64
.Ltmp966:
	.cfi_offset %rbx, -56
.Ltmp967:
	.cfi_offset %r12, -48
.Ltmp968:
	.cfi_offset %r13, -40
.Ltmp969:
	.cfi_offset %r14, -32
.Ltmp970:
	.cfi_offset %r15, -24
.Ltmp971:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$1775, %edi             # imm = 0x6EF
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	movq	$-536, %r12             # imm = 0xFFFFFFFFFFFFFDE8
	movabsq	$2361183241434822607, %r13 # imm = 0x20C49BA5E353F7CF
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB70_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1776, %edi             # imm = 0x6F0
	callq	_StraightTaint_log
	movq	timers+536(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB70_5
# BB#2:                                 # %if.then.i
                                        #   in Loop: Header=BB70_1 Depth=1
	movl	$1777, %edi             # imm = 0x6F1
	callq	_StraightTaint_log
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rax
	subq	(%r14), %rcx
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	subq	8(%r14), %rax
	imulq	%r13
	movq	%rdx, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$7, %rbx
	addq	%rax, %rbx
	addq	%rcx, %rbx
	testl	%ebp, %ebp
	jne	.LBB70_4
# BB#3:                                 #   in Loop: Header=BB70_1 Depth=1
	movl	$1, %ebp
	movq	%rbx, %r15
	jmp	.LBB70_5
	.align	16, 0x90
.LBB70_4:                               # %if.else.i
                                        #   in Loop: Header=BB70_1 Depth=1
	movl	$1778, %edi             # imm = 0x6F2
	callq	_StraightTaint_log
	cmpq	%r15, %rbx
	cmovleq	%rbx, %r15
.LBB70_5:                               # %for.inc.i
                                        #   in Loop: Header=BB70_1 Depth=1
	movl	$1779, %edi             # imm = 0x6F3
	callq	_StraightTaint_log
	addq	$8, %r12
	jne	.LBB70_1
# BB#6:                                 # %for.end.i
	movl	$1780, %edi             # imm = 0x6F4
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	je	.LBB70_8
# BB#7:                                 # %if.end13.i
	movl	$1781, %edi             # imm = 0x6F5
	callq	_StraightTaint_log
	xorl	%ecx, %ecx
	testq	%r15, %r15
	cmovnsq	%r15, %rcx
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movq	%rdx, tmr_timeout.timeout(%rip)
	movl	$tmr_timeout.timeout, %ebx
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	movq	%rax, tmr_timeout.timeout+8(%rip)
.LBB70_8:                               # %return
	movl	$1782, %edi             # imm = 0x6F6
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp972:
	.size	tmr_timeout, .Ltmp972-tmr_timeout
	.cfi_endproc

	.globl	tmr_mstimeout
	.align	16, 0x90
	.type	tmr_mstimeout,@function
tmr_mstimeout:                          # @tmr_mstimeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp980:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp981:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp982:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp983:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp984:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp985:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp986:
	.cfi_def_cfa_offset 64
.Ltmp987:
	.cfi_offset %rbx, -56
.Ltmp988:
	.cfi_offset %r12, -48
.Ltmp989:
	.cfi_offset %r13, -40
.Ltmp990:
	.cfi_offset %r14, -32
.Ltmp991:
	.cfi_offset %r15, -24
.Ltmp992:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$1783, %edi             # imm = 0x6F7
	callq	_StraightTaint_log
	xorl	%r15d, %r15d
	movq	$-536, %r12             # imm = 0xFFFFFFFFFFFFFDE8
	movabsq	$2361183241434822607, %r13 # imm = 0x20C49BA5E353F7CF
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB71_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1784, %edi             # imm = 0x6F8
	callq	_StraightTaint_log
	movq	timers+536(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB71_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$1785, %edi             # imm = 0x6F9
	callq	_StraightTaint_log
	movq	32(%rbx), %rcx
	movq	40(%rbx), %rax
	subq	(%r14), %rcx
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	subq	8(%r14), %rax
	imulq	%r13
	movq	%rdx, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	sarq	$7, %rbx
	addq	%rax, %rbx
	addq	%rcx, %rbx
	testl	%ebp, %ebp
	jne	.LBB71_4
# BB#3:                                 #   in Loop: Header=BB71_1 Depth=1
	movl	$1, %ebp
	movq	%rbx, %r15
	jmp	.LBB71_5
	.align	16, 0x90
.LBB71_4:                               # %if.else
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$1786, %edi             # imm = 0x6FA
	callq	_StraightTaint_log
	cmpq	%r15, %rbx
	cmovleq	%rbx, %r15
.LBB71_5:                               # %for.inc
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$1787, %edi             # imm = 0x6FB
	callq	_StraightTaint_log
	addq	$8, %r12
	jne	.LBB71_1
# BB#6:                                 # %for.end
	movl	$1788, %edi             # imm = 0x6FC
	callq	_StraightTaint_log
	movq	$-1, %rbx
	testl	%ebp, %ebp
	je	.LBB71_8
# BB#7:                                 # %if.end13
	movl	$1789, %edi             # imm = 0x6FD
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	testq	%r15, %r15
	cmovnsq	%r15, %rbx
.LBB71_8:                               # %return
	movl	$1790, %edi             # imm = 0x6FE
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp993:
	.size	tmr_mstimeout, .Ltmp993-tmr_mstimeout
	.cfi_endproc

	.globl	tmr_run
	.align	16, 0x90
	.type	tmr_run,@function
tmr_run:                                # @tmr_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1001:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1002:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1003:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1004:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1005:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1006:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp1007:
	.cfi_def_cfa_offset 80
.Ltmp1008:
	.cfi_offset %rbx, -56
.Ltmp1009:
	.cfi_offset %r12, -48
.Ltmp1010:
	.cfi_offset %r13, -40
.Ltmp1011:
	.cfi_offset %r14, -32
.Ltmp1012:
	.cfi_offset %r15, -24
.Ltmp1013:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	$1791, %edi             # imm = 0x6FF
	callq	_StraightTaint_log
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB72_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_2 Depth 2
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	$1792, %edi             # imm = 0x700
	callq	_StraightTaint_log
	movq	timers(,%rbx,8), %r14
	testq	%r14, %r14
	je	.LBB72_15
	.align	16, 0x90
.LBB72_2:                               # %for.body3
                                        #   Parent Loop BB72_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$1793, %edi             # imm = 0x701
	callq	_StraightTaint_log
	movq	32(%r14), %rbp
	movq	(%r13), %rbx
	cmpq	%rbx, %rbp
	jg	.LBB72_15
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	56(%r14), %r15
	movl	$1794, %edi             # imm = 0x702
	callq	_StraightTaint_log
	cmpq	%rbx, %rbp
	jne	.LBB72_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1795, %edi             # imm = 0x703
	callq	_StraightTaint_log
	movq	40(%r14), %rax
	cmpq	8(%r13), %rax
	jg	.LBB72_15
.LBB72_5:                               # %if.end
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1796, %edi             # imm = 0x704
	callq	_StraightTaint_log
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	callq	*(%r14)
	cmpl	$0, 24(%r14)
	jne	.LBB72_6
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1806, %edi             # imm = 0x70E
	callq	_StraightTaint_log
	movq	48(%r14), %rbx
	movq	56(%r14), %rbp
	testq	%rbx, %rbx
	jne	.LBB72_19
# BB#18:                                # %if.then.i.i65
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1807, %edi             # imm = 0x70F
	callq	_StraightTaint_log
	movslq	64(%r14), %rax
	movq	%rbp, timers(,%rax,8)
	jmp	.LBB72_20
	.align	16, 0x90
.LBB72_6:                               # %if.then14
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	$1797, %edi             # imm = 0x705
	callq	_StraightTaint_log
	movq	16(%r14), %rcx
	movq	%rcx, %rax
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$63, %rax
	sarq	$7, %r15
	addq	%rax, %r15
	imulq	$1000, %r15, %rax       # imm = 0x3E8
	addq	32(%r14), %r15
	movq	%r15, 32(%r14)
	subq	%rax, %rcx
	imulq	$1000, %rcx, %r12       # imm = 0x3E8
	addq	40(%r14), %r12
	cmpq	$1000000, %r12          # imm = 0xF4240
	movq	%r12, 40(%r14)
	movq	%r13, %rbp
	jl	.LBB72_8
# BB#7:                                 # %if.then24
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1798, %edi             # imm = 0x706
	callq	_StraightTaint_log
	movq	%r12, %rax
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %r15
	movq	%r15, 32(%r14)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %r12
	movq	%r12, 40(%r14)
.LBB72_8:                               # %if.end34
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1799, %edi             # imm = 0x707
	callq	_StraightTaint_log
	movq	48(%r14), %rbx
	movq	56(%r14), %r13
	testq	%rbx, %rbx
	jne	.LBB72_10
# BB#9:                                 # %if.then.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1800, %edi             # imm = 0x708
	callq	_StraightTaint_log
	movslq	64(%r14), %rax
	movq	%r13, timers(,%rax,8)
	jmp	.LBB72_11
	.align	16, 0x90
.LBB72_19:                              # %if.else.i.i67
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1808, %edi             # imm = 0x710
	callq	_StraightTaint_log
	movq	%rbp, 56(%rbx)
.LBB72_20:                              # %if.end.i.i69
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	%r15, %rbp
	movl	$1809, %edi             # imm = 0x711
	callq	_StraightTaint_log
	movq	56(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB72_22
# BB#21:                                # %if.then6.i.i71
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1810, %edi             # imm = 0x712
	callq	_StraightTaint_log
	movq	48(%r14), %rax
	movq	%rax, 48(%rbx)
.LBB72_22:                              # %tmr_cancel.exit
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1811, %edi             # imm = 0x713
	callq	_StraightTaint_log
	decl	active_count(%rip)
	movq	free_timers(%rip), %rax
	movq	%rax, 56(%r14)
	movq	%r14, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%r14)
	jmp	.LBB72_14
	.align	16, 0x90
.LBB72_10:                              # %if.else.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1801, %edi             # imm = 0x709
	callq	_StraightTaint_log
	movq	%r13, 56(%rbx)
.LBB72_11:                              # %if.end.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1802, %edi             # imm = 0x70A
	callq	_StraightTaint_log
	movq	56(%r14), %rbx
	testq	%rbx, %rbx
	movq	%rbp, %r13
	je	.LBB72_13
# BB#12:                                # %if.then6.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1803, %edi             # imm = 0x70B
	callq	_StraightTaint_log
	movq	48(%r14), %rax
	movq	%rax, 48(%rbx)
.LBB72_13:                              # %l_resort.exit
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1804, %edi             # imm = 0x70C
	callq	_StraightTaint_log
	xorl	%r15d, %r12d
	imulq	$128207979, %r12, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %r12d
	movl	%r12d, 64(%r14)
	movq	%r14, %rdi
	callq	l_add
	movq	16(%rsp), %rbp          # 8-byte Reload
.LBB72_14:                              # %for.cond1.backedge
                                        #   in Loop: Header=BB72_2 Depth=2
	movl	$1805, %edi             # imm = 0x70D
	callq	_StraightTaint_log
	testq	%rbp, %rbp
	movq	%rbp, %r14
	jne	.LBB72_2
	.align	16, 0x90
.LBB72_15:                              # %for.inc36
                                        #   in Loop: Header=BB72_1 Depth=1
	movl	$1812, %edi             # imm = 0x714
	callq	_StraightTaint_log
	movq	8(%rsp), %rbx           # 8-byte Reload
	incq	%rbx
	cmpq	$67, %rbx
	jne	.LBB72_1
# BB#16:                                # %for.end37
	movl	$1813, %edi             # imm = 0x715
	callq	_StraightTaint_log
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp1014:
	.size	tmr_run, .Ltmp1014-tmr_run
	.cfi_endproc

	.globl	tmr_cancel
	.align	16, 0x90
	.type	tmr_cancel,@function
tmr_cancel:                             # @tmr_cancel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1019:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1020:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp1021:
	.cfi_def_cfa_offset 32
.Ltmp1022:
	.cfi_offset %rbx, -32
.Ltmp1023:
	.cfi_offset %r14, -24
.Ltmp1024:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$1814, %edi             # imm = 0x716
	callq	_StraightTaint_log
	movq	48(%rbx), %r15
	movq	56(%rbx), %r14
	testq	%r15, %r15
	je	.LBB73_1
# BB#2:                                 # %if.else.i
	movl	$1816, %edi             # imm = 0x718
	callq	_StraightTaint_log
	movq	%r14, 56(%r15)
	jmp	.LBB73_3
.LBB73_1:                               # %if.then.i
	movl	$1815, %edi             # imm = 0x717
	callq	_StraightTaint_log
	movslq	64(%rbx), %rax
	movq	%r14, timers(,%rax,8)
.LBB73_3:                               # %if.end.i
	movl	$1817, %edi             # imm = 0x719
	callq	_StraightTaint_log
	movq	56(%rbx), %r14
	testq	%r14, %r14
	je	.LBB73_5
# BB#4:                                 # %if.then6.i
	movl	$1818, %edi             # imm = 0x71A
	callq	_StraightTaint_log
	movq	48(%rbx), %rax
	movq	%rax, 48(%r14)
.LBB73_5:                               # %l_remove.exit
	movl	$1819, %edi             # imm = 0x71B
	callq	_StraightTaint_log
	decl	active_count(%rip)
	movq	free_timers(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp1025:
	.size	tmr_cancel, .Ltmp1025-tmr_cancel
	.cfi_endproc

	.globl	tmr_reset
	.align	16, 0x90
	.type	tmr_reset,@function
tmr_reset:                              # @tmr_reset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1032:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1033:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp1034:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp1035:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp1036:
	.cfi_def_cfa_offset 48
.Ltmp1037:
	.cfi_offset %rbx, -48
.Ltmp1038:
	.cfi_offset %r12, -40
.Ltmp1039:
	.cfi_offset %r13, -32
.Ltmp1040:
	.cfi_offset %r14, -24
.Ltmp1041:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1820, %edi             # imm = 0x71C
	callq	_StraightTaint_log
	movups	(%rbx), %xmm0
	movups	%xmm0, 32(%r14)
	movq	16(%r14), %rcx
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %r15
	movq	%r15, %rax
	shrq	$63, %rax
	sarq	$7, %r15
	addq	%rax, %r15
	imulq	$1000, %r15, %rax       # imm = 0x3E8
	addq	32(%r14), %r15
	movq	%r15, 32(%r14)
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rbx       # imm = 0x3E8
	addq	40(%r14), %rbx
	cmpq	$1000000, %rbx          # imm = 0xF4240
	movq	%rbx, 40(%r14)
	jl	.LBB74_2
# BB#1:                                 # %if.then
	movl	$1821, %edi             # imm = 0x71D
	callq	_StraightTaint_log
	movabsq	$4835703278458516699, %rcx # imm = 0x431BDE82D7B634DB
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %r15
	movq	%r15, 32(%r14)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rbx
	movq	%rbx, 40(%r14)
.LBB74_2:                               # %if.end
	movl	$1822, %edi             # imm = 0x71E
	callq	_StraightTaint_log
	movq	48(%r14), %r13
	movq	56(%r14), %r12
	testq	%r13, %r13
	je	.LBB74_3
# BB#4:                                 # %if.else.i.i
	movl	$1824, %edi             # imm = 0x720
	callq	_StraightTaint_log
	movq	%r12, 56(%r13)
	jmp	.LBB74_5
.LBB74_3:                               # %if.then.i.i
	movl	$1823, %edi             # imm = 0x71F
	callq	_StraightTaint_log
	movslq	64(%r14), %rax
	movq	%r12, timers(,%rax,8)
.LBB74_5:                               # %if.end.i.i
	movl	$1825, %edi             # imm = 0x721
	callq	_StraightTaint_log
	movq	56(%r14), %r12
	testq	%r12, %r12
	je	.LBB74_7
# BB#6:                                 # %if.then6.i.i
	movl	$1826, %edi             # imm = 0x722
	callq	_StraightTaint_log
	movq	48(%r14), %rax
	movq	%rax, 48(%r12)
.LBB74_7:                               # %l_resort.exit
	movl	$1827, %edi             # imm = 0x723
	callq	_StraightTaint_log
	xorl	%r15d, %ebx
	imulq	$128207979, %rbx, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %ebx
	movl	%ebx, 64(%r14)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	l_add                   # TAILCALL
.Ltmp1042:
	.size	tmr_reset, .Ltmp1042-tmr_reset
	.cfi_endproc

	.globl	tmr_cleanup
	.align	16, 0x90
	.type	tmr_cleanup,@function
tmr_cleanup:                            # @tmr_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1045:
	.cfi_def_cfa_offset 16
.Ltmp1046:
	.cfi_offset %rbx, -16
	movl	$1828, %edi             # imm = 0x724
	callq	_StraightTaint_log
	jmp	.LBB75_2
	.align	16, 0x90
.LBB75_1:                               # %while.body
                                        #   in Loop: Header=BB75_2 Depth=1
	movl	$1829, %edi             # imm = 0x725
	callq	_StraightTaint_log
	movq	56(%rbx), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	movq	%rbx, %rdi
	callq	free
	decl	alloc_count561(%rip)
.LBB75_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	free_timers(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB75_1
# BB#3:                                 # %while.end
	movl	$1830, %edi             # imm = 0x726
	callq	_StraightTaint_log
	popq	%rbx
	ret
.Ltmp1047:
	.size	tmr_cleanup, .Ltmp1047-tmr_cleanup
	.cfi_endproc

	.globl	tmr_destroy
	.align	16, 0x90
	.type	tmr_destroy,@function
tmr_destroy:                            # @tmr_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1053:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1054:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp1055:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp1056:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp1057:
	.cfi_def_cfa_offset 48
.Ltmp1058:
	.cfi_offset %rbx, -40
.Ltmp1059:
	.cfi_offset %r12, -32
.Ltmp1060:
	.cfi_offset %r14, -24
.Ltmp1061:
	.cfi_offset %r15, -16
	movl	$1831, %edi             # imm = 0x727
	callq	_StraightTaint_log
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB76_1:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB76_2 Depth 2
	movl	$1832, %edi             # imm = 0x728
	callq	_StraightTaint_log
	jmp	.LBB76_2
	.align	16, 0x90
.LBB76_8:                               # %tmr_cancel.exit
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1838, %edi             # imm = 0x72E
	callq	_StraightTaint_log
	decl	active_count(%rip)
	movq	free_timers(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%rbx)
.LBB76_2:                               # %while.cond.preheader
                                        #   Parent Loop BB76_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	timers(,%r14,8), %rbx
	testq	%rbx, %rbx
	je	.LBB76_9
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1833, %edi             # imm = 0x729
	callq	_StraightTaint_log
	movq	48(%rbx), %r12
	movq	56(%rbx), %r15
	testq	%r12, %r12
	jne	.LBB76_5
# BB#4:                                 # %if.then.i.i
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1834, %edi             # imm = 0x72A
	callq	_StraightTaint_log
	movslq	64(%rbx), %rax
	movq	%r15, timers(,%rax,8)
	jmp	.LBB76_6
	.align	16, 0x90
.LBB76_5:                               # %if.else.i.i
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1835, %edi             # imm = 0x72B
	callq	_StraightTaint_log
	movq	%r15, 56(%r12)
.LBB76_6:                               # %if.end.i.i
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1836, %edi             # imm = 0x72C
	callq	_StraightTaint_log
	movq	56(%rbx), %r15
	testq	%r15, %r15
	je	.LBB76_8
# BB#7:                                 # %if.then6.i.i
                                        #   in Loop: Header=BB76_2 Depth=2
	movl	$1837, %edi             # imm = 0x72D
	callq	_StraightTaint_log
	movq	48(%rbx), %rax
	movq	%rax, 48(%r15)
	jmp	.LBB76_8
	.align	16, 0x90
.LBB76_9:                               # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	movl	$1839, %edi             # imm = 0x72F
	callq	_StraightTaint_log
	incq	%r14
	cmpq	$67, %r14
	jne	.LBB76_1
# BB#10:                                # %for.end
	movl	$1840, %edi             # imm = 0x730
	callq	_StraightTaint_log
	jmp	.LBB76_12
	.align	16, 0x90
.LBB76_11:                              # %while.body.i
                                        #   in Loop: Header=BB76_12 Depth=1
	movl	$1841, %edi             # imm = 0x731
	callq	_StraightTaint_log
	movq	56(%rbx), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	movq	%rbx, %rdi
	callq	free
	decl	alloc_count561(%rip)
.LBB76_12:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	free_timers(%rip), %rbx
	testq	%rbx, %rbx
	jne	.LBB76_11
# BB#13:                                # %tmr_cleanup.exit
	movl	$1842, %edi             # imm = 0x732
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.Ltmp1062:
	.size	tmr_destroy, .Ltmp1062-tmr_destroy
	.cfi_endproc

	.globl	tmr_logstats
	.align	16, 0x90
	.type	tmr_logstats,@function
tmr_logstats:                           # @tmr_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1064:
	.cfi_def_cfa_offset 16
	movl	$1843, %edi             # imm = 0x733
	callq	_StraightTaint_log
	movl	alloc_count561(%rip), %edx
	movl	active_count(%rip), %ecx
	movl	free_count560(%rip), %r8d
	movl	$6, %edi
	movl	$.L.str562, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	free_count560(%rip), %eax
	addl	active_count(%rip), %eax
	cmpl	alloc_count561(%rip), %eax
	je	.LBB77_2
# BB#1:                                 # %if.then
	movl	$1844, %edi             # imm = 0x734
	callq	_StraightTaint_log
	movl	$3, %edi
	movl	$.L.str1563, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB77_2:                               # %if.end
	movl	$1845, %edi             # imm = 0x735
	callq	_StraightTaint_log
	popq	%rax
	ret
.Ltmp1065:
	.size	tmr_logstats, .Ltmp1065-tmr_logstats
	.cfi_endproc

	.align	16, 0x90
	.type	l_add,@function
l_add:                                  # @l_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1073:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1074:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1075:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1076:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1077:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1078:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp1079:
	.cfi_def_cfa_offset 64
.Ltmp1080:
	.cfi_offset %rbx, -56
.Ltmp1081:
	.cfi_offset %r12, -48
.Ltmp1082:
	.cfi_offset %r13, -40
.Ltmp1083:
	.cfi_offset %r14, -32
.Ltmp1084:
	.cfi_offset %r15, -24
.Ltmp1085:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	$1846, %edi             # imm = 0x736
	callq	_StraightTaint_log
	movslq	64(%r14), %rbx
	movq	timers(,%rbx,8), %r13
	testq	%r13, %r13
	je	.LBB78_1
# BB#2:                                 # %if.else
	movl	$1848, %edi             # imm = 0x738
	callq	_StraightTaint_log
	movq	32(%r14), %r15
	movq	32(%r13), %rbp
	cmpq	%rbp, %r15
	jl	.LBB78_7
# BB#3:                                 # %lor.lhs.false
	movl	$1849, %edi             # imm = 0x739
	callq	_StraightTaint_log
	cmpq	%rbp, %r15
	jne	.LBB78_4
# BB#6:                                 # %land.lhs.true
	movl	$1852, %edi             # imm = 0x73C
	callq	_StraightTaint_log
	movq	40(%r14), %rax
	cmpq	40(%r13), %rax
	jle	.LBB78_7
.LBB78_4:                               # %for.cond.preheader
	movl	$1850, %edi             # imm = 0x73A
	callq	_StraightTaint_log
	leaq	56(%r13), %r12
	movq	56(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB78_5
# BB#8:                                 # %for.body.lr.ph
	movl	$1851, %edi             # imm = 0x73B
	callq	_StraightTaint_log
	.align	16, 0x90
.LBB78_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rbx
	movl	$1854, %edi             # imm = 0x73E
	callq	_StraightTaint_log
	movq	32(%rbx), %rbp
	cmpq	%rbp, %r15
	jl	.LBB78_15
# BB#10:                                # %lor.lhs.false29
                                        #   in Loop: Header=BB78_9 Depth=1
	movl	$1855, %edi             # imm = 0x73F
	callq	_StraightTaint_log
	cmpq	%rbp, %r15
	jne	.LBB78_12
# BB#11:                                # %land.lhs.true35
                                        #   in Loop: Header=BB78_9 Depth=1
	movl	$1856, %edi             # imm = 0x740
	callq	_StraightTaint_log
	movq	40(%r14), %rax
	cmpq	40(%rbx), %rax
	jle	.LBB78_15
.LBB78_12:                              # %for.cond.backedge
                                        #   in Loop: Header=BB78_9 Depth=1
	movl	$1857, %edi             # imm = 0x741
	callq	_StraightTaint_log
	leaq	56(%rbx), %r12
	movq	56(%rbx), %rbp
	testq	%rbp, %rbp
	movq	%rbx, %r13
	jne	.LBB78_9
	jmp	.LBB78_13
.LBB78_7:                               # %if.then15
	movl	$1853, %edi             # imm = 0x73D
	callq	_StraightTaint_log
	movq	%r14, timers(,%rbx,8)
	movq	$0, 48(%r14)
	movq	%r13, 56(%r14)
	movq	%r14, 48(%r13)
	jmp	.LBB78_14
.LBB78_1:                               # %if.then
	movl	$1847, %edi             # imm = 0x737
	callq	_StraightTaint_log
	movq	%r14, timers(,%rbx,8)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r14)
	jmp	.LBB78_14
.LBB78_15:                              # %if.then41
	movl	$1858, %edi             # imm = 0x742
	callq	_StraightTaint_log
	movq	%r14, (%r12)
	movq	%r13, 48(%r14)
	movq	%rbx, 56(%r14)
	movq	%r14, 48(%rbx)
	jmp	.LBB78_14
.LBB78_5:
	movq	%r13, %rbx
.LBB78_13:                              # %for.end
	movl	$1859, %edi             # imm = 0x743
	callq	_StraightTaint_log
	movq	%r14, (%r12)
	movq	%rbx, 48(%r14)
	movq	$0, 56(%r14)
.LBB78_14:                              # %if.end51
	movl	$1860, %edi             # imm = 0x744
	callq	_StraightTaint_log
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp1086:
	.size	l_add, .Ltmp1086-l_add
	.cfi_endproc

	.globl	match
	.align	16, 0x90
	.type	match,@function
match:                                  # @match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp1091:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1092:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp1093:
	.cfi_def_cfa_offset 32
.Ltmp1094:
	.cfi_offset %rbx, -32
.Ltmp1095:
	.cfi_offset %r14, -24
.Ltmp1096:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$1861, %edi             # imm = 0x745
	jmp	.LBB79_1
	.align	16, 0x90
.LBB79_3:                               # %for.cond
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	%r15, %rbx
	incq	%rbx
	movl	$1862, %edi             # imm = 0x746
.LBB79_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	callq	_StraightTaint_log
	movl	$124, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB79_4
# BB#2:                                 # %if.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	$1864, %edi             # imm = 0x748
	callq	_StraightTaint_log
	movl	%r15d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	match_one
	testl	%eax, %eax
	movl	$1, %ebx
	je	.LBB79_3
	jmp	.LBB79_5
.LBB79_4:                               # %if.then
	movl	$1863, %edi             # imm = 0x747
	callq	_StraightTaint_log
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	callq	match_one
	movl	%eax, %ebx
.LBB79_5:                               # %return
	movl	$1865, %edi             # imm = 0x749
	callq	_StraightTaint_log
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp1097:
	.size	match, .Ltmp1097-match
	.cfi_endproc

	.align	16, 0x90
	.type	match_one,@function
match_one:                              # @match_one
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1107:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1108:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1109:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1110:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp1111:
	.cfi_def_cfa_offset 80
.Ltmp1112:
	.cfi_offset %rbx, -56
.Ltmp1113:
	.cfi_offset %r12, -48
.Ltmp1114:
	.cfi_offset %r13, -40
.Ltmp1115:
	.cfi_offset %r14, -32
.Ltmp1116:
	.cfi_offset %r15, -24
.Ltmp1117:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %ebx
	movq	%rdi, %r13
	movl	$1866, %edi             # imm = 0x74A
	callq	_StraightTaint_log
	xorl	%r14d, %r14d
	testl	%ebx, %ebx
	jle	.LBB80_1
# BB#2:
	movslq	%ebx, %r15
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	%r12, %rbp
	movq	%r12, (%rsp)            # 8-byte Spill
	movq	%r13, 16(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB80_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1867, %edi             # imm = 0x74B
	callq	_StraightTaint_log
	movzbl	(%r13), %eax
	cmpl	$42, %eax
	je	.LBB80_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB80_3 Depth=1
	movzbl	%al, %r12d
	cmpl	$63, %r12d
	jne	.LBB80_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB80_3 Depth=1
	movl	$1868, %edi             # imm = 0x74C
	callq	_StraightTaint_log
	cmpb	$0, (%rbp)
	jne	.LBB80_7
.LBB80_6:                               # %if.end72
                                        #   in Loop: Header=BB80_3 Depth=1
	movl	$1876, %edi             # imm = 0x754
	callq	_StraightTaint_log
	movzbl	(%rbp), %eax
	xorl	%ebx, %ebx
	cmpl	%eax, %r12d
	jne	.LBB80_19
.LBB80_7:                               # %for.inc79
                                        #   in Loop: Header=BB80_3 Depth=1
	movl	$1877, %edi             # imm = 0x755
	callq	_StraightTaint_log
	incq	%r13
	incq	%rbp
	movq	%r13, %rax
	subq	16(%rsp), %rax          # 8-byte Folded Reload
	incq	%r14
	cmpq	%r15, %rax
	jl	.LBB80_3
	jmp	.LBB80_8
.LBB80_1:
	movq	%r12, %rbp
.LBB80_8:                               # %for.end82
	movl	$1878, %edi             # imm = 0x756
	callq	_StraightTaint_log
	cmpb	$0, (%rbp)
	sete	%al
	movzbl	%al, %ebx
	jmp	.LBB80_19
.LBB80_9:                               # %if.then11
	movl	$1869, %edi             # imm = 0x74D
	callq	_StraightTaint_log
	movzbl	1(%r13), %eax
	cmpl	$42, %eax
	jne	.LBB80_10
# BB#20:                                # %if.then15
	movl	$1870, %edi             # imm = 0x74E
	callq	_StraightTaint_log
	addq	$2, %r13
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r15
	jmp	.LBB80_13
.LBB80_10:
	incq	%r13
	movq	$-1, %r15
.LBB80_11:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1871, %edi             # imm = 0x74F
	callq	_StraightTaint_log
	movb	1(%rbp,%r15), %al
	incq	%r15
	testb	%al, %al
	je	.LBB80_13
# BB#12:                                # %while.cond.i
                                        #   in Loop: Header=BB80_11 Depth=1
	movzbl	%al, %eax
	cmpl	$47, %eax
	jne	.LBB80_11
.LBB80_13:                              # %if.end59
	movl	$1872, %edi             # imm = 0x750
	callq	_StraightTaint_log
	testl	%r15d, %r15d
	js	.LBB80_14
# BB#17:                                # %for.body68.lr.ph
	movl	12(%rsp), %eax          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	subl	%r13d, %eax
	movl	%eax, %r12d
	movl	$1873, %edi             # imm = 0x751
	callq	_StraightTaint_log
	movslq	%r15d, %rbp
	movq	(%rsp), %rax            # 8-byte Reload
	addq	%rbp, %rax
	addq	%rax, %r14
	incl	%ebp
	.align	16, 0x90
.LBB80_18:                              # %for.body68
                                        # =>This Inner Loop Header: Depth=1
	movl	$1875, %edi             # imm = 0x753
	callq	_StraightTaint_log
	movq	%r13, %rdi
	movl	%r12d, %esi
	movq	%r14, %rdx
	callq	match_one
	testl	%eax, %eax
	movl	$1, %ebx
	jne	.LBB80_19
# BB#15:                                # %for.cond65
                                        #   in Loop: Header=BB80_18 Depth=1
	movl	$1874, %edi             # imm = 0x752
	callq	_StraightTaint_log
	decq	%r14
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB80_18
# BB#16:
	xorl	%ebx, %ebx
	jmp	.LBB80_19
.LBB80_14:
	xorl	%ebx, %ebx
.LBB80_19:                              # %return
	movl	$1879, %edi             # imm = 0x757
	callq	_StraightTaint_log
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp1118:
	.size	match_one, .Ltmp1118-match_one
	.cfi_endproc

	.globl	tdate_parse
	.align	16, 0x90
	.type	tdate_parse,@function
tdate_parse:                            # @tdate_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1126:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1127:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp1128:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp1129:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp1130:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp1131:
	.cfi_def_cfa_offset 56
	subq	$1080, %rsp             # imm = 0x438
.Ltmp1132:
	.cfi_def_cfa_offset 1136
.Ltmp1133:
	.cfi_offset %rbx, -56
.Ltmp1134:
	.cfi_offset %r12, -48
.Ltmp1135:
	.cfi_offset %r13, -40
.Ltmp1136:
	.cfi_offset %r14, -32
.Ltmp1137:
	.cfi_offset %r15, -24
.Ltmp1138:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1880, %edi             # imm = 0x758
	callq	_StraightTaint_log
	jmp	.LBB81_1
	.align	16, 0x90
.LBB81_3:                               # %for.inc
                                        #   in Loop: Header=BB81_1 Depth=1
	movl	$1882, %edi             # imm = 0x75A
	callq	_StraightTaint_log
	incq	%rbx
.LBB81_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1881, %edi             # imm = 0x759
	callq	_StraightTaint_log
	movzbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB81_3
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB81_1 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	je	.LBB81_3
# BB#4:                                 # %for.end
	movl	$1883, %edi             # imm = 0x75B
	callq	_StraightTaint_log
	leaq	60(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %rdx
	leaq	576(%rsp), %rcx
	leaq	44(%rsp), %r8
	leaq	52(%rsp), %r9
	movl	$.L.str584, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB81_19
# BB#5:                                 # %land.lhs.true
	movl	$1884, %edi             # imm = 0x75C
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_7
# BB#6:                                 # %if.then.i
	movl	$1885, %edi             # imm = 0x75D
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_7:                               # %scan_mon.exit
	movl	$1886, %edi             # imm = 0x75E
	callq	_StraightTaint_log
	movb	576(%rsp), %bl
	xorl	%r15d, %r15d
	testb	%bl, %bl
	movl	$22, %r12d
	je	.LBB81_14
# BB#8:                                 # %for.body.lr.ph.i417
	movl	$1887, %edi             # imm = 0x75F
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %rbp
	leaq	577(%rsp), %r14
	.align	16, 0x90
.LBB81_9:                               # %for.body.i425
                                        # =>This Inner Loop Header: Depth=1
	movl	$1888, %edi             # imm = 0x760
	callq	_StraightTaint_log
	movsbq	%bl, %r13
	movq	(%rbp), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_13
# BB#10:                                # %if.then.i427
                                        #   in Loop: Header=BB81_9 Depth=1
	movsbl	%bl, %ebx
	movl	$1889, %edi             # imm = 0x761
	callq	_StraightTaint_log
	movl	%ebx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_12
# BB#11:                                # %cond.true.i.i430
                                        #   in Loop: Header=BB81_9 Depth=1
	movl	$1890, %edi             # imm = 0x762
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebx
.LBB81_12:                              # %tolower.exit.i433
                                        #   in Loop: Header=BB81_9 Depth=1
	movl	$1891, %edi             # imm = 0x763
	callq	_StraightTaint_log
	movb	%bl, -1(%r14)
.LBB81_13:                              # %for.inc.i436
                                        #   in Loop: Header=BB81_9 Depth=1
	movl	$1892, %edi             # imm = 0x764
	callq	_StraightTaint_log
	movb	(%r14), %bl
	incq	%r14
	testb	%bl, %bl
	jne	.LBB81_9
	.align	16, 0x90
.LBB81_14:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$1893, %edi             # imm = 0x765
	callq	_StraightTaint_log
	leal	(%r12,%r15), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB81_16
# BB#15:                                # %if.then.i171
                                        #   in Loop: Header=BB81_14 Depth=1
	movl	$1894, %edi             # imm = 0x766
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_18
	.align	16, 0x90
.LBB81_16:                              # %if.else.i
                                        #   in Loop: Header=BB81_14 Depth=1
	movl	$1895, %edi             # imm = 0x767
	callq	_StraightTaint_log
	testl	%r14d, %r14d
	jle	.LBB81_165
# BB#17:                                # %if.then3.i
                                        #   in Loop: Header=BB81_14 Depth=1
	movl	$1896, %edi             # imm = 0x768
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r15d
.LBB81_18:                              # %if.end9.i
                                        #   in Loop: Header=BB81_14 Depth=1
	movl	$1897, %edi             # imm = 0x769
	callq	_StraightTaint_log
	cmpl	%r15d, %r12d
	jge	.LBB81_14
.LBB81_19:                              # %if.else
	movl	$1899, %edi             # imm = 0x76B
	callq	_StraightTaint_log
	leaq	60(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	48(%rsp), %rdx
	leaq	576(%rsp), %rcx
	leaq	44(%rsp), %r8
	leaq	52(%rsp), %r9
	movl	$.L.str1585, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB81_34
# BB#20:                                # %land.lhs.true20
	movl	$1900, %edi             # imm = 0x76C
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_22
# BB#21:                                # %if.then.i173
	movl	$1901, %edi             # imm = 0x76D
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_22:                              # %scan_mon.exit174
	movl	$1902, %edi             # imm = 0x76E
	callq	_StraightTaint_log
	movb	576(%rsp), %bl
	xorl	%r15d, %r15d
	testb	%bl, %bl
	movl	$22, %r12d
	je	.LBB81_29
# BB#23:                                # %for.body.lr.ph.i440
	movl	$1903, %edi             # imm = 0x76F
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r13
	leaq	577(%rsp), %r14
	.align	16, 0x90
.LBB81_24:                              # %for.body.i448
                                        # =>This Inner Loop Header: Depth=1
	movl	$1904, %edi             # imm = 0x770
	callq	_StraightTaint_log
	movsbq	%bl, %rbp
	movq	(%r13), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_28
# BB#25:                                # %if.then.i450
                                        #   in Loop: Header=BB81_24 Depth=1
	movsbl	%bl, %ebx
	movl	$1905, %edi             # imm = 0x771
	callq	_StraightTaint_log
	movl	%ebx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_27
# BB#26:                                # %cond.true.i.i453
                                        #   in Loop: Header=BB81_24 Depth=1
	movl	$1906, %edi             # imm = 0x772
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %ebx
.LBB81_27:                              # %tolower.exit.i456
                                        #   in Loop: Header=BB81_24 Depth=1
	movl	$1907, %edi             # imm = 0x773
	callq	_StraightTaint_log
	movb	%bl, -1(%r14)
.LBB81_28:                              # %for.inc.i459
                                        #   in Loop: Header=BB81_24 Depth=1
	movl	$1908, %edi             # imm = 0x774
	callq	_StraightTaint_log
	movb	(%r14), %bl
	incq	%r14
	testb	%bl, %bl
	jne	.LBB81_24
	.align	16, 0x90
.LBB81_29:                              # %for.cond.i183
                                        # =>This Inner Loop Header: Depth=1
	movl	$1909, %edi             # imm = 0x775
	callq	_StraightTaint_log
	leal	(%r12,%r15), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB81_31
# BB#30:                                # %if.then.i185
                                        #   in Loop: Header=BB81_29 Depth=1
	movl	$1910, %edi             # imm = 0x776
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_33
	.align	16, 0x90
.LBB81_31:                              # %if.else.i187
                                        #   in Loop: Header=BB81_29 Depth=1
	movl	$1911, %edi             # imm = 0x777
	callq	_StraightTaint_log
	testl	%r14d, %r14d
	jle	.LBB81_166
# BB#32:                                # %if.then3.i189
                                        #   in Loop: Header=BB81_29 Depth=1
	movl	$1912, %edi             # imm = 0x778
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r15d
.LBB81_33:                              # %if.end9.i195
                                        #   in Loop: Header=BB81_29 Depth=1
	movl	$1913, %edi             # imm = 0x779
	callq	_StraightTaint_log
	cmpl	%r15d, %r12d
	jge	.LBB81_29
.LBB81_34:                              # %if.else32
	movl	$1915, %edi             # imm = 0x77B
	callq	_StraightTaint_log
	leaq	44(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	576(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	52(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	60(%rsp), %r8
	leaq	48(%rsp), %r9
	movl	$.L.str2586, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB81_49
# BB#35:                                # %land.lhs.true37
	movl	$1916, %edi             # imm = 0x77C
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_37
# BB#36:                                # %if.then.i199
	movl	$1917, %edi             # imm = 0x77D
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_37:                              # %scan_mon.exit200
	movl	$1918, %edi             # imm = 0x77E
	callq	_StraightTaint_log
	movb	576(%rsp), %bpl
	xorl	%r15d, %r15d
	testb	%bpl, %bpl
	movl	$22, %r12d
	je	.LBB81_44
# BB#38:                                # %for.body.lr.ph.i463
	movl	$1919, %edi             # imm = 0x77F
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	577(%rsp), %rbx
	.align	16, 0x90
.LBB81_39:                              # %for.body.i471
                                        # =>This Inner Loop Header: Depth=1
	movl	$1920, %edi             # imm = 0x780
	callq	_StraightTaint_log
	movsbq	%bpl, %r13
	movq	(%r14), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_43
# BB#40:                                # %if.then.i473
                                        #   in Loop: Header=BB81_39 Depth=1
	movsbl	%bpl, %ebp
	movl	$1921, %edi             # imm = 0x781
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_42
# BB#41:                                # %cond.true.i.i476
                                        #   in Loop: Header=BB81_39 Depth=1
	movl	$1922, %edi             # imm = 0x782
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebp
.LBB81_42:                              # %tolower.exit.i479
                                        #   in Loop: Header=BB81_39 Depth=1
	movl	$1923, %edi             # imm = 0x783
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_43:                              # %for.inc.i482
                                        #   in Loop: Header=BB81_39 Depth=1
	movl	$1924, %edi             # imm = 0x784
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_39
	.align	16, 0x90
.LBB81_44:                              # %for.cond.i209
                                        # =>This Inner Loop Header: Depth=1
	movl	$1925, %edi             # imm = 0x785
	callq	_StraightTaint_log
	leal	(%r12,%r15), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r14d
	testl	%r14d, %r14d
	jns	.LBB81_46
# BB#45:                                # %if.then.i211
                                        #   in Loop: Header=BB81_44 Depth=1
	movl	$1926, %edi             # imm = 0x786
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_48
	.align	16, 0x90
.LBB81_46:                              # %if.else.i213
                                        #   in Loop: Header=BB81_44 Depth=1
	movl	$1927, %edi             # imm = 0x787
	callq	_StraightTaint_log
	testl	%r14d, %r14d
	jle	.LBB81_167
# BB#47:                                # %if.then3.i215
                                        #   in Loop: Header=BB81_44 Depth=1
	movl	$1928, %edi             # imm = 0x788
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r15d
.LBB81_48:                              # %if.end9.i221
                                        #   in Loop: Header=BB81_44 Depth=1
	movl	$1929, %edi             # imm = 0x789
	callq	_StraightTaint_log
	cmpl	%r15d, %r12d
	jge	.LBB81_44
.LBB81_49:                              # %if.else49
	movl	$1931, %edi             # imm = 0x78B
	callq	_StraightTaint_log
	leaq	44(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	576(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	52(%rsp), %rdx
	leaq	56(%rsp), %rcx
	leaq	60(%rsp), %r8
	leaq	48(%rsp), %r9
	movl	$.L.str3587, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB81_64
# BB#50:                                # %land.lhs.true54
	movl	$1932, %edi             # imm = 0x78C
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_52
# BB#51:                                # %if.then.i225
	movl	$1933, %edi             # imm = 0x78D
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_52:                              # %scan_mon.exit226
	movl	$1934, %edi             # imm = 0x78E
	callq	_StraightTaint_log
	movb	576(%rsp), %bl
	xorl	%r14d, %r14d
	testb	%bl, %bl
	movl	$22, %r12d
	je	.LBB81_59
# BB#53:                                # %for.body.lr.ph.i486
	movl	$1935, %edi             # imm = 0x78F
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r13
	leaq	577(%rsp), %r15
	.align	16, 0x90
.LBB81_54:                              # %for.body.i494
                                        # =>This Inner Loop Header: Depth=1
	movl	$1936, %edi             # imm = 0x790
	callq	_StraightTaint_log
	movsbq	%bl, %rbp
	movq	(%r13), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_58
# BB#55:                                # %if.then.i496
                                        #   in Loop: Header=BB81_54 Depth=1
	movsbl	%bl, %ebx
	movl	$1937, %edi             # imm = 0x791
	callq	_StraightTaint_log
	movl	%ebx, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_57
# BB#56:                                # %cond.true.i.i499
                                        #   in Loop: Header=BB81_54 Depth=1
	movl	$1938, %edi             # imm = 0x792
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %ebx
.LBB81_57:                              # %tolower.exit.i502
                                        #   in Loop: Header=BB81_54 Depth=1
	movl	$1939, %edi             # imm = 0x793
	callq	_StraightTaint_log
	movb	%bl, -1(%r15)
.LBB81_58:                              # %for.inc.i505
                                        #   in Loop: Header=BB81_54 Depth=1
	movl	$1940, %edi             # imm = 0x794
	callq	_StraightTaint_log
	movb	(%r15), %bl
	incq	%r15
	testb	%bl, %bl
	jne	.LBB81_54
	.align	16, 0x90
.LBB81_59:                              # %for.cond.i235
                                        # =>This Inner Loop Header: Depth=1
	movl	$1941, %edi             # imm = 0x795
	callq	_StraightTaint_log
	leal	(%r12,%r14), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB81_61
# BB#60:                                # %if.then.i237
                                        #   in Loop: Header=BB81_59 Depth=1
	movl	$1942, %edi             # imm = 0x796
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_63
	.align	16, 0x90
.LBB81_61:                              # %if.else.i239
                                        #   in Loop: Header=BB81_59 Depth=1
	movl	$1943, %edi             # imm = 0x797
	callq	_StraightTaint_log
	testl	%r15d, %r15d
	jle	.LBB81_168
# BB#62:                                # %if.then3.i241
                                        #   in Loop: Header=BB81_59 Depth=1
	movl	$1944, %edi             # imm = 0x798
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r14d
.LBB81_63:                              # %if.end9.i247
                                        #   in Loop: Header=BB81_59 Depth=1
	movl	$1945, %edi             # imm = 0x799
	callq	_StraightTaint_log
	cmpl	%r14d, %r12d
	jge	.LBB81_59
.LBB81_64:                              # %if.else66
	movl	$1947, %edi             # imm = 0x79B
	callq	_StraightTaint_log
	leaq	60(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	52(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %rcx
	leaq	576(%rsp), %r8
	leaq	44(%rsp), %r9
	movl	$.L.str4588, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$7, %eax
	jne	.LBB81_93
# BB#65:                                # %land.lhs.true72
	movl	$1948, %edi             # imm = 0x79C
	callq	_StraightTaint_log
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_67
# BB#66:                                # %if.then.i251
	movl	$1949, %edi             # imm = 0x79D
	callq	_StraightTaint_log
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_67:                              # %scan_wday.exit
	movl	$1950, %edi             # imm = 0x79E
	callq	_StraightTaint_log
	movb	64(%rsp), %bpl
	xorl	%r12d, %r12d
	testb	%bpl, %bpl
	movl	$13, %r14d
	je	.LBB81_74
# BB#68:                                # %for.body.lr.ph.i509
	movl	$1951, %edi             # imm = 0x79F
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	65(%rsp), %rbx
	.align	16, 0x90
.LBB81_69:                              # %for.body.i517
                                        # =>This Inner Loop Header: Depth=1
	movl	$1952, %edi             # imm = 0x7A0
	callq	_StraightTaint_log
	movsbq	%bpl, %r13
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_73
# BB#70:                                # %if.then.i519
                                        #   in Loop: Header=BB81_69 Depth=1
	movsbl	%bpl, %ebp
	movl	$1953, %edi             # imm = 0x7A1
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_72
# BB#71:                                # %cond.true.i.i522
                                        #   in Loop: Header=BB81_69 Depth=1
	movl	$1954, %edi             # imm = 0x7A2
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebp
.LBB81_72:                              # %tolower.exit.i525
                                        #   in Loop: Header=BB81_69 Depth=1
	movl	$1955, %edi             # imm = 0x7A3
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_73:                              # %for.inc.i528
                                        #   in Loop: Header=BB81_69 Depth=1
	movl	$1956, %edi             # imm = 0x7A4
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_69
	.align	16, 0x90
.LBB81_74:                              # %for.cond.i260
                                        # =>This Inner Loop Header: Depth=1
	movl	$1957, %edi             # imm = 0x7A5
	callq	_StraightTaint_log
	leal	(%r14,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	scan_wday.wday_tab(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB81_76
# BB#75:                                # %if.then.i262
                                        #   in Loop: Header=BB81_74 Depth=1
	movl	$1958, %edi             # imm = 0x7A6
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r14d
	jmp	.LBB81_78
	.align	16, 0x90
.LBB81_76:                              # %if.else.i264
                                        #   in Loop: Header=BB81_74 Depth=1
	movl	$1959, %edi             # imm = 0x7A7
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jle	.LBB81_79
# BB#77:                                # %if.then3.i266
                                        #   in Loop: Header=BB81_74 Depth=1
	movl	$1960, %edi             # imm = 0x7A8
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_78:                              # %if.end9.i272
                                        #   in Loop: Header=BB81_74 Depth=1
	movl	$1961, %edi             # imm = 0x7A9
	callq	_StraightTaint_log
	cmpl	%r12d, %r14d
	jge	.LBB81_74
	jmp	.LBB81_93
.LBB81_165:                             # %if.then
	movl	$1898, %edi             # imm = 0x76A
	jmp	.LBB81_154
.LBB81_166:                             # %if.then24
	movl	$1914, %edi             # imm = 0x77A
	jmp	.LBB81_154
.LBB81_167:                             # %if.then41
	movl	$1930, %edi             # imm = 0x78A
	jmp	.LBB81_154
.LBB81_168:                             # %if.then58
	movl	$1946, %edi             # imm = 0x79A
	jmp	.LBB81_154
.LBB81_79:                              # %land.lhs.true76
	movl	$1962, %edi             # imm = 0x7AA
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_81
# BB#80:                                # %if.then.i276
	movl	$1963, %edi             # imm = 0x7AB
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_81:                              # %scan_mon.exit277
	movl	$1964, %edi             # imm = 0x7AC
	callq	_StraightTaint_log
	movb	576(%rsp), %bpl
	xorl	%r12d, %r12d
	testb	%bpl, %bpl
	movl	$22, %r14d
	je	.LBB81_88
# BB#82:                                # %for.body.lr.ph.i532
	movl	$1965, %edi             # imm = 0x7AD
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	577(%rsp), %rbx
	.align	16, 0x90
.LBB81_83:                              # %for.body.i540
                                        # =>This Inner Loop Header: Depth=1
	movl	$1966, %edi             # imm = 0x7AE
	callq	_StraightTaint_log
	movsbq	%bpl, %r13
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_87
# BB#84:                                # %if.then.i542
                                        #   in Loop: Header=BB81_83 Depth=1
	movsbl	%bpl, %ebp
	movl	$1967, %edi             # imm = 0x7AF
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_86
# BB#85:                                # %cond.true.i.i545
                                        #   in Loop: Header=BB81_83 Depth=1
	movl	$1968, %edi             # imm = 0x7B0
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebp
.LBB81_86:                              # %tolower.exit.i548
                                        #   in Loop: Header=BB81_83 Depth=1
	movl	$1969, %edi             # imm = 0x7B1
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_87:                              # %for.inc.i551
                                        #   in Loop: Header=BB81_83 Depth=1
	movl	$1970, %edi             # imm = 0x7B2
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_83
	.align	16, 0x90
.LBB81_88:                              # %for.cond.i286
                                        # =>This Inner Loop Header: Depth=1
	movl	$1971, %edi             # imm = 0x7B3
	callq	_StraightTaint_log
	leal	(%r14,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB81_90
# BB#89:                                # %if.then.i288
                                        #   in Loop: Header=BB81_88 Depth=1
	movl	$1972, %edi             # imm = 0x7B4
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r14d
	jmp	.LBB81_92
	.align	16, 0x90
.LBB81_90:                              # %if.else.i290
                                        #   in Loop: Header=BB81_88 Depth=1
	movl	$1973, %edi             # imm = 0x7B5
	callq	_StraightTaint_log
	testl	%r15d, %r15d
	jle	.LBB81_169
# BB#91:                                # %if.then3.i292
                                        #   in Loop: Header=BB81_88 Depth=1
	movl	$1974, %edi             # imm = 0x7B6
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_92:                              # %if.end9.i298
                                        #   in Loop: Header=BB81_88 Depth=1
	movl	$1975, %edi             # imm = 0x7B7
	callq	_StraightTaint_log
	cmpl	%r12d, %r14d
	jge	.LBB81_88
.LBB81_93:                              # %if.else90
	movl	$1977, %edi             # imm = 0x7B9
	callq	_StraightTaint_log
	leaq	60(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	52(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rdx
	leaq	48(%rsp), %rcx
	leaq	576(%rsp), %r8
	leaq	44(%rsp), %r9
	movl	$.L.str5589, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$7, %eax
	jne	.LBB81_122
# BB#94:                                # %land.lhs.true96
	movl	$1978, %edi             # imm = 0x7BA
	callq	_StraightTaint_log
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_96
# BB#95:                                # %if.then.i302
	movl	$1979, %edi             # imm = 0x7BB
	callq	_StraightTaint_log
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_96:                              # %scan_wday.exit303
	movl	$1980, %edi             # imm = 0x7BC
	callq	_StraightTaint_log
	movb	64(%rsp), %bpl
	xorl	%r12d, %r12d
	testb	%bpl, %bpl
	movl	$13, %r14d
	je	.LBB81_103
# BB#97:                                # %for.body.lr.ph.i555
	movl	$1981, %edi             # imm = 0x7BD
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	65(%rsp), %rbx
	.align	16, 0x90
.LBB81_98:                              # %for.body.i563
                                        # =>This Inner Loop Header: Depth=1
	movl	$1982, %edi             # imm = 0x7BE
	callq	_StraightTaint_log
	movsbq	%bpl, %r13
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_102
# BB#99:                                # %if.then.i565
                                        #   in Loop: Header=BB81_98 Depth=1
	movsbl	%bpl, %ebp
	movl	$1983, %edi             # imm = 0x7BF
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_101
# BB#100:                               # %cond.true.i.i568
                                        #   in Loop: Header=BB81_98 Depth=1
	movl	$1984, %edi             # imm = 0x7C0
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebp
.LBB81_101:                             # %tolower.exit.i571
                                        #   in Loop: Header=BB81_98 Depth=1
	movl	$1985, %edi             # imm = 0x7C1
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_102:                             # %for.inc.i574
                                        #   in Loop: Header=BB81_98 Depth=1
	movl	$1986, %edi             # imm = 0x7C2
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_98
	.align	16, 0x90
.LBB81_103:                             # %for.cond.i312
                                        # =>This Inner Loop Header: Depth=1
	movl	$1987, %edi             # imm = 0x7C3
	callq	_StraightTaint_log
	leal	(%r14,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	scan_wday.wday_tab(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB81_105
# BB#104:                               # %if.then.i314
                                        #   in Loop: Header=BB81_103 Depth=1
	movl	$1988, %edi             # imm = 0x7C4
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r14d
	jmp	.LBB81_107
	.align	16, 0x90
.LBB81_105:                             # %if.else.i316
                                        #   in Loop: Header=BB81_103 Depth=1
	movl	$1989, %edi             # imm = 0x7C5
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jle	.LBB81_108
# BB#106:                               # %if.then3.i318
                                        #   in Loop: Header=BB81_103 Depth=1
	movl	$1990, %edi             # imm = 0x7C6
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_107:                             # %if.end9.i324
                                        #   in Loop: Header=BB81_103 Depth=1
	movl	$1991, %edi             # imm = 0x7C7
	callq	_StraightTaint_log
	cmpl	%r12d, %r14d
	jge	.LBB81_103
	jmp	.LBB81_122
.LBB81_108:                             # %land.lhs.true100
	movl	$1992, %edi             # imm = 0x7C8
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_110
# BB#109:                               # %if.then.i328
	movl	$1993, %edi             # imm = 0x7C9
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_110:                             # %scan_mon.exit329
	movl	$1994, %edi             # imm = 0x7CA
	callq	_StraightTaint_log
	movb	576(%rsp), %bpl
	xorl	%r12d, %r12d
	testb	%bpl, %bpl
	movl	$22, %r14d
	je	.LBB81_117
# BB#111:                               # %for.body.lr.ph.i578
	movl	$1995, %edi             # imm = 0x7CB
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	577(%rsp), %rbx
	.align	16, 0x90
.LBB81_112:                             # %for.body.i586
                                        # =>This Inner Loop Header: Depth=1
	movl	$1996, %edi             # imm = 0x7CC
	callq	_StraightTaint_log
	movsbq	%bpl, %r13
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_116
# BB#113:                               # %if.then.i588
                                        #   in Loop: Header=BB81_112 Depth=1
	movsbl	%bpl, %ebp
	movl	$1997, %edi             # imm = 0x7CD
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_115
# BB#114:                               # %cond.true.i.i591
                                        #   in Loop: Header=BB81_112 Depth=1
	movl	$1998, %edi             # imm = 0x7CE
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %ebp
.LBB81_115:                             # %tolower.exit.i594
                                        #   in Loop: Header=BB81_112 Depth=1
	movl	$1999, %edi             # imm = 0x7CF
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_116:                             # %for.inc.i597
                                        #   in Loop: Header=BB81_112 Depth=1
	movl	$2000, %edi             # imm = 0x7D0
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_112
	.align	16, 0x90
.LBB81_117:                             # %for.cond.i338
                                        # =>This Inner Loop Header: Depth=1
	movl	$2001, %edi             # imm = 0x7D1
	callq	_StraightTaint_log
	leal	(%r14,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r15d
	testl	%r15d, %r15d
	jns	.LBB81_119
# BB#118:                               # %if.then.i340
                                        #   in Loop: Header=BB81_117 Depth=1
	movl	$2002, %edi             # imm = 0x7D2
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r14d
	jmp	.LBB81_121
	.align	16, 0x90
.LBB81_119:                             # %if.else.i342
                                        #   in Loop: Header=BB81_117 Depth=1
	movl	$2003, %edi             # imm = 0x7D3
	callq	_StraightTaint_log
	testl	%r15d, %r15d
	jle	.LBB81_170
# BB#120:                               # %if.then3.i344
                                        #   in Loop: Header=BB81_117 Depth=1
	movl	$2004, %edi             # imm = 0x7D4
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_121:                             # %if.end9.i350
                                        #   in Loop: Header=BB81_117 Depth=1
	movl	$2005, %edi             # imm = 0x7D5
	callq	_StraightTaint_log
	cmpl	%r12d, %r14d
	jge	.LBB81_117
.LBB81_122:                             # %if.else114
	movl	$2007, %edi             # imm = 0x7D7
	callq	_StraightTaint_log
	leaq	44(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	60(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rdx
	leaq	576(%rsp), %rcx
	leaq	48(%rsp), %r8
	leaq	52(%rsp), %r9
	movl	$.L.str6590, %esi
	xorl	%eax, %eax
	movq	32(%rsp), %rdi          # 8-byte Reload
	callq	__isoc99_sscanf
	cmpl	$7, %eax
	movq	$-1, %rbx
	jne	.LBB81_164
# BB#123:                               # %land.lhs.true120
	movl	$2008, %edi             # imm = 0x7D8
	callq	_StraightTaint_log
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_125
# BB#124:                               # %if.then.i354
	movl	$2009, %edi             # imm = 0x7D9
	callq	_StraightTaint_log
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_125:                             # %scan_wday.exit355
	movl	$2010, %edi             # imm = 0x7DA
	callq	_StraightTaint_log
	movb	64(%rsp), %bpl
	xorl	%r13d, %r13d
	testb	%bpl, %bpl
	movl	$13, %r15d
	je	.LBB81_132
# BB#126:                               # %for.body.lr.ph.i601
	movl	$2011, %edi             # imm = 0x7DB
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r12
	leaq	65(%rsp), %rbx
	.align	16, 0x90
.LBB81_127:                             # %for.body.i609
                                        # =>This Inner Loop Header: Depth=1
	movl	$2012, %edi             # imm = 0x7DC
	callq	_StraightTaint_log
	movsbq	%bpl, %r14
	movq	(%r12), %rax
	testb	$1, 1(%rax,%r14,2)
	je	.LBB81_131
# BB#128:                               # %if.then.i611
                                        #   in Loop: Header=BB81_127 Depth=1
	movsbl	%bpl, %ebp
	movl	$2013, %edi             # imm = 0x7DD
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_130
# BB#129:                               # %cond.true.i.i614
                                        #   in Loop: Header=BB81_127 Depth=1
	movl	$2014, %edi             # imm = 0x7DE
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %ebp
.LBB81_130:                             # %tolower.exit.i617
                                        #   in Loop: Header=BB81_127 Depth=1
	movl	$2015, %edi             # imm = 0x7DF
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_131:                             # %for.inc.i620
                                        #   in Loop: Header=BB81_127 Depth=1
	movl	$2016, %edi             # imm = 0x7E0
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_127
	.align	16, 0x90
.LBB81_132:                             # %for.cond.i364
                                        # =>This Inner Loop Header: Depth=1
	movl	$2017, %edi             # imm = 0x7E1
	callq	_StraightTaint_log
	leal	(%r15,%r13), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	scan_wday.wday_tab(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB81_134
# BB#133:                               # %if.then.i366
                                        #   in Loop: Header=BB81_132 Depth=1
	movl	$2018, %edi             # imm = 0x7E2
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_136
	.align	16, 0x90
.LBB81_134:                             # %if.else.i368
                                        #   in Loop: Header=BB81_132 Depth=1
	movl	$2019, %edi             # imm = 0x7E3
	callq	_StraightTaint_log
	testl	%ebx, %ebx
	jle	.LBB81_138
# BB#135:                               # %if.then3.i370
                                        #   in Loop: Header=BB81_132 Depth=1
	movl	$2020, %edi             # imm = 0x7E4
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r13d
.LBB81_136:                             # %if.end9.i376
                                        #   in Loop: Header=BB81_132 Depth=1
	movl	$2021, %edi             # imm = 0x7E5
	callq	_StraightTaint_log
	cmpl	%r13d, %r15d
	jge	.LBB81_132
# BB#137:
	movq	$-1, %rbx
	jmp	.LBB81_164
.LBB81_138:                             # %land.lhs.true124
	movl	$2022, %edi             # imm = 0x7E6
	callq	_StraightTaint_log
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_140
# BB#139:                               # %if.then.i380
	movl	$2023, %edi             # imm = 0x7E7
	callq	_StraightTaint_log
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_140:                             # %scan_mon.exit381
	movl	$2024, %edi             # imm = 0x7E8
	callq	_StraightTaint_log
	movb	576(%rsp), %bpl
	xorl	%r13d, %r13d
	testb	%bpl, %bpl
	movl	$22, %r15d
	je	.LBB81_147
# BB#141:                               # %for.body.lr.ph.i
	movl	$2025, %edi             # imm = 0x7E9
	callq	_StraightTaint_log
	callq	__ctype_b_loc
	movq	%rax, %r12
	leaq	577(%rsp), %rbx
	.align	16, 0x90
.LBB81_142:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$2026, %edi             # imm = 0x7EA
	callq	_StraightTaint_log
	movsbq	%bpl, %r14
	movq	(%r12), %rax
	testb	$1, 1(%rax,%r14,2)
	je	.LBB81_146
# BB#143:                               # %if.then.i412
                                        #   in Loop: Header=BB81_142 Depth=1
	movsbl	%bpl, %ebp
	movl	$2027, %edi             # imm = 0x7EB
	callq	_StraightTaint_log
	movl	%ebp, %eax
	subl	$-128, %eax
	cmpl	$383, %eax              # imm = 0x17F
	ja	.LBB81_145
# BB#144:                               # %cond.true.i.i413
                                        #   in Loop: Header=BB81_142 Depth=1
	movl	$2028, %edi             # imm = 0x7EC
	callq	_StraightTaint_log
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %ebp
.LBB81_145:                             # %tolower.exit.i
                                        #   in Loop: Header=BB81_142 Depth=1
	movl	$2029, %edi             # imm = 0x7ED
	callq	_StraightTaint_log
	movb	%bpl, -1(%rbx)
.LBB81_146:                             # %for.inc.i
                                        #   in Loop: Header=BB81_142 Depth=1
	movl	$2030, %edi             # imm = 0x7EE
	callq	_StraightTaint_log
	movb	(%rbx), %bpl
	incq	%rbx
	testb	%bpl, %bpl
	jne	.LBB81_142
	.align	16, 0x90
.LBB81_147:                             # %for.cond.i390
                                        # =>This Inner Loop Header: Depth=1
	movl	$2031, %edi             # imm = 0x7EF
	callq	_StraightTaint_log
	leal	(%r15,%r13), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jns	.LBB81_149
# BB#148:                               # %if.then.i392
                                        #   in Loop: Header=BB81_147 Depth=1
	movl	$2032, %edi             # imm = 0x7F0
	callq	_StraightTaint_log
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_151
	.align	16, 0x90
.LBB81_149:                             # %if.else.i394
                                        #   in Loop: Header=BB81_147 Depth=1
	movl	$2033, %edi             # imm = 0x7F1
	callq	_StraightTaint_log
	testl	%r12d, %r12d
	jle	.LBB81_153
# BB#150:                               # %if.then3.i396
                                        #   in Loop: Header=BB81_147 Depth=1
	movl	$2034, %edi             # imm = 0x7F2
	callq	_StraightTaint_log
	incl	%ebp
	movl	%ebp, %r13d
.LBB81_151:                             # %if.end9.i402
                                        #   in Loop: Header=BB81_147 Depth=1
	movl	$2035, %edi             # imm = 0x7F3
	callq	_StraightTaint_log
	cmpl	%r13d, %r15d
	jge	.LBB81_147
# BB#152:
	movq	$-1, %rbx
	jmp	.LBB81_164
.LBB81_169:                             # %if.then80
	movl	$1976, %edi             # imm = 0x7B8
	jmp	.LBB81_154
.LBB81_170:                             # %if.then104
	movl	$2006, %edi             # imm = 0x7D6
	jmp	.LBB81_154
.LBB81_153:                             # %if.then128
	movl	$2036, %edi             # imm = 0x7F4
.LBB81_154:                             # %if.end144
	callq	_StraightTaint_log
	leaq	scan_mon.mon_tab+8(%rbx), %rbx
	movl	$2037, %edi             # imm = 0x7F5
	callq	_StraightTaint_log
	movq	(%rbx), %r15
	movslq	60(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	56(%rsp), %rbx
	movslq	52(%rsp), %r12
	movl	48(%rsp), %r13d
	movl	44(%rsp), %ebp
	cmpl	$1901, %ebp             # imm = 0x76D
	jl	.LBB81_156
# BB#155:                               # %if.then148
	movl	$2038, %edi             # imm = 0x7F6
	callq	_StraightTaint_log
	addl	$-1900, %ebp            # imm = 0xFFFFFFFFFFFFF894
	jmp	.LBB81_157
.LBB81_156:                             # %if.else150
	movl	$2039, %edi             # imm = 0x7F7
	callq	_StraightTaint_log
	leal	100(%rbp), %eax
	cmpl	$70, %ebp
	cmovgel	%ebp, %eax
	movl	%eax, %ebp
.LBB81_157:                             # %if.end157
	movl	$2040, %edi             # imm = 0x7F8
	callq	_StraightTaint_log
	imull	$365, %ebp, %eax        # imm = 0x16D
	addl	$-25550, %eax           # imm = 0xFFFFFFFFFFFF9C32
	cltq
	leal	-69(%rbp), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	-69(%rbp,%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movslq	%r15d, %rax
	movslq	tm_to_time.monthtab(,%rax,4), %r14
	addq	%rcx, %r14
	cmpl	$2, %r15d
	jl	.LBB81_163
# BB#158:                               # %land.lhs.true.i
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	movl	$2041, %edi             # imm = 0x7F9
	callq	_StraightTaint_log
	addl	$1900, %ebp             # imm = 0x76C
	movslq	%ebp, %rax
	imulq	$1374389535, %rax, %rbx # imm = 0x51EB851F
	movq	%rbx, %r15
	shrq	$63, %r15
	movq	%rbx, %rcx
	sarq	$39, %rcx
	addl	%r15d, %ecx
	imull	$400, %ecx, %ecx        # imm = 0x190
	cmpl	%ecx, %eax
	je	.LBB81_159
# BB#160:                               # %cond.true.i.i
	movl	$2042, %edi             # imm = 0x7FA
	callq	_StraightTaint_log
	sarq	$37, %rbx
	addl	%r15d, %ebx
	imull	$100, %ebx, %eax
	cmpl	%eax, %ebp
	movb	$1, %bl
	je	.LBB81_162
# BB#161:                               # %cond.true3.i.i
	movl	$2043, %edi             # imm = 0x7FB
	callq	_StraightTaint_log
	testb	$3, %bpl
	setne	%bl
	jmp	.LBB81_162
.LBB81_159:
	xorl	%ebx, %ebx
.LBB81_162:                             # %is_leap.exit.i
	movl	$2044, %edi             # imm = 0x7FC
	callq	_StraightTaint_log
	movzbl	%bl, %eax
	xorq	$1, %rax
	addq	%rax, %r14
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB81_163:                             # %tm_to_time.exit
	movl	$2045, %edi             # imm = 0x7FD
	callq	_StraightTaint_log
	decl	%r13d
	movslq	%r13d, %rax
	addq	%r14, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%r12,%rax,8), %rax
	imulq	$60, %rax, %rax
	addq	%rbx, %rax
	imulq	$60, %rax, %rbx
	addq	32(%rsp), %rbx          # 8-byte Folded Reload
.LBB81_164:                             # %cleanup
	movl	$2046, %edi             # imm = 0x7FE
	callq	_StraightTaint_log
	movq	%rbx, %rax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp1139:
	.size	tdate_parse, .Ltmp1139-tdate_parse
	.cfi_endproc

	.align	16, 0x90
	.type	strlong_compare,@function
strlong_compare:                        # @strlong_compare
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp1143:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1144:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp1145:
	.cfi_def_cfa_offset 32
.Ltmp1146:
	.cfi_offset %rbx, -24
.Ltmp1147:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$2047, %edi             # imm = 0x7FF
	callq	_StraightTaint_log
	movq	(%rbx), %rdi
	movq	(%r14), %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	strcmp                  # TAILCALL
.Ltmp1148:
	.size	strlong_compare, .Ltmp1148-strlong_compare
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI83_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI83_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI83_2:
	.quad	4652218415073722368     # double 1024
	.text
	.globl	buf_switcher
	.align	16, 0x90
	.type	buf_switcher,@function
buf_switcher:                           # @buf_switcher
.Lfunc_begin83:
	.loc	1 31 0                  # ../../straightDFA/init.c:31:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1151:
	.cfi_def_cfa_offset 16
.Ltmp1152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1153:
	.cfi_def_cfa_register %rbp
	.loc	1 33 0 prologue_end     # ../../straightDFA/init.c:33:0
.Ltmp1154:
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
	punpckldq	.LCPI83_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI83_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	movsd	.LCPI83_2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	%xmm1, %xmm0
	movl	$.L.str530, %edi
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
.Ltmp1155:
.Ltmp1156:
	.size	buf_switcher, .Ltmp1156-buf_switcher
.Lfunc_end83:
	.cfi_endproc

	.globl	_StraightTaint_init
	.align	16, 0x90
	.type	_StraightTaint_init,@function
_StraightTaint_init:                    # @_StraightTaint_init
.Lfunc_begin84:
	.loc	1 68 0                  # ../../straightDFA/init.c:68:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1160:
	.cfi_def_cfa_offset 16
.Ltmp1161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1162:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$2072, %rsp             # imm = 0x818
.Ltmp1163:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	.loc	1 135 0 prologue_end    # ../../straightDFA/init.c:135:0
.Ltmp1164:
	callq	getpid
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	leaq	-1056(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	1 137 0                 # ../../straightDFA/init.c:137:0
	movl	$.L.str1531, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 138 0                 # ../../straightDFA/init.c:138:0
	movl	$.L.str2532, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
	.loc	1 139 0                 # ../../straightDFA/init.c:139:0
	movl	$.L.str3533, %edi
	.loc	1 138 0                 # ../../straightDFA/init.c:138:0
	movl	$.L.str2532, %esi
	.loc	1 139 0                 # ../../straightDFA/init.c:139:0
	callq	fopen
	movq	%rax, %rcx
	movq	%rcx, configFile(%rip)
	.loc	1 140 0                 # ../../straightDFA/init.c:140:0
	movl	$.L.str4534, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	callq	fprintf
	.loc	1 141 0                 # ../../straightDFA/init.c:141:0
	movq	configFile(%rip), %rdi
	callq	fflush
	.loc	1 143 0                 # ../../straightDFA/init.c:143:0
	movl	$.L.str5535, %edi
	callq	system
	.loc	1 145 0                 # ../../straightDFA/init.c:145:0
	movl	-20(%rbp), %ecx
	leaq	-2080(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str6536, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	.loc	1 146 0                 # ../../straightDFA/init.c:146:0
	movq	%rbx, %rdi
	callq	system
	movl	$1, %edi
	.loc	1 148 0                 # ../../straightDFA/init.c:148:0
	callq	sleep
	.loc	1 151 0                 # ../../straightDFA/init.c:151:0
	movl	$.L.str7537, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	1 152 0                 # ../../straightDFA/init.c:152:0
	movq	pos(%rip), %rax
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%rbp
	ret
.Ltmp1165:
.Ltmp1166:
	.size	_StraightTaint_init, .Ltmp1166-_StraightTaint_init
.Lfunc_end84:
	.cfi_endproc

	.globl	_StraightTaint_pseudo
	.align	16, 0x90
	.type	_StraightTaint_pseudo,@function
_StraightTaint_pseudo:                  # @_StraightTaint_pseudo
.Lfunc_begin85:
	.loc	4 12 0                  # ../../straightDFA/log.c:12:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1169:
	.cfi_def_cfa_offset 16
.Ltmp1170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1171:
	.cfi_def_cfa_register %rbp
	.loc	4 13 0 prologue_end     # ../../straightDFA/log.c:13:0
.Ltmp1172:
	popq	%rbp
	ret
.Ltmp1173:
.Ltmp1174:
	.size	_StraightTaint_pseudo, .Ltmp1174-_StraightTaint_pseudo
.Lfunc_end85:
	.cfi_endproc

	.globl	_StraightTaint_flush
	.align	16, 0x90
	.type	_StraightTaint_flush,@function
_StraightTaint_flush:                   # @_StraightTaint_flush
.Lfunc_begin86:
	.loc	4 16 0                  # ../../straightDFA/log.c:16:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1177:
	.cfi_def_cfa_offset 16
.Ltmp1178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1179:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	4 17 0 prologue_end     # ../../straightDFA/log.c:17:0
.Ltmp1180:
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	4 18 0                  # ../../straightDFA/log.c:18:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp1181:
.Ltmp1182:
	.size	_StraightTaint_flush, .Ltmp1182-_StraightTaint_flush
.Lfunc_end86:
	.cfi_endproc

	.globl	_StraightTaint_log
	.align	16, 0x90
	.type	_StraightTaint_log,@function
_StraightTaint_log:                     # @_StraightTaint_log
.Lfunc_begin87:
	.loc	4 21 0                  # ../../straightDFA/log.c:21:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1185:
	.cfi_def_cfa_offset 16
.Ltmp1186:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1187:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movw	%di, -2(%rbp)
	.loc	4 22 0 prologue_end     # ../../straightDFA/log.c:22:0
.Ltmp1188:
	movq	flog(%rip), %rdi
	movswl	-2(%rbp), %edx
	movl	$.L.str540, %esi
	xorl	%eax, %eax
	callq	fprintf
	.loc	4 23 0                  # ../../straightDFA/log.c:23:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp1189:
.Ltmp1190:
	.size	_StraightTaint_log, .Ltmp1190-_StraightTaint_log
.Lfunc_end87:
	.cfi_endproc

	.globl	_StraightTaint_fork32
	.align	16, 0x90
	.type	_StraightTaint_fork32,@function
_StraightTaint_fork32:                  # @_StraightTaint_fork32
.Lfunc_begin88:
	.loc	4 63 0                  # ../../straightDFA/log.c:63:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1193:
	.cfi_def_cfa_offset 16
.Ltmp1194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1195:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	.loc	4 64 0 prologue_end     # ../../straightDFA/log.c:64:0
.Ltmp1196:
	callq	do_StraightTaint_fork
	.loc	4 65 0                  # ../../straightDFA/log.c:65:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp1197:
.Ltmp1198:
	.size	_StraightTaint_fork32, .Ltmp1198-_StraightTaint_fork32
.Lfunc_end88:
	.cfi_endproc

	.globl	_StraightTaint_fork64
	.align	16, 0x90
	.type	_StraightTaint_fork64,@function
_StraightTaint_fork64:                  # @_StraightTaint_fork64
.Lfunc_begin89:
	.loc	4 68 0                  # ../../straightDFA/log.c:68:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1201:
	.cfi_def_cfa_offset 16
.Ltmp1202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1203:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc	4 69 0 prologue_end     # ../../straightDFA/log.c:69:0
.Ltmp1204:
	movl	-8(%rbp), %edi
	movl	%edi, -12(%rbp)
	.loc	4 70 0                  # ../../straightDFA/log.c:70:0
	callq	do_StraightTaint_fork
	.loc	4 71 0                  # ../../straightDFA/log.c:71:0
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp1205:
.Ltmp1206:
	.size	_StraightTaint_fork64, .Ltmp1206-_StraightTaint_fork64
.Lfunc_end89:
	.cfi_endproc

	.align	16, 0x90
	.type	do_StraightTaint_fork,@function
do_StraightTaint_fork:                  # @do_StraightTaint_fork
.Lfunc_begin90:
	.loc	4 26 0                  # ../../straightDFA/log.c:26:0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1210:
	.cfi_def_cfa_offset 16
.Ltmp1211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp1212:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$2096, %rsp             # imm = 0x830
.Ltmp1213:
	.cfi_offset %rbx, -32
.Ltmp1214:
	.cfi_offset %r14, -24
	testl	%edi, %edi
	movl	%edi, -20(%rbp)
	jg	.LBB90_7
# BB#1:                                 # %if.else
	.loc	4 29 0 prologue_end     # ../../straightDFA/log.c:29:0
.Ltmp1215:
	cmpl	$0, -20(%rbp)
	jne	.LBB90_5
# BB#2:                                 # %if.then2
.Ltmp1216:
	#DEBUG_VALUE: filename <- [RBP+-1056]
	#DEBUG_VALUE: nrPid <- [RBP+-1060]
	movl	$39, %edi
	xorl	%eax, %eax
	.loc	4 31 0                  # ../../straightDFA/log.c:31:0
.Ltmp1217:
	callq	syscall
	movq	%rax, %rcx
	movl	%ecx, -1060(%rbp)
	leaq	-1056(%rbp), %r14
	movl	$1024, %esi             # imm = 0x400
	.loc	4 32 0                  # ../../straightDFA/log.c:32:0
	movl	$.L.str1541, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
                                        # kill: ECX<def> ECX<kill> RCX<kill>
	callq	snprintf
	.loc	4 34 0                  # ../../straightDFA/log.c:34:0
	movq	configFile(%rip), %rdi
	movl	$.L.str2542, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	fprintf
	.loc	4 35 0                  # ../../straightDFA/log.c:35:0
	movq	configFile(%rip), %rdi
	callq	fflush
.Ltmp1218:
	#DEBUG_VALUE: cmd <- [RBP+-2096]
	leaq	-2096(%rbp), %rbx
	movl	$1024, %esi             # imm = 0x400
	.loc	4 38 0                  # ../../straightDFA/log.c:38:0
	movl	$.L.str3543, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	xorl	%eax, %eax
	.loc	4 39 0                  # ../../straightDFA/log.c:39:0
	movq	%rbx, %rdi
	callq	system
	.loc	4 40 0                  # ../../straightDFA/log.c:40:0
	movl	-1060(%rbp), %ecx
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str4544, %edx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	snprintf
	xorl	%eax, %eax
	.loc	4 41 0                  # ../../straightDFA/log.c:41:0
	movq	%rbx, %rdi
	callq	system
.Ltmp1219:
	#DEBUG_VALUE: flogParent <- [RBP+-2104]
	.loc	4 44 0                  # ../../straightDFA/log.c:44:0
	movq	flog(%rip), %rax
	movq	%rax, -2104(%rbp)
	.loc	4 45 0                  # ../../straightDFA/log.c:45:0
	movl	$.L.str5545, %esi
	movq	%r14, %rdi
	callq	fopen
	movq	%rax, flog(%rip)
	.loc	4 46 0                  # ../../straightDFA/log.c:46:0
	movq	-2104(%rbp), %rdi
	callq	rewind
.Ltmp1220:
	#DEBUG_VALUE: bbid <- [RBP+-2108]
	.loc	4 47 0                  # ../../straightDFA/log.c:47:0
	movl	$0, -2108(%rbp)
	.loc	4 49 0                  # ../../straightDFA/log.c:49:0
	movq	flog(%rip), %rdi
	callq	fflush
	.loc	4 50 0                  # ../../straightDFA/log.c:50:0
	movq	-2104(%rbp), %rdi
	callq	fflush
	leaq	-2108(%rbp), %rbx
	jmp	.LBB90_3
	.align	16, 0x90
.LBB90_4:                               # %while.body
                                        #   in Loop: Header=BB90_3 Depth=1
	#DEBUG_VALUE: filename <- [RBP+-1056]
	#DEBUG_VALUE: nrPid <- [RBP+-1060]
	#DEBUG_VALUE: cmd <- [RBP+-2096]
	#DEBUG_VALUE: flogParent <- [RBP+-2104]
	#DEBUG_VALUE: bbid <- [RBP+-2108]
	.loc	4 53 0                  # ../../straightDFA/log.c:53:0
.Ltmp1221:
	movq	flog(%rip), %rdi
	movl	-2108(%rbp), %edx
	movl	$.L.str540, %esi
	xorl	%eax, %eax
	callq	fprintf
.Ltmp1222:
.LBB90_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: filename <- [RBP+-1056]
	#DEBUG_VALUE: nrPid <- [RBP+-1060]
	#DEBUG_VALUE: cmd <- [RBP+-2096]
	#DEBUG_VALUE: flogParent <- [RBP+-2104]
	#DEBUG_VALUE: bbid <- [RBP+-2108]
	.loc	4 51 0                  # ../../straightDFA/log.c:51:0
	movq	-2104(%rbp), %rdi
	movl	$.L.str6546, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	__isoc99_fscanf
	cmpl	$-1, %eax
	jne	.LBB90_4
# BB#6:                                 # %while.end
.Ltmp1223:
	#DEBUG_VALUE: filename <- [RBP+-1056]
	#DEBUG_VALUE: nrPid <- [RBP+-1060]
	#DEBUG_VALUE: cmd <- [RBP+-2096]
	#DEBUG_VALUE: flogParent <- [RBP+-2104]
	#DEBUG_VALUE: bbid <- [RBP+-2108]
	.loc	4 55 0                  # ../../straightDFA/log.c:55:0
	movq	-2104(%rbp), %rdi
	callq	fclose
	.loc	4 56 0                  # ../../straightDFA/log.c:56:0
	movl	$.L.str7547, %edi
	xorl	%eax, %eax
	callq	printf
.Ltmp1224:
.LBB90_7:                               # %if.end26
	.loc	4 60 0                  # ../../straightDFA/log.c:60:0
	addq	$2096, %rsp             # imm = 0x830
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.LBB90_5:                               # %if.else25
	.loc	4 58 0                  # ../../straightDFA/log.c:58:0
.Ltmp1225:
	movl	$.L.str8548, %edi
	movl	$.L.str9549, %esi
	movl	$58, %edx
	movl	$.L__PRETTY_FUNCTION__.do_StraightTaint_fork, %ecx
	callq	__assert_fail
.Ltmp1226:
.Ltmp1227:
	.size	do_StraightTaint_fork, .Ltmp1227-do_StraightTaint_fork
.Lfunc_end90:
	.cfi_endproc

	.type	terminate,@object       # @terminate
	.bss
	.globl	terminate
	.align	4
terminate:
	.long	0                       # 0x0
	.size	terminate, 4

	.type	argv0,@object           # @argv0
	.local	argv0
	.comm	argv0,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"can't find any valid address"
	.size	.L.str, 29

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"%s: can't find any valid address\n"
	.size	.L.str1, 34

	.type	numthrottles,@object    # @numthrottles
	.local	numthrottles
	.comm	numthrottles,4,4
	.type	maxthrottles,@object    # @maxthrottles
	.local	maxthrottles
	.comm	maxthrottles,4,4
	.type	throttles,@object       # @throttles
	.local	throttles
	.comm	throttles,8,8
	.type	throttlefile,@object    # @throttlefile
	.local	throttlefile
	.comm	throttlefile,8,8
	.type	user,@object            # @user
	.local	user
	.comm	user,8,8
	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"unknown user - '%.80s'"
	.size	.L.str2, 23

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"%s: unknown user - '%s'\n"
	.size	.L.str3, 25

	.type	logfile,@object         # @logfile
	.local	logfile
	.comm	logfile,8,8
	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"/dev/null"
	.size	.L.str4, 10

	.type	no_log,@object          # @no_log
	.local	no_log
	.comm	no_log,1,1
	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"a"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"%.80s - %m"
	.size	.L.str7, 11

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"logfile is not an absolute path, you may not be able to re-open it"
	.size	.L.str8, 67

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"%s: logfile is not an absolute path, you may not be able to re-open it\n"
	.size	.L.str9, 72

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"fchown logfile - %m"
	.size	.L.str10, 20

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"fchown logfile"
	.size	.L.str11, 15

	.type	dir,@object             # @dir
	.local	dir
	.comm	dir,8,8
	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"chdir - %m"
	.size	.L.str12, 11

	.type	.L.str13,@object        # @.str13
.L.str13:
	.asciz	"chdir"
	.size	.L.str13, 6

	.type	debug,@object           # @debug
	.local	debug
	.comm	debug,1,1
	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"daemon - %m"
	.size	.L.str15, 12

	.type	pidfile,@object         # @pidfile
	.local	pidfile
	.comm	pidfile,8,8
	.type	.L.str16,@object        # @.str16
.L.str16:
	.asciz	"w"
	.size	.L.str16, 2

	.type	.L.str17,@object        # @.str17
.L.str17:
	.asciz	"%d\n"
	.size	.L.str17, 4

	.type	max_connects,@object    # @max_connects
	.local	max_connects
	.comm	max_connects,4,4
	.type	.L.str18,@object        # @.str18
.L.str18:
	.asciz	"fdwatch initialization failure"
	.size	.L.str18, 31

	.type	do_chroot,@object       # @do_chroot
	.local	do_chroot
	.comm	do_chroot,1,1
	.type	.L.str19,@object        # @.str19
.L.str19:
	.asciz	"chroot - %m"
	.size	.L.str19, 12

	.type	.L.str20,@object        # @.str20
.L.str20:
	.asciz	"chroot"
	.size	.L.str20, 7

	.type	.L.str21,@object        # @.str21
.L.str21:
	.asciz	"logfile is not within the chroot tree, you will not be able to re-open it"
	.size	.L.str21, 74

	.type	.L.str22,@object        # @.str22
.L.str22:
	.asciz	"%s: logfile is not within the chroot tree, you will not be able to re-open it\n"
	.size	.L.str22, 79

	.type	.L.str23,@object        # @.str23
.L.str23:
	.asciz	"chroot chdir - %m"
	.size	.L.str23, 18

	.type	.L.str24,@object        # @.str24
.L.str24:
	.asciz	"chroot chdir"
	.size	.L.str24, 13

	.type	data_dir,@object        # @data_dir
	.local	data_dir
	.comm	data_dir,8,8
	.type	.L.str25,@object        # @.str25
.L.str25:
	.asciz	"data_dir chdir - %m"
	.size	.L.str25, 20

	.type	.L.str26,@object        # @.str26
.L.str26:
	.asciz	"data_dir chdir"
	.size	.L.str26, 15

	.type	got_hup,@object         # @got_hup
	.local	got_hup
	.comm	got_hup,4,4
	.type	got_usr1,@object        # @got_usr1
	.local	got_usr1
	.comm	got_usr1,4,4
	.type	watchdog_flag,@object   # @watchdog_flag
	.local	watchdog_flag
	.comm	watchdog_flag,4,4
	.type	hostname,@object        # @hostname
	.local	hostname
	.comm	hostname,8,8
	.type	port,@object            # @port
	.local	port
	.comm	port,2,2
	.type	cgi_pattern,@object     # @cgi_pattern
	.local	cgi_pattern
	.comm	cgi_pattern,8,8
	.type	cgi_limit,@object       # @cgi_limit
	.local	cgi_limit
	.comm	cgi_limit,4,4
	.type	charset,@object         # @charset
	.local	charset
	.comm	charset,8,8
	.type	p3p,@object             # @p3p
	.local	p3p
	.comm	p3p,8,8
	.type	max_age,@object         # @max_age
	.local	max_age
	.comm	max_age,4,4
	.type	no_symlink_check,@object # @no_symlink_check
	.local	no_symlink_check
	.comm	no_symlink_check,4,4
	.type	do_vhost,@object        # @do_vhost
	.local	do_vhost
	.comm	do_vhost,1,1
	.type	do_global_passwd,@object # @do_global_passwd
	.local	do_global_passwd
	.comm	do_global_passwd,1,1
	.type	url_pattern,@object     # @url_pattern
	.local	url_pattern
	.comm	url_pattern,8,8
	.type	local_pattern,@object   # @local_pattern
	.local	local_pattern
	.comm	local_pattern,8,8
	.type	no_empty_referers,@object # @no_empty_referers
	.local	no_empty_referers
	.comm	no_empty_referers,1,1
	.type	hs,@object              # @hs
	.local	hs
	.comm	hs,8,8
	.type	.L.str27,@object        # @.str27
.L.str27:
	.asciz	"tmr_create(occasional) failed"
	.size	.L.str27, 30

	.type	.L.str28,@object        # @.str28
.L.str28:
	.asciz	"tmr_create(idle) failed"
	.size	.L.str28, 24

	.type	.L.str29,@object        # @.str29
.L.str29:
	.asciz	"tmr_create(update_throttles) failed"
	.size	.L.str29, 36

	.type	.L.str30,@object        # @.str30
.L.str30:
	.asciz	"tmr_create(show_stats) failed"
	.size	.L.str30, 30

	.type	stats_time,@object      # @stats_time
	.comm	stats_time,8,8
	.type	start_time,@object      # @start_time
	.comm	start_time,8,8
	.type	stats_connections,@object # @stats_connections
	.comm	stats_connections,8,8
	.type	stats_bytes,@object     # @stats_bytes
	.comm	stats_bytes,8,8
	.type	stats_simultaneous,@object # @stats_simultaneous
	.comm	stats_simultaneous,4,4
	.type	.L.str31,@object        # @.str31
.L.str31:
	.asciz	"setgroups - %m"
	.size	.L.str31, 15

	.type	.L.str32,@object        # @.str32
.L.str32:
	.asciz	"setgid - %m"
	.size	.L.str32, 12

	.type	.L.str33,@object        # @.str33
.L.str33:
	.asciz	"initgroups - %m"
	.size	.L.str33, 16

	.type	.L.str34,@object        # @.str34
.L.str34:
	.asciz	"setuid - %m"
	.size	.L.str34, 12

	.type	.L.str35,@object        # @.str35
.L.str35:
	.asciz	"started as root without requesting chroot(), warning only"
	.size	.L.str35, 58

	.type	connects,@object        # @connects
	.local	connects
	.comm	connects,8,8
	.type	.L.str36,@object        # @.str36
.L.str36:
	.asciz	"out of memory allocating a connecttab"
	.size	.L.str36, 38

	.type	first_free_connect,@object # @first_free_connect
	.local	first_free_connect
	.comm	first_free_connect,4,4
	.type	num_connects,@object    # @num_connects
	.local	num_connects
	.comm	num_connects,4,4
	.type	httpd_conn_count,@object # @httpd_conn_count
	.local	httpd_conn_count
	.comm	httpd_conn_count,4,4
	.type	.L.str37,@object        # @.str37
.L.str37:
	.asciz	"fdwatch - %m"
	.size	.L.str37, 13

	.type	.L.str38,@object        # @.str38
.L.str38:
	.asciz	"exiting"
	.size	.L.str38, 8

	.type	.L.str39,@object        # @.str39
.L.str39:
	.asciz	"up %ld seconds, stats for %ld seconds:"
	.size	.L.str39, 39

	.type	.L.str40,@object        # @.str40
.L.str40:
	.asciz	"  thttpd - %ld connections (%g/sec), %d max simultaneous, %lld bytes (%g/sec), %d httpd_conns allocated"
	.size	.L.str40, 104

	.type	.L.str41,@object        # @.str41
.L.str41:
	.asciz	"%.80s connection timed out reading"
	.size	.L.str41, 35

	.type	.L.str42,@object        # @.str42
.L.str42:
	.zero	1
	.size	.L.str42, 1

	.type	.L.str43,@object        # @.str43
.L.str43:
	.asciz	"%.80s connection timed out sending"
	.size	.L.str43, 35

	.type	.L.str44,@object        # @.str44
.L.str44:
	.asciz	"replacing non-null linger_timer!"
	.size	.L.str44, 33

	.type	.L.str45,@object        # @.str45
.L.str45:
	.asciz	"tmr_create(linger_clear_connection) failed"
	.size	.L.str45, 43

	.type	.L.str46,@object        # @.str46
.L.str46:
	.asciz	"throttle #%d '%.80s' rate %ld greatly exceeding limit %ld; %d sending"
	.size	.L.str46, 70

	.type	.L.str47,@object        # @.str47
.L.str47:
	.asciz	"throttle #%d '%.80s' rate %ld exceeding limit %ld; %d sending"
	.size	.L.str47, 62

	.type	.L.str48,@object        # @.str48
.L.str48:
	.asciz	"throttle #%d '%.80s' rate %ld lower than minimum %ld; %d sending"
	.size	.L.str48, 65

	.type	.L.str49,@object        # @.str49
.L.str49:
	.asciz	"replacing non-null wakeup_timer!"
	.size	.L.str49, 33

	.type	.L.str50,@object        # @.str50
.L.str50:
	.asciz	"tmr_create(wakeup_connection) failed"
	.size	.L.str50, 37

	.type	.L.str51,@object        # @.str51
.L.str51:
	.asciz	"write - %m sending %.80s"
	.size	.L.str51, 25

	.type	.L.str52,@object        # @.str52
.L.str52:
	.asciz	"throttle sending count was negative - shouldn't happen!"
	.size	.L.str52, 56

	.type	.L.str53,@object        # @.str53
.L.str53:
	.asciz	"too many connections!"
	.size	.L.str53, 22

	.type	.L.str54,@object        # @.str54
.L.str54:
	.asciz	"the connects free list is messed up"
	.size	.L.str54, 36

	.type	.L.str55,@object        # @.str55
.L.str55:
	.asciz	"out of memory allocating an httpd_conn"
	.size	.L.str55, 39

	.type	.L.str56,@object        # @.str56
.L.str56:
	.asciz	"r"
	.size	.L.str56, 2

	.type	.L.str57,@object        # @.str57
.L.str57:
	.asciz	" %4900[^ \t] %ld-%ld"
	.size	.L.str57, 20

	.type	.L.str58,@object        # @.str58
.L.str58:
	.asciz	" %4900[^ \t] %ld"
	.size	.L.str58, 16

	.type	.L.str59,@object        # @.str59
.L.str59:
	.asciz	"unparsable line in %.80s - %.80s"
	.size	.L.str59, 33

	.type	.L.str60,@object        # @.str60
.L.str60:
	.asciz	"%s: unparsable line in %.80s - %.80s\n"
	.size	.L.str60, 38

	.type	.L.str61,@object        # @.str61
.L.str61:
	.asciz	"|/"
	.size	.L.str61, 3

	.type	.L.str62,@object        # @.str62
.L.str62:
	.asciz	"out of memory allocating a throttletab"
	.size	.L.str62, 39

	.type	.L.str63,@object        # @.str63
.L.str63:
	.asciz	"%s: out of memory allocating a throttletab\n"
	.size	.L.str63, 44

	.type	.L.str64,@object        # @.str64
.L.str64:
	.asciz	"out of memory copying a string"
	.size	.L.str64, 31

	.type	.L.str65,@object        # @.str65
.L.str65:
	.asciz	"%s: out of memory copying a string\n"
	.size	.L.str65, 36

	.type	.L.str66,@object        # @.str66
.L.str66:
	.asciz	"%d"
	.size	.L.str66, 3

	.type	.L.str67,@object        # @.str67
.L.str67:
	.asciz	"getaddrinfo %.80s - %.80s"
	.size	.L.str67, 26

	.type	.L.str68,@object        # @.str68
.L.str68:
	.asciz	"%s: getaddrinfo %s - %s\n"
	.size	.L.str68, 25

	.type	.L.str69,@object        # @.str69
.L.str69:
	.asciz	"%.80s - sockaddr too small (%lu < %lu)"
	.size	.L.str69, 39

	.type	.L.str70,@object        # @.str70
.L.str70:
	.asciz	"nobody"
	.size	.L.str70, 7

	.type	.L.str71,@object        # @.str71
.L.str71:
	.asciz	"iso-8859-1"
	.size	.L.str71, 11

	.type	.L.str74,@object        # @.str74
.L.str74:
	.asciz	"thttpd/2.25b 29dec2003"
	.size	.L.str74, 23

	.type	.L.str79,@object        # @.str79
.L.str79:
	.asciz	"-nor"
	.size	.L.str79, 5

	.type	.L.str82,@object        # @.str82
.L.str82:
	.asciz	"-nos"
	.size	.L.str82, 5

	.type	.L.str89,@object        # @.str89
.L.str89:
	.asciz	"-nov"
	.size	.L.str89, 5

	.type	.L.str91,@object        # @.str91
.L.str91:
	.asciz	"-nog"
	.size	.L.str91, 5

	.type	.L.str97,@object        # @.str97
.L.str97:
	.asciz	"usage:  %s [-C configfile] [-p port] [-d dir] [-r|-nor] [-dd data_dir] [-s|-nos] [-v|-nov] [-g|-nog] [-u user] [-c cgipat] [-t throttles] [-h host] [-l logfile] [-i pidfile] [-T charset] [-P P3P] [-M maxage] [-V] [-D]\n"
	.size	.L.str97, 219

	.type	.L.str98,@object        # @.str98
.L.str98:
	.asciz	" \t\n\r"
	.size	.L.str98, 5

	.type	.L.str99,@object        # @.str99
.L.str99:
	.asciz	"debug"
	.size	.L.str99, 6

	.type	.L.str100,@object       # @.str100
.L.str100:
	.asciz	"port"
	.size	.L.str100, 5

	.type	.L.str101,@object       # @.str101
.L.str101:
	.asciz	"dir"
	.size	.L.str101, 4

	.type	.L.str102,@object       # @.str102
.L.str102:
	.asciz	"nochroot"
	.size	.L.str102, 9

	.type	.L.str103,@object       # @.str103
.L.str103:
	.asciz	"data_dir"
	.size	.L.str103, 9

	.type	.L.str104,@object       # @.str104
.L.str104:
	.asciz	"symlink"
	.size	.L.str104, 8

	.type	.L.str105,@object       # @.str105
.L.str105:
	.asciz	"nosymlink"
	.size	.L.str105, 10

	.type	.L.str106,@object       # @.str106
.L.str106:
	.asciz	"symlinks"
	.size	.L.str106, 9

	.type	.L.str107,@object       # @.str107
.L.str107:
	.asciz	"nosymlinks"
	.size	.L.str107, 11

	.type	.L.str108,@object       # @.str108
.L.str108:
	.asciz	"user"
	.size	.L.str108, 5

	.type	.L.str109,@object       # @.str109
.L.str109:
	.asciz	"cgipat"
	.size	.L.str109, 7

	.type	.L.str110,@object       # @.str110
.L.str110:
	.asciz	"cgilimit"
	.size	.L.str110, 9

	.type	.L.str111,@object       # @.str111
.L.str111:
	.asciz	"urlpat"
	.size	.L.str111, 7

	.type	.L.str112,@object       # @.str112
.L.str112:
	.asciz	"noemptyreferers"
	.size	.L.str112, 16

	.type	.L.str113,@object       # @.str113
.L.str113:
	.asciz	"localpat"
	.size	.L.str113, 9

	.type	.L.str114,@object       # @.str114
.L.str114:
	.asciz	"throttles"
	.size	.L.str114, 10

	.type	.L.str115,@object       # @.str115
.L.str115:
	.asciz	"host"
	.size	.L.str115, 5

	.type	.L.str116,@object       # @.str116
.L.str116:
	.asciz	"logfile"
	.size	.L.str116, 8

	.type	.L.str117,@object       # @.str117
.L.str117:
	.asciz	"vhost"
	.size	.L.str117, 6

	.type	.L.str118,@object       # @.str118
.L.str118:
	.asciz	"novhost"
	.size	.L.str118, 8

	.type	.L.str119,@object       # @.str119
.L.str119:
	.asciz	"globalpasswd"
	.size	.L.str119, 13

	.type	.L.str120,@object       # @.str120
.L.str120:
	.asciz	"noglobalpasswd"
	.size	.L.str120, 15

	.type	.L.str121,@object       # @.str121
.L.str121:
	.asciz	"pidfile"
	.size	.L.str121, 8

	.type	.L.str122,@object       # @.str122
.L.str122:
	.asciz	"charset"
	.size	.L.str122, 8

	.type	.L.str123,@object       # @.str123
.L.str123:
	.asciz	"p3p"
	.size	.L.str123, 4

	.type	.L.str124,@object       # @.str124
.L.str124:
	.asciz	"max_age"
	.size	.L.str124, 8

	.type	.L.str125,@object       # @.str125
.L.str125:
	.asciz	"%s: unknown config option '%s'\n"
	.size	.L.str125, 32

	.type	.L.str126,@object       # @.str126
.L.str126:
	.asciz	"%s: value required for %s option\n"
	.size	.L.str126, 34

	.type	.L.str127,@object       # @.str127
.L.str127:
	.asciz	"%s: no value required for %s option\n"
	.size	.L.str127, 37

	.type	.L.str128,@object       # @.str128
.L.str128:
	.asciz	"re-opening logfile"
	.size	.L.str128, 19

	.type	.L.str129,@object       # @.str129
.L.str129:
	.asciz	"re-opening %.80s - %m"
	.size	.L.str129, 22

	.type	.L.str130,@object       # @.str130
.L.str130:
	.asciz	"/tmp"
	.size	.L.str130, 5

	.type	.L.str131,@object       # @.str131
.L.str131:
	.asciz	"child wait - %m"
	.size	.L.str131, 16

	.type	.L.str132,@object       # @.str132
.L.str132:
	.asciz	"exiting due to signal %d"
	.size	.L.str132, 25

	.type	httpd_initialize.ghnbuf,@object # @httpd_initialize.ghnbuf
	.local	httpd_initialize.ghnbuf
	.comm	httpd_initialize.ghnbuf,256,16
	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"out of memory allocating an httpd_server"
	.size	.L.str5, 41

	.type	.L.str133,@object       # @.str133
.L.str133:
	.asciz	"out of memory copying hostname"
	.size	.L.str133, 31

	.type	.L.str234,@object       # @.str234
.L.str234:
	.asciz	"out of memory copying cgi_pattern"
	.size	.L.str234, 34

	.type	.L.str335,@object       # @.str335
.L.str335:
	.asciz	"|/"
	.size	.L.str335, 3

	.type	.L.str436,@object       # @.str436
.L.str436:
	.asciz	"out of memory copying cwd"
	.size	.L.str436, 26

	.type	.L.str537,@object       # @.str537
.L.str537:
	.asciz	"out of memory copying url_pattern"
	.size	.L.str537, 34

	.type	.L.str638,@object       # @.str638
.L.str638:
	.asciz	"out of memory copying local_pattern"
	.size	.L.str638, 36

	.type	.L.str739,@object       # @.str739
.L.str739:
	.asciz	"%.80s starting on port %d"
	.size	.L.str739, 26

	.type	.L.str840,@object       # @.str840
.L.str840:
	.asciz	"thttpd/2.25b 29dec2003"
	.size	.L.str840, 23

	.type	.L.str941,@object       # @.str941
.L.str941:
	.asciz	"%.80s starting on %.80s, port %d"
	.size	.L.str941, 33

	.type	.L.str1042,@object      # @.str1042
.L.str1042:
	.asciz	"Bad Request"
	.size	.L.str1042, 12

	.type	httpd_err400title,@object # @httpd_err400title
	.data
	.globl	httpd_err400title
	.align	8
httpd_err400title:
	.quad	.L.str1042
	.size	httpd_err400title, 8

	.type	.L.str1145,@object      # @.str1145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1145:
	.asciz	"Your request has bad syntax or is inherently impossible to satisfy.\n"
	.size	.L.str1145, 69

	.type	httpd_err400form,@object # @httpd_err400form
	.data
	.globl	httpd_err400form
	.align	8
httpd_err400form:
	.quad	.L.str1145
	.size	httpd_err400form, 8

	.type	.L.str1248,@object      # @.str1248
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1248:
	.asciz	"Request Timeout"
	.size	.L.str1248, 16

	.type	httpd_err408title,@object # @httpd_err408title
	.data
	.globl	httpd_err408title
	.align	8
httpd_err408title:
	.quad	.L.str1248
	.size	httpd_err408title, 8

	.type	.L.str1351,@object      # @.str1351
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1351:
	.asciz	"No request appeared within a reasonable time period.\n"
	.size	.L.str1351, 54

	.type	httpd_err408form,@object # @httpd_err408form
	.data
	.globl	httpd_err408form
	.align	8
httpd_err408form:
	.quad	.L.str1351
	.size	httpd_err408form, 8

	.type	.L.str14,@object        # @.str14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str14:
	.asciz	"Service Temporarily Overloaded"
	.size	.L.str14, 31

	.type	httpd_err503title,@object # @httpd_err503title
	.data
	.globl	httpd_err503title
	.align	8
httpd_err503title:
	.quad	.L.str14
	.size	httpd_err503title, 8

	.type	.L.str1556,@object      # @.str1556
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1556:
	.asciz	"The requested URL '%.80s' is temporarily overloaded.  Please try again later.\n"
	.size	.L.str1556, 79

	.type	httpd_err503form,@object # @httpd_err503form
	.data
	.globl	httpd_err503form
	.align	8
httpd_err503form:
	.quad	.L.str1556
	.size	httpd_err503form, 8

	.type	sub_process,@object     # @sub_process
	.local	sub_process
	.comm	sub_process,1,1
	.type	str_alloc_count,@object # @str_alloc_count
	.local	str_alloc_count
	.comm	str_alloc_count,4,4
	.type	str_alloc_size,@object  # @str_alloc_size
	.local	str_alloc_size
	.comm	str_alloc_size,8,8
	.type	.L.str1659,@object      # @.str1659
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str1659:
	.asciz	"out of memory reallocating a string to %d bytes"
	.size	.L.str1659, 48

	.type	.L.str1760,@object      # @.str1760
.L.str1760:
	.asciz	"%s/%s/err%d.html"
	.size	.L.str1760, 17

	.type	.L.str1861,@object      # @.str1861
.L.str1861:
	.asciz	"errors"
	.size	.L.str1861, 7

	.type	.L.str1962,@object      # @.str1962
.L.str1962:
	.asciz	"%s/err%d.html"
	.size	.L.str1962, 14

	.type	.L.str2063,@object      # @.str2063
.L.str2063:
	.asciz	"GET"
	.size	.L.str2063, 4

	.type	.L.str2164,@object      # @.str2164
.L.str2164:
	.asciz	"HEAD"
	.size	.L.str2164, 5

	.type	.L.str2265,@object      # @.str2265
.L.str2265:
	.asciz	"POST"
	.size	.L.str2265, 5

	.type	.L.str2366,@object      # @.str2366
.L.str2366:
	.asciz	"UNKNOWN"
	.size	.L.str2366, 8

	.type	.L.str2467,@object      # @.str2467
.L.str2467:
	.asciz	"accept - %m"
	.size	.L.str2467, 12

	.type	.L.str2568,@object      # @.str2568
.L.str2568:
	.asciz	"unknown sockaddr family"
	.size	.L.str2568, 24

	.type	.L.str2669,@object      # @.str2669
.L.str2669:
	.zero	1
	.size	.L.str2669, 1

	.type	.L.str2770,@object      # @.str2770
.L.str2770:
	.asciz	" \t\n\r"
	.size	.L.str2770, 5

	.type	.L.str2871,@object      # @.str2871
.L.str2871:
	.asciz	"HTTP/0.9"
	.size	.L.str2871, 9

	.type	.L.str2972,@object      # @.str2972
.L.str2972:
	.asciz	"HTTP/1.0"
	.size	.L.str2972, 9

	.type	.L.str3073,@object      # @.str3073
.L.str3073:
	.asciz	"http://"
	.size	.L.str3073, 8

	.type	.L.str3174,@object      # @.str3174
.L.str3174:
	.asciz	"."
	.size	.L.str3174, 2

	.type	.L.str3275,@object      # @.str3275
.L.str3275:
	.asciz	"Referer:"
	.size	.L.str3275, 9

	.type	.L.str3476,@object      # @.str3476
.L.str3476:
	.asciz	"User-Agent:"
	.size	.L.str3476, 12

	.type	.L.str3577,@object      # @.str3577
.L.str3577:
	.asciz	"Host:"
	.size	.L.str3577, 6

	.type	.L.str3678,@object      # @.str3678
.L.str3678:
	.asciz	"Accept:"
	.size	.L.str3678, 8

	.type	.L.str3779,@object      # @.str3779
.L.str3779:
	.asciz	"%.80s way too much Accept: data"
	.size	.L.str3779, 32

	.type	.L.str3880,@object      # @.str3880
.L.str3880:
	.asciz	", "
	.size	.L.str3880, 3

	.type	.L.str3981,@object      # @.str3981
.L.str3981:
	.asciz	"Accept-Encoding:"
	.size	.L.str3981, 17

	.type	.L.str4082,@object      # @.str4082
.L.str4082:
	.asciz	"%.80s way too much Accept-Encoding: data"
	.size	.L.str4082, 41

	.type	.L.str4183,@object      # @.str4183
.L.str4183:
	.asciz	"Accept-Language:"
	.size	.L.str4183, 17

	.type	.L.str4284,@object      # @.str4284
.L.str4284:
	.asciz	"If-Modified-Since:"
	.size	.L.str4284, 19

	.type	.L.str4385,@object      # @.str4385
.L.str4385:
	.asciz	"unparsable time: %.80s"
	.size	.L.str4385, 23

	.type	.L.str4486,@object      # @.str4486
.L.str4486:
	.asciz	"Cookie:"
	.size	.L.str4486, 8

	.type	.L.str4587,@object      # @.str4587
.L.str4587:
	.asciz	"Range:"
	.size	.L.str4587, 7

	.type	.L.str4688,@object      # @.str4688
.L.str4688:
	.asciz	"="
	.size	.L.str4688, 2

	.type	.L.str4789,@object      # @.str4789
.L.str4789:
	.asciz	"Range-If:"
	.size	.L.str4789, 10

	.type	.L.str4890,@object      # @.str4890
.L.str4890:
	.asciz	"If-Range:"
	.size	.L.str4890, 10

	.type	.L.str4991,@object      # @.str4991
.L.str4991:
	.asciz	"Content-Type:"
	.size	.L.str4991, 14

	.type	.L.str5092,@object      # @.str5092
.L.str5092:
	.asciz	"Content-Length:"
	.size	.L.str5092, 16

	.type	.L.str5193,@object      # @.str5193
.L.str5193:
	.asciz	"Authorization:"
	.size	.L.str5193, 15

	.type	.L.str5294,@object      # @.str5294
.L.str5294:
	.asciz	"Connection:"
	.size	.L.str5294, 12

	.type	.L.str5395,@object      # @.str5395
.L.str5395:
	.asciz	"keep-alive"
	.size	.L.str5395, 11

	.type	.L.str5496,@object      # @.str5496
.L.str5496:
	.asciz	"%.80s URL \"%.80s\" goes outside the web tree"
	.size	.L.str5496, 44

	.type	.L.str5597,@object      # @.str5597
.L.str5597:
	.asciz	"The requested URL '%.80s' resolves to a file outside the permitted web server directory tree.\n"
	.size	.L.str5597, 95

	.type	httpd_ntoa.str,@object  # @httpd_ntoa.str
	.local	httpd_ntoa.str
	.comm	httpd_ntoa.str,200,16
	.type	.L.str5698,@object      # @.str5698
.L.str5698:
	.asciz	"::ffff:"
	.size	.L.str5698, 8

	.type	.L.str5799,@object      # @.str5799
.L.str5799:
	.asciz	"  libhttpd - %d strings allocated, %lu bytes (%g bytes/str)"
	.size	.L.str5799, 60

	.type	.L.str58100,@object     # @.str58100
.L.str58100:
	.asciz	"-"
	.size	.L.str58100, 2

	.type	.L.str59101,@object     # @.str59101
.L.str59101:
	.asciz	"/%.100s%.200s"
	.size	.L.str59101, 14

	.type	.L.str60102,@object     # @.str60102
.L.str60102:
	.asciz	"%.200s"
	.size	.L.str60102, 7

	.type	.L.str61103,@object     # @.str61103
.L.str61103:
	.asciz	"%lld"
	.size	.L.str61103, 5

	.type	.L.str62104,@object     # @.str62104
.L.str62104:
	.asciz	"%d/%b/%Y:%H:%M:%S"
	.size	.L.str62104, 18

	.type	.L.str63105,@object     # @.str63105
.L.str63105:
	.asciz	"%s %c%04d"
	.size	.L.str63105, 10

	.type	.L.str64106,@object     # @.str64106
.L.str64106:
	.asciz	"%.80s - %.80s [%s] \"%.80s %.300s %.80s\" %d %s \"%.200s\" \"%.200s\"\n"
	.size	.L.str64106, 65

	.type	.L.str65107,@object     # @.str65107
.L.str65107:
	.asciz	"%.80s - %.80s \"%.80s %.200s %.80s\" %d %s \"%.200s\" \"%.200s\""
	.size	.L.str65107, 59

	.type	really_start_request.indexname,@object # @really_start_request.indexname
	.local	really_start_request.indexname
	.comm	really_start_request.indexname,8,8
	.type	really_start_request.maxindexname,@object # @really_start_request.maxindexname
	.local	really_start_request.maxindexname
	.comm	really_start_request.maxindexname,8,8
	.type	really_start_request.index_names,@object # @really_start_request.index_names
	.section	.rodata,"a",@progbits
	.align	16
really_start_request.index_names:
	.quad	.L.str66108
	.quad	.L.str67109
	.quad	.L.str68110
	.quad	.L.str69111
	.quad	.L.str70112
	.quad	.L.str71113
	.size	really_start_request.index_names, 48

	.type	.L.str66108,@object     # @.str66108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str66108:
	.asciz	"index.html"
	.size	.L.str66108, 11

	.type	.L.str67109,@object     # @.str67109
.L.str67109:
	.asciz	"index.htm"
	.size	.L.str67109, 10

	.type	.L.str68110,@object     # @.str68110
.L.str68110:
	.asciz	"index.xhtml"
	.size	.L.str68110, 12

	.type	.L.str69111,@object     # @.str69111
.L.str69111:
	.asciz	"index.xht"
	.size	.L.str69111, 10

	.type	.L.str70112,@object     # @.str70112
.L.str70112:
	.asciz	"Default.htm"
	.size	.L.str70112, 12

	.type	.L.str71113,@object     # @.str71113
.L.str71113:
	.asciz	"index.cgi"
	.size	.L.str71113, 10

	.type	really_start_request.dirname,@object # @really_start_request.dirname
	.local	really_start_request.dirname
	.comm	really_start_request.dirname,8,8
	.type	really_start_request.maxdirname,@object # @really_start_request.maxdirname
	.local	really_start_request.maxdirname
	.comm	really_start_request.maxdirname,8,8
	.type	.L.str72,@object        # @.str72
.L.str72:
	.asciz	"%.80s URL \"%.80s\" resolves to a non world-readable file"
	.size	.L.str72, 56

	.type	.L.str73,@object        # @.str73
.L.str73:
	.asciz	"The requested URL '%.80s' resolves to a file that is not world-readable.\n"
	.size	.L.str73, 74

	.type	.L.str74114,@object     # @.str74114
.L.str74114:
	.asciz	"/"
	.size	.L.str74114, 2

	.type	.L.str75,@object        # @.str75
.L.str75:
	.asciz	"./"
	.size	.L.str75, 3

	.type	.L.str76,@object        # @.str76
.L.str76:
	.asciz	"%.80s URL \"%.80s\" tried to index a directory with indexing disabled"
	.size	.L.str76, 68

	.type	.L.str77,@object        # @.str77
.L.str77:
	.asciz	"The requested URL '%.80s' resolves to a directory that has indexing disabled.\n"
	.size	.L.str77, 79

	.type	.L.str78,@object        # @.str78
.L.str78:
	.asciz	"%.80s URL \"%.80s\" resolves to a non-world-readable index file"
	.size	.L.str78, 62

	.type	.L.str79115,@object     # @.str79115
.L.str79115:
	.asciz	"The requested URL '%.80s' resolves to an index file that is not world-readable.\n"
	.size	.L.str79115, 81

	.type	.L.str80,@object        # @.str80
.L.str80:
	.asciz	".htpasswd"
	.size	.L.str80, 10

	.type	.L.str81,@object        # @.str81
.L.str81:
	.asciz	"%.80s URL \"%.80s\" tried to retrieve an auth file"
	.size	.L.str81, 49

	.type	.L.str82116,@object     # @.str82116
.L.str82116:
	.asciz	"The requested URL '%.80s' is an authorization file, retrieving it is not permitted.\n"
	.size	.L.str82116, 85

	.type	.L.str83,@object        # @.str83
.L.str83:
	.asciz	"%.80s URL \"%.80s\" is executable but isn't CGI"
	.size	.L.str83, 46

	.type	.L.str84,@object        # @.str84
.L.str84:
	.asciz	"The requested URL '%.80s' resolves to a file which is marked executable but is not a CGI file; retrieving it is forbidden.\n"
	.size	.L.str84, 124

	.type	.L.str85,@object        # @.str85
.L.str85:
	.asciz	"%.80s URL \"%.80s\" has pathinfo but isn't CGI"
	.size	.L.str85, 45

	.type	.L.str86,@object        # @.str86
.L.str86:
	.asciz	"The requested URL '%.80s' resolves to a file plus CGI-style pathinfo, but the file is not a valid CGI file.\n"
	.size	.L.str86, 109

	.type	.L.str87,@object        # @.str87
.L.str87:
	.asciz	"Not Modified"
	.size	.L.str87, 13

	.type	.L.str88,@object        # @.str88
.L.str88:
	.asciz	"OK"
	.size	.L.str88, 3

	.type	.L.str89117,@object     # @.str89117
.L.str89117:
	.asciz	"%a, %d %b %Y %H:%M:%S GMT"
	.size	.L.str89117, 26

	.type	.L.str90,@object        # @.str90
.L.str90:
	.asciz	"%.20s %d %s\r\nServer: %s\r\nContent-Type: %s\r\nDate: %s\r\nLast-Modified: %s\r\nAccept-Ranges: bytes\r\nConnection: close\r\n"
	.size	.L.str90, 114

	.type	.L.str91118,@object     # @.str91118
.L.str91118:
	.asciz	"Cache-Control: no-cache,no-store\r\n"
	.size	.L.str91118, 35

	.type	.L.str92,@object        # @.str92
.L.str92:
	.asciz	"Content-Encoding: %s\r\n"
	.size	.L.str92, 23

	.type	.L.str93,@object        # @.str93
.L.str93:
	.asciz	"Content-Range: bytes %lld-%lld/%lld\r\nContent-Length: %lld\r\n"
	.size	.L.str93, 60

	.type	.L.str94,@object        # @.str94
.L.str94:
	.asciz	"Content-Length: %lld\r\n"
	.size	.L.str94, 23

	.type	.L.str95,@object        # @.str95
.L.str95:
	.asciz	"P3P: %s\r\n"
	.size	.L.str95, 10

	.type	.L.str96,@object        # @.str96
.L.str96:
	.asciz	"Cache-Control: max-age=%d\r\nExpires: %s\r\n"
	.size	.L.str96, 41

	.type	.L.str98119,@object     # @.str98119
.L.str98119:
	.asciz	"Partial Content"
	.size	.L.str98119, 16

	.type	.L.str99120,@object     # @.str99120
.L.str99120:
	.asciz	"text/plain; charset=%s"
	.size	.L.str99120, 23

	.type	enc_tab,@object         # @enc_tab
	.data
	.align	16
enc_tab:
	.quad	.L.str424
	.quad	0                       # 0x0
	.quad	.L.str425
	.quad	0                       # 0x0
	.quad	.L.str426
	.quad	0                       # 0x0
	.quad	.L.str427
	.quad	0                       # 0x0
	.quad	.L.str428
	.quad	0                       # 0x0
	.quad	.L.str429
	.quad	0                       # 0x0
	.size	enc_tab, 96

	.type	typ_tab,@object         # @typ_tab
	.align	16
typ_tab:
	.quad	.L.str101121
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str103123
	.quad	0                       # 0x0
	.quad	.L.str104124
	.quad	0                       # 0x0
	.quad	.L.str105125
	.quad	0                       # 0x0
	.quad	.L.str106126
	.quad	0                       # 0x0
	.quad	.L.str107127
	.quad	0                       # 0x0
	.quad	.L.str108128
	.quad	0                       # 0x0
	.quad	.L.str109129
	.quad	0                       # 0x0
	.quad	.L.str110130
	.quad	0                       # 0x0
	.quad	.L.str111131
	.quad	0                       # 0x0
	.quad	.L.str112132
	.quad	0                       # 0x0
	.quad	.L.str113133
	.quad	0                       # 0x0
	.quad	.L.str112132
	.quad	0                       # 0x0
	.quad	.L.str114134
	.quad	0                       # 0x0
	.quad	.L.str112132
	.quad	0                       # 0x0
	.quad	.L.str115135
	.quad	0                       # 0x0
	.quad	.L.str116136
	.quad	0                       # 0x0
	.quad	.L.str117137
	.quad	0                       # 0x0
	.quad	.L.str118138
	.quad	0                       # 0x0
	.quad	.L.str119139
	.quad	0                       # 0x0
	.quad	.L.str118138
	.quad	0                       # 0x0
	.quad	.L.str120140
	.quad	0                       # 0x0
	.quad	.L.str121141
	.quad	0                       # 0x0
	.quad	.L.str122142
	.quad	0                       # 0x0
	.quad	.L.str123143
	.quad	0                       # 0x0
	.quad	.L.str124144
	.quad	0                       # 0x0
	.quad	.L.str125145
	.quad	0                       # 0x0
	.quad	.L.str126146
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str127147
	.quad	0                       # 0x0
	.quad	.L.str128148
	.quad	0                       # 0x0
	.quad	.L.str129149
	.quad	0                       # 0x0
	.quad	.L.str130150
	.quad	0                       # 0x0
	.quad	.L.str131151
	.quad	0                       # 0x0
	.quad	.L.str132152
	.quad	0                       # 0x0
	.quad	.L.str133153
	.quad	0                       # 0x0
	.quad	.L.str134
	.quad	0                       # 0x0
	.quad	.L.str135
	.quad	0                       # 0x0
	.quad	.L.str136
	.quad	0                       # 0x0
	.quad	.L.str137
	.quad	0                       # 0x0
	.quad	.L.str138
	.quad	0                       # 0x0
	.quad	.L.str139
	.quad	0                       # 0x0
	.quad	.L.str140
	.quad	0                       # 0x0
	.quad	.L.str141
	.quad	0                       # 0x0
	.quad	.L.str142
	.quad	0                       # 0x0
	.quad	.L.str143
	.quad	0                       # 0x0
	.quad	.L.str144
	.quad	0                       # 0x0
	.quad	.L.str145
	.quad	0                       # 0x0
	.quad	.L.str146
	.quad	0                       # 0x0
	.quad	.L.str147
	.quad	0                       # 0x0
	.quad	.L.str146
	.quad	0                       # 0x0
	.quad	.L.str148
	.quad	0                       # 0x0
	.quad	.L.str149
	.quad	0                       # 0x0
	.quad	.L.str150
	.quad	0                       # 0x0
	.quad	.L.str149
	.quad	0                       # 0x0
	.quad	.L.str151
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str152
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str153
	.quad	0                       # 0x0
	.quad	.L.str154
	.quad	0                       # 0x0
	.quad	.L.str155
	.quad	0                       # 0x0
	.quad	.L.str156
	.quad	0                       # 0x0
	.quad	.L.str157
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str158
	.quad	0                       # 0x0
	.quad	.L.str159
	.quad	0                       # 0x0
	.quad	.L.str160
	.quad	0                       # 0x0
	.quad	.L.str146
	.quad	0                       # 0x0
	.quad	.L.str161
	.quad	0                       # 0x0
	.quad	.L.str110130
	.quad	0                       # 0x0
	.quad	.L.str162
	.quad	0                       # 0x0
	.quad	.L.str163
	.quad	0                       # 0x0
	.quad	.L.str164
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str165
	.quad	0                       # 0x0
	.quad	.L.str166
	.quad	0                       # 0x0
	.quad	.L.str167
	.quad	0                       # 0x0
	.quad	.L.str146
	.quad	0                       # 0x0
	.quad	.L.str168
	.quad	0                       # 0x0
	.quad	.L.str169
	.quad	0                       # 0x0
	.quad	.L.str170
	.quad	0                       # 0x0
	.quad	.L.str169
	.quad	0                       # 0x0
	.quad	.L.str171
	.quad	0                       # 0x0
	.quad	.L.str169
	.quad	0                       # 0x0
	.quad	.L.str172
	.quad	0                       # 0x0
	.quad	.L.str169
	.quad	0                       # 0x0
	.quad	.L.str173
	.quad	0                       # 0x0
	.quad	.L.str169
	.quad	0                       # 0x0
	.quad	.L.str174
	.quad	0                       # 0x0
	.quad	.L.str175
	.quad	0                       # 0x0
	.quad	.L.str176
	.quad	0                       # 0x0
	.quad	.L.str177
	.quad	0                       # 0x0
	.quad	.L.str178
	.quad	0                       # 0x0
	.quad	.L.str179
	.quad	0                       # 0x0
	.quad	.L.str180
	.quad	0                       # 0x0
	.quad	.L.str181
	.quad	0                       # 0x0
	.quad	.L.str182
	.quad	0                       # 0x0
	.quad	.L.str183
	.quad	0                       # 0x0
	.quad	.L.str184
	.quad	0                       # 0x0
	.quad	.L.str183
	.quad	0                       # 0x0
	.quad	.L.str185
	.quad	0                       # 0x0
	.quad	.L.str186
	.quad	0                       # 0x0
	.quad	.L.str187
	.quad	0                       # 0x0
	.quad	.L.str188
	.quad	0                       # 0x0
	.quad	.L.str189
	.quad	0                       # 0x0
	.quad	.L.str190
	.quad	0                       # 0x0
	.quad	.L.str191
	.quad	0                       # 0x0
	.quad	.L.str190
	.quad	0                       # 0x0
	.quad	.L.str192
	.quad	0                       # 0x0
	.quad	.L.str193
	.quad	0                       # 0x0
	.quad	.L.str194
	.quad	0                       # 0x0
	.quad	.L.str195
	.quad	0                       # 0x0
	.quad	.L.str196
	.quad	0                       # 0x0
	.quad	.L.str197
	.quad	0                       # 0x0
	.quad	.L.str198
	.quad	0                       # 0x0
	.quad	.L.str197
	.quad	0                       # 0x0
	.quad	.L.str199
	.quad	0                       # 0x0
	.quad	.L.str197
	.quad	0                       # 0x0
	.quad	.L.str200
	.quad	0                       # 0x0
	.quad	.L.str197
	.quad	0                       # 0x0
	.quad	.L.str201
	.quad	0                       # 0x0
	.quad	.L.str202
	.quad	0                       # 0x0
	.quad	.L.str203
	.quad	0                       # 0x0
	.quad	.L.str204
	.quad	0                       # 0x0
	.quad	.L.str205
	.quad	0                       # 0x0
	.quad	.L.str206
	.quad	0                       # 0x0
	.quad	.L.str207
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str208
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str209
	.quad	0                       # 0x0
	.quad	.L.str210
	.quad	0                       # 0x0
	.quad	.L.str211
	.quad	0                       # 0x0
	.quad	.L.str212
	.quad	0                       # 0x0
	.quad	.L.str213
	.quad	0                       # 0x0
	.quad	.L.str214
	.quad	0                       # 0x0
	.quad	.L.str215
	.quad	0                       # 0x0
	.quad	.L.str216
	.quad	0                       # 0x0
	.quad	.L.str217
	.quad	0                       # 0x0
	.quad	.L.str218
	.quad	0                       # 0x0
	.quad	.L.str219
	.quad	0                       # 0x0
	.quad	.L.str204
	.quad	0                       # 0x0
	.quad	.L.str220
	.quad	0                       # 0x0
	.quad	.L.str204
	.quad	0                       # 0x0
	.quad	.L.str221
	.quad	0                       # 0x0
	.quad	.L.str222
	.quad	0                       # 0x0
	.quad	.L.str223
	.quad	0                       # 0x0
	.quad	.L.str224
	.quad	0                       # 0x0
	.quad	.L.str225
	.quad	0                       # 0x0
	.quad	.L.str214
	.quad	0                       # 0x0
	.quad	.L.str226
	.quad	0                       # 0x0
	.quad	.L.str227
	.quad	0                       # 0x0
	.quad	.L.str228
	.quad	0                       # 0x0
	.quad	.L.str229
	.quad	0                       # 0x0
	.quad	.L.str230
	.quad	0                       # 0x0
	.quad	.L.str231
	.quad	0                       # 0x0
	.quad	.L.str232
	.quad	0                       # 0x0
	.quad	.L.str231
	.quad	0                       # 0x0
	.quad	.L.str233
	.quad	0                       # 0x0
	.quad	.L.str234154
	.quad	0                       # 0x0
	.quad	.L.str235
	.quad	0                       # 0x0
	.quad	.L.str236
	.quad	0                       # 0x0
	.quad	.L.str237
	.quad	0                       # 0x0
	.quad	.L.str236
	.quad	0                       # 0x0
	.quad	.L.str238
	.quad	0                       # 0x0
	.quad	.L.str236
	.quad	0                       # 0x0
	.quad	.L.str239
	.quad	0                       # 0x0
	.quad	.L.str231
	.quad	0                       # 0x0
	.quad	.L.str240
	.quad	0                       # 0x0
	.quad	.L.str241
	.quad	0                       # 0x0
	.quad	.L.str242
	.quad	0                       # 0x0
	.quad	.L.str218
	.quad	0                       # 0x0
	.quad	.L.str243
	.quad	0                       # 0x0
	.quad	.L.str229
	.quad	0                       # 0x0
	.quad	.L.str244
	.quad	0                       # 0x0
	.quad	.L.str245
	.quad	0                       # 0x0
	.quad	.L.str246
	.quad	0                       # 0x0
	.quad	.L.str130150
	.quad	0                       # 0x0
	.quad	.L.str247
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str248
	.quad	0                       # 0x0
	.quad	.L.str249
	.quad	0                       # 0x0
	.quad	.L.str250
	.quad	0                       # 0x0
	.quad	.L.str251
	.quad	0                       # 0x0
	.quad	.L.str252
	.quad	0                       # 0x0
	.quad	.L.str253
	.quad	0                       # 0x0
	.quad	.L.str254
	.quad	0                       # 0x0
	.quad	.L.str255
	.quad	0                       # 0x0
	.quad	.L.str256
	.quad	0                       # 0x0
	.quad	.L.str257
	.quad	0                       # 0x0
	.quad	.L.str258
	.quad	0                       # 0x0
	.quad	.L.str259
	.quad	0                       # 0x0
	.quad	.L.str260
	.quad	0                       # 0x0
	.quad	.L.str261
	.quad	0                       # 0x0
	.quad	.L.str262
	.quad	0                       # 0x0
	.quad	.L.str263
	.quad	0                       # 0x0
	.quad	.L.str264
	.quad	0                       # 0x0
	.quad	.L.str265
	.quad	0                       # 0x0
	.quad	.L.str266
	.quad	0                       # 0x0
	.quad	.L.str267
	.quad	0                       # 0x0
	.quad	.L.str268
	.quad	0                       # 0x0
	.quad	.L.str269
	.quad	0                       # 0x0
	.quad	.L.str270
	.quad	0                       # 0x0
	.quad	.L.str271
	.quad	0                       # 0x0
	.quad	.L.str272
	.quad	0                       # 0x0
	.quad	.L.str110130
	.quad	0                       # 0x0
	.quad	.L.str273
	.quad	0                       # 0x0
	.quad	.L.str227
	.quad	0                       # 0x0
	.quad	.L.str274
	.quad	0                       # 0x0
	.quad	.L.str275
	.quad	0                       # 0x0
	.quad	.L.str276
	.quad	0                       # 0x0
	.quad	.L.str277
	.quad	0                       # 0x0
	.quad	.L.str278
	.quad	0                       # 0x0
	.quad	.L.str279
	.quad	0                       # 0x0
	.quad	.L.str280
	.quad	0                       # 0x0
	.quad	.L.str281
	.quad	0                       # 0x0
	.quad	.L.str282
	.quad	0                       # 0x0
	.quad	.L.str283
	.quad	0                       # 0x0
	.quad	.L.str284
	.quad	0                       # 0x0
	.quad	.L.str277
	.quad	0                       # 0x0
	.quad	.L.str285
	.quad	0                       # 0x0
	.quad	.L.str286
	.quad	0                       # 0x0
	.quad	.L.str287
	.quad	0                       # 0x0
	.quad	.L.str288
	.quad	0                       # 0x0
	.quad	.L.str289
	.quad	0                       # 0x0
	.quad	.L.str290
	.quad	0                       # 0x0
	.quad	.L.str291
	.quad	0                       # 0x0
	.quad	.L.str292
	.quad	0                       # 0x0
	.quad	.L.str293
	.quad	0                       # 0x0
	.quad	.L.str294
	.quad	0                       # 0x0
	.quad	.L.str295
	.quad	0                       # 0x0
	.quad	.L.str296
	.quad	0                       # 0x0
	.quad	.L.str297
	.quad	0                       # 0x0
	.quad	.L.str296
	.quad	0                       # 0x0
	.quad	.L.str298
	.quad	0                       # 0x0
	.quad	.L.str299
	.quad	0                       # 0x0
	.quad	.L.str300
	.quad	0                       # 0x0
	.quad	.L.str301
	.quad	0                       # 0x0
	.quad	.L.str302
	.quad	0                       # 0x0
	.quad	.L.str218
	.quad	0                       # 0x0
	.quad	.L.str303
	.quad	0                       # 0x0
	.quad	.L.str304
	.quad	0                       # 0x0
	.quad	.L.str305
	.quad	0                       # 0x0
	.quad	.L.str306
	.quad	0                       # 0x0
	.quad	.L.str307
	.quad	0                       # 0x0
	.quad	.L.str306
	.quad	0                       # 0x0
	.quad	.L.str308
	.quad	0                       # 0x0
	.quad	.L.str306
	.quad	0                       # 0x0
	.quad	.L.str309
	.quad	0                       # 0x0
	.quad	.L.str306
	.quad	0                       # 0x0
	.quad	.L.str310
	.quad	0                       # 0x0
	.quad	.L.str311
	.quad	0                       # 0x0
	.quad	.L.str312
	.quad	0                       # 0x0
	.quad	.L.str311
	.quad	0                       # 0x0
	.quad	.L.str313
	.quad	0                       # 0x0
	.quad	.L.str121141
	.quad	0                       # 0x0
	.quad	.L.str314
	.quad	0                       # 0x0
	.quad	.L.str102122
	.quad	0                       # 0x0
	.quad	.L.str315
	.quad	0                       # 0x0
	.quad	.L.str316
	.quad	0                       # 0x0
	.quad	.L.str317
	.quad	0                       # 0x0
	.quad	.L.str318
	.quad	0                       # 0x0
	.quad	.L.str319
	.quad	0                       # 0x0
	.quad	.L.str320
	.quad	0                       # 0x0
	.quad	.L.str321
	.quad	0                       # 0x0
	.quad	.L.str322
	.quad	0                       # 0x0
	.quad	.L.str323
	.quad	0                       # 0x0
	.quad	.L.str324
	.quad	0                       # 0x0
	.quad	.L.str325
	.quad	0                       # 0x0
	.quad	.L.str326
	.quad	0                       # 0x0
	.quad	.L.str327
	.quad	0                       # 0x0
	.quad	.L.str328
	.quad	0                       # 0x0
	.quad	.L.str329
	.quad	0                       # 0x0
	.quad	.L.str330
	.quad	0                       # 0x0
	.quad	.L.str331
	.quad	0                       # 0x0
	.quad	.L.str332
	.quad	0                       # 0x0
	.quad	.L.str333
	.quad	0                       # 0x0
	.quad	.L.str332
	.quad	0                       # 0x0
	.quad	.L.str334
	.quad	0                       # 0x0
	.quad	.L.str335155
	.quad	0                       # 0x0
	.quad	.L.str336
	.quad	0                       # 0x0
	.quad	.L.str337
	.quad	0                       # 0x0
	.quad	.L.str338
	.quad	0                       # 0x0
	.quad	.L.str339
	.quad	0                       # 0x0
	.quad	.L.str340
	.quad	0                       # 0x0
	.quad	.L.str341
	.quad	0                       # 0x0
	.quad	.L.str342
	.quad	0                       # 0x0
	.quad	.L.str343
	.quad	0                       # 0x0
	.quad	.L.str344
	.quad	0                       # 0x0
	.quad	.L.str345
	.quad	0                       # 0x0
	.quad	.L.str346
	.quad	0                       # 0x0
	.quad	.L.str347
	.quad	0                       # 0x0
	.quad	.L.str348
	.quad	0                       # 0x0
	.quad	.L.str286
	.quad	0                       # 0x0
	.quad	.L.str349
	.quad	0                       # 0x0
	.quad	.L.str350
	.quad	0                       # 0x0
	.quad	.L.str351
	.quad	0                       # 0x0
	.quad	.L.str352
	.quad	0                       # 0x0
	.quad	.L.str353
	.quad	0                       # 0x0
	.quad	.L.str354
	.quad	0                       # 0x0
	.quad	.L.str355
	.quad	0                       # 0x0
	.quad	.L.str356
	.quad	0                       # 0x0
	.quad	.L.str357
	.quad	0                       # 0x0
	.quad	.L.str356
	.quad	0                       # 0x0
	.quad	.L.str358
	.quad	0                       # 0x0
	.quad	.L.str359
	.quad	0                       # 0x0
	.quad	.L.str360
	.quad	0                       # 0x0
	.quad	.L.str359
	.quad	0                       # 0x0
	.quad	.L.str361
	.quad	0                       # 0x0
	.quad	.L.str286
	.quad	0                       # 0x0
	.quad	.L.str362
	.quad	0                       # 0x0
	.quad	.L.str363
	.quad	0                       # 0x0
	.quad	.L.str364
	.quad	0                       # 0x0
	.quad	.L.str365
	.quad	0                       # 0x0
	.quad	.L.str366
	.quad	0                       # 0x0
	.quad	.L.str99120
	.quad	0                       # 0x0
	.quad	.L.str367
	.quad	0                       # 0x0
	.quad	.L.str368
	.quad	0                       # 0x0
	.quad	.L.str369
	.quad	0                       # 0x0
	.quad	.L.str370
	.quad	0                       # 0x0
	.quad	.L.str371
	.quad	0                       # 0x0
	.quad	.L.str372
	.quad	0                       # 0x0
	.quad	.L.str373
	.quad	0                       # 0x0
	.quad	.L.str374
	.quad	0                       # 0x0
	.quad	.L.str375
	.quad	0                       # 0x0
	.quad	.L.str376
	.quad	0                       # 0x0
	.quad	.L.str377
	.quad	0                       # 0x0
	.quad	.L.str378
	.quad	0                       # 0x0
	.quad	.L.str379
	.quad	0                       # 0x0
	.quad	.L.str380
	.quad	0                       # 0x0
	.quad	.L.str381
	.quad	0                       # 0x0
	.quad	.L.str382
	.quad	0                       # 0x0
	.quad	.L.str383
	.quad	0                       # 0x0
	.quad	.L.str384
	.quad	0                       # 0x0
	.quad	.L.str385
	.quad	0                       # 0x0
	.quad	.L.str386
	.quad	0                       # 0x0
	.quad	.L.str387
	.quad	0                       # 0x0
	.quad	.L.str388
	.quad	0                       # 0x0
	.quad	.L.str389
	.quad	0                       # 0x0
	.quad	.L.str390
	.quad	0                       # 0x0
	.quad	.L.str391
	.quad	0                       # 0x0
	.quad	.L.str392
	.quad	0                       # 0x0
	.quad	.L.str393
	.quad	0                       # 0x0
	.quad	.L.str394
	.quad	0                       # 0x0
	.quad	.L.str395
	.quad	0                       # 0x0
	.quad	.L.str396
	.quad	0                       # 0x0
	.quad	.L.str397
	.quad	0                       # 0x0
	.quad	.L.str398
	.quad	0                       # 0x0
	.quad	.L.str399
	.quad	0                       # 0x0
	.quad	.L.str400
	.quad	0                       # 0x0
	.quad	.L.str401
	.quad	0                       # 0x0
	.quad	.L.str402
	.quad	0                       # 0x0
	.quad	.L.str403
	.quad	0                       # 0x0
	.quad	.L.str372
	.quad	0                       # 0x0
	.quad	.L.str404
	.quad	0                       # 0x0
	.quad	.L.str318
	.quad	0                       # 0x0
	.quad	.L.str405
	.quad	0                       # 0x0
	.quad	.L.str406
	.quad	0                       # 0x0
	.quad	.L.str407
	.quad	0                       # 0x0
	.quad	.L.str408
	.quad	0                       # 0x0
	.quad	.L.str409
	.quad	0                       # 0x0
	.quad	.L.str410
	.quad	0                       # 0x0
	.quad	.L.str411
	.quad	0                       # 0x0
	.quad	.L.str410
	.quad	0                       # 0x0
	.quad	.L.str412
	.quad	0                       # 0x0
	.quad	.L.str413
	.quad	0                       # 0x0
	.quad	.L.str414
	.quad	0                       # 0x0
	.quad	.L.str156
	.quad	0                       # 0x0
	.quad	.L.str415
	.quad	0                       # 0x0
	.quad	.L.str416
	.quad	0                       # 0x0
	.quad	.L.str417
	.quad	0                       # 0x0
	.quad	.L.str156
	.quad	0                       # 0x0
	.quad	.L.str418
	.quad	0                       # 0x0
	.quad	.L.str419
	.quad	0                       # 0x0
	.quad	.L.str420
	.quad	0                       # 0x0
	.quad	.L.str421
	.quad	0                       # 0x0
	.quad	.L.str422
	.quad	0                       # 0x0
	.quad	.L.str423
	.quad	0                       # 0x0
	.size	typ_tab, 6080

	.type	.L.str101121,@object    # @.str101121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str101121:
	.asciz	"a"
	.size	.L.str101121, 2

	.type	.L.str102122,@object    # @.str102122
.L.str102122:
	.asciz	"application/octet-stream"
	.size	.L.str102122, 25

	.type	.L.str103123,@object    # @.str103123
.L.str103123:
	.asciz	"aab"
	.size	.L.str103123, 4

	.type	.L.str104124,@object    # @.str104124
.L.str104124:
	.asciz	"application/x-authorware-bin"
	.size	.L.str104124, 29

	.type	.L.str105125,@object    # @.str105125
.L.str105125:
	.asciz	"aam"
	.size	.L.str105125, 4

	.type	.L.str106126,@object    # @.str106126
.L.str106126:
	.asciz	"application/x-authorware-map"
	.size	.L.str106126, 29

	.type	.L.str107127,@object    # @.str107127
.L.str107127:
	.asciz	"aas"
	.size	.L.str107127, 4

	.type	.L.str108128,@object    # @.str108128
.L.str108128:
	.asciz	"application/x-authorware-seg"
	.size	.L.str108128, 29

	.type	.L.str109129,@object    # @.str109129
.L.str109129:
	.asciz	"ai"
	.size	.L.str109129, 3

	.type	.L.str110130,@object    # @.str110130
.L.str110130:
	.asciz	"application/postscript"
	.size	.L.str110130, 23

	.type	.L.str111131,@object    # @.str111131
.L.str111131:
	.asciz	"aif"
	.size	.L.str111131, 4

	.type	.L.str112132,@object    # @.str112132
.L.str112132:
	.asciz	"audio/x-aiff"
	.size	.L.str112132, 13

	.type	.L.str113133,@object    # @.str113133
.L.str113133:
	.asciz	"aifc"
	.size	.L.str113133, 5

	.type	.L.str114134,@object    # @.str114134
.L.str114134:
	.asciz	"aiff"
	.size	.L.str114134, 5

	.type	.L.str115135,@object    # @.str115135
.L.str115135:
	.asciz	"asc"
	.size	.L.str115135, 4

	.type	.L.str116136,@object    # @.str116136
.L.str116136:
	.asciz	"text/plain"
	.size	.L.str116136, 11

	.type	.L.str117137,@object    # @.str117137
.L.str117137:
	.asciz	"asf"
	.size	.L.str117137, 4

	.type	.L.str118138,@object    # @.str118138
.L.str118138:
	.asciz	"video/x-ms-asf"
	.size	.L.str118138, 15

	.type	.L.str119139,@object    # @.str119139
.L.str119139:
	.asciz	"asx"
	.size	.L.str119139, 4

	.type	.L.str120140,@object    # @.str120140
.L.str120140:
	.asciz	"au"
	.size	.L.str120140, 3

	.type	.L.str121141,@object    # @.str121141
.L.str121141:
	.asciz	"audio/basic"
	.size	.L.str121141, 12

	.type	.L.str122142,@object    # @.str122142
.L.str122142:
	.asciz	"avi"
	.size	.L.str122142, 4

	.type	.L.str123143,@object    # @.str123143
.L.str123143:
	.asciz	"video/x-msvideo"
	.size	.L.str123143, 16

	.type	.L.str124144,@object    # @.str124144
.L.str124144:
	.asciz	"bcpio"
	.size	.L.str124144, 6

	.type	.L.str125145,@object    # @.str125145
.L.str125145:
	.asciz	"application/x-bcpio"
	.size	.L.str125145, 20

	.type	.L.str126146,@object    # @.str126146
.L.str126146:
	.asciz	"bin"
	.size	.L.str126146, 4

	.type	.L.str127147,@object    # @.str127147
.L.str127147:
	.asciz	"bmp"
	.size	.L.str127147, 4

	.type	.L.str128148,@object    # @.str128148
.L.str128148:
	.asciz	"image/bmp"
	.size	.L.str128148, 10

	.type	.L.str129149,@object    # @.str129149
.L.str129149:
	.asciz	"cdf"
	.size	.L.str129149, 4

	.type	.L.str130150,@object    # @.str130150
.L.str130150:
	.asciz	"application/x-netcdf"
	.size	.L.str130150, 21

	.type	.L.str131151,@object    # @.str131151
.L.str131151:
	.asciz	"class"
	.size	.L.str131151, 6

	.type	.L.str132152,@object    # @.str132152
.L.str132152:
	.asciz	"application/x-java-vm"
	.size	.L.str132152, 22

	.type	.L.str133153,@object    # @.str133153
.L.str133153:
	.asciz	"cpio"
	.size	.L.str133153, 5

	.type	.L.str134,@object       # @.str134
.L.str134:
	.asciz	"application/x-cpio"
	.size	.L.str134, 19

	.type	.L.str135,@object       # @.str135
.L.str135:
	.asciz	"cpt"
	.size	.L.str135, 4

	.type	.L.str136,@object       # @.str136
.L.str136:
	.asciz	"application/mac-compactpro"
	.size	.L.str136, 27

	.type	.L.str137,@object       # @.str137
.L.str137:
	.asciz	"crl"
	.size	.L.str137, 4

	.type	.L.str138,@object       # @.str138
.L.str138:
	.asciz	"application/x-pkcs7-crl"
	.size	.L.str138, 24

	.type	.L.str139,@object       # @.str139
.L.str139:
	.asciz	"crt"
	.size	.L.str139, 4

	.type	.L.str140,@object       # @.str140
.L.str140:
	.asciz	"application/x-x509-ca-cert"
	.size	.L.str140, 27

	.type	.L.str141,@object       # @.str141
.L.str141:
	.asciz	"csh"
	.size	.L.str141, 4

	.type	.L.str142,@object       # @.str142
.L.str142:
	.asciz	"application/x-csh"
	.size	.L.str142, 18

	.type	.L.str143,@object       # @.str143
.L.str143:
	.asciz	"css"
	.size	.L.str143, 4

	.type	.L.str144,@object       # @.str144
.L.str144:
	.asciz	"text/css"
	.size	.L.str144, 9

	.type	.L.str145,@object       # @.str145
.L.str145:
	.asciz	"dcr"
	.size	.L.str145, 4

	.type	.L.str146,@object       # @.str146
.L.str146:
	.asciz	"application/x-director"
	.size	.L.str146, 23

	.type	.L.str147,@object       # @.str147
.L.str147:
	.asciz	"dir"
	.size	.L.str147, 4

	.type	.L.str148,@object       # @.str148
.L.str148:
	.asciz	"djv"
	.size	.L.str148, 4

	.type	.L.str149,@object       # @.str149
.L.str149:
	.asciz	"image/vnd.djvu"
	.size	.L.str149, 15

	.type	.L.str150,@object       # @.str150
.L.str150:
	.asciz	"djvu"
	.size	.L.str150, 5

	.type	.L.str151,@object       # @.str151
.L.str151:
	.asciz	"dll"
	.size	.L.str151, 4

	.type	.L.str152,@object       # @.str152
.L.str152:
	.asciz	"dms"
	.size	.L.str152, 4

	.type	.L.str153,@object       # @.str153
.L.str153:
	.asciz	"doc"
	.size	.L.str153, 4

	.type	.L.str154,@object       # @.str154
.L.str154:
	.asciz	"application/msword"
	.size	.L.str154, 19

	.type	.L.str155,@object       # @.str155
.L.str155:
	.asciz	"dtd"
	.size	.L.str155, 4

	.type	.L.str156,@object       # @.str156
.L.str156:
	.asciz	"text/xml"
	.size	.L.str156, 9

	.type	.L.str157,@object       # @.str157
.L.str157:
	.asciz	"dump"
	.size	.L.str157, 5

	.type	.L.str158,@object       # @.str158
.L.str158:
	.asciz	"dvi"
	.size	.L.str158, 4

	.type	.L.str159,@object       # @.str159
.L.str159:
	.asciz	"application/x-dvi"
	.size	.L.str159, 18

	.type	.L.str160,@object       # @.str160
.L.str160:
	.asciz	"dxr"
	.size	.L.str160, 4

	.type	.L.str161,@object       # @.str161
.L.str161:
	.asciz	"eps"
	.size	.L.str161, 4

	.type	.L.str162,@object       # @.str162
.L.str162:
	.asciz	"etx"
	.size	.L.str162, 4

	.type	.L.str163,@object       # @.str163
.L.str163:
	.asciz	"text/x-setext"
	.size	.L.str163, 14

	.type	.L.str164,@object       # @.str164
.L.str164:
	.asciz	"exe"
	.size	.L.str164, 4

	.type	.L.str165,@object       # @.str165
.L.str165:
	.asciz	"ez"
	.size	.L.str165, 3

	.type	.L.str166,@object       # @.str166
.L.str166:
	.asciz	"application/andrew-inset"
	.size	.L.str166, 25

	.type	.L.str167,@object       # @.str167
.L.str167:
	.asciz	"fgd"
	.size	.L.str167, 4

	.type	.L.str168,@object       # @.str168
.L.str168:
	.asciz	"fh"
	.size	.L.str168, 3

	.type	.L.str169,@object       # @.str169
.L.str169:
	.asciz	"image/x-freehand"
	.size	.L.str169, 17

	.type	.L.str170,@object       # @.str170
.L.str170:
	.asciz	"fh4"
	.size	.L.str170, 4

	.type	.L.str171,@object       # @.str171
.L.str171:
	.asciz	"fh5"
	.size	.L.str171, 4

	.type	.L.str172,@object       # @.str172
.L.str172:
	.asciz	"fh7"
	.size	.L.str172, 4

	.type	.L.str173,@object       # @.str173
.L.str173:
	.asciz	"fhc"
	.size	.L.str173, 4

	.type	.L.str174,@object       # @.str174
.L.str174:
	.asciz	"gif"
	.size	.L.str174, 4

	.type	.L.str175,@object       # @.str175
.L.str175:
	.asciz	"image/gif"
	.size	.L.str175, 10

	.type	.L.str176,@object       # @.str176
.L.str176:
	.asciz	"gtar"
	.size	.L.str176, 5

	.type	.L.str177,@object       # @.str177
.L.str177:
	.asciz	"application/x-gtar"
	.size	.L.str177, 19

	.type	.L.str178,@object       # @.str178
.L.str178:
	.asciz	"hdf"
	.size	.L.str178, 4

	.type	.L.str179,@object       # @.str179
.L.str179:
	.asciz	"application/x-hdf"
	.size	.L.str179, 18

	.type	.L.str180,@object       # @.str180
.L.str180:
	.asciz	"hqx"
	.size	.L.str180, 4

	.type	.L.str181,@object       # @.str181
.L.str181:
	.asciz	"application/mac-binhex40"
	.size	.L.str181, 25

	.type	.L.str182,@object       # @.str182
.L.str182:
	.asciz	"htm"
	.size	.L.str182, 4

	.type	.L.str183,@object       # @.str183
.L.str183:
	.asciz	"text/html; charset=%s"
	.size	.L.str183, 22

	.type	.L.str184,@object       # @.str184
.L.str184:
	.asciz	"html"
	.size	.L.str184, 5

	.type	.L.str185,@object       # @.str185
.L.str185:
	.asciz	"ice"
	.size	.L.str185, 4

	.type	.L.str186,@object       # @.str186
.L.str186:
	.asciz	"x-conference/x-cooltalk"
	.size	.L.str186, 24

	.type	.L.str187,@object       # @.str187
.L.str187:
	.asciz	"ief"
	.size	.L.str187, 4

	.type	.L.str188,@object       # @.str188
.L.str188:
	.asciz	"image/ief"
	.size	.L.str188, 10

	.type	.L.str189,@object       # @.str189
.L.str189:
	.asciz	"iges"
	.size	.L.str189, 5

	.type	.L.str190,@object       # @.str190
.L.str190:
	.asciz	"model/iges"
	.size	.L.str190, 11

	.type	.L.str191,@object       # @.str191
.L.str191:
	.asciz	"igs"
	.size	.L.str191, 4

	.type	.L.str192,@object       # @.str192
.L.str192:
	.asciz	"iv"
	.size	.L.str192, 3

	.type	.L.str193,@object       # @.str193
.L.str193:
	.asciz	"application/x-inventor"
	.size	.L.str193, 23

	.type	.L.str194,@object       # @.str194
.L.str194:
	.asciz	"jar"
	.size	.L.str194, 4

	.type	.L.str195,@object       # @.str195
.L.str195:
	.asciz	"application/x-java-archive"
	.size	.L.str195, 27

	.type	.L.str196,@object       # @.str196
.L.str196:
	.asciz	"jfif"
	.size	.L.str196, 5

	.type	.L.str197,@object       # @.str197
.L.str197:
	.asciz	"image/jpeg"
	.size	.L.str197, 11

	.type	.L.str198,@object       # @.str198
.L.str198:
	.asciz	"jpe"
	.size	.L.str198, 4

	.type	.L.str199,@object       # @.str199
.L.str199:
	.asciz	"jpeg"
	.size	.L.str199, 5

	.type	.L.str200,@object       # @.str200
.L.str200:
	.asciz	"jpg"
	.size	.L.str200, 4

	.type	.L.str201,@object       # @.str201
.L.str201:
	.asciz	"js"
	.size	.L.str201, 3

	.type	.L.str202,@object       # @.str202
.L.str202:
	.asciz	"application/x-javascript"
	.size	.L.str202, 25

	.type	.L.str203,@object       # @.str203
.L.str203:
	.asciz	"kar"
	.size	.L.str203, 4

	.type	.L.str204,@object       # @.str204
.L.str204:
	.asciz	"audio/midi"
	.size	.L.str204, 11

	.type	.L.str205,@object       # @.str205
.L.str205:
	.asciz	"latex"
	.size	.L.str205, 6

	.type	.L.str206,@object       # @.str206
.L.str206:
	.asciz	"application/x-latex"
	.size	.L.str206, 20

	.type	.L.str207,@object       # @.str207
.L.str207:
	.asciz	"lha"
	.size	.L.str207, 4

	.type	.L.str208,@object       # @.str208
.L.str208:
	.asciz	"lzh"
	.size	.L.str208, 4

	.type	.L.str209,@object       # @.str209
.L.str209:
	.asciz	"m3u"
	.size	.L.str209, 4

	.type	.L.str210,@object       # @.str210
.L.str210:
	.asciz	"audio/x-mpegurl"
	.size	.L.str210, 16

	.type	.L.str211,@object       # @.str211
.L.str211:
	.asciz	"man"
	.size	.L.str211, 4

	.type	.L.str212,@object       # @.str212
.L.str212:
	.asciz	"application/x-troff-man"
	.size	.L.str212, 24

	.type	.L.str213,@object       # @.str213
.L.str213:
	.asciz	"mathml"
	.size	.L.str213, 7

	.type	.L.str214,@object       # @.str214
.L.str214:
	.asciz	"application/mathml+xml"
	.size	.L.str214, 23

	.type	.L.str215,@object       # @.str215
.L.str215:
	.asciz	"me"
	.size	.L.str215, 3

	.type	.L.str216,@object       # @.str216
.L.str216:
	.asciz	"application/x-troff-me"
	.size	.L.str216, 23

	.type	.L.str217,@object       # @.str217
.L.str217:
	.asciz	"mesh"
	.size	.L.str217, 5

	.type	.L.str218,@object       # @.str218
.L.str218:
	.asciz	"model/mesh"
	.size	.L.str218, 11

	.type	.L.str219,@object       # @.str219
.L.str219:
	.asciz	"mid"
	.size	.L.str219, 4

	.type	.L.str220,@object       # @.str220
.L.str220:
	.asciz	"midi"
	.size	.L.str220, 5

	.type	.L.str221,@object       # @.str221
.L.str221:
	.asciz	"mif"
	.size	.L.str221, 4

	.type	.L.str222,@object       # @.str222
.L.str222:
	.asciz	"application/vnd.mif"
	.size	.L.str222, 20

	.type	.L.str223,@object       # @.str223
.L.str223:
	.asciz	"mime"
	.size	.L.str223, 5

	.type	.L.str224,@object       # @.str224
.L.str224:
	.asciz	"message/rfc822"
	.size	.L.str224, 15

	.type	.L.str225,@object       # @.str225
.L.str225:
	.asciz	"mml"
	.size	.L.str225, 4

	.type	.L.str226,@object       # @.str226
.L.str226:
	.asciz	"mov"
	.size	.L.str226, 4

	.type	.L.str227,@object       # @.str227
.L.str227:
	.asciz	"video/quicktime"
	.size	.L.str227, 16

	.type	.L.str228,@object       # @.str228
.L.str228:
	.asciz	"movie"
	.size	.L.str228, 6

	.type	.L.str229,@object       # @.str229
.L.str229:
	.asciz	"video/x-sgi-movie"
	.size	.L.str229, 18

	.type	.L.str230,@object       # @.str230
.L.str230:
	.asciz	"mp2"
	.size	.L.str230, 4

	.type	.L.str231,@object       # @.str231
.L.str231:
	.asciz	"audio/mpeg"
	.size	.L.str231, 11

	.type	.L.str232,@object       # @.str232
.L.str232:
	.asciz	"mp3"
	.size	.L.str232, 4

	.type	.L.str233,@object       # @.str233
.L.str233:
	.asciz	"mp4"
	.size	.L.str233, 4

	.type	.L.str234154,@object    # @.str234154
.L.str234154:
	.asciz	"video/mp4"
	.size	.L.str234154, 10

	.type	.L.str235,@object       # @.str235
.L.str235:
	.asciz	"mpe"
	.size	.L.str235, 4

	.type	.L.str236,@object       # @.str236
.L.str236:
	.asciz	"video/mpeg"
	.size	.L.str236, 11

	.type	.L.str237,@object       # @.str237
.L.str237:
	.asciz	"mpeg"
	.size	.L.str237, 5

	.type	.L.str238,@object       # @.str238
.L.str238:
	.asciz	"mpg"
	.size	.L.str238, 4

	.type	.L.str239,@object       # @.str239
.L.str239:
	.asciz	"mpga"
	.size	.L.str239, 5

	.type	.L.str240,@object       # @.str240
.L.str240:
	.asciz	"ms"
	.size	.L.str240, 3

	.type	.L.str241,@object       # @.str241
.L.str241:
	.asciz	"application/x-troff-ms"
	.size	.L.str241, 23

	.type	.L.str242,@object       # @.str242
.L.str242:
	.asciz	"msh"
	.size	.L.str242, 4

	.type	.L.str243,@object       # @.str243
.L.str243:
	.asciz	"mv"
	.size	.L.str243, 3

	.type	.L.str244,@object       # @.str244
.L.str244:
	.asciz	"mxu"
	.size	.L.str244, 4

	.type	.L.str245,@object       # @.str245
.L.str245:
	.asciz	"video/vnd.mpegurl"
	.size	.L.str245, 18

	.type	.L.str246,@object       # @.str246
.L.str246:
	.asciz	"nc"
	.size	.L.str246, 3

	.type	.L.str247,@object       # @.str247
.L.str247:
	.asciz	"o"
	.size	.L.str247, 2

	.type	.L.str248,@object       # @.str248
.L.str248:
	.asciz	"oda"
	.size	.L.str248, 4

	.type	.L.str249,@object       # @.str249
.L.str249:
	.asciz	"application/oda"
	.size	.L.str249, 16

	.type	.L.str250,@object       # @.str250
.L.str250:
	.asciz	"ogg"
	.size	.L.str250, 4

	.type	.L.str251,@object       # @.str251
.L.str251:
	.asciz	"application/x-ogg"
	.size	.L.str251, 18

	.type	.L.str252,@object       # @.str252
.L.str252:
	.asciz	"pac"
	.size	.L.str252, 4

	.type	.L.str253,@object       # @.str253
.L.str253:
	.asciz	"application/x-ns-proxy-autoconfig"
	.size	.L.str253, 34

	.type	.L.str254,@object       # @.str254
.L.str254:
	.asciz	"pbm"
	.size	.L.str254, 4

	.type	.L.str255,@object       # @.str255
.L.str255:
	.asciz	"image/x-portable-bitmap"
	.size	.L.str255, 24

	.type	.L.str256,@object       # @.str256
.L.str256:
	.asciz	"pdb"
	.size	.L.str256, 4

	.type	.L.str257,@object       # @.str257
.L.str257:
	.asciz	"chemical/x-pdb"
	.size	.L.str257, 15

	.type	.L.str258,@object       # @.str258
.L.str258:
	.asciz	"pdf"
	.size	.L.str258, 4

	.type	.L.str259,@object       # @.str259
.L.str259:
	.asciz	"application/pdf"
	.size	.L.str259, 16

	.type	.L.str260,@object       # @.str260
.L.str260:
	.asciz	"pgm"
	.size	.L.str260, 4

	.type	.L.str261,@object       # @.str261
.L.str261:
	.asciz	"image/x-portable-graymap"
	.size	.L.str261, 25

	.type	.L.str262,@object       # @.str262
.L.str262:
	.asciz	"pgn"
	.size	.L.str262, 4

	.type	.L.str263,@object       # @.str263
.L.str263:
	.asciz	"application/x-chess-pgn"
	.size	.L.str263, 24

	.type	.L.str264,@object       # @.str264
.L.str264:
	.asciz	"png"
	.size	.L.str264, 4

	.type	.L.str265,@object       # @.str265
.L.str265:
	.asciz	"image/png"
	.size	.L.str265, 10

	.type	.L.str266,@object       # @.str266
.L.str266:
	.asciz	"pnm"
	.size	.L.str266, 4

	.type	.L.str267,@object       # @.str267
.L.str267:
	.asciz	"image/x-portable-anymap"
	.size	.L.str267, 24

	.type	.L.str268,@object       # @.str268
.L.str268:
	.asciz	"ppm"
	.size	.L.str268, 4

	.type	.L.str269,@object       # @.str269
.L.str269:
	.asciz	"image/x-portable-pixmap"
	.size	.L.str269, 24

	.type	.L.str270,@object       # @.str270
.L.str270:
	.asciz	"ppt"
	.size	.L.str270, 4

	.type	.L.str271,@object       # @.str271
.L.str271:
	.asciz	"application/vnd.ms-powerpoint"
	.size	.L.str271, 30

	.type	.L.str272,@object       # @.str272
.L.str272:
	.asciz	"ps"
	.size	.L.str272, 3

	.type	.L.str273,@object       # @.str273
.L.str273:
	.asciz	"qt"
	.size	.L.str273, 3

	.type	.L.str274,@object       # @.str274
.L.str274:
	.asciz	"ra"
	.size	.L.str274, 3

	.type	.L.str275,@object       # @.str275
.L.str275:
	.asciz	"audio/x-realaudio"
	.size	.L.str275, 18

	.type	.L.str276,@object       # @.str276
.L.str276:
	.asciz	"ram"
	.size	.L.str276, 4

	.type	.L.str277,@object       # @.str277
.L.str277:
	.asciz	"audio/x-pn-realaudio"
	.size	.L.str277, 21

	.type	.L.str278,@object       # @.str278
.L.str278:
	.asciz	"ras"
	.size	.L.str278, 4

	.type	.L.str279,@object       # @.str279
.L.str279:
	.asciz	"image/x-cmu-raster"
	.size	.L.str279, 19

	.type	.L.str280,@object       # @.str280
.L.str280:
	.asciz	"rdf"
	.size	.L.str280, 4

	.type	.L.str281,@object       # @.str281
.L.str281:
	.asciz	"application/rdf+xml"
	.size	.L.str281, 20

	.type	.L.str282,@object       # @.str282
.L.str282:
	.asciz	"rgb"
	.size	.L.str282, 4

	.type	.L.str283,@object       # @.str283
.L.str283:
	.asciz	"image/x-rgb"
	.size	.L.str283, 12

	.type	.L.str284,@object       # @.str284
.L.str284:
	.asciz	"rm"
	.size	.L.str284, 3

	.type	.L.str285,@object       # @.str285
.L.str285:
	.asciz	"roff"
	.size	.L.str285, 5

	.type	.L.str286,@object       # @.str286
.L.str286:
	.asciz	"application/x-troff"
	.size	.L.str286, 20

	.type	.L.str287,@object       # @.str287
.L.str287:
	.asciz	"rpm"
	.size	.L.str287, 4

	.type	.L.str288,@object       # @.str288
.L.str288:
	.asciz	"audio/x-pn-realaudio-plugin"
	.size	.L.str288, 28

	.type	.L.str289,@object       # @.str289
.L.str289:
	.asciz	"rss"
	.size	.L.str289, 4

	.type	.L.str290,@object       # @.str290
.L.str290:
	.asciz	"application/rss+xml"
	.size	.L.str290, 20

	.type	.L.str291,@object       # @.str291
.L.str291:
	.asciz	"rtf"
	.size	.L.str291, 4

	.type	.L.str292,@object       # @.str292
.L.str292:
	.asciz	"text/rtf"
	.size	.L.str292, 9

	.type	.L.str293,@object       # @.str293
.L.str293:
	.asciz	"rtx"
	.size	.L.str293, 4

	.type	.L.str294,@object       # @.str294
.L.str294:
	.asciz	"text/richtext"
	.size	.L.str294, 14

	.type	.L.str295,@object       # @.str295
.L.str295:
	.asciz	"sgm"
	.size	.L.str295, 4

	.type	.L.str296,@object       # @.str296
.L.str296:
	.asciz	"text/sgml"
	.size	.L.str296, 10

	.type	.L.str297,@object       # @.str297
.L.str297:
	.asciz	"sgml"
	.size	.L.str297, 5

	.type	.L.str298,@object       # @.str298
.L.str298:
	.asciz	"sh"
	.size	.L.str298, 3

	.type	.L.str299,@object       # @.str299
.L.str299:
	.asciz	"application/x-sh"
	.size	.L.str299, 17

	.type	.L.str300,@object       # @.str300
.L.str300:
	.asciz	"shar"
	.size	.L.str300, 5

	.type	.L.str301,@object       # @.str301
.L.str301:
	.asciz	"application/x-shar"
	.size	.L.str301, 19

	.type	.L.str302,@object       # @.str302
.L.str302:
	.asciz	"silo"
	.size	.L.str302, 5

	.type	.L.str303,@object       # @.str303
.L.str303:
	.asciz	"sit"
	.size	.L.str303, 4

	.type	.L.str304,@object       # @.str304
.L.str304:
	.asciz	"application/x-stuffit"
	.size	.L.str304, 22

	.type	.L.str305,@object       # @.str305
.L.str305:
	.asciz	"skd"
	.size	.L.str305, 4

	.type	.L.str306,@object       # @.str306
.L.str306:
	.asciz	"application/x-koan"
	.size	.L.str306, 19

	.type	.L.str307,@object       # @.str307
.L.str307:
	.asciz	"skm"
	.size	.L.str307, 4

	.type	.L.str308,@object       # @.str308
.L.str308:
	.asciz	"skp"
	.size	.L.str308, 4

	.type	.L.str309,@object       # @.str309
.L.str309:
	.asciz	"skt"
	.size	.L.str309, 4

	.type	.L.str310,@object       # @.str310
.L.str310:
	.asciz	"smi"
	.size	.L.str310, 4

	.type	.L.str311,@object       # @.str311
.L.str311:
	.asciz	"application/smil"
	.size	.L.str311, 17

	.type	.L.str312,@object       # @.str312
.L.str312:
	.asciz	"smil"
	.size	.L.str312, 5

	.type	.L.str313,@object       # @.str313
.L.str313:
	.asciz	"snd"
	.size	.L.str313, 4

	.type	.L.str314,@object       # @.str314
.L.str314:
	.asciz	"so"
	.size	.L.str314, 3

	.type	.L.str315,@object       # @.str315
.L.str315:
	.asciz	"spl"
	.size	.L.str315, 4

	.type	.L.str316,@object       # @.str316
.L.str316:
	.asciz	"application/x-futuresplash"
	.size	.L.str316, 27

	.type	.L.str317,@object       # @.str317
.L.str317:
	.asciz	"src"
	.size	.L.str317, 4

	.type	.L.str318,@object       # @.str318
.L.str318:
	.asciz	"application/x-wais-source"
	.size	.L.str318, 26

	.type	.L.str319,@object       # @.str319
.L.str319:
	.asciz	"stc"
	.size	.L.str319, 4

	.type	.L.str320,@object       # @.str320
.L.str320:
	.asciz	"application/vnd.sun.xml.calc.template"
	.size	.L.str320, 38

	.type	.L.str321,@object       # @.str321
.L.str321:
	.asciz	"std"
	.size	.L.str321, 4

	.type	.L.str322,@object       # @.str322
.L.str322:
	.asciz	"application/vnd.sun.xml.draw.template"
	.size	.L.str322, 38

	.type	.L.str323,@object       # @.str323
.L.str323:
	.asciz	"sti"
	.size	.L.str323, 4

	.type	.L.str324,@object       # @.str324
.L.str324:
	.asciz	"application/vnd.sun.xml.impress.template"
	.size	.L.str324, 41

	.type	.L.str325,@object       # @.str325
.L.str325:
	.asciz	"stw"
	.size	.L.str325, 4

	.type	.L.str326,@object       # @.str326
.L.str326:
	.asciz	"application/vnd.sun.xml.writer.template"
	.size	.L.str326, 40

	.type	.L.str327,@object       # @.str327
.L.str327:
	.asciz	"sv4cpio"
	.size	.L.str327, 8

	.type	.L.str328,@object       # @.str328
.L.str328:
	.asciz	"application/x-sv4cpio"
	.size	.L.str328, 22

	.type	.L.str329,@object       # @.str329
.L.str329:
	.asciz	"sv4crc"
	.size	.L.str329, 7

	.type	.L.str330,@object       # @.str330
.L.str330:
	.asciz	"application/x-sv4crc"
	.size	.L.str330, 21

	.type	.L.str331,@object       # @.str331
.L.str331:
	.asciz	"svg"
	.size	.L.str331, 4

	.type	.L.str332,@object       # @.str332
.L.str332:
	.asciz	"image/svg+xml"
	.size	.L.str332, 14

	.type	.L.str333,@object       # @.str333
.L.str333:
	.asciz	"svgz"
	.size	.L.str333, 5

	.type	.L.str334,@object       # @.str334
.L.str334:
	.asciz	"swf"
	.size	.L.str334, 4

	.type	.L.str335155,@object    # @.str335155
.L.str335155:
	.asciz	"application/x-shockwave-flash"
	.size	.L.str335155, 30

	.type	.L.str336,@object       # @.str336
.L.str336:
	.asciz	"sxc"
	.size	.L.str336, 4

	.type	.L.str337,@object       # @.str337
.L.str337:
	.asciz	"application/vnd.sun.xml.calc"
	.size	.L.str337, 29

	.type	.L.str338,@object       # @.str338
.L.str338:
	.asciz	"sxd"
	.size	.L.str338, 4

	.type	.L.str339,@object       # @.str339
.L.str339:
	.asciz	"application/vnd.sun.xml.draw"
	.size	.L.str339, 29

	.type	.L.str340,@object       # @.str340
.L.str340:
	.asciz	"sxg"
	.size	.L.str340, 4

	.type	.L.str341,@object       # @.str341
.L.str341:
	.asciz	"application/vnd.sun.xml.writer.global"
	.size	.L.str341, 38

	.type	.L.str342,@object       # @.str342
.L.str342:
	.asciz	"sxi"
	.size	.L.str342, 4

	.type	.L.str343,@object       # @.str343
.L.str343:
	.asciz	"application/vnd.sun.xml.impress"
	.size	.L.str343, 32

	.type	.L.str344,@object       # @.str344
.L.str344:
	.asciz	"sxm"
	.size	.L.str344, 4

	.type	.L.str345,@object       # @.str345
.L.str345:
	.asciz	"application/vnd.sun.xml.math"
	.size	.L.str345, 29

	.type	.L.str346,@object       # @.str346
.L.str346:
	.asciz	"sxw"
	.size	.L.str346, 4

	.type	.L.str347,@object       # @.str347
.L.str347:
	.asciz	"application/vnd.sun.xml.writer"
	.size	.L.str347, 31

	.type	.L.str348,@object       # @.str348
.L.str348:
	.asciz	"t"
	.size	.L.str348, 2

	.type	.L.str349,@object       # @.str349
.L.str349:
	.asciz	"tar"
	.size	.L.str349, 4

	.type	.L.str350,@object       # @.str350
.L.str350:
	.asciz	"application/x-tar"
	.size	.L.str350, 18

	.type	.L.str351,@object       # @.str351
.L.str351:
	.asciz	"tcl"
	.size	.L.str351, 4

	.type	.L.str352,@object       # @.str352
.L.str352:
	.asciz	"application/x-tcl"
	.size	.L.str352, 18

	.type	.L.str353,@object       # @.str353
.L.str353:
	.asciz	"tex"
	.size	.L.str353, 4

	.type	.L.str354,@object       # @.str354
.L.str354:
	.asciz	"application/x-tex"
	.size	.L.str354, 18

	.type	.L.str355,@object       # @.str355
.L.str355:
	.asciz	"texi"
	.size	.L.str355, 5

	.type	.L.str356,@object       # @.str356
.L.str356:
	.asciz	"application/x-texinfo"
	.size	.L.str356, 22

	.type	.L.str357,@object       # @.str357
.L.str357:
	.asciz	"texinfo"
	.size	.L.str357, 8

	.type	.L.str358,@object       # @.str358
.L.str358:
	.asciz	"tif"
	.size	.L.str358, 4

	.type	.L.str359,@object       # @.str359
.L.str359:
	.asciz	"image/tiff"
	.size	.L.str359, 11

	.type	.L.str360,@object       # @.str360
.L.str360:
	.asciz	"tiff"
	.size	.L.str360, 5

	.type	.L.str361,@object       # @.str361
.L.str361:
	.asciz	"tr"
	.size	.L.str361, 3

	.type	.L.str362,@object       # @.str362
.L.str362:
	.asciz	"tsp"
	.size	.L.str362, 4

	.type	.L.str363,@object       # @.str363
.L.str363:
	.asciz	"application/dsptype"
	.size	.L.str363, 20

	.type	.L.str364,@object       # @.str364
.L.str364:
	.asciz	"tsv"
	.size	.L.str364, 4

	.type	.L.str365,@object       # @.str365
.L.str365:
	.asciz	"text/tab-separated-values"
	.size	.L.str365, 26

	.type	.L.str366,@object       # @.str366
.L.str366:
	.asciz	"txt"
	.size	.L.str366, 4

	.type	.L.str367,@object       # @.str367
.L.str367:
	.asciz	"ustar"
	.size	.L.str367, 6

	.type	.L.str368,@object       # @.str368
.L.str368:
	.asciz	"application/x-ustar"
	.size	.L.str368, 20

	.type	.L.str369,@object       # @.str369
.L.str369:
	.asciz	"vcd"
	.size	.L.str369, 4

	.type	.L.str370,@object       # @.str370
.L.str370:
	.asciz	"application/x-cdlink"
	.size	.L.str370, 21

	.type	.L.str371,@object       # @.str371
.L.str371:
	.asciz	"vrml"
	.size	.L.str371, 5

	.type	.L.str372,@object       # @.str372
.L.str372:
	.asciz	"model/vrml"
	.size	.L.str372, 11

	.type	.L.str373,@object       # @.str373
.L.str373:
	.asciz	"vx"
	.size	.L.str373, 3

	.type	.L.str374,@object       # @.str374
.L.str374:
	.asciz	"video/x-rad-screenplay"
	.size	.L.str374, 23

	.type	.L.str375,@object       # @.str375
.L.str375:
	.asciz	"wav"
	.size	.L.str375, 4

	.type	.L.str376,@object       # @.str376
.L.str376:
	.asciz	"audio/x-wav"
	.size	.L.str376, 12

	.type	.L.str377,@object       # @.str377
.L.str377:
	.asciz	"wax"
	.size	.L.str377, 4

	.type	.L.str378,@object       # @.str378
.L.str378:
	.asciz	"audio/x-ms-wax"
	.size	.L.str378, 15

	.type	.L.str379,@object       # @.str379
.L.str379:
	.asciz	"wbmp"
	.size	.L.str379, 5

	.type	.L.str380,@object       # @.str380
.L.str380:
	.asciz	"image/vnd.wap.wbmp"
	.size	.L.str380, 19

	.type	.L.str381,@object       # @.str381
.L.str381:
	.asciz	"wbxml"
	.size	.L.str381, 6

	.type	.L.str382,@object       # @.str382
.L.str382:
	.asciz	"application/vnd.wap.wbxml"
	.size	.L.str382, 26

	.type	.L.str383,@object       # @.str383
.L.str383:
	.asciz	"wm"
	.size	.L.str383, 3

	.type	.L.str384,@object       # @.str384
.L.str384:
	.asciz	"video/x-ms-wm"
	.size	.L.str384, 14

	.type	.L.str385,@object       # @.str385
.L.str385:
	.asciz	"wma"
	.size	.L.str385, 4

	.type	.L.str386,@object       # @.str386
.L.str386:
	.asciz	"audio/x-ms-wma"
	.size	.L.str386, 15

	.type	.L.str387,@object       # @.str387
.L.str387:
	.asciz	"wmd"
	.size	.L.str387, 4

	.type	.L.str388,@object       # @.str388
.L.str388:
	.asciz	"application/x-ms-wmd"
	.size	.L.str388, 21

	.type	.L.str389,@object       # @.str389
.L.str389:
	.asciz	"wml"
	.size	.L.str389, 4

	.type	.L.str390,@object       # @.str390
.L.str390:
	.asciz	"text/vnd.wap.wml"
	.size	.L.str390, 17

	.type	.L.str391,@object       # @.str391
.L.str391:
	.asciz	"wmlc"
	.size	.L.str391, 5

	.type	.L.str392,@object       # @.str392
.L.str392:
	.asciz	"application/vnd.wap.wmlc"
	.size	.L.str392, 25

	.type	.L.str393,@object       # @.str393
.L.str393:
	.asciz	"wmls"
	.size	.L.str393, 5

	.type	.L.str394,@object       # @.str394
.L.str394:
	.asciz	"text/vnd.wap.wmlscript"
	.size	.L.str394, 23

	.type	.L.str395,@object       # @.str395
.L.str395:
	.asciz	"wmlsc"
	.size	.L.str395, 6

	.type	.L.str396,@object       # @.str396
.L.str396:
	.asciz	"application/vnd.wap.wmlscriptc"
	.size	.L.str396, 31

	.type	.L.str397,@object       # @.str397
.L.str397:
	.asciz	"wmv"
	.size	.L.str397, 4

	.type	.L.str398,@object       # @.str398
.L.str398:
	.asciz	"video/x-ms-wmv"
	.size	.L.str398, 15

	.type	.L.str399,@object       # @.str399
.L.str399:
	.asciz	"wmx"
	.size	.L.str399, 4

	.type	.L.str400,@object       # @.str400
.L.str400:
	.asciz	"video/x-ms-wmx"
	.size	.L.str400, 15

	.type	.L.str401,@object       # @.str401
.L.str401:
	.asciz	"wmz"
	.size	.L.str401, 4

	.type	.L.str402,@object       # @.str402
.L.str402:
	.asciz	"application/x-ms-wmz"
	.size	.L.str402, 21

	.type	.L.str403,@object       # @.str403
.L.str403:
	.asciz	"wrl"
	.size	.L.str403, 4

	.type	.L.str404,@object       # @.str404
.L.str404:
	.asciz	"wsrc"
	.size	.L.str404, 5

	.type	.L.str405,@object       # @.str405
.L.str405:
	.asciz	"wvx"
	.size	.L.str405, 4

	.type	.L.str406,@object       # @.str406
.L.str406:
	.asciz	"video/x-ms-wvx"
	.size	.L.str406, 15

	.type	.L.str407,@object       # @.str407
.L.str407:
	.asciz	"xbm"
	.size	.L.str407, 4

	.type	.L.str408,@object       # @.str408
.L.str408:
	.asciz	"image/x-xbitmap"
	.size	.L.str408, 16

	.type	.L.str409,@object       # @.str409
.L.str409:
	.asciz	"xht"
	.size	.L.str409, 4

	.type	.L.str410,@object       # @.str410
.L.str410:
	.asciz	"application/xhtml+xml"
	.size	.L.str410, 22

	.type	.L.str411,@object       # @.str411
.L.str411:
	.asciz	"xhtml"
	.size	.L.str411, 6

	.type	.L.str412,@object       # @.str412
.L.str412:
	.asciz	"xls"
	.size	.L.str412, 4

	.type	.L.str413,@object       # @.str413
.L.str413:
	.asciz	"application/vnd.ms-excel"
	.size	.L.str413, 25

	.type	.L.str414,@object       # @.str414
.L.str414:
	.asciz	"xml"
	.size	.L.str414, 4

	.type	.L.str415,@object       # @.str415
.L.str415:
	.asciz	"xpm"
	.size	.L.str415, 4

	.type	.L.str416,@object       # @.str416
.L.str416:
	.asciz	"image/x-xpixmap"
	.size	.L.str416, 16

	.type	.L.str417,@object       # @.str417
.L.str417:
	.asciz	"xsl"
	.size	.L.str417, 4

	.type	.L.str418,@object       # @.str418
.L.str418:
	.asciz	"xwd"
	.size	.L.str418, 4

	.type	.L.str419,@object       # @.str419
.L.str419:
	.asciz	"image/x-xwindowdump"
	.size	.L.str419, 20

	.type	.L.str420,@object       # @.str420
.L.str420:
	.asciz	"xyz"
	.size	.L.str420, 4

	.type	.L.str421,@object       # @.str421
.L.str421:
	.asciz	"chemical/x-xyz"
	.size	.L.str421, 15

	.type	.L.str422,@object       # @.str422
.L.str422:
	.asciz	"zip"
	.size	.L.str422, 4

	.type	.L.str423,@object       # @.str423
.L.str423:
	.asciz	"application/zip"
	.size	.L.str423, 16

	.type	.L.str424,@object       # @.str424
.L.str424:
	.asciz	"Z"
	.size	.L.str424, 2

	.type	.L.str425,@object       # @.str425
.L.str425:
	.asciz	"compress"
	.size	.L.str425, 9

	.type	.L.str426,@object       # @.str426
.L.str426:
	.asciz	"gz"
	.size	.L.str426, 3

	.type	.L.str427,@object       # @.str427
.L.str427:
	.asciz	"gzip"
	.size	.L.str427, 5

	.type	.L.str428,@object       # @.str428
.L.str428:
	.asciz	"uu"
	.size	.L.str428, 3

	.type	.L.str429,@object       # @.str429
.L.str429:
	.asciz	"x-uuencode"
	.size	.L.str429, 11

	.type	.L.str430,@object       # @.str430
.L.str430:
	.asciz	"fork - %m"
	.size	.L.str430, 10

	.type	.L.str431,@object       # @.str431
.L.str431:
	.asciz	"spawned CGI process %d for file '%.200s'"
	.size	.L.str431, 41

	.type	.L.str432,@object       # @.str432
.L.str432:
	.asciz	"tmr_create(cgi_kill child) failed"
	.size	.L.str432, 34

	.type	.L.str433,@object       # @.str433
.L.str433:
	.asciz	"killed CGI process %d"
	.size	.L.str433, 22

	.type	.L.str434,@object       # @.str434
.L.str434:
	.asciz	"tmr_create(cgi_kill2) failed"
	.size	.L.str434, 29

	.type	.L.str435,@object       # @.str435
.L.str435:
	.asciz	"hard-killed CGI process %d"
	.size	.L.str435, 27

	.type	.L.str436156,@object    # @.str436156
.L.str436156:
	.asciz	"pipe - %m"
	.size	.L.str436156, 10

	.type	.L.str437,@object       # @.str437
.L.str437:
	.asciz	"nph-"
	.size	.L.str437, 5

	.type	.L.str438,@object       # @.str438
.L.str438:
	.asciz	"execve %.80s - %m"
	.size	.L.str438, 18

	.type	.L.str439,@object       # @.str439
.L.str439:
	.asciz	"\r\n\r\n"
	.size	.L.str439, 5

	.type	.L.str440,@object       # @.str440
.L.str440:
	.asciz	"\n\n"
	.size	.L.str440, 3

	.type	.L.str441,@object       # @.str441
.L.str441:
	.asciz	"HTTP/"
	.size	.L.str441, 6

	.type	.L.str442,@object       # @.str442
.L.str442:
	.asciz	"Status:"
	.size	.L.str442, 8

	.type	.L.str443,@object       # @.str443
.L.str443:
	.asciz	"Location:"
	.size	.L.str443, 10

	.type	.L.str444,@object       # @.str444
.L.str444:
	.asciz	"Something"
	.size	.L.str444, 10

	.type	.L.str445,@object       # @.str445
.L.str445:
	.asciz	"HTTP/1.0 %d %s\r\n"
	.size	.L.str445, 17

	.type	.L.str446,@object       # @.str446
.L.str446:
	.asciz	"Unauthorized"
	.size	.L.str446, 13

	.type	.L.str447,@object       # @.str447
.L.str447:
	.asciz	"Found"
	.size	.L.str447, 6

	.type	make_envp.envp,@object  # @make_envp.envp
	.local	make_envp.envp
	.comm	make_envp.envp,400,16
	.type	.L.str448,@object       # @.str448
.L.str448:
	.asciz	"PATH=%s"
	.size	.L.str448, 8

	.type	.L.str449,@object       # @.str449
.L.str449:
	.asciz	"/usr/local/bin:/usr/ucb:/bin:/usr/bin"
	.size	.L.str449, 38

	.type	.L.str450,@object       # @.str450
.L.str450:
	.asciz	"SERVER_SOFTWARE=%s"
	.size	.L.str450, 19

	.type	.L.str451,@object       # @.str451
.L.str451:
	.asciz	"SERVER_NAME=%s"
	.size	.L.str451, 15

	.type	.L.str452,@object       # @.str452
.L.str452:
	.asciz	"GATEWAY_INTERFACE=CGI/1.1"
	.size	.L.str452, 26

	.type	.L.str453,@object       # @.str453
.L.str453:
	.asciz	"SERVER_PROTOCOL=%s"
	.size	.L.str453, 19

	.type	.L.str454,@object       # @.str454
.L.str454:
	.asciz	"%d"
	.size	.L.str454, 3

	.type	.L.str455,@object       # @.str455
.L.str455:
	.asciz	"SERVER_PORT=%s"
	.size	.L.str455, 15

	.type	.L.str456,@object       # @.str456
.L.str456:
	.asciz	"REQUEST_METHOD=%s"
	.size	.L.str456, 18

	.type	.L.str457,@object       # @.str457
.L.str457:
	.asciz	"PATH_INFO=/%s"
	.size	.L.str457, 14

	.type	.L.str458,@object       # @.str458
.L.str458:
	.asciz	"%s%s"
	.size	.L.str458, 5

	.type	.L.str459,@object       # @.str459
.L.str459:
	.asciz	"PATH_TRANSLATED=%s"
	.size	.L.str459, 19

	.type	.L.str460,@object       # @.str460
.L.str460:
	.asciz	"SCRIPT_NAME=/%s"
	.size	.L.str460, 16

	.type	.L.str461,@object       # @.str461
.L.str461:
	.asciz	"QUERY_STRING=%s"
	.size	.L.str461, 16

	.type	.L.str462,@object       # @.str462
.L.str462:
	.asciz	"REMOTE_ADDR=%s"
	.size	.L.str462, 15

	.type	.L.str463,@object       # @.str463
.L.str463:
	.asciz	"HTTP_REFERER=%s"
	.size	.L.str463, 16

	.type	.L.str464,@object       # @.str464
.L.str464:
	.asciz	"HTTP_USER_AGENT=%s"
	.size	.L.str464, 19

	.type	.L.str465,@object       # @.str465
.L.str465:
	.asciz	"HTTP_ACCEPT=%s"
	.size	.L.str465, 15

	.type	.L.str466,@object       # @.str466
.L.str466:
	.asciz	"HTTP_ACCEPT_ENCODING=%s"
	.size	.L.str466, 24

	.type	.L.str467,@object       # @.str467
.L.str467:
	.asciz	"HTTP_ACCEPT_LANGUAGE=%s"
	.size	.L.str467, 24

	.type	.L.str468,@object       # @.str468
.L.str468:
	.asciz	"HTTP_COOKIE=%s"
	.size	.L.str468, 15

	.type	.L.str469,@object       # @.str469
.L.str469:
	.asciz	"CONTENT_TYPE=%s"
	.size	.L.str469, 16

	.type	.L.str470,@object       # @.str470
.L.str470:
	.asciz	"HTTP_HOST=%s"
	.size	.L.str470, 13

	.type	.L.str471,@object       # @.str471
.L.str471:
	.asciz	"%lu"
	.size	.L.str471, 4

	.type	.L.str472,@object       # @.str472
.L.str472:
	.asciz	"CONTENT_LENGTH=%s"
	.size	.L.str472, 18

	.type	.L.str473,@object       # @.str473
.L.str473:
	.asciz	"REMOTE_USER=%s"
	.size	.L.str473, 15

	.type	.L.str474,@object       # @.str474
.L.str474:
	.asciz	"AUTH_TYPE=%s"
	.size	.L.str474, 13

	.type	.L.str475,@object       # @.str475
.L.str475:
	.asciz	"Basic"
	.size	.L.str475, 6

	.type	.L.str476,@object       # @.str476
.L.str476:
	.asciz	"TZ"
	.size	.L.str476, 3

	.type	.L.str477,@object       # @.str477
.L.str477:
	.asciz	"TZ=%s"
	.size	.L.str477, 6

	.type	.L.str478,@object       # @.str478
.L.str478:
	.asciz	"CGI_PATTERN=%s"
	.size	.L.str478, 15

	.type	build_env.buf,@object   # @build_env.buf
	.local	build_env.buf
	.comm	build_env.buf,8,8
	.type	build_env.maxbuf,@object # @build_env.maxbuf
	.local	build_env.maxbuf
	.comm	build_env.maxbuf,8,8
	.type	.L.str479,@object       # @.str479
.L.str479:
	.asciz	"out of memory copying environment variable"
	.size	.L.str479, 43

	.type	ls.maxnames,@object     # @ls.maxnames
	.local	ls.maxnames
	.comm	ls.maxnames,4,4
	.type	ls.names,@object        # @ls.names
	.local	ls.names
	.comm	ls.names,8,8
	.type	ls.nameptrs,@object     # @ls.nameptrs
	.local	ls.nameptrs
	.comm	ls.nameptrs,8,8
	.type	ls.name,@object         # @ls.name
	.local	ls.name
	.comm	ls.name,8,8
	.type	ls.maxname,@object      # @ls.maxname
	.local	ls.maxname
	.comm	ls.maxname,8,8
	.type	ls.rname,@object        # @ls.rname
	.local	ls.rname
	.comm	ls.rname,8,8
	.type	ls.maxrname,@object     # @ls.maxrname
	.local	ls.maxrname
	.comm	ls.maxrname,8,8
	.type	ls.encrname,@object     # @ls.encrname
	.local	ls.encrname
	.comm	ls.encrname,8,8
	.type	ls.maxencrname,@object  # @ls.maxencrname
	.local	ls.maxencrname
	.comm	ls.maxencrname,8,8
	.type	.L.str480,@object       # @.str480
.L.str480:
	.asciz	"opendir %.80s - %m"
	.size	.L.str480, 19

	.type	.L.str481,@object       # @.str481
.L.str481:
	.asciz	"w"
	.size	.L.str481, 2

	.type	.L.str482,@object       # @.str482
.L.str482:
	.asciz	"fdopen - %m"
	.size	.L.str482, 12

	.type	.L.str483,@object       # @.str483
.L.str483:
	.asciz	"<HTML>\n<HEAD><TITLE>Index of %.80s</TITLE></HEAD>\n<BODY BGCOLOR=\"#99cc99\" TEXT=\"#000000\" LINK=\"#2020ff\" VLINK=\"#4040cc\">\n<H2>Index of %.80s</H2>\n<PRE>\nmode  links  bytes  last-changed  name\n<HR>"
	.size	.L.str483, 195

	.type	.L.str484,@object       # @.str484
.L.str484:
	.asciz	"out of memory reallocating directory names"
	.size	.L.str484, 43

	.type	.L.str485,@object       # @.str485
.L.str485:
	.asciz	"%s/%s"
	.size	.L.str485, 6

	.type	.L.str486,@object       # @.str486
.L.str486:
	.asciz	"%s"
	.size	.L.str486, 3

	.type	.L.str487,@object       # @.str487
.L.str487:
	.asciz	" -&gt; "
	.size	.L.str487, 8

	.type	.L.str488,@object       # @.str488
.L.str488:
	.asciz	"@"
	.size	.L.str488, 2

	.type	.L.str489,@object       # @.str489
.L.str489:
	.asciz	"*"
	.size	.L.str489, 2

	.type	.L.str490,@object       # @.str490
.L.str490:
	.asciz	"%s %3ld  %10lld  %s  <A HREF=\"/%.500s%s\">%.80s</A>%s%s%s\n"
	.size	.L.str490, 58

	.type	.L.str491,@object       # @.str491
.L.str491:
	.asciz	"</PRE></BODY>\n</HTML>\n"
	.size	.L.str491, 23

	.type	.L.str492,@object       # @.str492
.L.str492:
	.asciz	"spawned indexing process %d for directory '%.200s'"
	.size	.L.str492, 51

	.type	.L.str493,@object       # @.str493
.L.str493:
	.asciz	"tmr_create(cgi_kill ls) failed"
	.size	.L.str493, 31

	.type	.L.str494,@object       # @.str494
.L.str494:
	.asciz	"/_.-~"
	.size	.L.str494, 6

	.type	.L.str495,@object       # @.str495
.L.str495:
	.asciz	"%%%02x"
	.size	.L.str495, 7

	.type	.L.str496,@object       # @.str496
.L.str496:
	.asciz	"%.80s non-local referer \"%.80s%.80s\" \"%.80s\""
	.size	.L.str496, 45

	.type	.L.str497,@object       # @.str497
.L.str497:
	.asciz	"You must supply a local referer to get URL '%.80s' from this server.\n"
	.size	.L.str497, 70

	.type	really_check_referer.refhost,@object # @really_check_referer.refhost
	.local	really_check_referer.refhost
	.comm	really_check_referer.refhost,8,8
	.type	really_check_referer.refhost_size,@object # @really_check_referer.refhost_size
	.local	really_check_referer.refhost_size
	.comm	really_check_referer.refhost_size,8,8
	.type	.L.str498,@object       # @.str498
.L.str498:
	.asciz	"//"
	.size	.L.str498, 3

	.type	auth_check2.authpath,@object # @auth_check2.authpath
	.local	auth_check2.authpath
	.comm	auth_check2.authpath,8,8
	.type	auth_check2.maxauthpath,@object # @auth_check2.maxauthpath
	.local	auth_check2.maxauthpath
	.comm	auth_check2.maxauthpath,8,8
	.type	auth_check2.prevauthpath,@object # @auth_check2.prevauthpath
	.local	auth_check2.prevauthpath
	.comm	auth_check2.prevauthpath,8,8
	.type	auth_check2.maxprevauthpath,@object # @auth_check2.maxprevauthpath
	.local	auth_check2.maxprevauthpath
	.comm	auth_check2.maxprevauthpath,8,8
	.type	auth_check2.prevmtime,@object # @auth_check2.prevmtime
	.local	auth_check2.prevmtime
	.comm	auth_check2.prevmtime,8,8
	.type	auth_check2.prevuser,@object # @auth_check2.prevuser
	.local	auth_check2.prevuser
	.comm	auth_check2.prevuser,8,8
	.type	auth_check2.maxprevuser,@object # @auth_check2.maxprevuser
	.local	auth_check2.maxprevuser
	.comm	auth_check2.maxprevuser,8,8
	.type	auth_check2.prevcryp,@object # @auth_check2.prevcryp
	.local	auth_check2.prevcryp
	.comm	auth_check2.prevcryp,8,8
	.type	auth_check2.maxprevcryp,@object # @auth_check2.maxprevcryp
	.local	auth_check2.maxprevcryp
	.comm	auth_check2.maxprevcryp,8,8
	.type	.L.str499,@object       # @.str499
.L.str499:
	.asciz	"Basic "
	.size	.L.str499, 7

	.type	.L.str500,@object       # @.str500
.L.str500:
	.asciz	"r"
	.size	.L.str500, 2

	.type	.L.str501,@object       # @.str501
.L.str501:
	.asciz	"%.80s auth file %.80s could not be opened - %m"
	.size	.L.str501, 47

	.type	.L.str502,@object       # @.str502
.L.str502:
	.asciz	"The requested URL '%.80s' is protected by an authentication file, but the authentication file cannot be opened.\n"
	.size	.L.str502, 113

	.type	b64_decode_table,@object # @b64_decode_table
	.section	.rodata,"a",@progbits
	.align	16
b64_decode_table:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	62                      # 0x3e
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	63                      # 0x3f
	.long	52                      # 0x34
	.long	53                      # 0x35
	.long	54                      # 0x36
	.long	55                      # 0x37
	.long	56                      # 0x38
	.long	57                      # 0x39
	.long	58                      # 0x3a
	.long	59                      # 0x3b
	.long	60                      # 0x3c
	.long	61                      # 0x3d
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	15                      # 0xf
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	26                      # 0x1a
	.long	27                      # 0x1b
	.long	28                      # 0x1c
	.long	29                      # 0x1d
	.long	30                      # 0x1e
	.long	31                      # 0x1f
	.long	32                      # 0x20
	.long	33                      # 0x21
	.long	34                      # 0x22
	.long	35                      # 0x23
	.long	36                      # 0x24
	.long	37                      # 0x25
	.long	38                      # 0x26
	.long	39                      # 0x27
	.long	40                      # 0x28
	.long	41                      # 0x29
	.long	42                      # 0x2a
	.long	43                      # 0x2b
	.long	44                      # 0x2c
	.long	45                      # 0x2d
	.long	46                      # 0x2e
	.long	47                      # 0x2f
	.long	48                      # 0x30
	.long	49                      # 0x31
	.long	50                      # 0x32
	.long	51                      # 0x33
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.size	b64_decode_table, 1024

	.type	send_authenticate.header,@object # @send_authenticate.header
	.local	send_authenticate.header
	.comm	send_authenticate.header,8,8
	.type	send_authenticate.maxheader,@object # @send_authenticate.maxheader
	.local	send_authenticate.maxheader
	.comm	send_authenticate.maxheader,8,8
	.type	send_authenticate.headstr,@object # @send_authenticate.headstr
	.data
	.align	16
send_authenticate.headstr:
	.asciz	"WWW-Authenticate: Basic realm=\""
	.size	send_authenticate.headstr, 32

	.type	.L.str503,@object       # @.str503
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str503:
	.asciz	"%s%s\"\r\n"
	.size	.L.str503, 8

	.type	.L.str504,@object       # @.str504
.L.str504:
	.asciz	"Authorization required for the URL '%.80s'.\n"
	.size	.L.str504, 45

	.type	send_dirredirect.location,@object # @send_dirredirect.location
	.local	send_dirredirect.location
	.comm	send_dirredirect.location,8,8
	.type	send_dirredirect.header,@object # @send_dirredirect.header
	.local	send_dirredirect.header
	.comm	send_dirredirect.header,8,8
	.type	send_dirredirect.maxlocation,@object # @send_dirredirect.maxlocation
	.local	send_dirredirect.maxlocation
	.comm	send_dirredirect.maxlocation,8,8
	.type	send_dirredirect.maxheader,@object # @send_dirredirect.maxheader
	.local	send_dirredirect.maxheader
	.comm	send_dirredirect.maxheader,8,8
	.type	send_dirredirect.headstr,@object # @send_dirredirect.headstr
	.data
send_dirredirect.headstr:
	.asciz	"Location: "
	.size	send_dirredirect.headstr, 11

	.type	.L.str505,@object       # @.str505
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str505:
	.asciz	"%s/?%s"
	.size	.L.str505, 7

	.type	.L.str506,@object       # @.str506
.L.str506:
	.asciz	"%s/"
	.size	.L.str506, 4

	.type	.L.str507,@object       # @.str507
.L.str507:
	.asciz	"%s%s\r\n"
	.size	.L.str507, 7

	.type	.L.str508,@object       # @.str508
.L.str508:
	.asciz	"The actual URL is '%.80s'.\n"
	.size	.L.str508, 28

	.type	.L.str509,@object       # @.str509
.L.str509:
	.asciz	"The requested URL '%.80s' was not found on this server.\n"
	.size	.L.str509, 57

	.type	.L.str510,@object       # @.str510
.L.str510:
	.asciz	"Not Found"
	.size	.L.str510, 10

	.type	.L.str511,@object       # @.str511
.L.str511:
	.asciz	"/./"
	.size	.L.str511, 4

	.type	.L.str512,@object       # @.str512
.L.str512:
	.asciz	"../"
	.size	.L.str512, 4

	.type	.L.str513,@object       # @.str513
.L.str513:
	.asciz	"/../"
	.size	.L.str513, 5

	.type	.L.str515,@object       # @.str515
.L.str515:
	.asciz	"Forbidden"
	.size	.L.str515, 10

	.type	expand_symlinks.checked,@object # @expand_symlinks.checked
	.local	expand_symlinks.checked
	.comm	expand_symlinks.checked,8,8
	.type	expand_symlinks.rest,@object # @expand_symlinks.rest
	.local	expand_symlinks.rest
	.comm	expand_symlinks.rest,8,8
	.type	expand_symlinks.maxchecked,@object # @expand_symlinks.maxchecked
	.local	expand_symlinks.maxchecked
	.comm	expand_symlinks.maxchecked,8,8
	.type	expand_symlinks.maxrest,@object # @expand_symlinks.maxrest
	.local	expand_symlinks.maxrest
	.comm	expand_symlinks.maxrest,8,8
	.type	.L.str516,@object       # @.str516
.L.str516:
	.asciz	".."
	.size	.L.str516, 3

	.type	.L.str517,@object       # @.str517
.L.str517:
	.asciz	"readlink %.80s - %m"
	.size	.L.str517, 20

	.type	.L.str518,@object       # @.str518
.L.str518:
	.asciz	"too many symlinks in %.80s"
	.size	.L.str518, 27

	.type	.L.str519,@object       # @.str519
.L.str519:
	.asciz	"There was an unusual problem serving the requested URL '%.80s'.\n"
	.size	.L.str519, 65

	.type	.L.str520,@object       # @.str520
.L.str520:
	.asciz	"Internal Error"
	.size	.L.str520, 15

	.type	vhost_map.tempfilename,@object # @vhost_map.tempfilename
	.local	vhost_map.tempfilename
	.comm	vhost_map.tempfilename,8,8
	.type	vhost_map.maxtempfilename,@object # @vhost_map.maxtempfilename
	.local	vhost_map.maxtempfilename
	.comm	vhost_map.maxtempfilename,8,8
	.type	.L.str521,@object       # @.str521
.L.str521:
	.asciz	"getsockname - %m"
	.size	.L.str521, 17

	.type	.L.str522,@object       # @.str522
.L.str522:
	.asciz	"The requested method '%.80s' is not implemented by this server.\n"
	.size	.L.str522, 65

	.type	.L.str523,@object       # @.str523
.L.str523:
	.asciz	"Not Implemented"
	.size	.L.str523, 16

	.type	.L.str524,@object       # @.str524
.L.str524:
	.asciz	"<HR>\n<ADDRESS><A HREF=\"%s\">%s</A></ADDRESS>\n</BODY>\n</HTML>\n"
	.size	.L.str524, 61

	.type	.L.str525,@object       # @.str525
.L.str525:
	.asciz	"http://www.acme.com/software/thttpd/"
	.size	.L.str525, 37

	.type	.L.str526,@object       # @.str526
.L.str526:
	.asciz	"<HTML>\n<HEAD><TITLE>%d %s</TITLE></HEAD>\n<BODY BGCOLOR=\"#cc9999\" TEXT=\"#000000\" LINK=\"#2020ff\" VLINK=\"#4040cc\">\n<H2>%d %s</H2>\n"
	.size	.L.str526, 128

	.type	.L.str527,@object       # @.str527
.L.str527:
	.asciz	"**MSIE**"
	.size	.L.str527, 9

	.type	.L.str528,@object       # @.str528
.L.str528:
	.asciz	"<!--\n"
	.size	.L.str528, 6

	.type	.L.str529,@object       # @.str529
.L.str529:
	.asciz	"Padding so that MSIE deigns to show this error instead of its own canned one.\n"
	.size	.L.str529, 79

	.type	.L.str531,@object       # @.str531
.L.str531:
	.asciz	"unknown sockaddr family on listen socket"
	.size	.L.str531, 41

	.type	.L.str532,@object       # @.str532
.L.str532:
	.asciz	"socket %.80s - %m"
	.size	.L.str532, 18

	.type	.L.str533,@object       # @.str533
.L.str533:
	.asciz	"setsockopt SO_REUSEADDR - %m"
	.size	.L.str533, 29

	.type	.L.str534,@object       # @.str534
.L.str534:
	.asciz	"bind %.80s - %m"
	.size	.L.str534, 16

	.type	.L.str535,@object       # @.str535
.L.str535:
	.asciz	"fcntl F_GETFL - %m"
	.size	.L.str535, 19

	.type	.L.str536,@object       # @.str536
.L.str536:
	.asciz	"fcntl O_NDELAY - %m"
	.size	.L.str536, 20

	.type	.L.str537157,@object    # @.str537157
.L.str537157:
	.asciz	"listen - %m"
	.size	.L.str537157, 12

	.type	nfiles,@object          # @nfiles
	.local	nfiles
	.comm	nfiles,4,4
	.type	nwatches,@object        # @nwatches
	.local	nwatches
	.comm	nwatches,8,8
	.type	fd_rw,@object           # @fd_rw
	.local	fd_rw
	.comm	fd_rw,8,8
	.type	fd_data,@object         # @fd_data
	.local	fd_data
	.comm	fd_data,8,8
	.type	.L.str514,@object       # @.str514
.L.str514:
	.asciz	"bad fd (%d) passed to fdwatch_add_fd!"
	.size	.L.str514, 38

	.type	.L.str1515,@object      # @.str1515
.L.str1515:
	.asciz	"bad fd (%d) passed to fdwatch_del_fd!"
	.size	.L.str1515, 38

	.type	nreturned,@object       # @nreturned
	.local	nreturned
	.comm	nreturned,4,4
	.type	next_ridx,@object       # @next_ridx
	.local	next_ridx
	.comm	next_ridx,4,4
	.type	.L.str2516,@object      # @.str2516
.L.str2516:
	.asciz	"bad fd (%d) passed to fdwatch_check_fd!"
	.size	.L.str2516, 40

	.type	.L.str3517,@object      # @.str3517
.L.str3517:
	.asciz	"  fdwatch - %ld %ss (%g/sec)"
	.size	.L.str3517, 29

	.type	.L.str4518,@object      # @.str4518
.L.str4518:
	.asciz	"poll"
	.size	.L.str4518, 5

	.type	.L.str5519,@object      # @.str5519
.L.str5519:
	.asciz	"bad ridx (%d) in poll_get_fd!"
	.size	.L.str5519, 30

	.type	poll_rfdidx,@object     # @poll_rfdidx
	.local	poll_rfdidx
	.comm	poll_rfdidx,8,8
	.type	poll_fdidx,@object      # @poll_fdidx
	.local	poll_fdidx
	.comm	poll_fdidx,8,8
	.type	.L.str6520,@object      # @.str6520
.L.str6520:
	.asciz	"bad fdidx (%d) in poll_check_fd!"
	.size	.L.str6520, 33

	.type	pollfds,@object         # @pollfds
	.local	pollfds
	.comm	pollfds,8,8
	.type	npoll_fds,@object       # @npoll_fds
	.local	npoll_fds
	.comm	npoll_fds,4,4
	.type	.L.str7521,@object      # @.str7521
.L.str7521:
	.asciz	"bad idx (%d) in poll_del_fd!"
	.size	.L.str7521, 29

	.type	.L.str8522,@object      # @.str8522
.L.str8522:
	.asciz	"too many fds in poll_add_fd!"
	.size	.L.str8522, 29

	.type	.L.str538,@object       # @.str538
.L.str538:
	.asciz	"stat - %m"
	.size	.L.str538, 10

	.type	.L.str1539,@object      # @.str1539
.L.str1539:
	.asciz	"check_hash_size() failure"
	.size	.L.str1539, 26

	.type	.L.str2540,@object      # @.str2540
.L.str2540:
	.asciz	"open - %m"
	.size	.L.str2540, 10

	.type	free_maps,@object       # @free_maps
	.local	free_maps
	.comm	free_maps,8,8
	.type	free_count,@object      # @free_count
	.local	free_count
	.comm	free_count,4,4
	.type	.L.str3541,@object      # @.str3541
.L.str3541:
	.asciz	"out of memory allocating a Map"
	.size	.L.str3541, 31

	.type	alloc_count,@object     # @alloc_count
	.local	alloc_count
	.comm	alloc_count,4,4
	.type	.L.str4542,@object      # @.str4542
.L.str4542:
	.asciz	"mmap - %m"
	.size	.L.str4542, 10

	.type	.L.str5543,@object      # @.str5543
.L.str5543:
	.asciz	"add_hash() failure"
	.size	.L.str5543, 19

	.type	maps,@object            # @maps
	.local	maps
	.comm	maps,8,8
	.type	map_count,@object       # @map_count
	.local	map_count
	.comm	map_count,4,4
	.type	mapped_bytes,@object    # @mapped_bytes
	.local	mapped_bytes
	.comm	mapped_bytes,8,8
	.type	.L.str6544,@object      # @.str6544
.L.str6544:
	.asciz	"mmc_unmap failed to find entry!"
	.size	.L.str6544, 32

	.type	.L.str7545,@object      # @.str7545
.L.str7545:
	.asciz	"mmc_unmap found zero or negative refcount!"
	.size	.L.str7545, 43

	.type	expire_age,@object      # @expire_age
	.data
	.align	8
expire_age:
	.quad	600                     # 0x258
	.size	expire_age, 8

	.type	.L.str8546,@object      # @.str8546
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str8546:
	.asciz	"  map cache - %d allocated, %d active (%lld bytes), %d free; hash size: %d; expire age: %ld"
	.size	.L.str8546, 92

	.type	hash_size,@object       # @hash_size
	.local	hash_size
	.comm	hash_size,4,4
	.type	.L.str9547,@object      # @.str9547
.L.str9547:
	.asciz	"map counts don't add up!"
	.size	.L.str9547, 25

	.type	hash_mask,@object       # @hash_mask
	.local	hash_mask
	.comm	hash_mask,4,4
	.type	hash_table,@object      # @hash_table
	.local	hash_table
	.comm	hash_table,8,8
	.type	.L.str10548,@object     # @.str10548
.L.str10548:
	.asciz	"munmap - %m"
	.size	.L.str10548, 12

	.type	.L.str11549,@object     # @.str11549
.L.str11549:
	.asciz	"mmc panic - freeing all unreferenced maps"
	.size	.L.str11549, 42

	.type	timers,@object          # @timers
	.local	timers
	.comm	timers,536,16
	.type	free_timers,@object     # @free_timers
	.local	free_timers
	.comm	free_timers,8,8
	.type	free_count560,@object   # @free_count560
	.local	free_count560
	.comm	free_count560,4,4
	.type	active_count,@object    # @active_count
	.local	active_count
	.comm	active_count,4,4
	.type	alloc_count561,@object  # @alloc_count561
	.local	alloc_count561
	.comm	alloc_count561,4,4
	.type	tmr_timeout.timeout,@object # @tmr_timeout.timeout
	.local	tmr_timeout.timeout
	.comm	tmr_timeout.timeout,16,8
	.type	.L.str562,@object       # @.str562
.L.str562:
	.asciz	"  timers - %d allocated, %d active, %d free"
	.size	.L.str562, 44

	.type	.L.str1563,@object      # @.str1563
.L.str1563:
	.asciz	"timer counts don't add up!"
	.size	.L.str1563, 27

	.type	JunkClientData,@object  # @JunkClientData
	.comm	JunkClientData,8,8
	.type	.L.str584,@object       # @.str584
.L.str584:
	.asciz	"%d-%400[a-zA-Z]-%d %d:%d:%d GMT"
	.size	.L.str584, 32

	.type	.L.str1585,@object      # @.str1585
.L.str1585:
	.asciz	"%d %400[a-zA-Z] %d %d:%d:%d GMT"
	.size	.L.str1585, 32

	.type	.L.str2586,@object      # @.str2586
.L.str2586:
	.asciz	"%d:%d:%d GMT %d-%400[a-zA-Z]-%d"
	.size	.L.str2586, 32

	.type	.L.str3587,@object      # @.str3587
.L.str3587:
	.asciz	"%d:%d:%d GMT %d %400[a-zA-Z] %d"
	.size	.L.str3587, 32

	.type	.L.str4588,@object      # @.str4588
.L.str4588:
	.asciz	"%400[a-zA-Z], %d-%400[a-zA-Z]-%d %d:%d:%d GMT"
	.size	.L.str4588, 46

	.type	.L.str5589,@object      # @.str5589
.L.str5589:
	.asciz	"%400[a-zA-Z], %d %400[a-zA-Z] %d %d:%d:%d GMT"
	.size	.L.str5589, 46

	.type	.L.str6590,@object      # @.str6590
.L.str6590:
	.asciz	"%400[a-zA-Z] %400[a-zA-Z] %d %d:%d:%d GMT %d"
	.size	.L.str6590, 45

	.type	tm_to_time.monthtab,@object # @tm_to_time.monthtab
	.section	.rodata,"a",@progbits
	.align	16
tm_to_time.monthtab:
	.long	0                       # 0x0
	.long	31                      # 0x1f
	.long	59                      # 0x3b
	.long	90                      # 0x5a
	.long	120                     # 0x78
	.long	151                     # 0x97
	.long	181                     # 0xb5
	.long	212                     # 0xd4
	.long	243                     # 0xf3
	.long	273                     # 0x111
	.long	304                     # 0x130
	.long	334                     # 0x14e
	.size	tm_to_time.monthtab, 48

	.type	scan_wday.wday_tab,@object # @scan_wday.wday_tab
	.data
	.align	16
scan_wday.wday_tab:
	.quad	.L.str7591
	.quad	0                       # 0x0
	.quad	.L.str8592
	.quad	0                       # 0x0
	.quad	.L.str9593
	.quad	1                       # 0x1
	.quad	.L.str10594
	.quad	1                       # 0x1
	.quad	.L.str11595
	.quad	2                       # 0x2
	.quad	.L.str12596
	.quad	2                       # 0x2
	.quad	.L.str13597
	.quad	3                       # 0x3
	.quad	.L.str14598
	.quad	3                       # 0x3
	.quad	.L.str15599
	.quad	4                       # 0x4
	.quad	.L.str16600
	.quad	4                       # 0x4
	.quad	.L.str17601
	.quad	5                       # 0x5
	.quad	.L.str18602
	.quad	5                       # 0x5
	.quad	.L.str19603
	.quad	6                       # 0x6
	.quad	.L.str20604
	.quad	6                       # 0x6
	.size	scan_wday.wday_tab, 224

	.type	.L.str7591,@object      # @.str7591
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str7591:
	.asciz	"sun"
	.size	.L.str7591, 4

	.type	.L.str8592,@object      # @.str8592
.L.str8592:
	.asciz	"sunday"
	.size	.L.str8592, 7

	.type	.L.str9593,@object      # @.str9593
.L.str9593:
	.asciz	"mon"
	.size	.L.str9593, 4

	.type	.L.str10594,@object     # @.str10594
.L.str10594:
	.asciz	"monday"
	.size	.L.str10594, 7

	.type	.L.str11595,@object     # @.str11595
.L.str11595:
	.asciz	"tue"
	.size	.L.str11595, 4

	.type	.L.str12596,@object     # @.str12596
.L.str12596:
	.asciz	"tuesday"
	.size	.L.str12596, 8

	.type	.L.str13597,@object     # @.str13597
.L.str13597:
	.asciz	"wed"
	.size	.L.str13597, 4

	.type	.L.str14598,@object     # @.str14598
.L.str14598:
	.asciz	"wednesday"
	.size	.L.str14598, 10

	.type	.L.str15599,@object     # @.str15599
.L.str15599:
	.asciz	"thu"
	.size	.L.str15599, 4

	.type	.L.str16600,@object     # @.str16600
.L.str16600:
	.asciz	"thursday"
	.size	.L.str16600, 9

	.type	.L.str17601,@object     # @.str17601
.L.str17601:
	.asciz	"fri"
	.size	.L.str17601, 4

	.type	.L.str18602,@object     # @.str18602
.L.str18602:
	.asciz	"friday"
	.size	.L.str18602, 7

	.type	.L.str19603,@object     # @.str19603
.L.str19603:
	.asciz	"sat"
	.size	.L.str19603, 4

	.type	.L.str20604,@object     # @.str20604
.L.str20604:
	.asciz	"saturday"
	.size	.L.str20604, 9

	.type	scan_wday.sorted,@object # @scan_wday.sorted
	.local	scan_wday.sorted
	.comm	scan_wday.sorted,1,1
	.type	scan_mon.mon_tab,@object # @scan_mon.mon_tab
	.data
	.align	16
scan_mon.mon_tab:
	.quad	.L.str21605
	.quad	0                       # 0x0
	.quad	.L.str22606
	.quad	0                       # 0x0
	.quad	.L.str23607
	.quad	1                       # 0x1
	.quad	.L.str24608
	.quad	1                       # 0x1
	.quad	.L.str25609
	.quad	2                       # 0x2
	.quad	.L.str26610
	.quad	2                       # 0x2
	.quad	.L.str27611
	.quad	3                       # 0x3
	.quad	.L.str28612
	.quad	3                       # 0x3
	.quad	.L.str29613
	.quad	4                       # 0x4
	.quad	.L.str30614
	.quad	5                       # 0x5
	.quad	.L.str31615
	.quad	5                       # 0x5
	.quad	.L.str32616
	.quad	6                       # 0x6
	.quad	.L.str33617
	.quad	6                       # 0x6
	.quad	.L.str34618
	.quad	7                       # 0x7
	.quad	.L.str35619
	.quad	7                       # 0x7
	.quad	.L.str36620
	.quad	8                       # 0x8
	.quad	.L.str37621
	.quad	8                       # 0x8
	.quad	.L.str38622
	.quad	9                       # 0x9
	.quad	.L.str39623
	.quad	9                       # 0x9
	.quad	.L.str40624
	.quad	10                      # 0xa
	.quad	.L.str41625
	.quad	10                      # 0xa
	.quad	.L.str42626
	.quad	11                      # 0xb
	.quad	.L.str43627
	.quad	11                      # 0xb
	.size	scan_mon.mon_tab, 368

	.type	.L.str21605,@object     # @.str21605
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str21605:
	.asciz	"jan"
	.size	.L.str21605, 4

	.type	.L.str22606,@object     # @.str22606
.L.str22606:
	.asciz	"january"
	.size	.L.str22606, 8

	.type	.L.str23607,@object     # @.str23607
.L.str23607:
	.asciz	"feb"
	.size	.L.str23607, 4

	.type	.L.str24608,@object     # @.str24608
.L.str24608:
	.asciz	"february"
	.size	.L.str24608, 9

	.type	.L.str25609,@object     # @.str25609
.L.str25609:
	.asciz	"mar"
	.size	.L.str25609, 4

	.type	.L.str26610,@object     # @.str26610
.L.str26610:
	.asciz	"march"
	.size	.L.str26610, 6

	.type	.L.str27611,@object     # @.str27611
.L.str27611:
	.asciz	"apr"
	.size	.L.str27611, 4

	.type	.L.str28612,@object     # @.str28612
.L.str28612:
	.asciz	"april"
	.size	.L.str28612, 6

	.type	.L.str29613,@object     # @.str29613
.L.str29613:
	.asciz	"may"
	.size	.L.str29613, 4

	.type	.L.str30614,@object     # @.str30614
.L.str30614:
	.asciz	"jun"
	.size	.L.str30614, 4

	.type	.L.str31615,@object     # @.str31615
.L.str31615:
	.asciz	"june"
	.size	.L.str31615, 5

	.type	.L.str32616,@object     # @.str32616
.L.str32616:
	.asciz	"jul"
	.size	.L.str32616, 4

	.type	.L.str33617,@object     # @.str33617
.L.str33617:
	.asciz	"july"
	.size	.L.str33617, 5

	.type	.L.str34618,@object     # @.str34618
.L.str34618:
	.asciz	"aug"
	.size	.L.str34618, 4

	.type	.L.str35619,@object     # @.str35619
.L.str35619:
	.asciz	"august"
	.size	.L.str35619, 7

	.type	.L.str36620,@object     # @.str36620
.L.str36620:
	.asciz	"sep"
	.size	.L.str36620, 4

	.type	.L.str37621,@object     # @.str37621
.L.str37621:
	.asciz	"september"
	.size	.L.str37621, 10

	.type	.L.str38622,@object     # @.str38622
.L.str38622:
	.asciz	"oct"
	.size	.L.str38622, 4

	.type	.L.str39623,@object     # @.str39623
.L.str39623:
	.asciz	"october"
	.size	.L.str39623, 8

	.type	.L.str40624,@object     # @.str40624
.L.str40624:
	.asciz	"nov"
	.size	.L.str40624, 4

	.type	.L.str41625,@object     # @.str41625
.L.str41625:
	.asciz	"november"
	.size	.L.str41625, 9

	.type	.L.str42626,@object     # @.str42626
.L.str42626:
	.asciz	"dec"
	.size	.L.str42626, 4

	.type	.L.str43627,@object     # @.str43627
.L.str43627:
	.asciz	"december"
	.size	.L.str43627, 9

	.type	scan_mon.sorted,@object # @scan_mon.sorted
	.local	scan_mon.sorted
	.comm	scan_mon.sorted,1,1
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
	.type	.L.str530,@object       # @.str530
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str530:
	.asciz	"%.2fMB\n"
	.size	.L.str530, 8

	.type	.L.str1531,@object      # @.str1531
.L.str1531:
	.asciz	"tmp.%d"
	.size	.L.str1531, 7

	.type	.L.str2532,@object      # @.str2532
.L.str2532:
	.asciz	"w+"
	.size	.L.str2532, 3

	.type	flog,@object            # @flog
	.comm	flog,8,8
	.type	.L.str3533,@object      # @.str3533
.L.str3533:
	.asciz	"configFile"
	.size	.L.str3533, 11

	.type	configFile,@object      # @configFile
	.comm	configFile,8,8
	.type	.L.str4534,@object      # @.str4534
.L.str4534:
	.asciz	"%s\n"
	.size	.L.str4534, 4

	.type	.L.str5535,@object      # @.str5535
.L.str5535:
	.asciz	"auditctl -D"
	.size	.L.str5535, 12

	.type	.L.str6536,@object      # @.str6536
	.section	.rodata,"a",@progbits
.L.str6536:
	.asciz	"sudo auditctl -a exit,always -F arch=b64 -S clone -S fork -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\000"
	.size	.L.str6536, 142

	.type	.L.str7537,@object      # @.str7537
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str7537:
	.asciz	"init complete...\n"
	.size	.L.str7537, 18

	.type	buf2,@object            # @buf2
	.comm	buf2,8,8
	.type	buf,@object             # @buf
	.comm	buf,8,8
	.type	tv_old,@object          # @tv_old
	.comm	tv_old,16,8
	.type	tv_new,@object          # @tv_new
	.comm	tv_new,16,8
	.type	.L.str540,@object       # @.str540
.L.str540:
	.asciz	"%d\n"
	.size	.L.str540, 4

	.type	.L.str1541,@object      # @.str1541
.L.str1541:
	.asciz	"tmp.%d"
	.size	.L.str1541, 7

	.type	.L.str2542,@object      # @.str2542
.L.str2542:
	.asciz	"%s\n"
	.size	.L.str2542, 4

	.type	.L.str3543,@object      # @.str3543
	.section	.rodata.cst8,"aM",@progbits,8
.L.str3543:
	.asciz	"whoami\000"
	.size	.L.str3543, 8

	.type	.L.str4544,@object      # @.str4544
	.section	.rodata,"a",@progbits
.L.str4544:
	.asciz	"sudo auditctl -a exit,always -F arch=b64 -S fork -S clone -S open -S socket -S bind -S connect -S accept -S write -S kill -S close -F pid=%d\000"
	.size	.L.str4544, 142

	.type	.L.str5545,@object      # @.str5545
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str5545:
	.asciz	"w+"
	.size	.L.str5545, 3

	.type	.L.str6546,@object      # @.str6546
.L.str6546:
	.asciz	"%d"
	.size	.L.str6546, 3

	.type	.L.str7547,@object      # @.str7547
.L.str7547:
	.asciz	"fork...\n"
	.size	.L.str7547, 9

	.type	.L.str8548,@object      # @.str8548
.L.str8548:
	.asciz	"0"
	.size	.L.str8548, 2

	.type	.L.str9549,@object      # @.str9549
.L.str9549:
	.asciz	"../../straightDFA/log.c"
	.size	.L.str9549, 24

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
	.asciz	"/home/jun/straight-DTA/thttpd-2.25b/test"
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
	.asciz	"configFile"
.Linfo_string50:
	.asciz	"p2addr"
.Linfo_string51:
	.asciz	"short"
.Linfo_string52:
	.asciz	"buf1"
.Linfo_string53:
	.asciz	"buf2"
.Linfo_string54:
	.asciz	"pos"
.Linfo_string55:
	.asciz	"buf"
.Linfo_string56:
	.asciz	"tv_old"
.Linfo_string57:
	.asciz	"tv_sec"
.Linfo_string58:
	.asciz	"__time_t"
.Linfo_string59:
	.asciz	"tv_usec"
.Linfo_string60:
	.asciz	"__suseconds_t"
.Linfo_string61:
	.asciz	"timeval"
.Linfo_string62:
	.asciz	"tv_new"
.Linfo_string63:
	.asciz	"buf_switcher"
.Linfo_string64:
	.asciz	"_StraightTaint_init"
.Linfo_string65:
	.asciz	"../../straightDFA/log.c"
.Linfo_string66:
	.asciz	"_StraightTaint_pseudo"
.Linfo_string67:
	.asciz	"_StraightTaint_flush"
.Linfo_string68:
	.asciz	"_StraightTaint_log"
.Linfo_string69:
	.asciz	"_StraightTaint_fork32"
.Linfo_string70:
	.asciz	"_StraightTaint_fork64"
.Linfo_string71:
	.asciz	"do_StraightTaint_fork"
.Linfo_string72:
	.asciz	"pos_old"
.Linfo_string73:
	.asciz	"ptrToAddr"
.Linfo_string74:
	.asciz	"pid"
.Linfo_string75:
	.asciz	"filename"
.Linfo_string76:
	.asciz	"cmd"
.Linfo_string77:
	.asciz	"BBID"
.Linfo_string78:
	.asciz	"lpid"
.Linfo_string79:
	.asciz	"nrPid"
.Linfo_string80:
	.asciz	"flogParent"
.Linfo_string81:
	.asciz	"bbid"
.Linfo_string82:
	.asciz	"size"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1062                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x41f DW_TAG_compile_unit
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
	.byte	2                       # Abbrev [2] 0x2aa:0x15 DW_TAG_variable
	.long	.Linfo_string49         # DW_AT_name
	.long	87                      # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	configFile
	.byte	14                      # Abbrev [14] 0x2bf:0x15 DW_TAG_variable
	.long	.Linfo_string50         # DW_AT_name
	.long	724                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	p2addr
	.byte	4                       # Abbrev [4] 0x2d4:0x5 DW_TAG_pointer_type
	.long	729                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x2d9:0x5 DW_TAG_pointer_type
	.long	734                     # DW_AT_type
	.byte	3                       # Abbrev [3] 0x2de:0x7 DW_TAG_base_type
	.long	.Linfo_string51         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x2e5:0x15 DW_TAG_variable
	.long	.Linfo_string52         # DW_AT_name
	.long	729                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf1
	.byte	2                       # Abbrev [2] 0x2fa:0x15 DW_TAG_variable
	.long	.Linfo_string53         # DW_AT_name
	.long	729                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf2
	.byte	2                       # Abbrev [2] 0x30f:0x15 DW_TAG_variable
	.long	.Linfo_string54         # DW_AT_name
	.long	729                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	pos
	.byte	2                       # Abbrev [2] 0x324:0x15 DW_TAG_variable
	.long	.Linfo_string55         # DW_AT_name
	.long	729                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	buf
	.byte	2                       # Abbrev [2] 0x339:0x15 DW_TAG_variable
	.long	.Linfo_string56         # DW_AT_name
	.long	846                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	tv_old
	.byte	8                       # Abbrev [8] 0x34e:0x23 DW_TAG_structure_type
	.long	.Linfo_string61         # DW_AT_name
	.byte	16                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x356:0xd DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	881                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x363:0xd DW_TAG_member
	.long	.Linfo_string59         # DW_AT_name
	.long	892                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x371:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string58         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x37c:0xb DW_TAG_typedef
	.long	607                     # DW_AT_type
	.long	.Linfo_string60         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.byte	2                       # Abbrev [2] 0x387:0x15 DW_TAG_variable
	.long	.Linfo_string62         # DW_AT_name
	.long	846                     # DW_AT_type
                                        # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	tv_new
	.byte	15                      # Abbrev [15] 0x39c:0x28 DW_TAG_subprogram
	.long	.Linfo_string63         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin83          # DW_AT_low_pc
	.quad	.Lfunc_end83            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	16                      # Abbrev [16] 0x3b5:0xe DW_TAG_variable
	.long	.Linfo_string72         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	647                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x3c4:0x58 DW_TAG_subprogram
	.long	.Linfo_string64         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	729                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin84          # DW_AT_low_pc
	.quad	.Lfunc_end84            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	18                      # Abbrev [18] 0x3e1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string73         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	724                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	16                      # Abbrev [16] 0x3ef:0xe DW_TAG_variable
	.long	.Linfo_string74         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	519                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.byte	16                      # Abbrev [16] 0x3fd:0xf DW_TAG_variable
	.long	.Linfo_string75         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	1052                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	16                      # Abbrev [16] 0x40c:0xf DW_TAG_variable
	.long	.Linfo_string76         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	1052                    # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340o"
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x41c:0xd DW_TAG_array_type
	.long	531                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x421:0x7 DW_TAG_subrange_type
	.long	640                     # DW_AT_type
	.short	1023                    # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
.L.debug_info_begin1:
	.long	884                     # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x36d DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string65         # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	20                      # Abbrev [20] 0x26:0x19 DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_external
	.quad	.Lfunc_begin85          # DW_AT_low_pc
	.quad	.Lfunc_end85            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	21                      # Abbrev [21] 0x3f:0x28 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin86          # DW_AT_low_pc
	.quad	.Lfunc_end86            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	22                      # Abbrev [22] 0x58:0xe DW_TAG_formal_parameter
	.long	.Linfo_string77         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.long	.Lsection_info+734      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x67:0x28 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin87          # DW_AT_low_pc
	.quad	.Lfunc_end87            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	22                      # Abbrev [22] 0x80:0xe DW_TAG_formal_parameter
	.long	.Linfo_string77         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.long	.Lsection_info+734      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	126
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x8f:0x28 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin88          # DW_AT_low_pc
	.quad	.Lfunc_end88            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	22                      # Abbrev [22] 0xa8:0xe DW_TAG_formal_parameter
	.long	.Linfo_string74         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0xb7:0x36 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin89          # DW_AT_low_pc
	.quad	.Lfunc_end89            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	22                      # Abbrev [22] 0xd0:0xe DW_TAG_formal_parameter
	.long	.Linfo_string78         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	.Lsection_info+607      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	23                      # Abbrev [23] 0xde:0xe DW_TAG_variable
	.long	.Linfo_string74         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       # End Of Children Mark
	.byte	24                      # Abbrev [24] 0xed:0xa0 DW_TAG_subprogram
	.long	.Linfo_string71         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.quad	.Lfunc_begin90          # DW_AT_low_pc
	.quad	.Lfunc_end90            # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	22                      # Abbrev [22] 0x106:0xe DW_TAG_formal_parameter
	.long	.Linfo_string74         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	108
	.byte	25                      # Abbrev [25] 0x114:0x78 DW_TAG_lexical_block
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	25                      # Abbrev [25] 0x119:0x72 DW_TAG_lexical_block
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	26                      # Abbrev [26] 0x11e:0x6c DW_TAG_lexical_block
	.quad	.Ltmp1217               # DW_AT_low_pc
	.quad	.Ltmp1224               # DW_AT_high_pc
	.byte	23                      # Abbrev [23] 0x12f:0xf DW_TAG_variable
	.long	.Linfo_string75         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.long	.Lsection_info+1052     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\340w"
	.byte	23                      # Abbrev [23] 0x13e:0xf DW_TAG_variable
	.long	.Linfo_string79         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\334w"
	.byte	23                      # Abbrev [23] 0x14d:0xf DW_TAG_variable
	.long	.Linfo_string76         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	.Lsection_info+1052     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\320o"
	.byte	16                      # Abbrev [16] 0x15c:0xf DW_TAG_variable
	.long	.Linfo_string80         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	397                     # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\310o"
	.byte	23                      # Abbrev [23] 0x16b:0xf DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\304o"
	.byte	23                      # Abbrev [23] 0x17a:0xf DW_TAG_variable
	.long	.Linfo_string82         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	.Lsection_info+519      # DW_AT_type
	.byte	3                       # DW_AT_location
	.byte	145
	.ascii	"\300o"
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x18d:0x5 DW_TAG_pointer_type
	.long	402                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0x192:0xb DW_TAG_typedef
	.long	413                     # DW_AT_type
	.long	.Linfo_string48         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x19d:0x1a0 DW_TAG_structure_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.short	273                     # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x1a6:0xe DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1b4:0xe DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1c2:0xe DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1d0:0xe DW_TAG_member
	.long	.Linfo_string11         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	281                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1de:0xe DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	282                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1ec:0xe DW_TAG_member
	.long	.Linfo_string13         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x1fa:0xe DW_TAG_member
	.long	.Linfo_string14         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x208:0xe DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	285                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x216:0xe DW_TAG_member
	.long	.Linfo_string16         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x224:0xe DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x232:0xe DW_TAG_member
	.long	.Linfo_string18         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x240:0xe DW_TAG_member
	.long	.Linfo_string19         # DW_AT_name
	.long	.Lsection_info+526      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	290                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x24e:0xe DW_TAG_member
	.long	.Linfo_string20         # DW_AT_name
	.long	829                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	7                       # Abbrev [7] 0x25c:0xe DW_TAG_member
	.long	.Linfo_string25         # DW_AT_name
	.long	882                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	294                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x26a:0xe DW_TAG_member
	.long	.Linfo_string26         # DW_AT_name
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x278:0xe DW_TAG_member
	.long	.Linfo_string27         # DW_AT_name
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	300                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x286:0xe DW_TAG_member
	.long	.Linfo_string28         # DW_AT_name
	.long	.Lsection_info+596      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x294:0xe DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	.Lsection_info+614      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2a2:0xe DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	.Lsection_info+621      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2b0:0xe DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	.Lsection_info+628      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2be:0xe DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	.Lsection_info+647      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	312                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2cc:0xe DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	.Lsection_info+648      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	321                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2da:0xe DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	.Lsection_info+647      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	330                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2e8:0xe DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	.Lsection_info+647      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	331                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x2f6:0xe DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	.Lsection_info+647      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x304:0xe DW_TAG_member
	.long	.Linfo_string42         # DW_AT_name
	.long	.Lsection_info+647      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	333                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x312:0xe DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	.Lsection_info+659      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x320:0xe DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	336                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	27                      # Abbrev [27] 0x32e:0xe DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	.Lsection_info+670      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	338                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x33d:0x5 DW_TAG_pointer_type
	.long	834                     # DW_AT_type
	.byte	8                       # Abbrev [8] 0x342:0x30 DW_TAG_structure_type
	.long	.Linfo_string24         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x34a:0xd DW_TAG_member
	.long	.Linfo_string21         # DW_AT_name
	.long	829                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	9                       # Abbrev [9] 0x357:0xd DW_TAG_member
	.long	.Linfo_string22         # DW_AT_name
	.long	882                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	28                      # Abbrev [28] 0x364:0xd DW_TAG_member
	.long	.Linfo_string23         # DW_AT_name
	.long	.Lsection_info+519      # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	194                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	4                       # Abbrev [4] 0x372:0x5 DW_TAG_pointer_type
	.long	413                     # DW_AT_type
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
	.byte	21                      # Abbreviation Code
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
	.byte	22                      # Abbreviation Code
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
	.byte	23                      # Abbreviation Code
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
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
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
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	16                      # DW_FORM_ref_addr
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
	.byte	28                      # Abbreviation Code
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
	.long	204                     # Length of ARange Set
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
	.quad	configFile
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
	.quad	.Lfunc_begin83
.Lset1 = .Lfunc_begin85-.Lfunc_begin83
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
	.quad	.Lfunc_begin85
.Lset2 = .Ldebug_end2-.Lfunc_begin85
	.quad	.Lset2
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
.Lgnu_ranges1:
.Ldebug_ranges0:
	.quad	.Ltmp1215
	.quad	.Ltmp1224
	.quad	.Ltmp1225
	.quad	.Ltmp1226
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1215
	.quad	.Ltmp1224
	.quad	.Ltmp1225
	.quad	.Ltmp1226
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
	.long	783                     # DIE offset
	.asciz	"pos"                   # External Name
	.long	903                     # DIE offset
	.asciz	"tv_new"                # External Name
	.long	38                      # DIE offset
	.asciz	"sum"                   # External Name
	.long	682                     # DIE offset
	.asciz	"configFile"            # External Name
	.long	964                     # DIE offset
	.asciz	"_StraightTaint_init"   # External Name
	.long	66                      # DIE offset
	.asciz	"flog"                  # External Name
	.long	825                     # DIE offset
	.asciz	"tv_old"                # External Name
	.long	924                     # DIE offset
	.asciz	"buf_switcher"          # External Name
	.long	804                     # DIE offset
	.asciz	"buf"                   # External Name
	.long	741                     # DIE offset
	.asciz	"buf1"                  # External Name
	.long	762                     # DIE offset
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
	.long	183                     # DIE offset
	.asciz	"_StraightTaint_fork64" # External Name
	.long	38                      # DIE offset
	.asciz	"_StraightTaint_pseudo" # External Name
	.long	63                      # DIE offset
	.asciz	"_StraightTaint_flush"  # External Name
	.long	103                     # DIE offset
	.asciz	"_StraightTaint_log"    # External Name
	.long	237                     # DIE offset
	.asciz	"do_StraightTaint_fork" # External Name
	.long	143                     # DIE offset
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
	.long	881                     # DIE offset
	.asciz	"__time_t"              # External Name
	.long	892                     # DIE offset
	.asciz	"__suseconds_t"         # External Name
	.long	519                     # DIE offset
	.asciz	"int"                   # External Name
	.long	596                     # DIE offset
	.asciz	"__off_t"               # External Name
	.long	614                     # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	659                     # DIE offset
	.asciz	"size_t"                # External Name
	.long	734                     # DIE offset
	.asciz	"short"                 # External Name
	.long	846                     # DIE offset
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
	.long	402                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	413                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	834                     # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	0                       # End Mark
.Lpubtypes_end1:

	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
