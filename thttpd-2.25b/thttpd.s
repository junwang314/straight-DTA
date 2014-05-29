	.file	"thttpd.bc"
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
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	%edi, %ebp
	movl	%ebp, 120(%rsp)         # 4-byte Spill
	movq	(%rsi), %rbx
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
	movl	$1, %r12d
	cmpl	$2, %ebp
	jl	.LBB0_207
# BB#1:                                 # %land.rhs.lr.ph.i
	movl	$1, %ebp
	movabsq	$4294977024, %r14       # imm = 0x100002600
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_4:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	1(%rbx), %r13d
	cmpl	$85, %r13d
	jg	.LBB0_10
# BB#5:                                 # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r13b, %eax
	cmpl	$67, %eax
	jne	.LBB0_140
# BB#6:                                 # %cond.end108.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_140
# BB#7:                                 # %land.lhs.true112.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_140
# BB#8:                                 # %if.then115.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movl	$.L.str56, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %rbp
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	testq	%rbp, %rbp
	je	.LBB0_19
# BB#9:                                 # %while.cond.preheader.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$10000, %esi            # imm = 0x2710
	leaq	4512(%rsp), %rbx
	movq	%rbx, %rdi
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_21:                               # %while.cond.loopexit.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	$10000, %esi            # imm = 0x2710
	movq	%r13, %rbx
	movq	%rbx, %rdi
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB0_22:                               # %while.cond.loopexit.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #         Child Loop BB0_28 Depth 4
	movq	%rbp, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_205
# BB#23:                                # %while.body.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	$35, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_25
# BB#24:                                # %if.then6.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movb	$0, (%rax)
.LBB0_25:                               # %cond.false35.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	$.L.str98, %esi
	movq	%rbx, %rdi
	movq	%rbx, %r13
	callq	strspn
	cmpb	$0, 4512(%rsp,%rax)
	je	.LBB0_21
# BB#26:                                #   in Loop: Header=BB0_22 Depth=2
	leaq	4512(%rsp,%rax), %rbx
	.align	16, 0x90
.LBB0_27:                               # %cond.false86.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_28 Depth 4
	movl	$.L.str98, %esi
	movq	%rbx, %rdi
	callq	strcspn
	movq	%rax, %rbp
	addq	%rbx, %rbp
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_30:                               # %while.body115.i.i
                                        #   in Loop: Header=BB0_28 Depth=4
	movb	$0, (%rbp)
	incq	%rbp
.LBB0_28:                               # %while.cond101.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_22 Depth=2
                                        #       Parent Loop BB0_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbp), %eax
	cmpq	$32, %rax
	ja	.LBB0_31
# BB#29:                                # %while.cond101.i.i
                                        #   in Loop: Header=BB0_28 Depth=4
	btq	%rax, %r14
	jb	.LBB0_30
	.align	16, 0x90
.LBB0_31:                               # %while.end.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	movl	$0, %r15d
	je	.LBB0_33
# BB#32:                                # %if.then119.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$0, (%rax)
	incq	%rax
	movq	%rax, %r15
.LBB0_33:                               # %if.end121.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str99, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_38
# BB#34:                                # %if.then125.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#132:                               # %no_value_required.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$1, debug(%rip)
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_38:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str100, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_42
# BB#39:                                # %if.then129.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#41:                                # %value_required.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movw	%ax, port(%rip)
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_42:                               # %if.else132.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str101, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_48
# BB#43:                                # %if.then136.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#44:                                # %value_required.exit481.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#47:                                # %e_strdup.exit.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, dir(%rip)
	jmp	.LBB0_133
.LBB0_48:                               # %if.else138.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str20, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_51
# BB#49:                                # %if.then142.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#50:                                # %no_value_required.exit488.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$1, do_chroot(%rip)
	movl	$1, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_51:                               # %if.else143.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str102, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_54
# BB#52:                                # %if.then147.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#53:                                # %no_value_required.exit492.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$0, do_chroot(%rip)
	movl	$0, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_54:                               # %if.else148.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str103, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_58
# BB#55:                                # %if.then152.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#56:                                # %value_required.exit496.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#57:                                # %e_strdup.exit501.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, data_dir(%rip)
	jmp	.LBB0_133
.LBB0_58:                               # %if.else154.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str104, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_61
# BB#59:                                # %if.then158.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#60:                                # %no_value_required.exit505.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$0, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_61:                               # %if.else159.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str105, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_64
# BB#62:                                # %if.then163.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#63:                                # %no_value_required.exit509.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$1, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_64:                               # %if.else164.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str106, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_67
# BB#65:                                # %if.then168.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#66:                                # %no_value_required.exit513.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$0, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_67:                               # %if.else169.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str107, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_70
# BB#68:                                # %if.then173.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#69:                                # %no_value_required.exit517.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$1, no_symlink_check(%rip)
	jmp	.LBB0_133
.LBB0_70:                               # %if.else174.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str108, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_74
# BB#71:                                # %if.then178.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#72:                                # %value_required.exit521.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#73:                                # %e_strdup.exit526.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, user(%rip)
	jmp	.LBB0_133
.LBB0_74:                               # %if.else180.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str109, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_78
# BB#75:                                # %if.then184.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#76:                                # %value_required.exit530.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#77:                                # %e_strdup.exit535.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, cgi_pattern(%rip)
	jmp	.LBB0_133
.LBB0_78:                               # %if.else186.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str110, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_81
# BB#79:                                # %if.then190.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#80:                                # %value_required.exit539.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movl	%eax, cgi_limit(%rip)
	jmp	.LBB0_133
.LBB0_81:                               # %if.else192.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str111, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_85
# BB#82:                                # %if.then196.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#83:                                # %value_required.exit545.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#84:                                # %e_strdup.exit550.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, url_pattern(%rip)
	jmp	.LBB0_133
.LBB0_85:                               # %if.else198.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str112, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_88
# BB#86:                                # %if.then202.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#87:                                # %no_value_required.exit554.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$1, no_empty_referers(%rip)
	jmp	.LBB0_133
.LBB0_88:                               # %if.else203.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str113, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_92
# BB#89:                                # %if.then207.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#90:                                # %value_required.exit558.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#91:                                # %e_strdup.exit563.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, local_pattern(%rip)
	jmp	.LBB0_133
.LBB0_92:                               # %if.else209.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str114, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_96
# BB#93:                                # %if.then213.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#94:                                # %value_required.exit567.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#95:                                # %e_strdup.exit572.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, throttlefile(%rip)
	jmp	.LBB0_133
.LBB0_96:                               # %if.else215.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str115, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_100
# BB#97:                                # %if.then219.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#98:                                # %value_required.exit576.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#99:                                # %e_strdup.exit581.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, hostname(%rip)
	jmp	.LBB0_133
.LBB0_100:                              # %if.else221.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str116, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_104
# BB#101:                               # %if.then225.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#102:                               # %value_required.exit585.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#103:                               # %e_strdup.exit590.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, logfile(%rip)
	jmp	.LBB0_133
.LBB0_104:                              # %if.else227.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str117, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_107
# BB#105:                               # %if.then231.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#106:                               # %no_value_required.exit594.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$1, do_vhost(%rip)
	jmp	.LBB0_133
.LBB0_107:                              # %if.else232.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str118, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_110
# BB#108:                               # %if.then236.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#109:                               # %no_value_required.exit598.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$0, do_vhost(%rip)
	jmp	.LBB0_133
.LBB0_110:                              # %if.else237.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str119, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_113
# BB#111:                               # %if.then241.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#112:                               # %no_value_required.exit602.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$1, do_global_passwd(%rip)
	jmp	.LBB0_133
.LBB0_113:                              # %if.else242.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str120, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_116
# BB#114:                               # %if.then246.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	jne	.LBB0_35
# BB#115:                               # %no_value_required.exit606.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movb	$0, do_global_passwd(%rip)
	jmp	.LBB0_133
.LBB0_116:                              # %if.else247.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str121, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_120
# BB#117:                               # %if.then251.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#118:                               # %value_required.exit610.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#119:                               # %e_strdup.exit615.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, pidfile(%rip)
	jmp	.LBB0_133
.LBB0_120:                              # %if.else253.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str122, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_124
# BB#121:                               # %if.then257.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#122:                               # %value_required.exit619.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#123:                               # %e_strdup.exit624.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, charset(%rip)
	jmp	.LBB0_133
.LBB0_124:                              # %if.else259.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str123, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_128
# BB#125:                               # %if.then263.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#126:                               # %value_required.exit628.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r15, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#127:                               # %e_strdup.exit633.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%rax, p3p(%rip)
	jmp	.LBB0_133
.LBB0_128:                              # %if.else265.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str124, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB0_131
# BB#129:                               # %if.then269.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	testq	%r15, %r15
	je	.LBB0_40
# BB#130:                               # %value_required.exit637.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%r15, %rdi
	callq	strtol
	movl	%eax, max_age(%rip)
	.align	16, 0x90
.LBB0_133:                              # %cond.false336.i.i
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	$.L.str98, %esi
	movq	%rbp, %rdi
	callq	strspn
	leaq	(%rbp,%rax), %rbx
	cmpb	$0, (%rbp,%rax)
	jne	.LBB0_27
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_10:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	%r13b, %eax
	cmpl	$99, %eax
	jg	.LBB0_14
# BB#11:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r13b, %eax
	cmpl	$86, %eax
	jne	.LBB0_140
# BB#12:                                # %cond.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_140
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_14:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r13b, %eax
	cmpl	$100, %eax
	je	.LBB0_137
# BB#15:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$112, %eax
	jne	.LBB0_16
# BB#134:                               # %cond.end176.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_140
# BB#135:                               # %land.lhs.true180.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_140
# BB#136:                               # %if.then184.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movw	%ax, port(%rip)
	jmp	.LBB0_206
.LBB0_137:                              # %cond.end248.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_140
# BB#138:                               # %land.lhs.true252.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_140
# BB#139:                               # %if.then256.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, dir(%rip)
	jmp	.LBB0_206
.LBB0_16:                               # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$114, %eax
	jne	.LBB0_140
# BB#17:                                # %cond.end318.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_140
# BB#18:                                # %if.then322.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$1, do_chroot(%rip)
	jmp	.LBB0_151
	.align	16, 0x90
.LBB0_140:                              # %cond.false377.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str79, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_142
# BB#141:                               # %if.then385.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$0, do_chroot(%rip)
	jmp	.LBB0_149
	.align	16, 0x90
.LBB0_142:                              # %if.then411.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%r13b, %r15d
	cmpl	$115, %r15d
	jne	.LBB0_143
# BB#148:                               # %cond.end514.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_150
	.align	16, 0x90
.LBB0_149:                              # %if.then518.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, no_symlink_check(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
	.align	16, 0x90
.LBB0_143:                              # %if.then411.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$100, %r15d
	jne	.LBB0_150
# BB#144:                               # %if.then421.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	2(%rbx), %eax
	cmpl	$100, %eax
	jne	.LBB0_150
# BB#145:                               # %cond.end444.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 3(%rbx)
	jne	.LBB0_150
# BB#146:                               # %land.lhs.true448.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_150
# BB#147:                               # %if.then452.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, data_dir(%rip)
	jmp	.LBB0_206
	.align	16, 0x90
.LBB0_150:                              # %cond.false573.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str82, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_152
.LBB0_151:                              # %if.then581.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, no_symlink_check(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_152:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movsbl	%r13b, %r13d
	cmpl	$115, %r13d
	jg	.LBB0_159
# BB#153:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$99, %r15d
	je	.LBB0_165
# BB#154:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$104, %r15d
	jne	.LBB0_155
# BB#171:                               # %cond.end850.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#172:                               # %land.lhs.true854.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_176
# BB#173:                               # %if.then858.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, hostname(%rip)
	jmp	.LBB0_206
.LBB0_159:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$116, %r15d
	je	.LBB0_168
# BB#160:                               # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$118, %r15d
	jne	.LBB0_161
# BB#174:                               # %cond.end990.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#175:                               # %if.then994.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$1, do_vhost(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_205:                              # %read_config.exit.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rbp, %rdi
	callq	fclose
	jmp	.LBB0_206
.LBB0_165:                              # %cond.end710.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#166:                               # %land.lhs.true714.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_176
# BB#167:                               # %if.then718.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, cgi_pattern(%rip)
	jmp	.LBB0_206
.LBB0_155:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$108, %r15d
	jne	.LBB0_176
# BB#156:                               # %cond.end920.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#157:                               # %land.lhs.true924.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_176
# BB#158:                               # %if.then928.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, logfile(%rip)
	jmp	.LBB0_206
.LBB0_168:                              # %cond.end780.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#169:                               # %land.lhs.true784.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_176
# BB#170:                               # %if.then788.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, throttlefile(%rip)
	jmp	.LBB0_206
.LBB0_161:                              # %if.then607.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$117, %r15d
	jne	.LBB0_176
# BB#162:                               # %cond.end640.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_176
# BB#163:                               # %land.lhs.true644.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leal	1(%rbp), %r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jge	.LBB0_176
# BB#164:                               # %if.then648.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%r12d, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, user(%rip)
	jmp	.LBB0_206
.LBB0_176:                              # %cond.false1049.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str89, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_178
# BB#177:                               # %if.then1057.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$0, do_vhost(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_178:                              # %if.then1083.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$103, %r15d
	jne	.LBB0_181
# BB#179:                               # %cond.end1116.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_181
# BB#180:                               # %if.then1120.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$1, do_global_passwd(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_181:                              # %cond.false1175.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str91, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_183
# BB#182:                               # %if.then1183.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$0, do_global_passwd(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_183:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$104, %r13d
	jg	.LBB0_194
# BB#184:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$76, %r13d
	jg	.LBB0_188
# BB#185:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$68, %r15d
	jne	.LBB0_204
# BB#186:                               # %cond.end1523.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_204
# BB#187:                               # %if.then1527.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$1, debug(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_194:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$105, %r15d
	jne	.LBB0_204
# BB#195:                               # %cond.end1242.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_204
# BB#196:                               # %land.lhs.true1246.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%ebp
	cmpl	120(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB0_204
# BB#197:                               # %if.then1250.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%ebp, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, pidfile(%rip)
	movl	%ebp, %r12d
	.align	16, 0x90
.LBB0_206:                              # %if.end1551.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%r12d
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	movl	%r12d, %ebp
	jl	.LBB0_2
	jmp	.LBB0_207
.LBB0_188:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$77, %r15d
	je	.LBB0_201
# BB#189:                               # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$80, %r15d
	jne	.LBB0_190
# BB#198:                               # %cond.end1382.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_204
# BB#199:                               # %land.lhs.true1386.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%ebp
	cmpl	120(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB0_204
# BB#200:                               # %if.then1390.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%ebp, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, p3p(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_201:                              # %cond.end1452.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_204
# BB#202:                               # %land.lhs.true1456.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%ebp
	cmpl	120(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB0_204
# BB#203:                               # %if.then1460.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%ebp, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, max_age(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
.LBB0_190:                              # %if.then1209.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$84, %r15d
	jne	.LBB0_204
# BB#191:                               # %cond.end1312.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, 2(%rbx)
	jne	.LBB0_204
# BB#192:                               # %land.lhs.true1316.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%ebp
	cmpl	120(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB0_204
# BB#193:                               # %if.then1320.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%ebp, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	%rax, charset(%rip)
	movl	%ebp, %r12d
	jmp	.LBB0_206
	.align	16, 0x90
.LBB0_2:                                # %land.rhs.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #         Child Loop BB0_28 Depth 4
	movslq	%ebp, %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rbx
	movzbl	(%rbx), %eax
	cmpl	$45, %eax
	je	.LBB0_4
# BB#3:
	movl	%ebp, %r12d
.LBB0_207:                              # %while.end.i
	cmpl	120(%rsp), %r12d        # 4-byte Folded Reload
	jne	.LBB0_464
# BB#208:                               # %parse_args.exit
	callq	tzset
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 4544(%rsp)
	movaps	%xmm0, 4528(%rsp)
	movaps	%xmm0, 4512(%rsp)
	movl	$1, 4512(%rsp)
	movl	$1, 4520(%rsp)
	movzwl	port(%rip), %ecx
	xorl	%r15d, %r15d
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
	jne	.LBB0_465
# BB#209:                               # %for.cond.preheader.i
	movq	14512(%rsp), %rbx
	testq	%rbx, %rbx
	movl	$0, %r12d
	je	.LBB0_226
# BB#210:
	movq	%rbx, %rcx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_211:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rcx), %edx
	cmpl	$2, %edx
	jne	.LBB0_212
# BB#214:                               # %sw.bb14.i
                                        #   in Loop: Header=BB0_211 Depth=1
	testq	%r15, %r15
	cmoveq	%rcx, %r15
	jmp	.LBB0_215
	.align	16, 0x90
.LBB0_212:                              # %for.body.i
                                        #   in Loop: Header=BB0_211 Depth=1
	cmpl	$10, %edx
	jne	.LBB0_215
# BB#213:                               # %sw.bb.i
                                        #   in Loop: Header=BB0_211 Depth=1
	testq	%rax, %rax
	cmoveq	%rcx, %rax
.LBB0_215:                              # %for.inc.i
                                        #   in Loop: Header=BB0_211 Depth=1
	movq	40(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_211
# BB#216:                               # %for.end.i
	xorl	%r12d, %r12d
	testq	%rax, %rax
	movl	$0, %ebp
	je	.LBB0_220
# BB#217:                               # %if.else.i
	movl	16(%rax), %ebp
	cmpq	$129, %rbp
	jae	.LBB0_218
# BB#219:                               # %if.end28.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movq	24(%rax), %rsi
	movl	16(%rax), %edx
	leaq	144(%rsp), %rdi
	callq	memmove
	movl	$1, %ebp
.LBB0_220:                              # %if.end31.i
	testq	%r15, %r15
	je	.LBB0_225
# BB#221:                               # %if.else35.i
	movl	16(%r15), %r8d
	cmpq	$129, %r8
	jae	.LBB0_222
# BB#224:                               # %if.end43.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	movaps	%xmm0, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	movq	24(%r15), %rsi
	movl	16(%r15), %edx
	leaq	272(%rsp), %rdi
	callq	memmove
	movl	$1, %r12d
.LBB0_225:                              # %lookup_hostname.exit
	movl	%ebp, %r15d
.LBB0_226:                              # %lookup_hostname.exit
	movq	%rbx, %rdi
	callq	freeaddrinfo
	movl	%r12d, %eax
	orl	%r15d, %eax
	je	.LBB0_227
# BB#228:                               # %if.end4
	movl	$0, numthrottles(%rip)
	movl	$0, maxthrottles(%rip)
	movq	$0, throttles(%rip)
	movq	throttlefile(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB0_249
# BB#229:                               # %if.then6
	movl	%r12d, 120(%rsp)        # 4-byte Spill
	movl	$.L.str56, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB0_230
# BB#231:                               # %if.end.i
	movq	%rbx, %r14
	leaq	14512(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	leaq	4512(%rsp), %rdi
	movl	$5000, %esi             # imm = 0x1388
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_248
# BB#232:                               # %while.body.lr.ph.i
	leaq	4512(%rsp), %rbx
	movabsq	$4294977024, %r13       # imm = 0x100002600
	leaq	14544(%rsp), %rbp
	jmp	.LBB0_233
	.align	16, 0x90
.LBB0_252:                              # %while.body75.i
                                        #   in Loop: Header=BB0_233 Depth=1
	leaq	1(%rax), %rdi
	addq	$2, %rax
	movq	%rax, %rsi
.LBB0_253:                              # %while.body75.i
                                        #   in Loop: Header=BB0_233 Depth=1
	callq	strcpy
.LBB0_254:                              # %while.body75.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$.L.str61, %esi
	movq	%rbp, %rdi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB0_252
# BB#255:                               # %while.end78.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	numthrottles(%rip), %ecx
	movl	maxthrottles(%rip), %eax
	cmpl	%eax, %ecx
	jl	.LBB0_261
# BB#256:                               # %if.then81.i
                                        #   in Loop: Header=BB0_233 Depth=1
	testl	%eax, %eax
	jne	.LBB0_258
# BB#257:                               # %if.then84.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$100, maxthrottles(%rip)
	movl	$4800, %edi             # imm = 0x12C0
	callq	malloc
	jmp	.LBB0_259
.LBB0_258:                              # %if.else87.i
                                        #   in Loop: Header=BB0_233 Depth=1
	addl	%eax, %eax
	movl	%eax, maxthrottles(%rip)
	movq	throttles(%rip), %rdi
	cltq
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
.LBB0_259:                              # %if.end92.i
                                        #   in Loop: Header=BB0_233 Depth=1
	testq	%rax, %rax
	movq	%rax, throttles(%rip)
	je	.LBB0_260
.LBB0_261:                              # %if.end98.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movq	%rbp, %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB0_45
# BB#262:                               # %e_strdup.exit.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movslq	numthrottles(%rip), %rcx
	movq	throttles(%rip), %rdx
	movq	%rcx, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rsi,2), %rsi
	movq	%rax, (%rdx,%rsi)
	movq	14536(%rsp), %rax
	movq	throttles(%rip), %rdx
	movq	%rax, 8(%rdx,%rsi)
	movq	14528(%rsp), %rax
	movq	%rax, 16(%rdx,%rsi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rdx,%rsi)
	movl	$0, 40(%rdx,%rsi)
	leal	1(%rcx), %eax
	movl	%eax, numthrottles(%rip)
	jmp	.LBB0_247
	.align	16, 0x90
.LBB0_233:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_237 Depth 2
	movl	$35, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_235
# BB#234:                               # %if.then7.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movb	$0, (%rax)
.LBB0_235:                              # %if.end8.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	testl	%eax, %eax
	jle	.LBB0_240
# BB#236:                               # %land.rhs.lr.ph.i598
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	%eax, %ecx
	cltq
.LBB0_237:                              # %land.rhs.i600
                                        #   Parent Loop BB0_233 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4511(%rsp,%rax), %edx
	cmpq	$32, %rdx
	ja	.LBB0_240
# BB#238:                               # %land.rhs.i600
                                        #   in Loop: Header=BB0_237 Depth=2
	btq	%rdx, %r13
	jae	.LBB0_240
# BB#239:                               # %while.body36.i
                                        #   in Loop: Header=BB0_237 Depth=2
	movb	$0, 4511(%rsp,%rax)
	decq	%rax
	decl	%ecx
	testl	%ecx, %ecx
	jg	.LBB0_237
	.align	16, 0x90
.LBB0_240:                              # %while.end.i601
                                        #   in Loop: Header=BB0_233 Depth=1
	testl	%eax, %eax
	je	.LBB0_247
# BB#241:                               # %if.end42.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$.L.str57, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	leaq	14528(%rsp), %rcx
	leaq	14536(%rsp), %r8
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB0_244
# BB#242:                               # %if.else.i602
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$.L.str58, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	leaq	14536(%rsp), %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB0_246
# BB#243:                               # %if.then54.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movq	$0, 14528(%rsp)
.LBB0_244:                              # %if.end60.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movzbl	14544(%rsp), %eax
	cmpl	$47, %eax
	jne	.LBB0_254
# BB#245:                               # %if.then65.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movq	%rbp, %rdi
	leaq	14545(%rsp), %rsi
	jmp	.LBB0_253
.LBB0_246:                              # %if.else55.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$2, %edi
	movl	$.L.str59, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%rbx, %rcx
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str60, %esi
	xorl	%eax, %eax
	movq	%r14, %rcx
	movq	%rbx, %r8
	callq	fprintf
	.align	16, 0x90
.LBB0_247:                              # %while.cond.backedge.i
                                        #   in Loop: Header=BB0_233 Depth=1
	movl	$5000, %esi             # imm = 0x1388
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB0_233
.LBB0_248:                              # %read_throttlefile.exit
	movq	%r12, %rdi
	callq	fclose
	movl	120(%rsp), %r12d        # 4-byte Reload
.LBB0_249:                              # %if.end7
	callq	getuid
	testl	%eax, %eax
	movl	$32767, %r14d           # imm = 0x7FFF
	movl	$32767, %ecx            # imm = 0x7FFF
	jne	.LBB0_264
# BB#250:                               # %if.then10
	movq	user(%rip), %rdi
	callq	getpwnam
	testq	%rax, %rax
	je	.LBB0_251
# BB#263:                               # %if.end15
	movl	16(%rax), %ecx
	movl	20(%rax), %r14d
.LBB0_264:                              # %if.end16
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movq	logfile(%rip), %rbp
	xorl	%ebx, %ebx
	testq	%rbp, %rbp
	je	.LBB0_277
# BB#265:                               # %cond.false
	movl	$.L.str4, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_266
# BB#267:                               # %cond.true71
	movzbl	(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB0_270
# BB#268:                               # %cond.end116
	cmpb	$0, 1(%rbp)
	je	.LBB0_269
.LBB0_270:                              # %if.else121
	movl	$.L.str6, %esi
	movq	%rbp, %rdi
	callq	fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	movq	logfile(%rip), %rcx
	je	.LBB0_271
# BB#272:                               # %if.end126
	movzbl	(%rcx), %eax
	cmpl	$47, %eax
	jne	.LBB0_273
.LBB0_274:                              # %if.end133
	movq	%rbx, %rdi
	callq	fileno
	movl	%eax, %ecx
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ecx, %edi
	callq	fcntl
	callq	getuid
	testl	%eax, %eax
	jne	.LBB0_277
# BB#275:                               # %if.then139
	movq	%rbx, %rdi
	callq	fileno
	movl	%eax, %edi
	movl	96(%rsp), %esi          # 4-byte Reload
	movl	%r14d, %edx
	callq	fchown
	testl	%eax, %eax
	jns	.LBB0_277
# BB#276:                               # %if.then144
	movl	$4, %edi
	movl	$.L.str10, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str11, %edi
	callq	perror
	jmp	.LBB0_277
.LBB0_266:                              # %if.then61
	movb	$1, no_log(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_277
.LBB0_269:                              # %if.then120
	movq	stdout(%rip), %rbx
.LBB0_277:                              # %if.end150
	movq	dir(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_280
# BB#278:                               # %if.then153
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_279
.LBB0_280:                              # %if.end159
	leaq	400(%rsp), %rbp
	movl	$4096, %esi             # imm = 0x1000
	movq	%rbp, %rdi
	callq	getcwd
	movq	%rbp, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbp), %eax
	cmpl	$47, %eax
	je	.LBB0_282
# BB#281:                               # %if.then168
	leaq	400(%rsp), %rdi
	callq	strlen
	movw	$47, 400(%rsp,%rax)
.LBB0_282:                              # %if.end171
	movb	debug(%rip), %al
	testb	%al, %al
	je	.LBB0_283
# BB#288:                               # %if.else186
	callq	setsid
	jmp	.LBB0_289
.LBB0_283:                              # %if.then173
	movq	stdin(%rip), %rdi
	callq	fclose
	movq	stdout(%rip), %rdi
	cmpq	%rdi, %rbx
	je	.LBB0_285
# BB#284:                               # %if.then177
	callq	fclose
.LBB0_285:                              # %if.end179
	movq	stderr(%rip), %rdi
	callq	fclose
	movl	$1, %edi
	movl	$1, %esi
	callq	daemon
	testl	%eax, %eax
	js	.LBB0_286
.LBB0_289:                              # %if.end188
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movl	%r14d, 112(%rsp)        # 4-byte Spill
	movq	pidfile(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_292
# BB#290:                               # %if.then191
	movl	$.L.str16, %esi
	callq	fopen
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_466
# BB#291:                               # %if.end197
	callq	getpid
	movl	%eax, %ecx
	movl	$.L.str17, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ecx, %edx
	callq	fprintf
	movq	%rbp, %rdi
	callq	fclose
.LBB0_292:                              # %if.end201
	callq	fdwatch_get_nfiles
	testl	%eax, %eax
	movl	%eax, max_connects(%rip)
	js	.LBB0_293
# BB#294:                               # %if.end206
	addl	$-10, %eax
	movl	%eax, max_connects(%rip)
	movzbl	do_chroot(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB0_305
# BB#295:                               # %if.then209
	leaq	400(%rsp), %rdi
	callq	chroot
	testl	%eax, %eax
	js	.LBB0_296
# BB#297:                               # %if.end215
	movq	logfile(%rip), %rbp
	testq	%rbp, %rbp
	je	.LBB0_303
# BB#298:                               # %cond.true227
	movzbl	(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB0_300
# BB#299:                               # %cond.end272
	cmpb	$0, 1(%rbp)
	je	.LBB0_303
.LBB0_300:                              # %if.then276
	leaq	400(%rsp), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB0_302
# BB#301:                               # %if.then283
	leaq	-1(%rbx,%rbp), %rsi
	movq	%rbp, %rdi
	callq	strcpy
.LBB0_303:                              # %if.end292
	movw	$47, 400(%rsp)
	leaq	400(%rsp), %rdi
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_304
.LBB0_305:                              # %if.end301
	movq	data_dir(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_308
# BB#306:                               # %if.then304
	callq	chdir
	testl	%eax, %eax
	js	.LBB0_307
.LBB0_308:                              # %if.end310
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
	testl	%r15d, %r15d
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
	je	.LBB0_467
# BB#309:                               # %if.end335
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$occasional, %esi
	movl	$120000, %ecx           # imm = 0x1D4C0
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	movl	112(%rsp), %ebx         # 4-byte Reload
	je	.LBB0_310
# BB#311:                               # %if.end340
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$idle, %esi
	movl	$5000, %ecx             # imm = 0x1388
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_312
# BB#313:                               # %if.end345
	cmpl	$0, numthrottles(%rip)
	jle	.LBB0_316
# BB#314:                               # %if.then348
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$update_throttles, %esi
	movl	$2000, %ecx             # imm = 0x7D0
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_315
.LBB0_316:                              # %if.end354
	movq	JunkClientData(%rip), %rdx
	xorl	%edi, %edi
	movl	$show_stats, %esi
	movl	$3600000, %ecx          # imm = 0x36EE80
	movl	$1, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB0_317
# BB#318:                               # %if.end359
	xorl	%edi, %edi
	callq	time
	movq	%rax, stats_time(%rip)
	movq	%rax, start_time(%rip)
	movq	$0, stats_connections(%rip)
	movq	$0, stats_bytes(%rip)
	movl	$0, stats_simultaneous(%rip)
	callq	getuid
	testl	%eax, %eax
	jne	.LBB0_329
# BB#319:                               # %if.then364
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	setgroups
	testl	%eax, %eax
	js	.LBB0_320
# BB#321:                               # %if.end369
	movl	%ebx, %edi
	callq	setgid
	testl	%eax, %eax
	js	.LBB0_322
# BB#323:                               # %if.end374
	movq	user(%rip), %rdi
	movl	%ebx, %esi
	callq	initgroups
	testl	%eax, %eax
	jns	.LBB0_325
# BB#324:                               # %if.then378
	movl	$4, %edi
	movl	$.L.str33, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_325:                              # %if.end379
	movl	96(%rsp), %edi          # 4-byte Reload
	callq	setuid
	testl	%eax, %eax
	js	.LBB0_326
# BB#327:                               # %if.end384
	movb	do_chroot(%rip), %al
	testb	%al, %al
	jne	.LBB0_329
# BB#328:                               # %if.then386
	movl	$4, %edi
	movl	$.L.str35, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_329:                              # %if.end388
	movslq	max_connects(%rip), %rbx
	movq	%rbx, %rax
	shlq	$4, %rax
	leaq	(%rax,%rax,8), %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%rax, connects(%rip)
	je	.LBB0_468
# BB#330:                               # %for.cond.preheader
	movl	$8, %ecx
	testl	%ebx, %ebx
	jle	.LBB0_333
# BB#331:
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_332:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -8(%rax,%rcx)
	incl	%edx
	movl	%edx, -4(%rax,%rcx)
	movq	$0, (%rax,%rcx)
	movl	max_connects(%rip), %ebx
	addq	$144, %rcx
	cmpl	%ebx, %edx
	movq	connects(%rip), %rax
	jl	.LBB0_332
.LBB0_333:                              # %for.end
	decl	%ebx
	movslq	%ebx, %rcx
	leaq	(%rcx,%rcx,8), %rcx
	shlq	$4, %rcx
	movl	$-1, 4(%rax,%rcx)
	movl	$0, first_free_connect(%rip)
	movl	$0, num_connects(%rip)
	movl	$0, httpd_conn_count(%rip)
	movq	hs(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_338
# BB#334:                               # %if.then409
	movl	72(%rax), %edi
	cmpl	$-1, %edi
	je	.LBB0_336
# BB#335:                               # %if.then412
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fdwatch_add_fd
	movq	hs(%rip), %rax
.LBB0_336:                              # %if.end414
	movl	76(%rax), %edi
	cmpl	$-1, %edi
	je	.LBB0_338
# BB#337:                               # %if.then417
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fdwatch_add_fd
.LBB0_338:                              # %if.end420
	leaq	128(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cmpl	$0, terminate(%rip)
	jne	.LBB0_339
.LBB0_340:                              # %while.body.lr.ph
	leaq	128(%rsp), %r12
	leaq	19584(%rsp), %r14
	movl	$1, %r15d
	.align	16, 0x90
.LBB0_341:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_368 Depth 2
                                        #       Child Loop BB0_388 Depth 3
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_439 Depth 3
	cmpl	$0, got_hup(%rip)
	je	.LBB0_351
# BB#342:                               # %if.then426
                                        #   in Loop: Header=BB0_341 Depth=1
	cmpq	$0, hs(%rip)
	setne	%cl
	movq	logfile(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_350
# BB#343:                               # %if.then426
                                        #   in Loop: Header=BB0_341 Depth=1
	movb	no_log(%rip), %dl
	notb	%dl
	andb	%cl, %dl
	je	.LBB0_350
# BB#344:                               # %cond.true.i
                                        #   in Loop: Header=BB0_341 Depth=1
	movzbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB0_346
# BB#345:                               # %cond.end.i612
                                        #   in Loop: Header=BB0_341 Depth=1
	cmpb	$0, 1(%rax)
	je	.LBB0_350
.LBB0_346:                              # %if.then43.i
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	$5, %edi
	movl	$.L.str128, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	logfile(%rip), %rdi
	movl	$.L.str6, %esi
	callq	fopen
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB0_348
# BB#347:                               # %if.then47.i
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	logfile(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str129, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB0_349
.LBB0_348:                              # %if.end48.i
                                        #   in Loop: Header=BB0_341 Depth=1
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
.LBB0_349:                              # %re_open_logfile.exit
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	$1, %r15d
	.align	16, 0x90
.LBB0_350:                              # %re_open_logfile.exit
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	$0, got_hup(%rip)
.LBB0_351:                              # %if.end427
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	%r12, %rdi
	callq	tmr_mstimeout
	movq	%rax, %rdi
	callq	fdwatch
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB0_355
# BB#352:                               # %if.then432
                                        #   in Loop: Header=BB0_341 Depth=1
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_357
# BB#353:                               # %if.then432
                                        #   in Loop: Header=BB0_341 Depth=1
	cmpl	$11, %eax
	je	.LBB0_357
	jmp	.LBB0_354
	.align	16, 0x90
.LBB0_355:                              # %if.end442
                                        #   in Loop: Header=BB0_341 Depth=1
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gettimeofday
	testl	%ebx, %ebx
	jne	.LBB0_360
# BB#356:                               # %if.then446
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	%r12, %rdi
	callq	tmr_run
	jmp	.LBB0_357
	.align	16, 0x90
.LBB0_360:                              # %if.end447
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	hs(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_368
# BB#361:                               # %land.lhs.true450
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	76(%rax), %edi
	cmpl	$-1, %edi
	je	.LBB0_364
# BB#362:                               # %land.lhs.true454
                                        #   in Loop: Header=BB0_341 Depth=1
	callq	fdwatch_check_fd
	testl	%eax, %eax
	je	.LBB0_364
# BB#363:                               # %if.then458
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	hs(%rip), %rax
	movl	76(%rax), %esi
	movq	%r12, %rdi
	callq	handle_newconnect
	testl	%eax, %eax
	jne	.LBB0_357
.LBB0_364:                              # %if.end464
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	hs(%rip), %rax
	testq	%rax, %rax
	je	.LBB0_368
# BB#365:                               # %land.lhs.true467
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	72(%rax), %edi
	cmpl	$-1, %edi
	je	.LBB0_368
# BB#366:                               # %land.lhs.true471
                                        #   in Loop: Header=BB0_341 Depth=1
	callq	fdwatch_check_fd
	testl	%eax, %eax
	je	.LBB0_368
# BB#367:                               # %if.then475
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	hs(%rip), %rax
	movl	72(%rax), %esi
	movq	%r12, %rdi
	callq	handle_newconnect
	testl	%eax, %eax
	jne	.LBB0_357
	jmp	.LBB0_368
.LBB0_371:                              # %if.then494
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	clear_connection
	.align	16, 0x90
.LBB0_368:                              # %while.cond482
                                        #   Parent Loop BB0_341 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_388 Depth 3
                                        #       Child Loop BB0_410 Depth 3
                                        #       Child Loop BB0_439 Depth 3
	callq	fdwatch_get_next_client_data
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_368
# BB#369:                               # %while.cond482
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpq	$-1, %rbp
	je	.LBB0_456
# BB#370:                               # %if.end490
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %rax
	movl	704(%rax), %edi
	callq	fdwatch_check_fd
	testl	%eax, %eax
	je	.LBB0_371
# BB#372:                               # %if.else495
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	(%rbp), %eax
	cmpl	$4, %eax
	je	.LBB0_451
# BB#373:                               # %if.else495
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_374
# BB#414:                               # %sw.bb497
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %r13
	movq	64(%rbp), %rcx
	cmpq	$-1, %rcx
	movl	$1000000000, %eax       # imm = 0x3B9ACA00
	je	.LBB0_416
# BB#415:                               # %if.else.i644
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rcx, %rax
	sarq	$63, %rax
	shrq	$62, %rax
	addq	%rcx, %rax
	sarq	$2, %rax
.LBB0_416:                              # %if.end.i646
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	472(%r13), %rcx
	testq	%rcx, %rcx
	jne	.LBB0_418
# BB#417:                               # %if.then4.i655
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	704(%r13), %edi
	movq	128(%rbp), %rdx
	movq	136(%rbp), %rsi
	subq	%rsi, %rdx
	addq	712(%r13), %rsi
	cmpq	%rax, %rdx
	cmovaeq	%rax, %rdx
	callq	write
	jmp	.LBB0_419
.LBB0_451:                              # %sw.bb498
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %rax
	movl	704(%rax), %edi
	movl	$4096, %edx             # imm = 0x1000
	movq	%r14, %rsi
	callq	read
	testl	%eax, %eax
	jns	.LBB0_454
# BB#452:                               # %land.lhs.true.i680
                                        #   in Loop: Header=BB0_368 Depth=2
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_368
# BB#453:                               # %land.lhs.true.i680
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$11, %eax
	jne	.LBB0_455
	jmp	.LBB0_368
.LBB0_374:                              # %if.else495
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$1, %eax
	jne	.LBB0_368
# BB#375:                               # %sw.bb
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %rbx
	movq	152(%rbx), %rdx
	movq	160(%rbx), %rsi
	cmpq	%rdx, %rsi
	jb	.LBB0_379
# BB#376:                               # %if.then.i615
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpq	$5001, %rdx             # imm = 0x1389
	jae	.LBB0_377
# BB#378:                               # %if.end.i617
                                        #   in Loop: Header=BB0_368 Depth=2
	leaq	152(%rbx), %rsi
	leaq	144(%rbx), %rdi
	addq	$1000, %rdx             # imm = 0x3E8
	callq	httpd_realloc_str
	movq	152(%rbx), %rdx
	movq	160(%rbx), %rsi
.LBB0_379:                              # %if.end7.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	704(%rbx), %edi
	subq	%rsi, %rdx
	addq	144(%rbx), %rsi
	callq	read
	testl	%eax, %eax
	je	.LBB0_377
# BB#380:                               # %if.end15.i
                                        #   in Loop: Header=BB0_368 Depth=2
	jns	.LBB0_383
# BB#381:                               # %if.then18.i
                                        #   in Loop: Header=BB0_368 Depth=2
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB0_368
# BB#382:                               # %if.then18.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$11, %eax
	jne	.LBB0_377
	jmp	.LBB0_368
.LBB0_418:                              # %if.else10.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	368(%r13), %rdx
	movq	%rdx, 19552(%rsp)
	movq	%rcx, 19560(%rsp)
	movq	136(%rbp), %rcx
	movq	712(%r13), %rdx
	addq	%rcx, %rdx
	movq	%rdx, 19568(%rsp)
	movq	128(%rbp), %rdx
	subq	%rcx, %rdx
	cmpq	%rax, %rdx
	cmovaeq	%rax, %rdx
	movq	%rdx, 19576(%rsp)
	movl	704(%r13), %edi
	movl	$2, %edx
	leaq	19552(%rsp), %rsi
	callq	writev
.LBB0_419:                              # %if.end36.i
                                        #   in Loop: Header=BB0_368 Depth=2
	testl	%eax, %eax
	jns	.LBB0_426
# BB#420:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$103, %eax
	jg	.LBB0_425
# BB#421:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$31, %eax
	jg	.LBB0_431
# BB#422:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$4, %eax
	je	.LBB0_368
# BB#423:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$11, %eax
	je	.LBB0_427
# BB#424:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$22, %eax
	je	.LBB0_371
	jmp	.LBB0_432
.LBB0_454:                              # %if.end.i681
                                        #   in Loop: Header=BB0_368 Depth=2
	jg	.LBB0_368
.LBB0_455:                              # %if.then10.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	really_clear_connection
	jmp	.LBB0_368
.LBB0_426:                              # %if.end43.i657
                                        #   in Loop: Header=BB0_368 Depth=2
	jne	.LBB0_433
.LBB0_427:                              # %if.then56.i
                                        #   in Loop: Header=BB0_368 Depth=2
	addq	$100, 112(%rbp)
	movl	$3, (%rbp)
	movl	704(%r13), %edi
	callq	fdwatch_del_fd
	cmpq	$0, 96(%rbp)
	je	.LBB0_429
# BB#428:                               # %if.then60.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$3, %edi
	movl	$.L.str49, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_429:                              # %if.end61.i661
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	112(%rbp), %rcx
	movl	$wakeup_connection, %esi
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 96(%rbp)
	jne	.LBB0_368
	jmp	.LBB0_430
.LBB0_425:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$104, %eax
	je	.LBB0_371
	jmp	.LBB0_432
.LBB0_433:                              # %if.end87.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	128(%rsp), %rcx
	movq	%rcx, 88(%rbp)
	movq	472(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB0_437
# BB#434:                               # %if.then91.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movslq	%eax, %rsi
	movq	%rsi, %rax
	subq	%rcx, %rax
	jae	.LBB0_436
# BB#435:                               # %if.then96.i
                                        #   in Loop: Header=BB0_368 Depth=2
	subl	%esi, %ecx
	movq	368(%r13), %rdi
	addq	%rdi, %rsi
	movslq	%ecx, %rbx
	movq	%rbx, %rdx
	callq	memmove
	movq	%rbx, 472(%r13)
	xorl	%eax, %eax
	jmp	.LBB0_437
.LBB0_431:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$32, %eax
	je	.LBB0_371
.LBB0_432:                              # %if.then85.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	208(%r13), %rdx
	movl	$3, %edi
	movl	$.L.str51, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB0_371
.LBB0_436:                              # %if.else107.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	$0, 472(%r13)
.LBB0_437:                              # %if.end114.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movslq	%eax, %r9
	movq	136(%rbp), %r8
	addq	%r9, %r8
	movq	%r8, 136(%rbp)
	movq	8(%rbp), %rdi
	movq	200(%rdi), %rax
	addq	%r9, %rax
	movq	%rax, 200(%rdi)
	movl	56(%rbp), %esi
	testl	%esi, %esi
	jle	.LBB0_440
# BB#438:                               # %for.body.lr.ph.i667
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	throttles(%rip), %rbx
	leaq	16(%rbp), %rcx
	.align	16, 0x90
.LBB0_439:                              # %for.body.i671
                                        #   Parent Loop BB0_341 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%rcx), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	addq	%r9, 32(%rbx,%rdx)
	addq	$4, %rcx
	decl	%esi
	jne	.LBB0_439
.LBB0_440:                              # %for.end.i672
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpq	128(%rbp), %r8
	jge	.LBB0_441
# BB#442:                               # %if.end134.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	112(%rbp), %rcx
	cmpq	$101, %rcx
	jl	.LBB0_444
# BB#443:                               # %if.then138.i
                                        #   in Loop: Header=BB0_368 Depth=2
	addq	$-100, %rcx
	movq	%rcx, 112(%rbp)
.LBB0_444:                              # %if.end141.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	64(%rbp), %rcx
	cmpq	$-1, %rcx
	je	.LBB0_368
# BB#445:                               # %if.then145.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	128(%rsp), %rbx
	subq	80(%rbp), %rbx
	cmoveq	%r15, %rbx
	cqto
	idivq	%rbx
	cmpq	%rcx, %rax
	jle	.LBB0_368
# BB#446:                               # %if.then158.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$3, (%rbp)
	movl	704(%r13), %edi
	callq	fdwatch_del_fd
	movq	8(%rbp), %rax
	movq	200(%rax), %rax
	cqto
	idivq	64(%rbp)
	movq	%rax, %r15
	subq	%rbx, %r15
	cmpq	$0, 96(%rbp)
	je	.LBB0_448
# BB#447:                               # %if.then171.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$3, %edi
	movl	$.L.str49, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB0_448:                              # %if.end172.i
                                        #   in Loop: Header=BB0_368 Depth=2
	testl	%r15d, %r15d
	movl	$500, %ecx              # imm = 0x1F4
	jle	.LBB0_450
# BB#449:                               # %cond.true175.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movslq	%r15d, %rax
	imulq	$1000, %rax, %rcx       # imm = 0x3E8
.LBB0_450:                              # %cond.end178.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$wakeup_connection, %esi
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 96(%rbp)
	movl	$1, %r15d
	jne	.LBB0_368
	jmp	.LBB0_430
.LBB0_441:                              # %if.then133.i
                                        #   in Loop: Header=BB0_368 Depth=2
	callq	httpd_write_response
	jmp	.LBB0_371
.LBB0_383:                              # %if.end31.i624
                                        #   in Loop: Header=BB0_368 Depth=2
	cltq
	addq	%rax, 160(%rbx)
	movq	128(%rsp), %rax
	movq	%rax, 88(%rbp)
	movq	%rbx, %rdi
	callq	httpd_got_request
	testl	%eax, %eax
	je	.LBB0_368
# BB#384:                               # %if.end31.i624
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$2, %eax
	jne	.LBB0_385
.LBB0_377:                              # %if.then4.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str42, %ecx
	movl	$.L.str42, %r9d
	movq	%rbx, %rdi
	callq	httpd_send_err
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	jmp	.LBB0_371
.LBB0_385:                              # %sw.epilog.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rbx, %rdi
	callq	httpd_parse_request
	testl	%eax, %eax
	js	.LBB0_386
# BB#387:                               # %if.end41.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$0, 56(%rbp)
	movq	$-1, 72(%rbp)
	movq	$-1, 64(%rbp)
	cmpl	$0, numthrottles(%rip)
	movl	$1, %r13d
	movl	$0, %r15d
	jle	.LBB0_400
.LBB0_388:                              # %for.body.i.i
                                        #   Parent Loop BB0_341 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	throttles(%rip), %rax
	movq	(%rax,%r15), %rdi
	movq	8(%rbp), %rax
	movq	240(%rax), %rsi
	callq	match
	testl	%eax, %eax
	je	.LBB0_398
# BB#389:                               # %if.then.i.i628
                                        #   in Loop: Header=BB0_388 Depth=3
	movq	throttles(%rip), %rcx
	movq	8(%rcx,%r15), %rax
	movq	24(%rcx,%r15), %rdx
	leaq	(%rax,%rax), %rsi
	cmpq	%rsi, %rdx
	jg	.LBB0_469
# BB#390:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	cmpq	16(%rcx,%r15), %rdx
	jl	.LBB0_469
# BB#391:                               # %if.end18.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	cmpl	$0, 40(%rcx,%r15)
	jns	.LBB0_393
# BB#392:                               # %if.then22.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	movl	$3, %edi
	movl	$.L.str52, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	throttles(%rip), %rcx
	movl	$0, 40(%rcx,%r15)
	movq	8(%rcx,%r15), %rax
.LBB0_393:                              # %if.end26.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	movslq	56(%rbp), %rdx
	leal	1(%rdx), %esi
	movl	%esi, 56(%rbp)
	leal	-1(%r13), %esi
	movl	%esi, 16(%rbp,%rdx,4)
	movl	40(%rcx,%r15), %edx
	incl	%edx
	movl	%edx, 40(%rcx,%r15)
	movslq	%edx, %rsi
	cqto
	idivq	%rsi
	movq	64(%rbp), %rdx
	cmpq	$-1, %rdx
	je	.LBB0_395
# BB#394:                               # %if.else.i.i629
                                        #   in Loop: Header=BB0_388 Depth=3
	cmpq	%rax, %rdx
	cmovleq	%rdx, %rax
.LBB0_395:                              # %if.end50.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	movq	%rax, 64(%rbp)
	movq	16(%rcx,%r15), %rax
	movq	72(%rbp), %rcx
	cmpq	$-1, %rcx
	je	.LBB0_397
# BB#396:                               # %if.else59.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	cmpq	%rax, %rcx
	cmovgeq	%rcx, %rax
.LBB0_397:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	movq	%rax, 72(%rbp)
.LBB0_398:                              # %for.inc.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	cmpl	numthrottles(%rip), %r13d
	jge	.LBB0_400
# BB#399:                               # %for.inc.land.rhs_crit_edge.i.i
                                        #   in Loop: Header=BB0_388 Depth=3
	incl	%r13d
	addq	$48, %r15
	cmpl	$10, 56(%rbp)
	jl	.LBB0_388
.LBB0_400:                              # %if.end44.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	httpd_start_request
	testl	%eax, %eax
	js	.LBB0_401
# BB#402:                               # %if.end49.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpl	$0, 528(%rbx)
	movl	$1, %r15d
	jne	.LBB0_403
# BB#405:                               # %if.else.i634
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	192(%rbx), %rax
	testq	%rax, %rax
	jns	.LBB0_404
# BB#406:                               # %if.then55.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	$0, 128(%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_407
.LBB0_403:                              # %if.then51.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	536(%rbx), %rax
	movq	%rax, 136(%rbp)
	movq	544(%rbx), %rax
	incq	%rax
.LBB0_404:                              # %if.else57.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rax, 128(%rbp)
.LBB0_407:                              # %if.end61.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpq	$0, 712(%rbx)
	jne	.LBB0_412
# BB#408:                               # %for.cond.preheader.i635
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	56(%rbp), %eax
	testl	%eax, %eax
	movq	200(%rbx), %rcx
	jle	.LBB0_411
# BB#409:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	throttles(%rip), %rdx
	leaq	16(%rbp), %rsi
.LBB0_410:                              # %for.body.i639
                                        #   Parent Loop BB0_341 Depth=1
                                        #     Parent Loop BB0_368 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%rsi), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	shlq	$4, %rdi
	addq	%rcx, 32(%rdx,%rdi)
	addq	$4, %rsi
	decl	%eax
	jne	.LBB0_410
.LBB0_411:                              # %for.end.i640
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	%rcx, 136(%rbp)
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	jmp	.LBB0_371
.LBB0_412:                              # %if.end73.i
                                        #   in Loop: Header=BB0_368 Depth=2
	cmpq	%rax, 136(%rbp)
	jge	.LBB0_386
# BB#413:                               # %if.end79.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movl	$2, (%rbp)
	movq	128(%rsp), %rax
	movq	%rax, 80(%rbp)
	movq	$0, 112(%rbp)
	movl	704(%rbx), %edi
	callq	fdwatch_del_fd
	movl	704(%rbx), %edi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	fdwatch_add_fd
	jmp	.LBB0_368
.LBB0_386:                              # %if.then40.i626
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	jmp	.LBB0_371
.LBB0_469:                              # %if.then43.i631
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%rbx), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str42, %ecx
	movq	%rbx, %rdi
	callq	httpd_send_err
.LBB0_401:                              # %if.then48.i
                                        #   in Loop: Header=BB0_368 Depth=2
	movq	8(%rbp), %rdi
	callq	httpd_write_response
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	clear_connection
	movl	$1, %r15d
	jmp	.LBB0_368
.LBB0_456:                              # %while.end
                                        #   in Loop: Header=BB0_341 Depth=1
	movq	%r12, %rdi
	callq	tmr_run
	cmpl	$0, got_usr1(%rip)
	je	.LBB0_357
# BB#457:                               # %while.end
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	terminate(%rip), %eax
	testl	%eax, %eax
	jne	.LBB0_357
# BB#458:                               # %if.then503
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	$1, terminate(%rip)
	movq	hs(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_357
# BB#459:                               # %if.then506
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	72(%rdi), %eax
	cmpl	$-1, %eax
	je	.LBB0_461
# BB#460:                               # %if.then510
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	%eax, %edi
	callq	fdwatch_del_fd
	movq	hs(%rip), %rdi
.LBB0_461:                              # %if.end512
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	76(%rdi), %eax
	cmpl	$-1, %eax
	je	.LBB0_463
# BB#462:                               # %if.then516
                                        #   in Loop: Header=BB0_341 Depth=1
	movl	%eax, %edi
	callq	fdwatch_del_fd
	movq	hs(%rip), %rdi
.LBB0_463:                              # %if.end518
                                        #   in Loop: Header=BB0_341 Depth=1
	callq	httpd_unlisten
	.align	16, 0x90
.LBB0_357:                              # %while.cond.backedge
                                        #   in Loop: Header=BB0_341 Depth=1
	cmpl	$0, terminate(%rip)
	movl	num_connects(%rip), %eax
	je	.LBB0_341
# BB#358:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_341 Depth=1
	testl	%eax, %eax
	jg	.LBB0_341
	jmp	.LBB0_359
.LBB0_273:                              # %if.then131
	movl	$4, %edi
	movl	$.L.str8, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str9, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_274
.LBB0_302:                              # %if.else289
	movl	$4, %edi
	movl	$.L.str21, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str22, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB0_303
.LBB0_35:                               # %if.then.i.i.i
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str127, %esi
	jmp	.LBB0_36
.LBB0_131:                              # %if.else271.i.i
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str125, %esi
	jmp	.LBB0_36
.LBB0_40:                               # %if.then.i476.i.i
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str126, %esi
.LBB0_36:                               # %if.then.i.i.i
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%rbx, %rcx
	jmp	.LBB0_37
.LBB0_13:                               # %if.then49.i
	movl	$.L.str74, %edi
	callq	puts
	xorl	%edi, %edi
	callq	exit
.LBB0_204:                              # %if.else1528.i
	callq	usage
.LBB0_464:                              # %if.then1555.i
	callq	usage
.LBB0_465:                              # %if.then.i592
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
.LBB0_218:                              # %if.then25.i
	movq	hostname(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str69, %esi
	movl	$128, %ecx
	xorl	%eax, %eax
	movq	%rbp, %r8
	jmp	.LBB0_223
.LBB0_222:                              # %if.then40.i
	movq	hostname(%rip), %rdx
	movl	$2, %edi
	movl	$.L.str69, %esi
	movl	$128, %ecx
	xorl	%eax, %eax
.LBB0_223:                              # %if.then40.i
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB0_227:                              # %if.then2
	movl	$3, %edi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str1, %esi
	jmp	.LBB0_46
.LBB0_230:                              # %if.then.i595
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	syslog
.LBB0_19:                               # %if.then.i.i
	movq	%rbx, %rdi
	jmp	.LBB0_20
.LBB0_260:                              # %if.then95.i
	movl	$2, %edi
	movl	$.L.str62, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str63, %esi
	jmp	.LBB0_46
.LBB0_45:                               # %if.then.i484.i.i
	movl	$2, %edi
	movl	$.L.str64, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	stderr(%rip), %rcx
	movq	argv0(%rip), %rdx
	movl	$.L.str65, %esi
.LBB0_46:                               # %if.then.i484.i.i
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_251:                              # %if.then13
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
.LBB0_37:                               # %if.then.i.i.i
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB0_271:                              # %if.then125
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movq	logfile(%rip), %rax
	movq	%rax, %rdi
	jmp	.LBB0_20
.LBB0_279:                              # %if.then157
	movl	$2, %edi
	movl	$.L.str12, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str13, %edi
	jmp	.LBB0_20
.LBB0_286:                              # %if.then184
	movl	$2, %edi
	movl	$.L.str15, %esi
	jmp	.LBB0_287
.LBB0_466:                              # %if.then196
	movq	pidfile(%rip), %rcx
	movl	$2, %edi
	movl	$.L.str7, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
.LBB0_467:                              # %if.then334
	movl	$1, %edi
	callq	exit
.LBB0_293:                              # %if.then205
	movl	$2, %edi
	movl	$.L.str18, %esi
	jmp	.LBB0_287
.LBB0_296:                              # %if.then214
	movl	$2, %edi
	movl	$.L.str19, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str20, %edi
	jmp	.LBB0_20
.LBB0_304:                              # %if.then299
	movl	$2, %edi
	movl	$.L.str23, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str24, %edi
	jmp	.LBB0_20
.LBB0_307:                              # %if.then308
	movl	$2, %edi
	movl	$.L.str25, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$.L.str26, %edi
.LBB0_20:                               # %if.then.i.i
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB0_310:                              # %if.then339
	movl	$2, %edi
	movl	$.L.str27, %esi
	jmp	.LBB0_287
.LBB0_312:                              # %if.then344
	movl	$2, %edi
	movl	$.L.str28, %esi
	jmp	.LBB0_287
.LBB0_315:                              # %if.then352
	movl	$2, %edi
	movl	$.L.str29, %esi
	jmp	.LBB0_287
.LBB0_317:                              # %if.then358
	movl	$2, %edi
	movl	$.L.str30, %esi
	jmp	.LBB0_287
.LBB0_320:                              # %if.then368
	movl	$2, %edi
	movl	$.L.str31, %esi
	jmp	.LBB0_287
.LBB0_322:                              # %if.then373
	movl	$2, %edi
	movl	$.L.str32, %esi
	jmp	.LBB0_287
.LBB0_326:                              # %if.then383
	movl	$2, %edi
	movl	$.L.str34, %esi
	jmp	.LBB0_287
.LBB0_468:                              # %if.then393
	movl	$2, %edi
	movl	$.L.str36, %esi
	jmp	.LBB0_287
.LBB0_339:                              # %if.end420
	movl	num_connects(%rip), %eax
	testl	%eax, %eax
	jg	.LBB0_340
.LBB0_359:                              # %while.end521
	callq	shut_down
	movl	$5, %edi
	movl	$.L.str38, %esi
	xorl	%eax, %eax
	callq	syslog
	callq	closelog
	xorl	%edi, %edi
	callq	exit
.LBB0_354:                              # %if.end441
	movl	$3, %edi
	movl	$.L.str37, %esi
	jmp	.LBB0_287
.LBB0_430:                              # %if.then68.i
	movl	$2, %edi
	movl	$.L.str50, %esi
.LBB0_287:                              # %if.then184
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
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	callq	__errno_location
	movq	%rax, %r14
	movl	(%r14), %r15d
	leaq	4(%rsp), %rsi
	movl	$-1, %edi
	movl	$1, %edx
	callq	waitpid
	testl	%eax, %eax
	je	.LBB2_10
# BB#1:
	leaq	4(%rsp), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jns	.LBB2_7
# BB#3:                                 # %if.then3
                                        #   in Loop: Header=BB2_2 Depth=1
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
	movq	hs(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_9
# BB#8:                                 # %if.then16
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	36(%rax), %ecx
	leal	-1(%rcx), %edx
	testl	%ecx, %ecx
	cmovlel	%ebp, %edx
	movl	%edx, 36(%rax)
.LBB2_9:                                # %for.cond.backedge
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$-1, %edi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	waitpid
	testl	%eax, %eax
	jne	.LBB2_2
	jmp	.LBB2_10
.LBB2_5:                                # %if.then3
	cmpl	$10, %eax
	je	.LBB2_10
# BB#6:                                 # %if.then12
	movl	$3, %edi
	movl	$.L.str131, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB2_10:                               # %for.end
	movl	%r15d, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp40:
	.size	handle_chld, .Ltmp40-handle_chld
	.cfi_endproc

	.align	16, 0x90
	.type	handle_hup,@function
handle_hup:                             # @handle_hup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp42:
	.cfi_def_cfa_offset 16
	callq	__errno_location
	movl	(%rax), %ecx
	movl	$1, got_hup(%rip)
	movl	%ecx, (%rax)
	popq	%rax
	ret
.Ltmp43:
	.size	handle_hup, .Ltmp43-handle_hup
	.cfi_endproc

	.align	16, 0x90
	.type	handle_usr1,@function
handle_usr1:                            # @handle_usr1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 16
	cmpl	$0, num_connects(%rip)
	je	.LBB4_2
# BB#1:                                 # %if.end
	movl	$1, got_usr1(%rip)
	popq	%rax
	ret
.LBB4_2:                                # %if.then
	callq	shut_down
	movl	$5, %edi
	movl	$.L.str38, %esi
	xorl	%eax, %eax
	callq	syslog
	callq	closelog
	xorl	%edi, %edi
	callq	exit
.Ltmp46:
	.size	handle_usr1, .Ltmp46-handle_usr1
	.cfi_endproc

	.align	16, 0x90
	.type	handle_usr2,@function
handle_usr2:                            # @handle_usr2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %rbp, -16
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
.Ltmp55:
	.size	handle_usr2, .Ltmp55-handle_usr2
	.cfi_endproc

	.align	16, 0x90
	.type	handle_alrm,@function
handle_alrm:                            # @handle_alrm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 32
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	callq	__errno_location
	movq	%rax, %rbx
	movl	(%rbx), %ebp
	cmpl	$0, watchdog_flag(%rip)
	je	.LBB6_2
# BB#1:                                 # %if.end
	movl	$0, watchdog_flag(%rip)
	movl	$360, %edi              # imm = 0x168
	callq	alarm
	movl	%ebp, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.LBB6_2:                                # %if.then
	movl	$.L.str130, %edi
	callq	chdir
	callq	abort
.Ltmp64:
	.size	handle_alrm, .Ltmp64-handle_alrm
	.cfi_endproc

	.align	16, 0x90
	.type	occasional,@function
occasional:                             # @occasional
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdi
	callq	mmc_cleanup
	callq	tmr_cleanup
	movl	$1, watchdog_flag(%rip)
	popq	%rax
	ret
.Ltmp67:
	.size	occasional, .Ltmp67-occasional
	.cfi_endproc

	.align	16, 0x90
	.type	idle,@function
idle:                                   # @idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 48
.Ltmp79:
	.cfi_offset %rbx, -48
.Ltmp80:
	.cfi_offset %r12, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpl	$0, max_connects(%rip)
	jle	.LBB8_10
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	connects(%rip), %r12
	leaq	(%r12,%rbx), %r15
	movl	(%r12,%rbx), %eax
	leal	-2(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB8_3
# BB#6:                                 # %sw.bb3
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	(%r14), %rax
	subq	88(%r12,%rbx), %rax
	cmpq	$300, %rax              # imm = 0x12C
	jl	.LBB8_9
# BB#7:                                 # %if.then8
                                        #   in Loop: Header=BB8_2 Depth=1
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
	movq	(%r14), %rax
	subq	88(%r12,%rbx), %rax
	cmpq	$60, %rax
	jl	.LBB8_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
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
	incl	%ebp
	addq	$144, %rbx
	cmpl	max_connects(%rip), %ebp
	jl	.LBB8_2
.LBB8_10:                               # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp84:
	.size	idle, .Ltmp84-idle
	.cfi_endproc

	.align	16, 0x90
	.type	update_throttles,@function
update_throttles:                       # @update_throttles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp94:
	.cfi_def_cfa_offset 48
.Ltmp95:
	.cfi_offset %rbx, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	cmpl	$0, numthrottles(%rip)
	movl	$40, %ebx
	jle	.LBB9_6
# BB#1:
	xorl	%ebp, %ebp
	movabsq	$6148914691236517206, %r14 # imm = 0x5555555555555556
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	throttles(%rip), %rcx
	movq	-16(%rcx,%rbx), %rax
	movq	-8(%rcx,%rbx), %rdx
	movq	%rdx, %rsi
	shrq	$63, %rsi
	addq	%rdx, %rsi
	sarq	%rsi
	leaq	(%rsi,%rax,2), %rax
	imulq	%r14
	movq	%rdx, %r8
	shrq	$63, %r8
	addq	%rdx, %r8
	movq	%r8, -16(%rcx,%rbx)
	movq	$0, -8(%rcx,%rbx)
	movq	-32(%rcx,%rbx), %r9
	cmpq	%r9, %r8
	jle	.LBB9_18
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	(%rcx,%rbx), %eax
	testl	%eax, %eax
	je	.LBB9_18
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB9_2 Depth=1
	leaq	(%r9,%r9), %rdx
	cmpq	%rdx, %r8
	movq	-40(%rcx,%rbx), %rcx
	jle	.LBB9_16
# BB#5:                                 # %if.then27
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	%eax, (%rsp)
	movl	$5, %edi
	movl	$.L.str46, %esi
	jmp	.LBB9_17
.LBB9_16:                               # %if.else
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	%eax, (%rsp)
	movl	$6, %edi
	movl	$.L.str47, %esi
.LBB9_17:                               # %if.end51
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
.LBB9_18:                               # %if.end51
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	throttles(%rip), %rax
	movq	-24(%rax,%rbx), %r9
	movq	-16(%rax,%rbx), %r8
	cmpq	%r9, %r8
	jge	.LBB9_21
# BB#19:                                # %land.lhs.true58
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	(%rax,%rbx), %edx
	testl	%edx, %edx
	je	.LBB9_21
# BB#20:                                # %if.then63
                                        #   in Loop: Header=BB9_2 Depth=1
	movq	-40(%rax,%rbx), %rcx
	movl	%edx, (%rsp)
	movl	$5, %edi
	movl	$.L.str48, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	syslog
.LBB9_21:                               # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	incl	%ebp
	addq	$48, %rbx
	cmpl	numthrottles(%rip), %ebp
	jl	.LBB9_2
.LBB9_6:                                # %for.cond77.preheader
	movl	max_connects(%rip), %r8d
	testl	%r8d, %r8d
	jle	.LBB9_15
# BB#7:                                 # %for.body79.lr.ph
	movq	connects(%rip), %r9
	movq	throttles(%rip), %rdi
	leaq	16(%r9), %r10
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB9_8:                                # %for.body79
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	leaq	(%r11,%r11,8), %rax
	shlq	$4, %rax
	movl	(%r9,%rax), %ecx
	andl	$-2, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_14
# BB#9:                                 # %if.then85
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	$-1, 64(%r9,%rax)
	movl	56(%r9,%rax), %r15d
	testl	%r15d, %r15d
	jle	.LBB9_14
# BB#10:                                #   in Loop: Header=BB9_8 Depth=1
	movq	$-1, %rsi
	leaq	64(%r9,%rax), %r14
	xorl	%ebp, %ebp
	movq	%r10, %rbx
	.align	16, 0x90
.LBB9_11:                               # %for.body89
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rbx), %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$4, %rdx
	movq	8(%rdi,%rdx), %rax
	movslq	40(%rdi,%rdx), %rcx
	cqto
	idivq	%rcx
	cmpq	$-1, %rsi
	je	.LBB9_13
# BB#12:                                # %if.else104
                                        #   in Loop: Header=BB9_11 Depth=2
	cmpq	%rax, %rsi
	cmovleq	%rsi, %rax
.LBB9_13:                               # %for.inc111
                                        #   in Loop: Header=BB9_11 Depth=2
	movq	%rax, (%r14)
	incl	%ebp
	addq	$4, %rbx
	cmpl	%r15d, %ebp
	movq	%rax, %rsi
	jl	.LBB9_11
.LBB9_14:                               # %for.inc115
                                        #   in Loop: Header=BB9_8 Depth=1
	incq	%r11
	addq	$144, %r10
	cmpl	%r8d, %r11d
	jl	.LBB9_8
.LBB9_15:                               # %for.end117
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp99:
	.size	update_throttles, .Ltmp99-update_throttles
	.cfi_endproc

	.align	16, 0x90
	.type	show_stats,@function
show_stats:                             # @show_stats
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rdi
	jmp	logstats                # TAILCALL
.Ltmp100:
	.size	show_stats, .Ltmp100-show_stats
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
.Ltmp108:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp109:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp110:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp111:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp112:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp114:
	.cfi_def_cfa_offset 64
.Ltmp115:
	.cfi_offset %rbx, -56
.Ltmp116:
	.cfi_offset %r12, -48
.Ltmp117:
	.cfi_offset %r13, -40
.Ltmp118:
	.cfi_offset %r14, -32
.Ltmp119:
	.cfi_offset %r15, -24
.Ltmp120:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	num_connects(%rip), %eax
	jmp	.LBB11_1
.LBB11_16:                              # %if.then27
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	%eax, stats_simultaneous(%rip)
	.align	16, 0x90
.LBB11_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	cmpl	max_connects(%rip), %eax
	jge	.LBB11_2
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	first_free_connect(%rip), %rax
	cmpq	$-1, %rax
	je	.LBB11_5
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	connects(%rip), %rbp
	leaq	(%rax,%rax,8), %rbx
	shlq	$4, %rbx
	cmpl	$0, (%rbp,%rbx)
	jne	.LBB11_5
# BB#7:                                 # %if.end4
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	8(%rbp,%rbx), %r12
	movq	8(%rbp,%rbx), %rax
	testq	%rax, %rax
	jne	.LBB11_11
# BB#8:                                 # %if.then8
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$720, %edi              # imm = 0x2D0
	callq	malloc
	testq	%rax, %rax
	movq	%rax, (%r12)
	je	.LBB11_9
# BB#10:                                # %if.end13
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, (%rax)
	incl	httpd_conn_count(%rip)
.LBB11_11:                              # %if.end15
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	hs(%rip), %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	httpd_get_conn
	movl	$1, %r13d
	cmpl	$2, %eax
	je	.LBB11_14
# BB#12:                                # %if.end15
                                        #   in Loop: Header=BB11_1 Depth=1
	testl	%eax, %eax
	je	.LBB11_13
# BB#15:                                # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	(%rbp,%rbx), %r13
	movl	$1, (%r13)
	movl	4(%rbp,%rbx), %eax
	movl	%eax, first_free_connect(%rip)
	movl	$-1, 4(%rbp,%rbx)
	incl	num_connects(%rip)
	movq	(%r14), %rax
	movq	%rax, 88(%rbp,%rbx)
	movq	$0, 136(%rbp,%rbx)
	movl	$0, 56(%rbp,%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rbp,%rbx)
	movq	(%r12), %rax
	movl	704(%rax), %edi
	callq	httpd_set_ndelay
	movq	(%r12), %rax
	movl	704(%rax), %edi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	fdwatch_add_fd
	incq	stats_connections(%rip)
	movl	num_connects(%rip), %eax
	cmpl	stats_simultaneous(%rip), %eax
	jle	.LBB11_1
	jmp	.LBB11_16
.LBB11_2:                               # %if.then
	xorl	%r13d, %r13d
	movl	$4, %edi
	movl	$.L.str53, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	%r14, %rdi
	callq	tmr_run
.LBB11_14:                              # %return
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB11_13:                              # %sw.bb
	movq	%r14, %rdi
	callq	tmr_run
	xorl	%r13d, %r13d
	jmp	.LBB11_14
.LBB11_5:                               # %if.then3
	movl	$2, %edi
	movl	$.L.str54, %esi
	jmp	.LBB11_6
.LBB11_9:                               # %if.then12
	movl	$2, %edi
	movl	$.L.str55, %esi
.LBB11_6:                               # %if.then3
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp121:
	.size	handle_newconnect, .Ltmp121-handle_newconnect
	.cfi_endproc

	.align	16, 0x90
	.type	clear_connection,@function
clear_connection:                       # @clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp127:
	.cfi_def_cfa_offset 32
.Ltmp128:
	.cfi_offset %rbx, -24
.Ltmp129:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	96(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB12_2
# BB#1:                                 # %if.then
	callq	tmr_cancel
	movq	$0, 96(%rbx)
.LBB12_2:                               # %if.end
	cmpl	$4, (%rbx)
	jne	.LBB12_5
# BB#3:                                 # %if.end6.thread
	movq	104(%rbx), %rdi
	callq	tmr_cancel
	movq	$0, 104(%rbx)
	movq	8(%rbx), %rax
	movl	$0, 556(%rax)
	jmp	.LBB12_4
.LBB12_5:                               # %if.end6
	movq	8(%rbx), %rax
	cmpl	$0, 556(%rax)
	je	.LBB12_4
# BB#6:                                 # %if.then9
	cmpl	$3, (%rbx)
	je	.LBB12_8
# BB#7:                                 # %if.then12
	movl	704(%rax), %edi
	callq	fdwatch_del_fd
	movq	8(%rbx), %rax
.LBB12_8:                               # %if.end14
	movl	$4, (%rbx)
	movl	704(%rax), %edi
	movl	$1, %esi
	callq	shutdown
	movq	8(%rbx), %rax
	movl	704(%rax), %edi
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	fdwatch_add_fd
	cmpq	$0, 104(%rbx)
	je	.LBB12_10
# BB#9:                                 # %if.then22
	movl	$3, %edi
	movl	$.L.str44, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB12_10:                              # %if.end23
	movl	$linger_clear_connection, %esi
	movl	$500, %ecx              # imm = 0x1F4
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	tmr_create
	testq	%rax, %rax
	movq	%rax, 104(%rbx)
	je	.LBB12_12
# BB#11:                                # %if.end30
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB12_4:                               # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	really_clear_connection # TAILCALL
.LBB12_12:                              # %if.then28
	movl	$2, %edi
	movl	$.L.str45, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp130:
	.size	clear_connection, .Ltmp130-clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	shut_down,@function
shut_down:                              # @shut_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp137:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp138:
	.cfi_def_cfa_offset 48
.Ltmp139:
	.cfi_offset %rbx, -32
.Ltmp140:
	.cfi_offset %r14, -24
.Ltmp141:
	.cfi_offset %r15, -16
	xorl	%r15d, %r15d
	leaq	(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gettimeofday
	movq	%r14, %rdi
	callq	logstats
	cmpl	$0, max_connects(%rip)
	movl	$8, %ebx
	jle	.LBB13_7
# BB#1:
	leaq	(%rsp), %r14
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	connects(%rip), %rax
	cmpl	$0, -8(%rax,%rbx)
	je	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	(%rax,%rbx), %rdi
	movq	%r14, %rsi
	callq	httpd_close_conn
	movq	connects(%rip), %rax
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	(%rax,%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB13_6
# BB#5:                                 # %if.then8
                                        #   in Loop: Header=BB13_2 Depth=1
	callq	httpd_destroy_conn
	movq	connects(%rip), %rax
	movq	(%rax,%rbx), %rdi
	callq	free
	decl	httpd_conn_count(%rip)
	movq	connects(%rip), %rax
	movq	$0, (%rax,%rbx)
.LBB13_6:                               # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	incl	%r15d
	addq	$144, %rbx
	cmpl	max_connects(%rip), %r15d
	jl	.LBB13_2
.LBB13_7:                               # %for.end
	movq	hs(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB13_13
# BB#8:                                 # %if.then20
	movq	$0, hs(%rip)
	movl	72(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB13_10
# BB#9:                                 # %if.then22
	callq	fdwatch_del_fd
.LBB13_10:                              # %if.end24
	movl	76(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB13_12
# BB#11:                                # %if.then26
	callq	fdwatch_del_fd
.LBB13_12:                              # %if.end28
	movq	%rbx, %rdi
	callq	httpd_terminate
.LBB13_13:                              # %if.end29
	callq	mmc_destroy
	callq	tmr_destroy
	movq	connects(%rip), %rdi
	callq	free
	movq	throttles(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB13_15
# BB#14:                                # %if.then31
	callq	free
.LBB13_15:                              # %if.end32
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp142:
	.size	shut_down, .Ltmp142-shut_down
	.cfi_endproc

	.align	16, 0x90
	.type	logstats,@function
logstats:                               # @logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp146:
	.cfi_def_cfa_offset 32
.Ltmp147:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	jne	.LBB14_2
# BB#1:                                 # %if.then
	leaq	(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gettimeofday
.LBB14_2:                               # %if.end
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
.Ltmp148:
	.size	logstats, .Ltmp148-logstats
	.cfi_endproc

	.align	16, 0x90
	.type	linger_clear_connection,@function
linger_clear_connection:                # @linger_clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 104(%rdi)
	jmp	really_clear_connection # TAILCALL
.Ltmp149:
	.size	linger_clear_connection, .Ltmp149-linger_clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	really_clear_connection,@function
really_clear_connection:                # @really_clear_connection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp155:
	.cfi_def_cfa_offset 32
.Ltmp156:
	.cfi_offset %rbx, -24
.Ltmp157:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	200(%rdi), %rax
	addq	%rax, stats_bytes(%rip)
	cmpl	$3, (%rbx)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	704(%rdi), %edi
	callq	fdwatch_del_fd
	movq	8(%rbx), %rdi
.LBB16_2:                               # %if.end
	movq	%r14, %rsi
	callq	httpd_close_conn
	movl	56(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB16_5
# BB#3:                                 # %for.body.lr.ph.i
	movq	throttles(%rip), %rcx
	leaq	16(%rbx), %rdx
	.align	16, 0x90
.LBB16_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdx), %rsi
	leaq	(%rsi,%rsi,2), %rsi
	shlq	$4, %rsi
	decl	40(%rcx,%rsi)
	addq	$4, %rdx
	decl	%eax
	jne	.LBB16_4
.LBB16_5:                               # %clear_throttles.exit
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB16_7
# BB#6:                                 # %if.then4
	callq	tmr_cancel
	movq	$0, 104(%rbx)
.LBB16_7:                               # %if.end7
	movl	$0, (%rbx)
	movl	first_free_connect(%rip), %eax
	movl	%eax, 4(%rbx)
	subq	connects(%rip), %rbx
	shrq	$4, %rbx
	imull	$954437177, %ebx, %eax  # imm = 0x38E38E39
	movl	%eax, first_free_connect(%rip)
	decl	num_connects(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp158:
	.size	really_clear_connection, .Ltmp158-really_clear_connection
	.cfi_endproc

	.align	16, 0x90
	.type	wakeup_connection,@function
wakeup_connection:                      # @wakeup_connection
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	$0, 96(%rax)
	cmpl	$3, (%rax)
	jne	.LBB17_1
# BB#2:                                 # %if.then
	movl	$2, (%rax)
	movq	8(%rax), %rcx
	movl	704(%rcx), %edi
	movl	$1, %edx
	movq	%rax, %rsi
	jmp	fdwatch_add_fd          # TAILCALL
.LBB17_1:                               # %if.end
	ret
.Ltmp159:
	.size	wakeup_connection, .Ltmp159-wakeup_connection
	.cfi_endproc

	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp161:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movq	argv0(%rip), %rdx
	movl	$.L.str97, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Ltmp162:
	.size	usage, .Ltmp162-usage
	.cfi_endproc

	.globl	httpd_initialize
	.align	16, 0x90
	.type	httpd_initialize,@function
httpd_initialize:                       # @httpd_initialize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp171:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp172:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp173:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp176:
	.cfi_def_cfa_offset 64
.Ltmp177:
	.cfi_offset %rbx, -56
.Ltmp178:
	.cfi_offset %r12, -48
.Ltmp179:
	.cfi_offset %r13, -40
.Ltmp180:
	.cfi_offset %r14, -32
.Ltmp181:
	.cfi_offset %r15, -24
.Ltmp182:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r13
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movl	$136, %edi
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB19_1
# BB#3:                                 # %if.end
	testq	%r12, %r12
	je	.LBB19_7
# BB#4:                                 # %if.then2
	movq	%r12, %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, (%rbx)
	je	.LBB19_5
# BB#6:                                 # %if.end7
	movq	%rax, 8(%rbx)
	jmp	.LBB19_12
.LBB19_1:                               # %if.then
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str5, %esi
	jmp	.LBB19_2
.LBB19_7:                               # %if.else
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$httpd_initialize.ghnbuf, %edi
	movl	$256, %esi              # imm = 0x100
	callq	gethostname
	testl	%eax, %eax
	js	.LBB19_8
# BB#9:                                 # %if.end14
	cmpq	$0, 8(%rbx)
	jne	.LBB19_12
# BB#10:                                # %if.end14
	movb	httpd_initialize.ghnbuf(%rip), %al
	testb	%al, %al
	je	.LBB19_12
# BB#11:                                # %if.then20
	movq	$httpd_initialize.ghnbuf, 8(%rbx)
	jmp	.LBB19_12
.LBB19_5:                               # %if.then6
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str133, %esi
	jmp	.LBB19_2
.LBB19_8:                               # %if.end14.thread
	movb	$0, httpd_initialize.ghnbuf(%rip)
.LBB19_12:                              # %if.end24
	movw	%r15w, 16(%rbx)
	testq	%r13, %r13
	je	.LBB19_13
# BB#14:                                # %if.else30
	movzbl	(%r13), %eax
	cmpl	$47, %eax
	jne	.LBB19_16
# BB#15:
	incq	%r13
.LBB19_16:                              # %select.end
	movq	%r13, %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 24(%rbx)
	je	.LBB19_46
# BB#17:                                # %while.cond.preheader
	movl	$.L.str335, %esi
	movq	%rax, %rdi
	jmp	.LBB19_19
	.align	16, 0x90
.LBB19_18:                              # %while.body
                                        #   in Loop: Header=BB19_19 Depth=1
	leaq	1(%rax), %rdi
	addq	$2, %rax
	movq	%rax, %rsi
	callq	strcpy
	movq	24(%rbx), %rdi
	movl	$.L.str335, %esi
.LBB19_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	strstr
	testq	%rax, %rax
	jne	.LBB19_18
	jmp	.LBB19_20
.LBB19_13:                              # %if.then28
	movq	$0, 24(%rbx)
.LBB19_20:                              # %if.end49
	movl	%ebp, 32(%rbx)
	movl	$0, 36(%rbx)
	movq	64(%rsp), %rdi
	callq	__strdup
	movq	%rax, 40(%rbx)
	movq	72(%rsp), %rdi
	callq	__strdup
	movq	%rax, 48(%rbx)
	movl	80(%rsp), %eax
	movl	%eax, 56(%rbx)
	movq	88(%rsp), %rdi
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 64(%rbx)
	je	.LBB19_21
# BB#22:                                # %if.end62
	movq	136(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_23
# BB#28:                                # %if.else67
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 112(%rbx)
	movq	144(%rsp), %rdi
	jne	.LBB19_24
# BB#29:                                # %if.then73
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str537, %esi
	jmp	.LBB19_2
.LBB19_21:                              # %if.then61
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str436, %esi
	jmp	.LBB19_2
.LBB19_46:                              # %if.then41
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str234, %esi
	jmp	.LBB19_2
.LBB19_23:                              # %if.then65
	movq	$0, 112(%rbx)
	movq	144(%rsp), %rdi
.LBB19_24:                              # %if.end75
	testq	%rdi, %rdi
	je	.LBB19_25
# BB#30:                                # %if.else80
	callq	__strdup
	testq	%rax, %rax
	movq	%rax, 120(%rbx)
	jne	.LBB19_26
# BB#31:                                # %if.then86
	xorl	%ebx, %ebx
	movl	$2, %edi
	movl	$.L.str638, %esi
.LBB19_2:                               # %return
	xorl	%eax, %eax
	callq	syslog
.LBB19_45:                              # %return
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB19_25:                              # %if.then78
	movq	$0, 120(%rbx)
.LBB19_26:                              # %httpd_set_logfp.exit
	movl	96(%rsp), %eax
	movl	%eax, 80(%rbx)
	movq	104(%rsp), %rax
	movq	%rax, 88(%rbx)
	movl	112(%rsp), %eax
	movl	%eax, 96(%rbx)
	movl	120(%rsp), %eax
	movl	%eax, 100(%rbx)
	movl	128(%rsp), %eax
	movl	%eax, 104(%rbx)
	movl	152(%rsp), %eax
	movl	%eax, 128(%rbx)
	testq	%r14, %r14
	movq	(%rsp), %r12            # 8-byte Reload
	je	.LBB19_27
# BB#32:                                # %if.else98
	movq	%r14, %rdi
	callq	initialize_listen_socket
	movl	%eax, 76(%rbx)
	jmp	.LBB19_33
.LBB19_27:                              # %if.then97
	movl	$-1, 76(%rbx)
.LBB19_33:                              # %if.end101
	testq	%r12, %r12
	je	.LBB19_34
# BB#35:                                # %if.end108
	movq	%r12, %rdi
	callq	initialize_listen_socket
	leaq	72(%rbx), %r15
	cmpl	$-1, %eax
	movl	%eax, 72(%rbx)
	jne	.LBB19_38
	jmp	.LBB19_36
.LBB19_34:                              # %if.end108.thread
	leaq	72(%rbx), %r15
	movl	$-1, 72(%rbx)
.LBB19_36:                              # %land.lhs.true
	cmpl	$-1, 76(%rbx)
	je	.LBB19_37
.LBB19_38:                              # %if.end116
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
	movq	typ_tab+6080(%rbp), %rdi
	callq	strlen
	movq	%rax, typ_tab+6088(%rbp)
	movq	typ_tab+6096(%rbp), %rdi
	callq	strlen
	movq	%rax, typ_tab+6104(%rbp)
	addq	$32, %rbp
	jne	.LBB19_39
# BB#40:                                # %init_mime.exit
	cmpq	$0, (%rbx)
	je	.LBB19_41
# BB#42:                                # %if.else123
	cmpl	$-1, (%r15)
	jne	.LBB19_44
# BB#43:                                # %select.mid25
	movq	%r14, %r12
.LBB19_44:                              # %select.end24
	movq	%r12, %rdi
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
	movzwl	16(%rbx), %ecx
	movl	$5, %edi
	movl	$.L.str739, %esi
	movl	$.L.str840, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB19_45
.LBB19_37:                              # %if.then115
	movq	%rbx, %rdi
	callq	free_httpd_server
	xorl	%ebx, %ebx
	jmp	.LBB19_45
.Ltmp183:
	.size	httpd_initialize, .Ltmp183-httpd_initialize
	.cfi_endproc

	.globl	httpd_set_logfp
	.align	16, 0x90
	.type	httpd_set_logfp,@function
httpd_set_logfp:                        # @httpd_set_logfp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp187:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp188:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp189:
	.cfi_def_cfa_offset 32
.Ltmp190:
	.cfi_offset %rbx, -24
.Ltmp191:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB20_2
# BB#1:                                 # %if.then
	callq	fclose
.LBB20_2:                               # %if.end
	movq	%r14, 88(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp192:
	.size	httpd_set_logfp, .Ltmp192-httpd_set_logfp
	.cfi_endproc

	.globl	httpd_ntoa
	.align	16, 0x90
	.type	httpd_ntoa,@function
httpd_ntoa:                             # @httpd_ntoa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp195:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp196:
	.cfi_def_cfa_offset 32
.Ltmp197:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movzwl	(%rbx), %eax
	movl	$16, %esi
	cmpl	$2, %eax
	je	.LBB21_4
# BB#1:                                 # %entry
	cmpl	$10, %eax
	jne	.LBB21_3
# BB#2:                                 # %sw.bb1.i
	movl	$28, %esi
	jmp	.LBB21_4
.LBB21_3:                               # %sw.default.i
	xorl	%esi, %esi
.LBB21_4:                               # %sockaddr_len.exit
	movl	$1, (%rsp)
	movl	$httpd_ntoa.str, %edx
	movl	$200, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	callq	getnameinfo
	testl	%eax, %eax
	je	.LBB21_6
# BB#5:                                 # %if.then
	movb	$63, httpd_ntoa.str(%rip)
	movb	$0, httpd_ntoa.str+1(%rip)
	jmp	.LBB21_11
.LBB21_6:                               # %if.else
	cmpl	$0, 8(%rbx)
	jne	.LBB21_11
# BB#7:                                 # %land.lhs.true
	cmpl	$0, 12(%rbx)
	jne	.LBB21_11
# BB#8:                                 # %land.rhs
	cmpl	$-65536, 16(%rbx)       # imm = 0xFFFFFFFFFFFF0000
	jne	.LBB21_11
# BB#9:                                 # %land.lhs.true18
	movl	$httpd_ntoa.str, %edi
	movl	$.L.str5698, %esi
	movl	$7, %edx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB21_11
# BB#10:                                # %if.then22
	movl	$httpd_ntoa.str, %edi
	movl	$httpd_ntoa.str+7, %esi
	callq	strcpy
.LBB21_11:                              # %if.end24
	movl	$httpd_ntoa.str, %eax
	addq	$16, %rsp
	popq	%rbx
	ret
.Ltmp198:
	.size	httpd_ntoa, .Ltmp198-httpd_ntoa
	.cfi_endproc

	.globl	httpd_terminate
	.align	16, 0x90
	.type	httpd_terminate,@function
httpd_terminate:                        # @httpd_terminate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	72(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB22_2
# BB#1:                                 # %if.then.i
	callq	close
	movl	$-1, 72(%rbx)
.LBB22_2:                               # %if.end.i
	movl	76(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB22_4
# BB#3:                                 # %if.then4.i
	callq	close
	movl	$-1, 76(%rbx)
.LBB22_4:                               # %httpd_unlisten.exit
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB22_6
# BB#5:                                 # %if.then
	callq	fclose
.LBB22_6:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free_httpd_server       # TAILCALL
.Ltmp203:
	.size	httpd_terminate, .Ltmp203-httpd_terminate
	.cfi_endproc

	.globl	httpd_unlisten
	.align	16, 0x90
	.type	httpd_unlisten,@function
httpd_unlisten:                         # @httpd_unlisten
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	72(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB23_2
# BB#1:                                 # %if.then
	callq	close
	movl	$-1, 72(%rbx)
.LBB23_2:                               # %if.end
	movl	76(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB23_4
# BB#3:                                 # %if.then4
	callq	close
	movl	$-1, 76(%rbx)
.LBB23_4:                               # %if.end8
	popq	%rbx
	ret
.Ltmp208:
	.size	httpd_unlisten, .Ltmp208-httpd_unlisten
	.cfi_endproc

	.globl	httpd_write_response
	.align	16, 0x90
	.type	httpd_write_response,@function
httpd_write_response:                   # @httpd_write_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp217:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp218:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp219:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp220:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp221:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp222:
	.cfi_def_cfa_offset 80
.Ltmp223:
	.cfi_offset %rbx, -56
.Ltmp224:
	.cfi_offset %r12, -48
.Ltmp225:
	.cfi_offset %r13, -40
.Ltmp226:
	.cfi_offset %r14, -32
.Ltmp227:
	.cfi_offset %r15, -24
.Ltmp228:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movzbl	sub_process(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB24_4
# BB#1:                                 # %if.then
	movl	704(%rbp), %ebx
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB24_4
# BB#2:                                 # %if.then.i
	movl	%eax, %edx
	andl	$-2049, %edx            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%eax, %edx
	je	.LBB24_4
# BB#3:                                 # %if.then2.i
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebx, %edi
	callq	fcntl
.LBB24_4:                               # %if.end
	movq	472(%rbp), %r13
	testq	%r13, %r13
	je	.LBB24_14
# BB#5:                                 # %if.then1
	movl	704(%rbp), %r15d
	movq	368(%rbp), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
.LBB24_7:                               # %while.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_9 Depth 2
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx), %r12
	movq	%r13, %rbp
	subq	%rcx, %rbp
	movl	%r15d, %edi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	write
	testl	%eax, %eax
	jns	.LBB24_12
# BB#8:                                 # %land.lhs.true.i.lr.ph
                                        #   in Loop: Header=BB24_7 Depth=1
	callq	__errno_location
	movq	%rax, %rbx
	.align	16, 0x90
.LBB24_9:                               # %land.lhs.true.i
                                        #   Parent Loop BB24_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %eax
	cmpl	$4, %eax
	je	.LBB24_11
# BB#10:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB24_9 Depth=2
	cmpl	$11, %eax
	jne	.LBB24_13
.LBB24_11:                              # %if.then.i13
                                        #   in Loop: Header=BB24_9 Depth=2
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	write
	testl	%eax, %eax
	js	.LBB24_9
.LBB24_12:                              # %if.end16.i
                                        #   in Loop: Header=BB24_7 Depth=1
	testl	%eax, %eax
	je	.LBB24_13
# BB#6:                                 # %while.cond.outer.i
                                        #   in Loop: Header=BB24_7 Depth=1
	addl	%r14d, %eax
	movslq	%eax, %rcx
	cmpq	%r13, %rcx
	movl	%eax, %r14d
	jb	.LBB24_7
.LBB24_13:                              # %httpd_write_fully.exit
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	$0, 472(%rax)
.LBB24_14:                              # %if.end5
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp229:
	.size	httpd_write_response, .Ltmp229-httpd_write_response
	.cfi_endproc

	.globl	httpd_clear_ndelay
	.align	16, 0x90
	.type	httpd_clear_ndelay,@function
httpd_clear_ndelay:                     # @httpd_clear_ndelay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp232:
	.cfi_def_cfa_offset 16
.Ltmp233:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB25_2
# BB#1:                                 # %if.then
	movl	%eax, %edx
	andl	$-2049, %edx            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%eax, %edx
	jne	.LBB25_3
.LBB25_2:                               # %if.end4
	popq	%rbx
	ret
.LBB25_3:                               # %if.then2
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebx, %edi
	popq	%rbx
	jmp	fcntl                   # TAILCALL
.Ltmp234:
	.size	httpd_clear_ndelay, .Ltmp234-httpd_clear_ndelay
	.cfi_endproc

	.globl	httpd_write_fully
	.align	16, 0x90
	.type	httpd_write_fully,@function
httpd_write_fully:                      # @httpd_write_fully
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp242:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp243:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp244:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp245:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp246:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp247:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp248:
	.cfi_def_cfa_offset 64
.Ltmp249:
	.cfi_offset %rbx, -56
.Ltmp250:
	.cfi_offset %r12, -48
.Ltmp251:
	.cfi_offset %r13, -40
.Ltmp252:
	.cfi_offset %r14, -32
.Ltmp253:
	.cfi_offset %r15, -24
.Ltmp254:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	%edi, %r12d
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB26_1
# BB#2:
	xorl	%r14d, %r14d
.LBB26_4:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%rax), %r13
	movq	%r15, %rbp
	subq	%rax, %rbp
	jmp	.LBB26_5
	.align	16, 0x90
.LBB26_8:                               # %if.then
                                        #   in Loop: Header=BB26_5 Depth=2
	movl	$1, %edi
	callq	sleep
.LBB26_5:                               # %while.body
                                        #   Parent Loop BB26_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	write
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB26_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_5 Depth=2
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
	testl	%ebx, %ebx
	je	.LBB26_10
# BB#3:                                 # %while.cond.outer
                                        #   in Loop: Header=BB26_4 Depth=1
	addl	%r14d, %ebx
	movslq	%ebx, %rax
	cmpq	%r15, %rax
	movl	%ebx, %r14d
	jb	.LBB26_4
	jmp	.LBB26_11
.LBB26_1:
	xorl	%ebx, %ebx
.LBB26_11:                              # %return
	movl	%ebx, %eax
	addq	$8, %rsp
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
.Ltmp255:
	.size	httpd_write_fully, .Ltmp255-httpd_write_fully
	.cfi_endproc

	.globl	httpd_set_ndelay
	.align	16, 0x90
	.type	httpd_set_ndelay,@function
httpd_set_ndelay:                       # @httpd_set_ndelay
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	%eax, %edx
	orl	$2048, %edx             # imm = 0x800
	cmpl	%eax, %edx
	jne	.LBB27_3
.LBB27_2:                               # %if.end4
	popq	%rbx
	ret
.LBB27_3:                               # %if.then2
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebx, %edi
	popq	%rbx
	jmp	fcntl                   # TAILCALL
.Ltmp260:
	.size	httpd_set_ndelay, .Ltmp260-httpd_set_ndelay
	.cfi_endproc

	.globl	httpd_realloc_str
	.align	16, 0x90
	.type	httpd_realloc_str,@function
httpd_realloc_str:                      # @httpd_realloc_str
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp265:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp266:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp267:
	.cfi_def_cfa_offset 32
.Ltmp268:
	.cfi_offset %rbx, -32
.Ltmp269:
	.cfi_offset %r14, -24
.Ltmp270:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_1
# BB#2:                                 # %if.else
	cmpq	%rdx, %rax
	jae	.LBB28_5
# BB#3:                                 # %if.then6
	subq	%rax, str_alloc_size(%rip)
	movq	(%r15), %rax
	addq	%rax, %rax
	leaq	(%rdx,%rdx,4), %rsi
	shrq	$2, %rsi
	cmpq	%rsi, %rax
	cmovaq	%rax, %rsi
	movq	%rsi, (%r15)
	movq	(%r14), %rdi
	incq	%rsi
	callq	realloc
	movq	%rax, (%r14)
	movq	str_alloc_size(%rip), %rbx
	addq	(%r15), %rbx
	jmp	.LBB28_4
.LBB28_1:                               # %if.then
	addq	$100, %rdx
	cmpq	$200, %rdx
	movl	$200, %ebx
	cmovaeq	%rdx, %rbx
	movq	%rbx, (%r15)
	leaq	1(%rbx), %rdi
	callq	malloc
	movq	%rax, (%r14)
	incl	str_alloc_count(%rip)
	addq	str_alloc_size(%rip), %rbx
.LBB28_4:                               # %if.end22
	movq	%rbx, str_alloc_size(%rip)
	testq	%rax, %rax
	je	.LBB28_6
.LBB28_5:                               # %if.end25
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.LBB28_6:                               # %if.then24
	movq	(%r15), %rcx
	movl	$3, %edi
	movl	$.L.str1659, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp271:
	.size	httpd_realloc_str, .Ltmp271-httpd_realloc_str
	.cfi_endproc

	.globl	httpd_send_err
	.align	16, 0x90
	.type	httpd_send_err,@function
httpd_send_err:                         # @httpd_send_err
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp280:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp281:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp282:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp283:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp284:
	.cfi_def_cfa_offset 56
	subq	$1016, %rsp             # imm = 0x3F8
.Ltmp285:
	.cfi_def_cfa_offset 1072
.Ltmp286:
	.cfi_offset %rbx, -56
.Ltmp287:
	.cfi_offset %r12, -48
.Ltmp288:
	.cfi_offset %r13, -40
.Ltmp289:
	.cfi_offset %r14, -32
.Ltmp290:
	.cfi_offset %r15, -24
.Ltmp291:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	cmpl	$0, 100(%rax)
	je	.LBB29_3
# BB#1:                                 # %land.lhs.true
	movq	344(%rbx), %rcx
	cmpb	$0, (%rcx)
	je	.LBB29_3
# BB#2:                                 # %if.then
	leaq	16(%rsp), %r14
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str1760, %edx
	movl	$.L.str1861, %r8d
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r9d
	callq	my_snprintf
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	send_err_file
	testl	%eax, %eax
	jne	.LBB29_5
.LBB29_3:                               # %if.end7
	leaq	16(%rsp), %r14
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str1962, %edx
	movl	$.L.str1861, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	callq	my_snprintf
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	send_err_file
	testl	%eax, %eax
	jne	.LBB29_5
# BB#4:                                 # %if.end14
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	8(%rsp), %r9            # 8-byte Reload
	callq	send_response
.LBB29_5:                               # %cleanup
	addq	$1016, %rsp             # imm = 0x3F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp292:
	.size	httpd_send_err, .Ltmp292-httpd_send_err
	.cfi_endproc

	.globl	httpd_method_str
	.align	16, 0x90
	.type	httpd_method_str,@function
httpd_method_str:                       # @httpd_method_str
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str2063, %eax
	cmpl	$1, %edi
	je	.LBB30_6
# BB#1:                                 # %entry
	cmpl	$3, %edi
	jne	.LBB30_2
# BB#4:                                 # %sw.bb2
	movl	$.L.str2265, %eax
	ret
.LBB30_2:                               # %entry
	cmpl	$2, %edi
	jne	.LBB30_5
# BB#3:                                 # %sw.bb1
	movl	$.L.str2164, %eax
	ret
.LBB30_5:                               # %sw.default
	movl	$.L.str2366, %eax
.LBB30_6:                               # %return
	ret
.Ltmp293:
	.size	httpd_method_str, .Ltmp293-httpd_method_str
	.cfi_endproc

	.globl	httpd_get_conn
	.align	16, 0x90
	.type	httpd_get_conn,@function
httpd_get_conn:                         # @httpd_get_conn
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
	subq	$200, %rsp
.Ltmp307:
	.cfi_def_cfa_offset 256
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
	movl	%esi, %r12d
	movq	%rdi, %rbp
	cmpl	$0, (%rbx)
	jne	.LBB31_2
# BB#1:                                 # %if.then
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
	leaq	400(%rbx), %r14
	leaq	392(%rbx), %r13
	leaq	384(%rbx), %r15
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
	movq	%r15, %rsi
	callq	httpd_realloc_str
	leaq	240(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	callq	httpd_realloc_str
	leaq	248(%rbx), %rdi
	xorl	%edx, %edx
	movq	%r14, %rsi
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
	movl	$128, 68(%rsp)
	leaq	72(%rsp), %rsi
	leaq	68(%rsp), %rdx
	movl	%r12d, %edi
	callq	accept
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	%ecx, 704(%rbx)
	js	.LBB31_3
# BB#5:                                 # %if.end22
	movzwl	72(%rsp), %eax
	orl	$8, %eax
	cmpl	$10, %eax
	jne	.LBB31_6
# BB#7:                                 # %if.end29
	movl	$1, %r14d
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ecx, %edi
	callq	fcntl
	movq	%rbp, 8(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 128(%rbx)
	movups	%xmm0, 112(%rbx)
	movups	%xmm0, 96(%rbx)
	movups	%xmm0, 80(%rbx)
	movups	%xmm0, 64(%rbx)
	movups	%xmm0, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movl	$16, %edx
	movzwl	72(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB31_11
# BB#8:                                 # %if.end29
	cmpl	$10, %eax
	jne	.LBB31_10
# BB#9:                                 # %sw.bb1.i
	movl	$28, %edx
	jmp	.LBB31_11
.LBB31_3:                               # %if.then17
	callq	__errno_location
	cmpl	$11, (%rax)
	movl	$2, %r14d
	je	.LBB31_12
# BB#4:                                 # %if.end21
	xorl	%r14d, %r14d
	movl	$3, %edi
	movl	$.L.str2467, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB31_12
.LBB31_6:                               # %if.then25
	xorl	%r14d, %r14d
	movl	$3, %edi
	movl	$.L.str2568, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	704(%rbx), %edi
	callq	close
	movl	$-1, 704(%rbx)
	jmp	.LBB31_12
.LBB31_10:                              # %sw.default.i151
	xorl	%edx, %edx
.LBB31_11:                              # %sockaddr_len.exit
	leaq	16(%rbx), %rdi
	leaq	72(%rsp), %rsi
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
	movl	%r14d, %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp314:
	.size	httpd_get_conn, .Ltmp314-httpd_get_conn
	.cfi_endproc

	.globl	httpd_got_request
	.align	16, 0x90
	.type	httpd_got_request,@function
httpd_got_request:                      # @httpd_got_request
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %r9
	movq	168(%rdi), %rdx
	cmpq	%r9, %rdx
	jae	.LBB32_59
# BB#1:                                 # %for.body.lr.ph
	movq	144(%rdi), %r8
	movl	176(%rdi), %r10d
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r10d, %esi
	cmpl	$11, %r10d
	ja	.LBB32_58
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB32_2 Depth=1
	movsbl	(%r8,%rdx), %ecx
	movl	$2, %eax
	jmpq	*.LJTI32_0(,%rsi,8)
.LBB32_4:                               # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	xorl	%r10d, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_9
# BB#5:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_10
# BB#6:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	je	.LBB32_8
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_58
	jmp	.LBB32_8
.LBB32_11:                              # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$1, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_16
# BB#12:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_58
# BB#13:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	je	.LBB32_15
# BB#14:                                # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_17
	jmp	.LBB32_15
.LBB32_18:                              # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$2, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_22
# BB#19:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_23
# BB#20:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$1, %eax
	cmpl	$10, %ecx
	je	.LBB32_60
# BB#21:                                # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_58
	jmp	.LBB32_60
.LBB32_24:                              # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$3, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_29
# BB#25:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_58
# BB#26:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	je	.LBB32_28
# BB#27:                                # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_30
	jmp	.LBB32_28
.LBB32_31:                              # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$4, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_36
# BB#32:                                # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_37
# BB#33:                                # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	je	.LBB32_46
# BB#34:                                # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_58
	jmp	.LBB32_35
.LBB32_38:                              # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$5, %r10d
	cmpl	$31, %ecx
	jg	.LBB32_42
# BB#39:                                # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$9, %ecx
	je	.LBB32_58
# BB#40:                                # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	je	.LBB32_46
# BB#41:                                # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	je	.LBB32_35
	jmp	.LBB32_43
.LBB32_44:                              # %sw.bb46
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	je	.LBB32_35
# BB#45:                                # %sw.bb46
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$6, %r10d
	cmpl	$10, %ecx
	jne	.LBB32_58
.LBB32_46:                              # %sw.bb31
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$7, 176(%rdi)
	movl	$7, %r10d
	jmp	.LBB32_58
.LBB32_47:                              # %sw.bb53
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	movl	$1, %eax
	je	.LBB32_60
# BB#48:                                # %sw.bb53
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_57
.LBB32_35:                              # %sw.bb33
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$8, 176(%rdi)
	movl	$8, %r10d
	jmp	.LBB32_58
.LBB32_49:                              # %sw.bb61
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	movl	$1, %eax
	je	.LBB32_60
# BB#50:                                # %sw.bb61
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	jne	.LBB32_57
# BB#51:                                # %sw.bb63
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$9, 176(%rdi)
	movl	$9, %r10d
	jmp	.LBB32_58
.LBB32_52:                              # %sw.bb69
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	movl	$1, %eax
	je	.LBB32_60
# BB#53:                                # %sw.bb69
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	jne	.LBB32_57
# BB#54:                                # %sw.bb72
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$10, 176(%rdi)
	movl	$10, %r10d
	jmp	.LBB32_58
.LBB32_55:                              # %sw.bb77
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$10, %ecx
	movl	$1, %eax
	je	.LBB32_60
# BB#56:                                # %sw.bb77
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$13, %ecx
	je	.LBB32_60
.LBB32_57:                              # %sw.default80
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$6, 176(%rdi)
	movl	$6, %r10d
	jmp	.LBB32_58
.LBB32_9:                               # %sw.bb
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	jne	.LBB32_58
.LBB32_10:                              # %sw.bb2
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$1, 176(%rdi)
	movl	$1, %r10d
	jmp	.LBB32_58
.LBB32_16:                              # %sw.bb6
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	je	.LBB32_58
.LBB32_17:                              # %sw.default
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$2, 176(%rdi)
	movl	$2, %r10d
	jmp	.LBB32_58
.LBB32_22:                              # %sw.bb13
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	jne	.LBB32_58
.LBB32_23:                              # %sw.bb15
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$3, 176(%rdi)
	movl	$3, %r10d
	jmp	.LBB32_58
.LBB32_29:                              # %sw.bb19
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	je	.LBB32_58
.LBB32_30:                              # %sw.default24
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$4, 176(%rdi)
	movl	$4, %r10d
	jmp	.LBB32_58
.LBB32_36:                              # %sw.bb27
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	jne	.LBB32_58
.LBB32_37:                              # %sw.bb29
                                        #   in Loop: Header=BB32_2 Depth=1
	movl	$5, 176(%rdi)
	movl	$5, %r10d
	jmp	.LBB32_58
.LBB32_42:                              # %sw.bb36
                                        #   in Loop: Header=BB32_2 Depth=1
	cmpl	$32, %ecx
	jne	.LBB32_43
	.align	16, 0x90
.LBB32_58:                              # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	incq	%rdx
	cmpq	%r9, %rdx
	movq	%rdx, 168(%rdi)
	jb	.LBB32_2
.LBB32_59:
	xorl	%eax, %eax
.LBB32_60:                              # %return
	ret
.LBB32_43:                              # %sw.default43
	movl	$11, 176(%rdi)
	ret
.LBB32_8:                               # %sw.bb4
	movl	$11, 176(%rdi)
	ret
.LBB32_15:                              # %sw.bb9
	movl	$11, 176(%rdi)
	ret
.LBB32_28:                              # %sw.bb22
	movl	$11, 176(%rdi)
	ret
.Ltmp315:
	.size	httpd_got_request, .Ltmp315-httpd_got_request
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI32_0:
	.quad	.LBB32_4
	.quad	.LBB32_11
	.quad	.LBB32_18
	.quad	.LBB32_24
	.quad	.LBB32_31
	.quad	.LBB32_38
	.quad	.LBB32_44
	.quad	.LBB32_47
	.quad	.LBB32_49
	.quad	.LBB32_52
	.quad	.LBB32_55
	.quad	.LBB32_60

	.text
	.globl	httpd_parse_request
	.align	16, 0x90
	.type	httpd_parse_request,@function
httpd_parse_request:                    # @httpd_parse_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp323:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp324:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp325:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp326:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp327:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp328:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp329:
	.cfi_def_cfa_offset 240
.Ltmp330:
	.cfi_offset %rbx, -56
.Ltmp331:
	.cfi_offset %r12, -48
.Ltmp332:
	.cfi_offset %r13, -40
.Ltmp333:
	.cfi_offset %r14, -32
.Ltmp334:
	.cfi_offset %r15, -24
.Ltmp335:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	$0, 168(%rbx)
	movq	160(%rbx), %rax
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB33_10
# BB#1:                                 # %for.body.lr.ph.i
	movq	144(%rbx), %rcx
	xorl	%r14d, %r14d
	xorl	%edx, %edx
.LBB33_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %esi
	cmpl	$10, %esi
	je	.LBB33_4
# BB#3:                                 # %for.body.i
                                        #   in Loop: Header=BB33_2 Depth=1
	movzbl	%sil, %edi
	cmpl	$13, %edi
	je	.LBB33_4
# BB#9:                                 # %for.inc.i
                                        #   in Loop: Header=BB33_2 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	movq	%rdx, 168(%rbx)
	jb	.LBB33_2
	jmp	.LBB33_10
.LBB33_4:                               # %if.then.i
	movb	$0, (%rcx,%rdx)
	movq	168(%rbx), %rax
	incq	%rax
	movq	%rax, 168(%rbx)
	movzbl	%sil, %ecx
	cmpl	$13, %ecx
	jne	.LBB33_8
# BB#5:                                 # %land.lhs.true.i
	cmpq	160(%rbx), %rax
	jae	.LBB33_8
# BB#6:                                 # %land.lhs.true21.i
	movq	144(%rbx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB33_8
# BB#7:                                 # %if.then28.i
	movb	$0, (%rcx,%rax)
	incq	168(%rbx)
.LBB33_8:                               # %if.end.i
	movq	144(%rbx), %r14
.LBB33_10:                              # %bufgets.exit
	movl	$.L.str2770, %esi
	movq	%r14, %rdi
	callq	strpbrk
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB33_11
# BB#12:                                # %if.end
	movq	%rbx, %r15
	leaq	1(%rbp), %rdi
	movb	$0, (%rbp)
	movl	$.L.str2770, %esi
	callq	strspn
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	1(%rax,%rbp), %r12
	movl	$.L.str2770, %esi
	movq	%r12, %rdi
	callq	strpbrk
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB33_13
# BB#14:                                # %if.else
	leaq	1(%r13), %rdi
	movb	$0, (%r13)
	movl	$.L.str2770, %esi
	callq	strspn
	leaq	1(%rax,%r13), %rbx
	cmpb	$0, 1(%rax,%r13)
	je	.LBB33_15
# BB#16:                                # %cond.false235
	movl	$.L.str2770, %esi
	movq	%rbx, %rdi
	callq	strpbrk
	testq	%rax, %rax
	je	.LBB33_18
# BB#17:                                # %if.then251
	movb	$0, (%rax)
.LBB33_18:                              # %if.end252
	movl	$.L.str2972, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%r15, %r13
	je	.LBB33_20
# BB#19:                                # %if.then256
	movl	$1, 524(%r13)
	jmp	.LBB33_20
.LBB33_11:                              # %if.then
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r9d
	movq	%rbx, %rdi
	jmp	.LBB33_208
.LBB33_13:                              # %if.then142
	movq	%r15, %r13
	movl	$0, 520(%r13)
	movl	$.L.str2871, %ebx
	jmp	.LBB33_20
.LBB33_15:
	movq	%r15, %r13
.LBB33_20:                              # %if.end259
	movq	%rbx, 224(%r13)
	movl	$.L.str3073, %esi
	movl	$7, %edx
	movq	%r12, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB33_21
# BB#27:                                # %if.end286
	movzbl	(%r12), %eax
	cmpl	$47, %eax
	jne	.LBB33_22
	jmp	.LBB33_28
.LBB33_21:                              # %if.then264
	cmpl	$0, 524(%r13)
	je	.LBB33_22
# BB#23:                                # %if.end267
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	8(%rax,%rbp), %rbp
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strchr
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB33_22
# BB#24:                                # %if.end273
	movb	$0, (%r12)
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB33_22
# BB#25:                                # %lor.lhs.false
	movzbl	(%rbp), %eax
	cmpl	$46, %eax
	je	.LBB33_22
# BB#26:                                # %if.end286.thread
	leaq	328(%r13), %rbx
	leaq	440(%r13), %r15
	movq	%rbp, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	328(%r13), %rdi
	movq	%rbp, %rsi
	callq	strcpy
	movb	$47, (%r12)
.LBB33_28:                              # %if.end291
	movl	$.L.str2063, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_29
# BB#30:                                # %if.else297
	movl	$.L.str2164, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_31
# BB#32:                                # %if.else304
	movl	$.L.str2265, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB33_33
# BB#210:                               # %if.else311
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movq	%r13, %rdi
	movq	%r14, %r9
	jmp	.LBB33_208
.LBB33_29:                              # %if.then296
	movl	$1, 180(%r13)
	jmp	.LBB33_34
.LBB33_31:                              # %if.then302
	movl	$2, 180(%r13)
	jmp	.LBB33_34
.LBB33_33:                              # %if.then309
	movl	$3, 180(%r13)
.LBB33_34:                              # %if.end314
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
	movq	232(%r13), %rax
	cmpb	$0, (%rax)
	jne	.LBB33_36
# BB#35:                                # %if.then330
	movw	$46, (%rax)
.LBB33_36:                              # %if.end333
	movq	208(%r13), %rdi
	movl	$63, %esi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_39
# BB#37:                                # %if.then338
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
	testq	%rax, %rax
	je	.LBB33_39
# BB#38:                                # %if.then347
	movb	$0, (%rax)
.LBB33_39:                              # %if.end349
	movq	(%r14), %rbp
	jmp	.LBB33_40
	.align	16, 0x90
.LBB33_50:                              # %for.end.i
                                        #   in Loop: Header=BB33_40 Depth=1
	incq	%rax
	movq	%rax, %rdi
	callq	strcpy
.LBB33_40:                              # %if.end349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_49 Depth 2
	movl	$.L.str498, %esi
	movq	%rbp, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB33_41
# BB#48:                                # %while.body.i
                                        #   in Loop: Header=BB33_40 Depth=1
	leaq	1(%rax), %rsi
	.align	16, 0x90
.LBB33_49:                              # %for.cond.i
                                        #   Parent Loop BB33_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rsi), %ecx
	incq	%rsi
	cmpl	$47, %ecx
	je	.LBB33_49
	jmp	.LBB33_50
.LBB33_41:                              # %while.cond5.preheader.i
	movl	$.L.str75, %esi
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB33_44
# BB#42:                                # %while.body9.lr.ph.i
	leaq	2(%rbp), %rbx
	.align	16, 0x90
.LBB33_43:                              # %while.body9.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$.L.str75, %esi
	movl	$2, %edx
	movq	%rbp, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_43
	jmp	.LBB33_44
	.align	16, 0x90
.LBB33_211:                             # %while.body17.i
                                        #   in Loop: Header=BB33_44 Depth=1
	leaq	2(%rax), %rsi
	movq	%rax, %rdi
	callq	strcpy
.LBB33_44:                              # %while.cond13.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str511, %esi
	movq	%rbp, %rdi
	callq	strstr
	testq	%rax, %rax
	jne	.LBB33_211
# BB#45:                                # %while.cond22.preheader.i
	leaq	3(%rbp), %rbx
	jmp	.LBB33_46
	.align	16, 0x90
.LBB33_47:                              # %while.body26.i
                                        #   in Loop: Header=BB33_46 Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	strcpy
.LBB33_46:                              # %while.cond22.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_53 Depth 2
	movl	$.L.str512, %esi
	movl	$3, %edx
	movq	%rbp, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_47
# BB#51:                                # %while.end29.i
                                        #   in Loop: Header=BB33_46 Depth=1
	movl	$.L.str513, %esi
	movq	%rbp, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB33_56
# BB#52:                                # %for.cond34.i.preheader
                                        #   in Loop: Header=BB33_46 Depth=1
	leaq	-1(%rax), %rcx
	.align	16, 0x90
.LBB33_53:                              # %for.cond34.i
                                        #   Parent Loop BB33_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdi
	cmpq	%rbp, %rdi
	jb	.LBB33_55
# BB#54:                                # %land.rhs.i
                                        #   in Loop: Header=BB33_53 Depth=2
	movzbl	(%rdi), %edx
	leaq	-1(%rdi), %rcx
	cmpl	$47, %edx
	jne	.LBB33_53
.LBB33_55:                              # %for.end43.i
                                        #   in Loop: Header=BB33_46 Depth=1
	addq	$4, %rax
	incq	%rdi
	movq	%rax, %rsi
	callq	strcpy
	jmp	.LBB33_46
.LBB33_56:                              # %while.cond48.preheader.i
	movq	%rbp, %rdi
	callq	strlen
	cmpl	$4, %eax
	jl	.LBB33_66
# BB#57:                                # %cond.true.i.preheader
	leaq	-4(%rbp), %rbx
.LBB33_58:                              # %cond.true.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_63 Depth 2
	movslq	%eax, %rcx
	movzbl	-3(%rcx,%rbp), %edx
	cmpl	$47, %edx
	jne	.LBB33_66
# BB#59:                                # %if.then67.i
                                        #   in Loop: Header=BB33_58 Depth=1
	movzbl	-2(%rcx,%rbp), %edx
	cmpl	$46, %edx
	jne	.LBB33_66
# BB#60:                                # %if.then77.i
                                        #   in Loop: Header=BB33_58 Depth=1
	movzbl	-1(%rcx,%rbp), %edx
	cmpl	$46, %edx
	jne	.LBB33_66
# BB#61:                                # %cond.end.i
                                        #   in Loop: Header=BB33_58 Depth=1
	cmpb	$0, (%rbp,%rcx)
	jne	.LBB33_66
# BB#62:                                # %for.cond105.i.preheader
                                        #   in Loop: Header=BB33_58 Depth=1
	cltq
	addq	%rbx, %rax
	.align	16, 0x90
.LBB33_63:                              # %for.cond105.i
                                        #   Parent Loop BB33_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rbp, %rax
	jb	.LBB33_66
# BB#64:                                # %land.rhs108.i
                                        #   in Loop: Header=BB33_63 Depth=2
	movzbl	(%rax), %ecx
	decq	%rax
	cmpl	$47, %ecx
	jne	.LBB33_63
# BB#65:                                # %if.end120.i
                                        #   in Loop: Header=BB33_58 Depth=1
	movb	$0, 1(%rax)
	movq	%rbp, %rdi
	callq	strlen
	cmpl	$3, %eax
	jg	.LBB33_58
.LBB33_66:                              # %de_dotdot.exit
	movq	(%r14), %rax
	movzbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB33_22
# BB#67:                                # %de_dotdot.exit
	movzbl	%cl, %ecx
	cmpl	$46, %ecx
	jne	.LBB33_71
# BB#68:                                # %land.lhs.true
	movzbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB33_71
# BB#69:                                # %land.lhs.true367
	movb	2(%rax), %al
	testb	%al, %al
	je	.LBB33_22
# BB#70:                                # %land.lhs.true367
	movzbl	%al, %eax
	cmpl	$47, %eax
	je	.LBB33_22
.LBB33_71:                              # %if.end380
	cmpl	$0, 520(%r13)
	je	.LBB33_176
# BB#72:                                # %while.cond.preheader
	movq	160(%r13), %rax
	movq	168(%r13), %rbp
	cmpq	%rax, %rbp
	jae	.LBB33_176
# BB#73:                                # %for.body.lr.ph.i1720.lr.ph
	leaq	288(%r13), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	424(%r13), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	leaq	16(%r13), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	296(%r13), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	leaq	432(%r13), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB33_74
.LBB33_82:                              # %while.body
                                        #   in Loop: Header=BB33_74 Depth=1
	cmpb	$0, (%rbx)
	je	.LBB33_176
# BB#83:                                # %if.end392
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str3275, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_89
# BB#84:                                # %if.then396
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	8(%r12,%rax), %rax
	jmp	.LBB33_85
	.align	16, 0x90
.LBB33_87:                              # %while.cond.i.backedge
                                        #   in Loop: Header=BB33_85 Depth=2
	incq	%rax
.LBB33_85:                              # %while.cond.i
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_87
# BB#86:                                # %while.cond.i
                                        #   in Loop: Header=BB33_85 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_87
# BB#88:                                # %__strspn_c2.exit
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 272(%r13)
	jmp	.LBB33_114
.LBB33_89:                              # %if.else449
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str3476, %esi
	movl	$11, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_95
# BB#90:                                # %if.then453
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	11(%r12,%rax), %rax
	jmp	.LBB33_91
	.align	16, 0x90
.LBB33_93:                              # %while.cond.i1752.backedge
                                        #   in Loop: Header=BB33_91 Depth=2
	incq	%rax
.LBB33_91:                              # %while.cond.i1752
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_93
# BB#92:                                # %while.cond.i1752
                                        #   in Loop: Header=BB33_91 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_93
# BB#94:                                # %__strspn_c2.exit1753
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 280(%r13)
	jmp	.LBB33_114
.LBB33_95:                              # %if.else506
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str3577, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_104
# BB#96:                                # %if.then510
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	5(%r12,%rax), %rbx
	jmp	.LBB33_97
	.align	16, 0x90
.LBB33_99:                              # %while.cond.i1761.backedge
                                        #   in Loop: Header=BB33_97 Depth=2
	incq	%rbx
.LBB33_97:                              # %while.cond.i1761
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_99
# BB#98:                                # %while.cond.i1761
                                        #   in Loop: Header=BB33_97 Depth=2
	cmpl	$32, %eax
	je	.LBB33_99
# BB#100:                               # %__strspn_c2.exit1762
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rbx, 336(%r13)
	movl	$58, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB33_102
# BB#101:                               # %if.then567
                                        #   in Loop: Header=BB33_74 Depth=1
	movb	$0, (%rax)
	movq	336(%r13), %rbx
.LBB33_102:                             # %if.end568
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB33_22
# BB#103:                               # %lor.lhs.false573
                                        #   in Loop: Header=BB33_74 Depth=1
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB33_114
	jmp	.LBB33_22
.LBB33_104:                             # %if.else581
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str3678, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_118
# BB#105:                               # %if.then585
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	7(%r12,%rax), %rbx
	movq	32(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB33_106
	.align	16, 0x90
.LBB33_108:                             # %while.cond.i1770.backedge
                                        #   in Loop: Header=BB33_106 Depth=2
	incq	%rbx
.LBB33_106:                             # %while.cond.i1770
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_108
# BB#107:                               # %while.cond.i1770
                                        #   in Loop: Header=BB33_106 Depth=2
	cmpl	$32, %eax
	je	.LBB33_108
# BB#109:                               # %__strspn_c2.exit1771
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	(%rbp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB33_110
# BB#116:                               # %if.else657
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%rax, %rdx
	callq	httpd_realloc_str
	jmp	.LBB33_117
.LBB33_118:                             # %if.else664
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str3981, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_129
# BB#119:                               # %if.then668
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	16(%r12,%rax), %rbx
	movq	16(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB33_120
.LBB33_122:                             # %while.cond.i1779.backedge
                                        #   in Loop: Header=BB33_120 Depth=2
	incq	%rbx
.LBB33_120:                             # %while.cond.i1779
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rbx), %eax
	cmpl	$9, %eax
	je	.LBB33_122
# BB#121:                               # %while.cond.i1779
                                        #   in Loop: Header=BB33_120 Depth=2
	cmpl	$32, %eax
	je	.LBB33_122
# BB#123:                               # %__strspn_c2.exit1780
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	(%rbp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB33_124
# BB#127:                               # %if.else742
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%rax, %rdx
	callq	httpd_realloc_str
	jmp	.LBB33_128
.LBB33_129:                             # %if.else749
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4183, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_135
# BB#130:                               # %if.then753
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	16(%r12,%rax), %rax
	jmp	.LBB33_131
.LBB33_133:                             # %while.cond.i1788.backedge
                                        #   in Loop: Header=BB33_131 Depth=2
	incq	%rax
.LBB33_131:                             # %while.cond.i1788
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_133
# BB#132:                               # %while.cond.i1788
                                        #   in Loop: Header=BB33_131 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_133
# BB#134:                               # %__strspn_c2.exit1789
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 304(%r13)
	jmp	.LBB33_114
.LBB33_110:                             # %if.then642
                                        #   in Loop: Header=BB33_74 Depth=1
	callq	strlen
	movq	%rax, %r15
	cmpq	$5001, %r15             # imm = 0x1389
	jb	.LBB33_115
# BB#111:                               # %if.then647
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	httpd_ntoa
	movl	$3, %edi
	movl	$.L.str3779, %esi
	jmp	.LBB33_112
.LBB33_135:                             # %if.else806
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4284, %esi
	movl	$18, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_138
# BB#136:                               # %if.then810
                                        #   in Loop: Header=BB33_74 Depth=1
	leaq	18(%r15,%r12), %rbx
	movq	%rbx, %rdi
	callq	tdate_parse
	cmpq	$-1, %rax
	movq	%rax, 480(%r13)
	jne	.LBB33_114
	jmp	.LBB33_137
.LBB33_124:                             # %if.then725
                                        #   in Loop: Header=BB33_74 Depth=1
	callq	strlen
	movq	%rax, %r15
	cmpq	$5001, %r15             # imm = 0x1389
	jb	.LBB33_126
# BB#125:                               # %if.then730
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	httpd_ntoa
	movl	$3, %edi
	movl	$.L.str4082, %esi
.LBB33_112:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	jmp	.LBB33_113
.LBB33_115:                             # %if.end649
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	leaq	2(%r15,%rax), %rdx
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	movq	(%rbp), %r15
	movq	%r15, %rdi
	callq	strlen
	movb	$0, 2(%r15,%rax)
	movw	$8236, (%r15,%rax)      # imm = 0x202C
.LBB33_117:                             # %if.end661
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcat
	jmp	.LBB33_114
.LBB33_138:                             # %if.else818
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4486, %esi
	movl	$7, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_144
# BB#139:                               # %if.then822
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	7(%r12,%rax), %rax
	jmp	.LBB33_140
.LBB33_142:                             # %while.cond.i1797.backedge
                                        #   in Loop: Header=BB33_140 Depth=2
	incq	%rax
.LBB33_140:                             # %while.cond.i1797
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_142
# BB#141:                               # %while.cond.i1797
                                        #   in Loop: Header=BB33_140 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_142
# BB#143:                               # %__strspn_c2.exit1798
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 312(%r13)
	jmp	.LBB33_114
.LBB33_126:                             # %if.end733
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	leaq	2(%r15,%rax), %rdx
	movq	%rbp, %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	callq	httpd_realloc_str
	movq	(%rbp), %r15
	movq	%r15, %rdi
	callq	strlen
	movb	$0, 2(%r15,%rax)
	movw	$8236, (%r15,%rax)      # imm = 0x202C
.LBB33_128:                             # %if.end746
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	(%rbp), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	jmp	.LBB33_114
.LBB33_144:                             # %if.else875
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4587, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_151
# BB#145:                               # %if.then879
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$44, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	jne	.LBB33_114
# BB#146:                               # %cond.true901
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$61, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_114
# BB#147:                               # %if.then937
                                        #   in Loop: Header=BB33_74 Depth=1
	incq	%rbx
	movl	$45, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB33_114
# BB#148:                               # %if.then937
                                        #   in Loop: Header=BB33_74 Depth=1
	cmpq	%rbx, %rbp
	je	.LBB33_114
# BB#149:                               # %if.then946
                                        #   in Loop: Header=BB33_74 Depth=1
	movb	$0, (%rbp)
	movl	$1, 528(%r13)
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbx, %rdi
	callq	strtoll
	testq	%rax, %rax
	movl	$0, %ecx
	cmovsq	%rcx, %rax
	movq	%rax, 536(%r13)
	movsbq	1(%rbp), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	testb	$8, 1(%rax,%rbx,2)
	je	.LBB33_114
# BB#150:                               # %if.then961
                                        #   in Loop: Header=BB33_74 Depth=1
	incq	%rbp
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rbp, %rdi
	callq	strtoll
	cmpq	$-2, %rax
	movq	$-1, %rcx
	cmovleq	%rcx, %rax
	movq	%rax, 544(%r13)
	jmp	.LBB33_114
.LBB33_151:                             # %if.else974
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4789, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB33_153
# BB#152:                               # %lor.lhs.false978
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4890, %esi
	movl	$9, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_154
.LBB33_153:                             # %if.then982
                                        #   in Loop: Header=BB33_74 Depth=1
	leaq	9(%r15,%r12), %rbx
	movq	%rbx, %rdi
	callq	tdate_parse
	cmpq	$-1, %rax
	movq	%rax, 488(%r13)
	jne	.LBB33_114
.LBB33_137:                             # %if.then816
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$7, %edi
	movl	$.L.str4385, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
.LBB33_113:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_74 Depth=1
	callq	syslog
.LBB33_114:                             # %while.cond.backedge
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	160(%r13), %rax
	movq	168(%r13), %rbp
	cmpq	%rax, %rbp
	jb	.LBB33_74
	jmp	.LBB33_176
.LBB33_154:                             # %if.else990
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str4991, %esi
	movl	$13, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_160
# BB#155:                               # %if.then994
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	13(%r12,%rax), %rax
	jmp	.LBB33_156
.LBB33_160:                             # %if.else1047
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str5092, %esi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_162
# BB#161:                               # %if.then1051
                                        #   in Loop: Header=BB33_74 Depth=1
	leaq	15(%r15,%r12), %rax
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	strtol
	movq	%rax, 496(%r13)
	jmp	.LBB33_114
.LBB33_158:                             # %while.cond.i1808.backedge
                                        #   in Loop: Header=BB33_156 Depth=2
	incq	%rax
.LBB33_156:                             # %while.cond.i1808
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_158
# BB#157:                               # %while.cond.i1808
                                        #   in Loop: Header=BB33_156 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_158
# BB#159:                               # %__strspn_c2.exit1809
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 320(%r13)
	jmp	.LBB33_114
.LBB33_162:                             # %if.else1054
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str5193, %esi
	movl	$14, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_168
# BB#163:                               # %if.then1058
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %rax
	leaq	14(%r12,%rax), %rax
	jmp	.LBB33_164
.LBB33_168:                             # %if.else1111
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str5294, %esi
	movl	$11, %edx
	movq	%rbx, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	jne	.LBB33_114
# BB#169:                               # %if.then1115
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%r13, %rbx
	movslq	%ebp, %rax
	leaq	11(%r12,%rax), %rax
	jmp	.LBB33_170
.LBB33_166:                             # %while.cond.i1818.backedge
                                        #   in Loop: Header=BB33_164 Depth=2
	incq	%rax
.LBB33_164:                             # %while.cond.i1818
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_166
# BB#165:                               # %while.cond.i1818
                                        #   in Loop: Header=BB33_164 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_166
# BB#167:                               # %__strspn_c2.exit1819
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	%rax, 352(%r13)
	jmp	.LBB33_114
.LBB33_172:                             # %while.cond.i1827.backedge
                                        #   in Loop: Header=BB33_170 Depth=2
	incq	%rax
.LBB33_170:                             # %while.cond.i1827
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB33_172
# BB#171:                               # %while.cond.i1827
                                        #   in Loop: Header=BB33_170 Depth=2
	cmpl	$32, %ecx
	je	.LBB33_172
# BB#173:                               # %__strspn_c2.exit1828
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$.L.str5395, %esi
	movq	%rax, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	movq	%rbx, %r13
	jne	.LBB33_114
# BB#174:                               # %if.then1171
                                        #   in Loop: Header=BB33_74 Depth=1
	movl	$1, 552(%r13)
	jmp	.LBB33_114
.LBB33_74:                              # %for.body.lr.ph.i1720
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_75 Depth 2
                                        #     Child Loop BB33_170 Depth 2
                                        #     Child Loop BB33_164 Depth 2
                                        #     Child Loop BB33_156 Depth 2
                                        #     Child Loop BB33_140 Depth 2
                                        #     Child Loop BB33_131 Depth 2
                                        #     Child Loop BB33_120 Depth 2
                                        #     Child Loop BB33_106 Depth 2
                                        #     Child Loop BB33_97 Depth 2
                                        #     Child Loop BB33_91 Depth 2
                                        #     Child Loop BB33_85 Depth 2
	movq	144(%r13), %rcx
	movq	%rbp, %rdx
.LBB33_75:                              # %for.body.i1722
                                        #   Parent Loop BB33_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx,%rdx), %esi
	cmpl	$10, %esi
	je	.LBB33_77
# BB#76:                                # %for.body.i1722
                                        #   in Loop: Header=BB33_75 Depth=2
	movzbl	%sil, %edi
	cmpl	$13, %edi
	je	.LBB33_77
# BB#175:                               # %for.inc.i1739
                                        #   in Loop: Header=BB33_75 Depth=2
	incq	%rdx
	cmpq	%rax, %rdx
	movq	%rdx, 168(%r13)
	jb	.LBB33_75
	jmp	.LBB33_176
.LBB33_77:                              # %if.then.i1725
                                        #   in Loop: Header=BB33_74 Depth=1
	movb	$0, (%rcx,%rdx)
	movq	168(%r13), %rax
	incq	%rax
	movq	%rax, 168(%r13)
	movzbl	%sil, %ecx
	cmpl	$13, %ecx
	jne	.LBB33_81
# BB#78:                                # %land.lhs.true.i1727
                                        #   in Loop: Header=BB33_74 Depth=1
	cmpq	160(%r13), %rax
	jae	.LBB33_81
# BB#79:                                # %land.lhs.true21.i1730
                                        #   in Loop: Header=BB33_74 Depth=1
	movq	144(%r13), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$10, %edx
	jne	.LBB33_81
# BB#80:                                # %if.then28.i1732
                                        #   in Loop: Header=BB33_74 Depth=1
	movb	$0, (%rcx,%rax)
	incq	168(%r13)
.LBB33_81:                              # %bufgets.exit1741
                                        #   in Loop: Header=BB33_74 Depth=1
	movslq	%ebp, %r15
	movq	144(%r13), %r12
	movq	%r12, %rbx
	addq	%r15, %rbx
	jne	.LBB33_82
.LBB33_176:                             # %if.end1187
	cmpl	$0, 524(%r13)
	je	.LBB33_181
# BB#177:                               # %if.then1190
	movq	328(%r13), %rax
	cmpb	$0, (%rax)
	jne	.LBB33_179
# BB#178:                               # %land.lhs.true1196
	movq	336(%r13), %rax
	cmpb	$0, (%rax)
	je	.LBB33_22
.LBB33_179:                             # %if.end1203
	cmpl	$0, 552(%r13)
	je	.LBB33_181
# BB#180:                               # %if.then1206
	movl	$1, 556(%r13)
.LBB33_181:                             # %if.end1208
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
	je	.LBB33_182
# BB#183:                               # %if.then1222
	movq	328(%r13), %rbp
	cmpb	$0, (%rbp)
	je	.LBB33_185
# BB#184:                               # %if.then.i1830
	movq	%r14, 32(%rsp)          # 8-byte Spill
	jmp	.LBB33_186
.LBB33_22:                              # %if.then266
	movq	httpd_err400title(%rip), %rdx
	movq	httpd_err400form(%rip), %r8
	movl	$400, %esi              # imm = 0x190
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r9d
.LBB33_207:                             # %return
	movq	%r13, %rdi
.LBB33_208:                             # %return
	callq	httpd_send_err
	movl	$-1, %ebx
.LBB33_209:                             # %return
	movl	%ebx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB33_182:                             # %if.end1208.if.end1228_crit_edge
	leaq	532(%r13), %rbp
	jmp	.LBB33_197
.LBB33_185:                             # %if.else.i
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	336(%r13), %rbp
	cmpb	$0, (%rbp)
	je	.LBB33_187
.LBB33_186:                             # %if.then7.i
	movq	%rbp, 512(%r13)
	movq	%r13, %r14
.LBB33_189:                             # %if.end18.i
	movb	(%rbp), %bl
	testb	%bl, %bl
	je	.LBB33_194
# BB#190:                               # %for.body.lr.ph.i1833
	callq	__ctype_b_loc
	movq	%rax, %r13
	incq	%rbp
	.align	16, 0x90
.LBB33_191:                             # %for.body.i1835
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %rbx
	movq	(%r13), %rax
	testb	$1, 1(%rax,%rbx,2)
	je	.LBB33_193
# BB#192:                               # %if.then27.i
                                        #   in Loop: Header=BB33_191 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movb	(%rax,%rbx,4), %al
	movb	%al, -1(%rbp)
.LBB33_193:                             # %for.inc.i1838
                                        #   in Loop: Header=BB33_191 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB33_191
.LBB33_194:                             # %for.end.i1839
	movq	%r14, %r13
	leaq	532(%r13), %rbp
	cmpl	$0, 532(%r13)
	jne	.LBB33_196
# BB#195:                               # %if.end36.i
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
.LBB33_196:                             # %if.end1228
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB33_197:                             # %if.end1228
	movq	8(%r13), %rax
	movq	240(%r13), %rdi
	movl	96(%rax), %edx
	movl	(%rbp), %ecx
	leaq	40(%rsp), %rsi
	callq	expand_symlinks
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB33_198
# BB#199:                               # %if.end1236
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
	movq	40(%rsp), %rbx
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
	je	.LBB33_203
# BB#200:                               # %if.then1250
	movq	(%r14), %r14
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	strlen
	subq	%rax, %rbp
	testl	%ebp, %ebp
	jle	.LBB33_203
# BB#201:                               # %land.lhs.true1259
	movslq	%ebp, %rdi
	addq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB33_203
# BB#202:                               # %if.then1270
	shlq	$32, %rbp
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%rbp, %rax
	sarq	$32, %rax
	movb	$0, (%r14,%rax)
.LBB33_203:                             # %if.end1276
	movq	(%r15), %rbp
	movzbl	(%rbp), %eax
	xorl	%ebx, %ebx
	cmpl	$47, %eax
	jne	.LBB33_209
# BB#204:                               # %if.then1282
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
	je	.LBB33_205
# BB#206:                               # %if.else1299
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
	jmp	.LBB33_207
.LBB33_205:                             # %if.then1291
	addq	%rbp, %r14
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	strcpy
	jmp	.LBB33_209
.LBB33_187:                             # %if.else10.i
	movl	$128, 52(%rsp)
	movl	704(%r13), %edi
	leaq	56(%rsp), %rsi
	leaq	52(%rsp), %rdx
	callq	getsockname
	testl	%eax, %eax
	js	.LBB33_212
# BB#188:                               # %if.end.i1832
	leaq	56(%rsp), %rdi
	callq	httpd_ntoa
	movq	$httpd_ntoa.str, 512(%r13)
	movq	%r13, %r14
	movl	$httpd_ntoa.str, %ebp
	jmp	.LBB33_189
.LBB33_212:                             # %if.then1225
	movl	$3, %edi
	movl	$.L.str521, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB33_198:                             # %if.then1234
	movq	208(%r13), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB33_207
.Ltmp336:
	.size	httpd_parse_request, .Ltmp336-httpd_parse_request
	.cfi_endproc

	.globl	httpd_close_conn
	.align	16, 0x90
	.type	httpd_close_conn,@function
httpd_close_conn:                       # @httpd_close_conn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp343:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp344:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp345:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp346:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp347:
	.cfi_def_cfa_offset 48
	subq	$640, %rsp              # imm = 0x280
.Ltmp348:
	.cfi_def_cfa_offset 688
.Ltmp349:
	.cfi_offset %rbx, -48
.Ltmp350:
	.cfi_offset %r12, -40
.Ltmp351:
	.cfi_offset %r13, -32
.Ltmp352:
	.cfi_offset %r14, -24
.Ltmp353:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	cmpl	$0, 80(%rax)
	jne	.LBB34_30
# BB#1:                                 # %if.end.i
	movq	360(%rbx), %rcx
	cmpb	$0, (%rcx)
	movl	$.L.str58100, %r15d
	je	.LBB34_3
# BB#2:                                 # %select.mid
	movq	%rcx, %r15
.LBB34_3:                               # %select.end
	cmpl	$0, 100(%rax)
	je	.LBB34_8
# BB#4:                                 # %land.lhs.true.i
	cmpl	$0, 532(%rbx)
	je	.LBB34_5
.LBB34_8:                               # %if.else13.i
	movq	208(%rbx), %rcx
	leaq	320(%rsp), %rdi
	movl	$305, %esi              # imm = 0x131
	movl	$.L.str60102, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB34_9
.LBB34_5:                               # %if.then8.i
	movq	512(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB34_7
# BB#6:                                 # %cond.true.i
	movq	8(%rax), %rcx
.LBB34_7:                               # %cond.end.i
	movq	208(%rbx), %r8
	leaq	320(%rsp), %rdi
	movl	$305, %esi              # imm = 0x131
	movl	$.L.str59101, %edx
	xorl	%eax, %eax
	callq	my_snprintf
.LBB34_9:                               # %if.end17.i
	movq	200(%rbx), %rcx
	testq	%rcx, %rcx
	js	.LBB34_11
# BB#10:                                # %if.then20.i
	leaq	272(%rsp), %rdi
	movl	$40, %esi
	movl	$.L.str61103, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB34_12
.LBB34_11:                              # %if.else24.i
	movw	$45, 272(%rsp)
.LBB34_12:                              # %if.end27.i
	movq	8(%rbx), %rax
	cmpq	$0, 88(%rax)
	je	.LBB34_23
# BB#13:                                # %if.then31.i
	testq	%r14, %r14
	je	.LBB34_15
# BB#14:                                # %if.then34.i
	movq	(%r14), %rax
	jmp	.LBB34_16
.LBB34_23:                              # %if.else63.i
	leaq	16(%rbx), %rdi
	callq	httpd_ntoa
	movl	$.L.str2063, %r8d
	movl	180(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB34_29
# BB#24:                                # %if.else63.i
	cmpl	$3, %eax
	jne	.LBB34_25
# BB#27:                                # %sw.bb2.i109.i
	movl	$.L.str2265, %r8d
	jmp	.LBB34_29
.LBB34_15:                              # %if.else35.i
	xorl	%edi, %edi
	callq	time
.LBB34_16:                              # %if.end37.i
	movq	%rax, 264(%rsp)
	leaq	264(%rsp), %rdi
	callq	localtime
	movq	%rax, %r12
	leaq	160(%rsp), %r13
	movl	$100, %esi
	movl	$.L.str62104, %edx
	movq	%r13, %rdi
	movq	%r12, %rcx
	callq	strftime
	movq	40(%r12), %rcx
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
	movq	%r13, %rcx
                                        # kill: R9D<def> R9D<kill> R9<kill>
	callq	my_snprintf
	movq	8(%rbx), %rax
	movq	88(%rax), %r12
	leaq	16(%rbx), %rdi
	callq	httpd_ntoa
	movl	$.L.str2063, %r9d
	movl	180(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB34_22
# BB#17:                                # %if.end37.i
	cmpl	$3, %eax
	jne	.LBB34_18
# BB#20:                                # %sw.bb2.i.i
	movl	$.L.str2265, %r9d
	jmp	.LBB34_22
.LBB34_18:                              # %if.end37.i
	cmpl	$2, %eax
	jne	.LBB34_21
# BB#19:                                # %sw.bb1.i.i
	movl	$.L.str2164, %r9d
	jmp	.LBB34_22
.LBB34_25:                              # %if.else63.i
	cmpl	$2, %eax
	jne	.LBB34_28
# BB#26:                                # %sw.bb1.i108.i
	movl	$.L.str2164, %r8d
	jmp	.LBB34_29
.LBB34_21:                              # %sw.default.i.i
	movl	$.L.str2366, %r9d
.LBB34_22:                              # %httpd_method_str.exit.i
	movq	224(%rbx), %rax
	movl	184(%rbx), %ecx
	movq	272(%rbx), %rdx
	movq	280(%rbx), %rsi
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
	callq	fprintf
	movq	8(%rbx), %rax
	movq	88(%rax), %rdi
	callq	fflush
	jmp	.LBB34_30
.LBB34_28:                              # %sw.default.i110.i
	movl	$.L.str2366, %r8d
.LBB34_29:                              # %httpd_method_str.exit112.i
	movq	224(%rbx), %rax
	movl	184(%rbx), %ecx
	movq	272(%rbx), %rdx
	movq	280(%rbx), %rsi
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
	callq	syslog
.LBB34_30:                              # %make_log_entry.exit
	movq	712(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB34_32
# BB#31:                                # %if.then
	leaq	560(%rbx), %rsi
	movq	%r14, %rdx
	callq	mmc_unmap
	movq	$0, 712(%rbx)
.LBB34_32:                              # %if.end
	movl	704(%rbx), %edi
	testl	%edi, %edi
	js	.LBB34_34
# BB#33:                                # %if.then4
	callq	close
	movl	$-1, 704(%rbx)
.LBB34_34:                              # %if.end7
	addq	$640, %rsp              # imm = 0x280
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.Ltmp354:
	.size	httpd_close_conn, .Ltmp354-httpd_close_conn
	.cfi_endproc

	.globl	httpd_destroy_conn
	.align	16, 0x90
	.type	httpd_destroy_conn,@function
httpd_destroy_conn:                     # @httpd_destroy_conn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp357:
	.cfi_def_cfa_offset 16
.Ltmp358:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, (%rbx)
	je	.LBB35_2
# BB#1:                                 # %if.then
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
	popq	%rbx
	ret
.Ltmp359:
	.size	httpd_destroy_conn, .Ltmp359-httpd_destroy_conn
	.cfi_endproc

	.globl	httpd_start_request
	.align	16, 0x90
	.type	httpd_start_request,@function
httpd_start_request:                    # @httpd_start_request
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	really_start_request    # TAILCALL
.Ltmp360:
	.size	httpd_start_request, .Ltmp360-httpd_start_request
	.cfi_endproc

	.globl	httpd_read_fully
	.align	16, 0x90
	.type	httpd_read_fully,@function
httpd_read_fully:                       # @httpd_read_fully
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp368:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp369:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp370:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp371:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp372:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp373:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp374:
	.cfi_def_cfa_offset 64
.Ltmp375:
	.cfi_offset %rbx, -56
.Ltmp376:
	.cfi_offset %r12, -48
.Ltmp377:
	.cfi_offset %r13, -40
.Ltmp378:
	.cfi_offset %r14, -32
.Ltmp379:
	.cfi_offset %r15, -24
.Ltmp380:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	%edi, %r12d
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB37_1
# BB#2:
	xorl	%r14d, %r14d
.LBB37_4:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_5 Depth 2
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%rax), %r13
	movq	%r15, %rbp
	subq	%rax, %rbp
	jmp	.LBB37_5
	.align	16, 0x90
.LBB37_8:                               # %if.then
                                        #   in Loop: Header=BB37_5 Depth=2
	movl	$1, %edi
	callq	sleep
.LBB37_5:                               # %while.body
                                        #   Parent Loop BB37_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r12d, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	read
	movq	%rax, %rbx
	testl	%ebx, %ebx
	jns	.LBB37_9
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB37_5 Depth=2
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
	testl	%ebx, %ebx
	je	.LBB37_10
# BB#3:                                 # %while.cond.outer
                                        #   in Loop: Header=BB37_4 Depth=1
	addl	%r14d, %ebx
	movslq	%ebx, %rax
	cmpq	%r15, %rax
	movl	%ebx, %r14d
	jb	.LBB37_4
	jmp	.LBB37_11
.LBB37_1:
	xorl	%ebx, %ebx
.LBB37_11:                              # %return
	movl	%ebx, %eax
	addq	$8, %rsp
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
.Ltmp381:
	.size	httpd_read_fully, .Ltmp381-httpd_read_fully
	.cfi_endproc

	.globl	httpd_logstats
	.align	16, 0x90
	.type	httpd_logstats,@function
httpd_logstats:                         # @httpd_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	movl	str_alloc_count(%rip), %edx
	testl	%edx, %edx
	jle	.LBB38_5
# BB#1:                                 # %if.then
	movq	str_alloc_size(%rip), %rcx
	testq	%rcx, %rcx
	js	.LBB38_2
# BB#3:                                 # %if.then
	cvtsi2ssq	%rcx, %xmm0
	jmp	.LBB38_4
.LBB38_5:                               # %if.end
	ret
.LBB38_2:
	movq	%rcx, %rax
	shrq	%rax
	movq	%rcx, %rsi
	andq	$1, %rsi
	orq	%rax, %rsi
	cvtsi2ssq	%rsi, %xmm0
	addss	%xmm0, %xmm0
.LBB38_4:                               # %if.then
	cvtsi2ssl	%edx, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$6, %edi
	movl	$.L.str5799, %esi
	movb	$1, %al
	jmp	syslog                  # TAILCALL
.Ltmp382:
	.size	httpd_logstats, .Ltmp382-httpd_logstats
	.cfi_endproc

	.align	16, 0x90
	.type	initialize_listen_socket,@function
initialize_listen_socket:               # @initialize_listen_socket
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp386:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp387:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp388:
	.cfi_def_cfa_offset 32
.Ltmp389:
	.cfi_offset %rbx, -24
.Ltmp390:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzwl	(%rbx), %edi
	movl	%edi, %eax
	orl	$8, %eax
	cmpl	$10, %eax
	jne	.LBB39_1
# BB#2:                                 # %if.end
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB39_3
# BB#4:                                 # %if.end5
	movl	$2, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	fcntl
	movl	$1, 4(%rsp)
	leaq	4(%rsp), %rcx
	movl	$1, %esi
	movl	$2, %edx
	movl	$4, %r8d
	movl	%ebp, %edi
	callq	setsockopt
	testl	%eax, %eax
	jns	.LBB39_6
# BB#5:                                 # %if.then10
	movl	$2, %edi
	movl	$.L.str533, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB39_6:                               # %if.end11
	movzwl	(%rbx), %eax
	movl	$16, %edx
	cmpl	$2, %eax
	je	.LBB39_10
# BB#7:                                 # %if.end11
	cmpl	$10, %eax
	jne	.LBB39_9
# BB#8:                                 # %sw.bb1.i
	movl	$28, %edx
	jmp	.LBB39_10
.LBB39_1:                               # %if.then
	movl	$2, %edi
	movl	$.L.str531, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_20
.LBB39_3:                               # %if.then3
	movq	%rbx, %rdi
	callq	httpd_ntoa
	movl	$2, %edi
	movl	$.L.str532, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_20
.LBB39_9:                               # %sw.default.i59
	xorl	%edx, %edx
.LBB39_10:                              # %sockaddr_len.exit
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	bind
	testl	%eax, %eax
	js	.LBB39_11
# BB#12:                                # %if.end21
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebp, %edi
	callq	fcntl
	movl	%eax, %ecx
	cmpl	$-1, %ecx
	je	.LBB39_13
# BB#14:                                # %if.end27
	orl	$2048, %ecx             # imm = 0x800
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebp, %edi
	movl	%ecx, %edx
	callq	fcntl
	testl	%eax, %eax
	js	.LBB39_15
# BB#16:                                # %if.end33
	movl	$1024, %esi             # imm = 0x400
	movl	%ebp, %edi
	callq	listen
	testl	%eax, %eax
	jns	.LBB39_21
# BB#17:                                # %if.then37
	movl	$2, %edi
	movl	$.L.str537157, %esi
	jmp	.LBB39_18
.LBB39_11:                              # %if.then18
	movq	%rbx, %rdi
	callq	httpd_ntoa
	movl	$2, %edi
	movl	$.L.str534, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB39_19
.LBB39_13:                              # %if.then25
	movl	$2, %edi
	movl	$.L.str535, %esi
	jmp	.LBB39_18
.LBB39_15:                              # %if.then31
	movl	$2, %edi
	movl	$.L.str536, %esi
.LBB39_18:                              # %return
	xorl	%eax, %eax
	callq	syslog
.LBB39_19:                              # %return
	movl	%ebp, %edi
	callq	close
.LBB39_20:                              # %return
	movl	$-1, %ebp
.LBB39_21:                              # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	ret
.Ltmp391:
	.size	initialize_listen_socket, .Ltmp391-initialize_listen_socket
	.cfi_endproc

	.align	16, 0x90
	.type	free_httpd_server,@function
free_httpd_server:                      # @free_httpd_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp394:
	.cfi_def_cfa_offset 16
.Ltmp395:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_2
# BB#1:                                 # %if.then
	callq	free
.LBB40_2:                               # %if.end
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_4
# BB#3:                                 # %if.then3
	callq	free
.LBB40_4:                               # %if.end5
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_6
# BB#5:                                 # %if.then7
	callq	free
.LBB40_6:                               # %if.end9
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_8
# BB#7:                                 # %if.then11
	callq	free
.LBB40_8:                               # %if.end13
	movq	48(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_10
# BB#9:                                 # %if.then15
	callq	free
.LBB40_10:                              # %if.end17
	movq	112(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_12
# BB#11:                                # %if.then19
	callq	free
.LBB40_12:                              # %if.end21
	movq	120(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB40_14
# BB#13:                                # %if.then23
	callq	free
.LBB40_14:                              # %if.end25
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.Ltmp396:
	.size	free_httpd_server, .Ltmp396-free_httpd_server
	.cfi_endproc

	.align	16, 0x90
	.type	ext_compare,@function
ext_compare:                            # @ext_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	jmp	strcmp                  # TAILCALL
.Ltmp397:
	.size	ext_compare, .Ltmp397-ext_compare
	.cfi_endproc

	.align	16, 0x90
	.type	my_snprintf,@function
my_snprintf:                            # @my_snprintf
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$200, %rsp
.Ltmp399:
	.cfi_def_cfa_offset 208
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
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$24, 176(%rsp)
	leaq	176(%rsp), %rcx
	callq	vsnprintf
	addq	$200, %rsp
	ret
.Ltmp400:
	.size	my_snprintf, .Ltmp400-my_snprintf
	.cfi_endproc

	.align	16, 0x90
	.type	send_err_file,@function
send_err_file:                          # @send_err_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp408:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp409:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp410:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp411:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp412:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp413:
	.cfi_def_cfa_offset 56
	subq	$2024, %rsp             # imm = 0x7E8
.Ltmp414:
	.cfi_def_cfa_offset 2080
.Ltmp415:
	.cfi_offset %rbx, -56
.Ltmp416:
	.cfi_offset %r12, -48
.Ltmp417:
	.cfi_offset %r13, -40
.Ltmp418:
	.cfi_offset %r14, -32
.Ltmp419:
	.cfi_offset %r15, -24
.Ltmp420:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$.L.str500, %esi
	movq	%r8, %rdi
	callq	fopen
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB43_5
# BB#1:                                 # %if.end
	movq	$0, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$.L.str2669, %ecx
	movl	$.L.str183, %r9d
	movl	%ebp, %esi
	movq	%r12, %r8
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	send_mime
	leaq	16(%rsp), %rdi
	movl	$1, %esi
	movl	$999, %edx              # imm = 0x3E7
	movq	%r14, %rcx
	callq	fread
	leaq	368(%rbx), %r15
	leaq	464(%rbx), %r12
	testq	%rax, %rax
	je	.LBB43_4
# BB#2:
	leaq	16(%rsp), %r13
	.align	16, 0x90
.LBB43_3:                               # %if.end4
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 16(%rsp,%rax)
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
	testq	%rax, %rax
	jne	.LBB43_3
.LBB43_4:                               # %for.end
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
	movl	$1, %eax
.LBB43_5:                               # %cleanup
	addq	$2024, %rsp             # imm = 0x7E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp421:
	.size	send_err_file, .Ltmp421-send_err_file
	.cfi_endproc

	.align	16, 0x90
	.type	send_response,@function
send_response:                          # @send_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp429:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp430:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp431:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp432:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp433:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp434:
	.cfi_def_cfa_offset 56
	subq	$4040, %rsp             # imm = 0xFC8
.Ltmp435:
	.cfi_def_cfa_offset 4096
.Ltmp436:
	.cfi_offset %rbx, -56
.Ltmp437:
	.cfi_offset %r12, -48
.Ltmp438:
	.cfi_offset %r13, -40
.Ltmp439:
	.cfi_offset %r14, -32
.Ltmp440:
	.cfi_offset %r15, -24
.Ltmp441:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r13
	movq	$0, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$.L.str2669, %ecx
	movl	$.L.str183, %r9d
	movq	%rax, %r8
	callq	send_mime
	movq	%r14, (%rsp)
	leaq	32(%rsp), %r12
	movl	$2000, %esi             # imm = 0x7D0
	movl	$.L.str526, %edx
	xorl	%eax, %eax
	movl	%ebp, %ecx
	movq	%r14, %r8
	movq	%r12, %rdi
	movl	%ebp, %r9d
	callq	my_snprintf
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbp
	leaq	368(%r13), %r14
	leaq	464(%r13), %r15
	movq	472(%r13), %rdx
	addq	%rbp, %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	httpd_realloc_str
	movq	368(%r13), %rdi
	addq	472(%r13), %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	addq	%rbp, 472(%r13)
	movb	(%rbx), %dl
	testb	%dl, %dl
	je	.LBB44_1
# BB#2:                                 # %land.rhs.lr.ph.i
	leaq	2032(%rsp), %rcx
	incq	%rbx
	movq	%rcx, %rax
	.align	16, 0x90
.LBB44_3:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	subq	%rcx, %rsi
	cmpq	$994, %rsi              # imm = 0x3E2
	jg	.LBB44_10
# BB#4:                                 # %for.body.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movsbl	%dl, %esi
	cmpl	$62, %esi
	jne	.LBB44_5
# BB#7:                                 # %sw.bb8.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$997484326, (%rax)      # imm = 0x3B746726
	addq	$3, %rax
	jmp	.LBB44_9
	.align	16, 0x90
.LBB44_5:                               # %for.body.i
                                        #   in Loop: Header=BB44_3 Depth=1
	cmpl	$60, %esi
	jne	.LBB44_8
# BB#6:                                 # %sw.bb.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movl	$997485606, (%rax)      # imm = 0x3B746C26
	addq	$3, %rax
	jmp	.LBB44_9
	.align	16, 0x90
.LBB44_8:                               # %sw.default.i
                                        #   in Loop: Header=BB44_3 Depth=1
	movb	%dl, (%rax)
.LBB44_9:                               # %for.inc.i
                                        #   in Loop: Header=BB44_3 Depth=1
	incq	%rax
	movb	(%rbx), %dl
	incq	%rbx
	testb	%dl, %dl
	jne	.LBB44_3
	jmp	.LBB44_10
.LBB44_1:
	leaq	2032(%rsp), %rax
.LBB44_10:                              # %defang.exit
	movb	$0, (%rax)
	leaq	32(%rsp), %rbx
	leaq	2032(%rsp), %rcx
	movl	$2000, %esi             # imm = 0x7D0
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	24(%rsp), %rdx          # 8-byte Reload
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
	movq	280(%r13), %rsi
	movl	$.L.str527, %edi
	callq	match
	testl	%eax, %eax
	je	.LBB44_12
# BB#11:                                # %if.then
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
.Ltmp442:
	.size	send_response, .Ltmp442-send_response
	.cfi_endproc

	.align	16, 0x90
	.type	strdecode,@function
strdecode:                              # @strdecode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp448:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp449:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp450:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp451:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp452:
	.cfi_def_cfa_offset 48
.Ltmp453:
	.cfi_offset %rbx, -40
.Ltmp454:
	.cfi_offset %r14, -32
.Ltmp455:
	.cfi_offset %r15, -24
.Ltmp456:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB45_1
	.align	16, 0x90
.LBB45_19:                              # %for.inc
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%bpl, (%r14)
	incq	%r14
	incq	%rbx
.LBB45_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx), %bpl
	testb	%bpl, %bpl
	je	.LBB45_20
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB45_1 Depth=1
	movzbl	%bpl, %eax
	cmpl	$37, %eax
	jne	.LBB45_19
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB45_1 Depth=1
	movsbq	1(%rbx), %r15
	callq	__ctype_b_loc
	movq	(%rax), %rcx
	testb	$16, 1(%rcx,%r15,2)
	jne	.LBB45_5
# BB#4:                                 #   in Loop: Header=BB45_1 Depth=1
	movb	$37, %bpl
	jmp	.LBB45_19
	.align	16, 0x90
.LBB45_5:                               # %land.lhs.true9
                                        #   in Loop: Header=BB45_1 Depth=1
	movsbq	2(%rbx), %rax
	testb	$16, 1(%rcx,%rax,2)
	je	.LBB45_19
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%r15b, %bpl
	addb	$-48, %bpl
	movzbl	%bpl, %ecx
	cmpl	$10, %ecx
	jb	.LBB45_12
# BB#7:                                 # %if.end.i
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%r15b, %cl
	addb	$-97, %cl
	movzbl	%cl, %ecx
	cmpl	$5, %ecx
	ja	.LBB45_9
# BB#8:                                 # %if.then13.i
                                        #   in Loop: Header=BB45_1 Depth=1
	addb	$-87, %r15b
	movb	%r15b, %bpl
	jmp	.LBB45_12
.LBB45_9:                               # %if.end16.i
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%r15b, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$6, %ecx
	jb	.LBB45_10
# BB#11:                                # %if.end16.i
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB45_12
.LBB45_10:                              #   in Loop: Header=BB45_1 Depth=1
	addb	$-55, %r15b
	movb	%r15b, %bpl
.LBB45_12:                              # %hexit.exit
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%al, %cl
	addb	$-48, %cl
	movzbl	%cl, %edx
	cmpl	$10, %edx
	jb	.LBB45_18
# BB#13:                                # %if.end.i41
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%al, %cl
	addb	$-97, %cl
	movzbl	%cl, %ecx
	cmpl	$5, %ecx
	ja	.LBB45_15
# BB#14:                                # %if.then13.i43
                                        #   in Loop: Header=BB45_1 Depth=1
	addb	$-87, %al
	movb	%al, %cl
	jmp	.LBB45_18
.LBB45_15:                              # %if.end16.i47
                                        #   in Loop: Header=BB45_1 Depth=1
	movb	%al, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$6, %ecx
	jb	.LBB45_16
# BB#17:                                # %if.end16.i47
                                        #   in Loop: Header=BB45_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB45_18
.LBB45_16:                              #   in Loop: Header=BB45_1 Depth=1
	addb	$-55, %al
	movb	%al, %cl
.LBB45_18:                              # %hexit.exit50
                                        #   in Loop: Header=BB45_1 Depth=1
	addq	$2, %rbx
	shlb	$4, %bpl
	addb	%cl, %bpl
	jmp	.LBB45_19
.LBB45_20:                              # %for.end
	movb	$0, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp457:
	.size	strdecode, .Ltmp457-strdecode
	.cfi_endproc

	.align	16, 0x90
	.type	expand_symlinks,@function
expand_symlinks:                        # @expand_symlinks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp465:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp466:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp467:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp468:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp469:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp470:
	.cfi_def_cfa_offset 56
	subq	$5176, %rsp             # imm = 0x1438
.Ltmp471:
	.cfi_def_cfa_offset 5232
.Ltmp472:
	.cfi_offset %rbx, -56
.Ltmp473:
	.cfi_offset %r12, -48
.Ltmp474:
	.cfi_offset %r13, -40
.Ltmp475:
	.cfi_offset %r14, -32
.Ltmp476:
	.cfi_offset %r15, -24
.Ltmp477:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	testl	%edx, %edx
	je	.LBB46_6
# BB#1:                                 # %if.then
	leaq	32(%rsp), %rdx
	movl	$1, %edi
	movq	%r15, %rsi
	callq	__xstat
	cmpl	$-1, %eax
	je	.LBB46_6
# BB#2:                                 # %if.then1
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rdi
	movq	%r15, %rsi
	callq	strcpy
	movq	expand_symlinks.checked(%rip), %rax
	movzbl	-1(%rax,%rbx), %ecx
	cmpl	$47, %ecx
	jne	.LBB46_5
# BB#3:
	leaq	-1(%rax,%rbx), %rcx
	movq	%rbx, %rax
	decq	%rax
	.align	16, 0x90
.LBB46_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%rcx)
	movq	expand_symlinks.checked(%rip), %rdx
	leaq	-1(%rdx,%rax), %rcx
	decq	%rax
	movzbl	-2(%rdx,%rbx), %edx
	decq	%rbx
	cmpl	$47, %edx
	je	.LBB46_4
.LBB46_5:                               # %cleanup
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	xorl	%edx, %edx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rax
	movb	$0, (%rax)
	movq	expand_symlinks.rest(%rip), %rax
	movq	%rax, (%r14)
	jmp	.LBB46_69
.LBB46_6:                               # %if.end9
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movl	$1, %edx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rax
	movb	$0, (%rax)
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rdi
	movq	%r15, %rsi
	callq	strcpy
	movq	expand_symlinks.rest(%rip), %rax
	movzbl	-1(%rax,%rbx), %ecx
	cmpl	$47, %ecx
	jne	.LBB46_8
# BB#7:                                 # %if.then18
	decq	%rbx
	movb	$0, (%rax,%rbx)
.LBB46_8:                               # %if.end21
	movq	%r14, 16(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	movq	expand_symlinks.rest(%rip), %rbp
	jne	.LBB46_11
	jmp	.LBB46_10
	.align	16, 0x90
.LBB46_9:                               # %while.body29
                                        #   in Loop: Header=BB46_10 Depth=1
	leaq	1(%rbp), %rsi
	movq	%rbp, %rdi
	callq	strcpy
	decq	%rbx
	movq	expand_symlinks.rest(%rip), %rbp
.LBB46_10:                              # %while.body29
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	cmpl	$47, %eax
	je	.LBB46_9
.LBB46_11:                              # %if.end34
	movq	%r15, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB46_67
# BB#12:
	movl	$0, 4(%rsp)             # 4-byte Folded Spill
.LBB46_13:                              # %while.body38.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB46_14 Depth 2
                                        #     Child Loop BB46_61 Depth 2
	movq	%rbp, %r13
.LBB46_14:                              # %while.body38
                                        #   Parent Loop BB46_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$47, %esi
	movq	%r13, %rdi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB46_15
# BB#29:                                # %cond.true105
                                        #   in Loop: Header=BB46_14 Depth=2
	movzbl	(%r13), %eax
	cmpl	$46, %eax
	jne	.LBB46_37
# BB#30:                                # %if.then117
                                        #   in Loop: Header=BB46_14 Depth=2
	movzbl	1(%r13), %eax
	cmpl	$46, %eax
	jne	.LBB46_37
# BB#31:                                # %cond.end148
                                        #   in Loop: Header=BB46_14 Depth=2
	cmpb	$0, 2(%r13)
	jne	.LBB46_37
# BB#32:                                # %if.then152
                                        #   in Loop: Header=BB46_14 Depth=2
	testq	%r15, %r15
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rbx, %r15
	movl	$0, %r14d
	movl	$0, %r12d
	je	.LBB46_42
# BB#33:                                # %if.then155
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rbp
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strrchr
	testq	%rax, %rax
	movl	$0, %r12d
	je	.LBB46_36
# BB#34:                                # %if.else160
                                        #   in Loop: Header=BB46_14 Depth=2
	subq	%rbp, %rax
	movl	$1, %r12d
	je	.LBB46_36
# BB#35:                                # %if.else164
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	%rax, %r12
.LBB46_36:                              # %if.end169
                                        #   in Loop: Header=BB46_14 Depth=2
	movb	$0, (%rbp,%r12)
	jmp	.LBB46_41
	.align	16, 0x90
.LBB46_15:                              # %if.then42
                                        #   in Loop: Header=BB46_14 Depth=2
	subq	%r13, %rbp
	testl	%ebp, %ebp
	jne	.LBB46_17
# BB#16:                                # %if.then46
                                        #   in Loop: Header=BB46_14 Depth=2
	leaq	1(%r15), %r12
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	movq	%r12, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r15, %rdi
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	$1, %edx
	movq	%r13, %rsi
	callq	strncpy
	shlq	$32, %rbp
	movq	%rbp, %r15
	jmp	.LBB46_28
	.align	16, 0x90
.LBB46_37:                              # %if.else172
                                        #   in Loop: Header=BB46_14 Depth=2
	leaq	1(%r15,%rbx), %rdx
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	callq	httpd_realloc_str
	testq	%r15, %r15
	movl	$0, %r12d
	je	.LBB46_40
# BB#38:                                # %land.lhs.true177
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rax
	movzbl	-1(%r15,%rax), %ecx
	cmpl	$47, %ecx
	movq	%r15, %r12
	je	.LBB46_40
# BB#39:                                # %if.then183
                                        #   in Loop: Header=BB46_14 Depth=2
	leaq	1(%r15), %r12
	movb	$47, (%rax,%r15)
.LBB46_40:                              # %if.end186
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r12, %rdi
	movq	%r13, %rsi
	callq	strcpy
	addq	%rbx, %r12
.LBB46_41:                              # %if.end192
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	%rbx, %r15
	xorl	%r14d, %r14d
	jmp	.LBB46_42
	.align	16, 0x90
.LBB46_17:                              # %if.else
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movq	%rbp, %r15
	shlq	$32, %r15
	cmpl	$2, %ebp
	movslq	%ebp, %r14
	movl	$2, %edx
	cmovgq	%r14, %rdx
	movl	$.L.str516, %esi
	movq	%r13, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB46_24
# BB#18:                                # %if.then56
                                        #   in Loop: Header=BB46_14 Depth=2
	cmpq	$0, 24(%rsp)            # 8-byte Folded Reload
	jne	.LBB46_20
# BB#19:                                #   in Loop: Header=BB46_14 Depth=2
	xorl	%r12d, %r12d
	jmp	.LBB46_28
.LBB46_24:                              # %if.else75
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	24(%rsp), %rbp          # 8-byte Reload
	leaq	1(%r14,%rbp), %rdx
	movl	$expand_symlinks.checked, %edi
	movl	$expand_symlinks.maxchecked, %esi
	callq	httpd_realloc_str
	testq	%rbp, %rbp
	movl	$0, %r12d
	je	.LBB46_27
# BB#25:                                # %land.lhs.true
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rax
	movzbl	-1(%rbp,%rax), %ecx
	cmpl	$47, %ecx
	movq	%rbp, %r12
	je	.LBB46_27
# BB#26:                                # %if.then86
                                        #   in Loop: Header=BB46_14 Depth=2
	leaq	1(%rbp), %r12
	movb	$47, (%rax,%rbp)
.LBB46_27:                              # %if.end88
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rdi
	addq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	strncpy
	addq	%r14, %r12
	jmp	.LBB46_28
.LBB46_20:                              # %if.then59
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rbp
	movl	$47, %esi
	movq	%rbp, %rdi
	callq	strrchr
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB46_22
# BB#21:                                #   in Loop: Header=BB46_14 Depth=2
	xorl	%r12d, %r12d
	jmp	.LBB46_28
.LBB46_22:                              # %if.else64
                                        #   in Loop: Header=BB46_14 Depth=2
	subq	%rbp, %r12
	jne	.LBB46_28
# BB#23:                                #   in Loop: Header=BB46_14 Depth=2
	movl	$1, %r12d
	.align	16, 0x90
.LBB46_28:                              # %if.end95
                                        #   in Loop: Header=BB46_14 Depth=2
	movq	expand_symlinks.checked(%rip), %rax
	movb	$0, (%rax,%r12)
	movabsq	$4294967296, %rax       # imm = 0x100000000
	addq	%rax, %r15
	sarq	$32, %r15
	movq	%rbx, %r14
	subq	%r15, %r14
.LBB46_42:                              # %if.end192
                                        #   in Loop: Header=BB46_14 Depth=2
	leaq	(%r13,%r15), %rbp
	movq	expand_symlinks.checked(%rip), %rdi
	cmpb	$0, (%rdi)
	je	.LBB46_43
# BB#44:                                # %if.end198
                                        #   in Loop: Header=BB46_14 Depth=2
	movl	$4999, %edx             # imm = 0x1387
	leaq	176(%rsp), %rsi
	callq	readlink
	cmpq	$-1, %rax
	jne	.LBB46_54
# BB#45:                                # %if.then202
                                        #   in Loop: Header=BB46_14 Depth=2
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$12, %eax
	jle	.LBB46_46
# BB#48:                                # %if.then202
                                        #   in Loop: Header=BB46_14 Depth=2
	cmpl	$22, %eax
	jne	.LBB46_49
.LBB46_43:                              # %while.cond35.backedge
                                        #   in Loop: Header=BB46_14 Depth=2
	testq	%r14, %r14
	movq	%r12, %r15
	movq	%r14, %rbx
	movq	%rbp, %r13
	jne	.LBB46_14
	jmp	.LBB46_67
.LBB46_54:                              # %if.end229
                                        #   in Loop: Header=BB46_13 Depth=1
	movl	4(%rsp), %ecx           # 4-byte Reload
	cmpl	$32, %ecx
	jge	.LBB46_55
# BB#56:                                # %if.end234
                                        #   in Loop: Header=BB46_13 Depth=1
	movb	$0, 176(%rsp,%rax)
	movzbl	175(%rsp,%rax), %edx
	cmpl	$47, %edx
	jne	.LBB46_58
# BB#57:                                # %if.then241
                                        #   in Loop: Header=BB46_13 Depth=1
	decq	%rax
	movb	$0, 176(%rsp,%rax)
.LBB46_58:                              # %if.end244
                                        #   in Loop: Header=BB46_13 Depth=1
	movq	%rax, %r12
	incl	%ecx
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	testq	%r14, %r14
	jne	.LBB46_59
# BB#63:                                # %if.else265
                                        #   in Loop: Header=BB46_13 Depth=1
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%r12, %rbx
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	movq	expand_symlinks.rest(%rip), %rdi
	leaq	176(%rsp), %rsi
	callq	strcpy
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB46_64
.LBB46_59:                              # %if.then247
                                        #   in Loop: Header=BB46_13 Depth=1
	movq	expand_symlinks.rest(%rip), %rdi
	movq	%rbp, %rsi
	callq	strcpy
	leaq	1(%r14,%r12), %rbx
	movl	$expand_symlinks.rest, %edi
	movl	$expand_symlinks.maxrest, %esi
	movq	%rbx, %rdx
	callq	httpd_realloc_str
	testl	%r14d, %r14d
	movq	24(%rsp), %r15          # 8-byte Reload
	js	.LBB46_62
# BB#60:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB46_13 Depth=1
	leaq	1(%r12), %rdi
	movslq	%r14d, %rcx
	leal	1(%rcx), %edx
.LBB46_61:                              # %for.body
                                        #   Parent Loop BB46_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	expand_symlinks.rest(%rip), %rsi
	movb	(%rsi,%rcx), %al
	addq	%rdi, %rsi
	movb	%al, (%rcx,%rsi)
	decq	%rcx
	decl	%edx
	testl	%edx, %edx
	jg	.LBB46_61
.LBB46_62:                              # %for.end
                                        #   in Loop: Header=BB46_13 Depth=1
	movq	expand_symlinks.rest(%rip), %rdi
	leaq	176(%rsp), %rsi
	callq	strcpy
	movq	expand_symlinks.rest(%rip), %rax
	movb	$47, (%rax,%r12)
.LBB46_64:                              # %if.end268
                                        #   in Loop: Header=BB46_13 Depth=1
	movq	expand_symlinks.rest(%rip), %rbp
	movzbl	(%rbp), %eax
	cmpl	$47, %eax
	movq	expand_symlinks.checked(%rip), %rax
	jne	.LBB46_71
# BB#65:                                # %if.then273
                                        #   in Loop: Header=BB46_13 Depth=1
	movb	$0, (%rax)
	xorl	%r15d, %r15d
	jmp	.LBB46_66
.LBB46_71:                              # %if.else275
                                        #   in Loop: Header=BB46_13 Depth=1
	movb	$0, (%rax,%r15)
.LBB46_66:                              # %while.cond35.outer.backedge
                                        #   in Loop: Header=BB46_13 Depth=1
	testq	%rbx, %rbx
	jne	.LBB46_13
.LBB46_67:                              # %while.end278
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rbp, (%rax)
	movq	expand_symlinks.checked(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	.LBB46_70
# BB#68:                                # %if.then283
	movw	$46, (%rbx)
	jmp	.LBB46_69
.LBB46_46:                              # %if.then202
	cmpl	$2, %eax
	je	.LBB46_51
	jmp	.LBB46_47
.LBB46_49:                              # %if.then202
	cmpl	$13, %eax
	je	.LBB46_51
# BB#50:                                # %if.then202
	cmpl	$20, %eax
	jne	.LBB46_47
.LBB46_51:                              # %if.then218
	subq	%rbx, %r15
	addq	%r14, %r15
	addq	%r15, %r13
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%r13, (%rax)
	movq	24(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movq	expand_symlinks.checked(%rip), %rax
	je	.LBB46_52
# BB#53:                                # %if.else225
	movb	$0, (%rax,%rcx)
	jmp	.LBB46_69
.LBB46_47:                              # %if.end228
	movq	expand_symlinks.checked(%rip), %rdx
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str517, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB46_70
.LBB46_52:                              # %if.then223
	movw	$46, (%rax)
.LBB46_69:                              # %cleanup286
	movq	expand_symlinks.checked(%rip), %rbx
.LBB46_70:                              # %cleanup286
	movq	%rbx, %rax
	addq	$5176, %rsp             # imm = 0x1438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB46_55:                              # %if.then233
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str518, %esi
	xorl	%eax, %eax
	movq	8(%rsp), %rdx           # 8-byte Reload
	callq	syslog
	jmp	.LBB46_70
.Ltmp478:
	.size	expand_symlinks, .Ltmp478-expand_symlinks
	.cfi_endproc

	.align	16, 0x90
	.type	really_start_request,@function
really_start_request:                   # @really_start_request
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp486:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp487:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp488:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp489:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp490:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp491:
	.cfi_def_cfa_offset 56
	subq	$5608, %rsp             # imm = 0x15E8
.Ltmp492:
	.cfi_def_cfa_offset 5664
.Ltmp493:
	.cfi_offset %rbx, -56
.Ltmp494:
	.cfi_offset %r12, -48
.Ltmp495:
	.cfi_offset %r13, -40
.Ltmp496:
	.cfi_offset %r14, -32
.Ltmp497:
	.cfi_offset %r15, -24
.Ltmp498:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	%r15, 96(%rsp)          # 8-byte Spill
	movq	240(%r15), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	movl	180(%r15), %eax
	decl	%eax
	cmpl	$3, %eax
	jae	.LBB47_1
# BB#4:                                 # %if.end
	leaq	560(%r15), %r13
	movl	$1, %edi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__xstat
	testl	%eax, %eax
	js	.LBB47_5
# BB#6:                                 # %if.end12
	movl	584(%r15), %eax
	testb	$5, %al
	je	.LBB47_7
# BB#8:                                 # %if.end18
	leaq	240(%r15), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB47_151
# BB#9:                                 # %if.then23
	movq	256(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_11
# BB#10:                                # %if.then26
	movq	208(%r15), %r9
	movl	$404, %esi              # imm = 0x194
	movl	$.L.str510, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str509, %r8d
	jmp	.LBB47_2
.LBB47_1:                               # %httpd_method_str.exit
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	movl	$.L.str2366, %r9d
	jmp	.LBB47_2
.LBB47_7:                               # %if.then14
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %rcx
	movl	$6, %edi
	movl	$.L.str72, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str73, %r8d
	jmp	.LBB47_2
.LBB47_11:                              # %if.end69
	movq	232(%r15), %rbx
	movzbl	(%rbx), %eax
	cmpl	$46, %eax
	jne	.LBB47_12
# BB#14:                                # %cond.end131
	cmpb	$0, 1(%rbx)
	jne	.LBB47_15
	jmp	.LBB47_13
.LBB47_12:                              # %if.end69
	testb	%al, %al
	je	.LBB47_13
.LBB47_15:                              # %land.lhs.true135
	movq	%rbx, %rdi
	callq	strlen
	movzbl	-1(%rax,%rbx), %eax
	cmpl	$47, %eax
	jne	.LBB47_16
.LBB47_13:                              # %for.cond.preheader
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	incq	%r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB47_23:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	really_start_request.index_names(,%r15,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	addq	%r12, %rax
	movl	$really_start_request.indexname, %edi
	movl	$really_start_request.maxindexname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	really_start_request.indexname(%rip), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	callq	strcpy
	movq	really_start_request.indexname(%rip), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB47_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB47_23 Depth=1
	movzbl	-1(%rax,%r14), %eax
	cmpl	$47, %eax
	je	.LBB47_26
.LBB47_25:                              # %if.then162
                                        #   in Loop: Header=BB47_23 Depth=1
	movq	%r14, %rdi
	callq	strlen
	movw	$47, (%r14,%rax)
	movq	really_start_request.indexname(%rip), %r14
.LBB47_26:                              # %cond.true173
                                        #   in Loop: Header=BB47_23 Depth=1
	movzbl	(%r14), %eax
	cmpl	$46, %eax
	jne	.LBB47_30
# BB#27:                                # %if.then187
                                        #   in Loop: Header=BB47_23 Depth=1
	movzbl	1(%r14), %eax
	cmpl	$47, %eax
	jne	.LBB47_30
# BB#28:                                # %cond.end218
                                        #   in Loop: Header=BB47_23 Depth=1
	cmpb	$0, 2(%r14)
	jne	.LBB47_30
# BB#29:                                # %if.then222
                                        #   in Loop: Header=BB47_23 Depth=1
	movb	$0, (%r14)
	movq	really_start_request.indexname(%rip), %r14
	.align	16, 0x90
.LBB47_30:                              # %if.end224
                                        #   in Loop: Header=BB47_23 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movq	really_start_request.indexname(%rip), %rsi
	movl	$1, %edi
	movq	%r13, %rdx
	callq	__xstat
	testl	%eax, %eax
	jns	.LBB47_31
# BB#22:                                # %for.cond
                                        #   in Loop: Header=BB47_23 Depth=1
	incq	%r15
	cmpl	$5, %r15d
	jbe	.LBB47_23
# BB#35:                                # %for.end
	testb	$4, 584(%rbp)
	je	.LBB47_36
# BB#37:                                # %if.end243
	movq	8(%rbp), %rax
	movq	240(%rbp), %rbx
	cmpl	$0, 104(%rax)
	je	.LBB47_43
# BB#38:                                # %if.then.i723
	cmpl	$0, 100(%rax)
	je	.LBB47_40
# BB#39:                                # %land.lhs.true.i
	movq	344(%rbp), %rsi
	cmpb	$0, (%rsi)
	jne	.LBB47_41
.LBB47_40:                              # %if.else.i725
	movl	$.L.str3174, %esi
.LBB47_41:                              # %if.end.i727
	movq	%rbp, %rdi
	callq	auth_check2
	cmpl	$-1, %eax
	je	.LBB47_44
# BB#42:                                # %if.end.i727
	cmpl	$1, %eax
	je	.LBB47_44
.LBB47_43:                              # %if.end7.i
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	auth_check2
.LBB47_44:                              # %auth_check.exit
	movl	$-1, %ebx
	cmpl	$-1, %eax
	je	.LBB47_454
# BB#45:                                # %if.end249
	movq	%rbp, %rdi
	callq	check_referer
	testl	%eax, %eax
	je	.LBB47_454
# BB#46:                                # %if.end253
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	callq	opendir
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_47
# BB#48:                                # %if.end.i734
	movl	180(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB47_49
# BB#51:                                # %if.then8.i
	movq	8(%rbp), %rax
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	testl	%edx, %edx
	je	.LBB47_54
# BB#52:                                # %if.then8.i
	cmpl	%edx, %ecx
	jge	.LBB47_53
.LBB47_54:                              # %if.end17.i
	incl	%ecx
	movl	%ecx, 36(%rax)
	callq	fork
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB47_55
# BB#56:                                # %if.end25.i
	testl	%r14d, %r14d
	je	.LBB47_57
# BB#140:                               # %if.end366.i
	movq	%r12, %rdi
	callq	closedir
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%ebx, %ebx
	movl	$6, %edi
	movl	$.L.str492, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	syslog
	movl	%r14d, %edx
	xorl	%edi, %edi
	movl	$cgi_kill, %esi
	movl	$30000, %ecx            # imm = 0x7530
	xorl	%r8d, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB47_141
# BB#142:                               # %if.end374.i
	movl	$200, 184(%rbp)
	movq	$25000, 200(%rbp)       # imm = 0x61A8
	movl	$0, 556(%rbp)
	jmp	.LBB47_454
.LBB47_31:                              # %got_one
	movq	really_start_request.indexname(%rip), %rdi
	movq	%rbp, %r15
	movq	8(%r15), %rax
	movl	96(%rax), %edx
	movl	532(%r15), %ecx
	leaq	104(%rsp), %rsi
	callq	expand_symlinks
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB47_5
# BB#32:                                # %lor.lhs.false258
	movq	104(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB47_33
.LBB47_5:                               # %if.then11
	movq	208(%r15), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
.LBB47_2:                               # %return
	movq	%r15, %rdi
.LBB47_3:                               # %return
	callq	httpd_send_err
	movl	$-1, %ebx
.LBB47_454:                             # %return
	movl	%ebx, %eax
	addq	$5608, %rsp             # imm = 0x15E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB47_16:                              # %if.then144
	movq	208(%r15), %rbx
	movq	264(%r15), %r14
	cmpb	$0, (%r14)
	je	.LBB47_20
# BB#17:                                # %if.then.i
	movl	$63, %esi
	movq	%rbx, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB47_19
# BB#18:                                # %if.then4.i
	movb	$0, (%rax)
	movq	208(%r15), %rbx
	movq	264(%r15), %r14
.LBB47_19:                              # %if.end.i
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	strlen
	leaq	2(%rbx,%rax), %rdx
	movl	$send_dirredirect.location, %edi
	movl	$send_dirredirect.maxlocation, %esi
	callq	httpd_realloc_str
	movq	send_dirredirect.location(%rip), %rdi
	movq	send_dirredirect.maxlocation(%rip), %rsi
	movq	208(%r15), %rcx
	movq	264(%r15), %r8
	movl	$.L.str505, %edx
	xorl	%eax, %eax
	callq	my_snprintf
	jmp	.LBB47_21
.LBB47_36:                              # %if.then238
	leaq	16(%rbp), %rdi
	callq	httpd_ntoa
	movq	208(%rbp), %rcx
	movl	$6, %edi
	movl	$.L.str76, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%rbp), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str77, %r8d
	movq	%rbp, %rdi
	jmp	.LBB47_3
.LBB47_20:                              # %if.else.i
	movq	%rbx, %rdi
	callq	strlen
	leaq	1(%rax), %rdx
	movl	$send_dirredirect.location, %edi
	movl	$send_dirredirect.maxlocation, %esi
	callq	httpd_realloc_str
	movq	send_dirredirect.location(%rip), %rdi
	movq	send_dirredirect.maxlocation(%rip), %rsi
	movq	208(%r15), %rcx
	movl	$.L.str506, %edx
	xorl	%eax, %eax
	callq	my_snprintf
.LBB47_21:                              # %send_dirredirect.exit
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
	movq	%r15, %rdi
	callq	send_response
	movl	$-1, %ebx
	jmp	.LBB47_454
.LBB47_33:                              # %if.end265
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r12
	leaq	392(%r15), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r12, %rdx
	callq	httpd_realloc_str
	movq	240(%r15), %rdi
	movq	%rbx, %rsi
	callq	strcpy
	testb	$5, 584(%r15)
	movq	80(%rsp), %rbp          # 8-byte Reload
	je	.LBB47_34
.LBB47_151:                             # %if.end280
	movl	$really_start_request.dirname, %edi
	movl	$really_start_request.maxdirname, %esi
	movq	%r12, %rdx
	callq	httpd_realloc_str
	movq	really_start_request.dirname(%rip), %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	callq	strcpy
	movq	really_start_request.dirname(%rip), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	je	.LBB47_152
# BB#153:                               # %if.else
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movb	$0, (%rax)
	jmp	.LBB47_154
.LBB47_152:                             # %if.then286
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movw	$46, (%rbx)
.LBB47_154:                             # %if.end288
	movq	really_start_request.dirname(%rip), %rbx
	movq	8(%r15), %rax
	cmpl	$0, 104(%rax)
	je	.LBB47_160
# BB#155:                               # %if.then.i746
	cmpl	$0, 100(%rax)
	je	.LBB47_157
# BB#156:                               # %land.lhs.true.i749
	movq	344(%r15), %rsi
	cmpb	$0, (%rsi)
	jne	.LBB47_158
.LBB47_157:                             # %if.else.i750
	movl	$.L.str3174, %esi
.LBB47_158:                             # %if.end.i753
	movq	%r15, %rdi
	callq	auth_check2
	cmpl	$-1, %eax
	je	.LBB47_161
# BB#159:                               # %if.end.i753
	cmpl	$1, %eax
	je	.LBB47_161
.LBB47_160:                             # %if.end7.i755
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	auth_check2
.LBB47_161:                             # %auth_check.exit757
	movl	$-1, %ebx
	cmpl	$-1, %eax
	je	.LBB47_454
# BB#162:                               # %if.end293
	cmpq	$9, %r12
	jne	.LBB47_165
# BB#163:                               # %cond.false349
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movl	$.L.str80, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB47_168
	jmp	.LBB47_164
.LBB47_165:                             # %if.else362
	cmpq	$10, %r12
	jb	.LBB47_168
# BB#166:                               # %cond.false421
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r14
	leaq	-9(%r12,%r14), %rdi
	movl	$.L.str80, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB47_168
# BB#167:                               # %land.lhs.true431
	movzbl	-10(%r12,%r14), %eax
	cmpl	$47, %eax
	jne	.LBB47_168
.LBB47_164:                             # %if.then356
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %rcx
	movl	$5, %edi
	movl	$.L.str81, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str82116, %r8d
	jmp	.LBB47_409
.LBB47_168:                             # %if.end444
	movq	%r15, %rdi
	callq	check_referer
	testl	%eax, %eax
	je	.LBB47_454
# BB#169:                               # %if.end448
	movq	8(%r15), %rax
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB47_410
# BB#170:                               # %land.lhs.true452
	testb	$1, 584(%r15)
	je	.LBB47_410
# BB#171:                               # %land.lhs.true457
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	callq	match
	testl	%eax, %eax
	je	.LBB47_410
# BB#172:                               # %if.then463
	movl	$.L.str2164, %r9d
	movl	180(%r15), %eax
	cmpl	$1, %eax
	je	.LBB47_175
# BB#173:                               # %if.then463
	cmpl	$2, %eax
	je	.LBB47_408
# BB#174:                               # %if.then463
	cmpl	$3, %eax
	jne	.LBB47_407
.LBB47_175:                             # %if.then.i763
	movq	8(%r15), %rax
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	testl	%edx, %edx
	je	.LBB47_178
# BB#176:                               # %if.then.i763
	cmpl	%edx, %ecx
	jge	.LBB47_177
.LBB47_178:                             # %if.end.i770
	incl	%ecx
	movl	%ecx, 36(%rax)
	movl	704(%r15), %r14d
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB47_181
# BB#179:                               # %if.then.i.i772
	movl	%eax, %edx
	andl	$-2049, %edx            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%eax, %edx
	je	.LBB47_181
# BB#180:                               # %if.then2.i.i
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%r14d, %edi
	callq	fcntl
.LBB47_181:                             # %httpd_clear_ndelay.exit.i
	callq	fork
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB47_182
# BB#183:                               # %if.end14.i
	testl	%r14d, %r14d
	je	.LBB47_184
# BB#404:                               # %if.end18.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	xorl	%ebx, %ebx
	movl	$6, %edi
	movl	$.L.str431, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	syslog
	movl	%r14d, %edx
	xorl	%edi, %edi
	movl	$cgi_kill, %esi
	movl	$30000, %ecx            # imm = 0x7530
	xorl	%r8d, %r8d
	callq	tmr_create
	testq	%rax, %rax
	je	.LBB47_405
# BB#406:                               # %if.end22.i
	movl	$200, 184(%r15)
	movq	$25000, 200(%r15)       # imm = 0x61A8
	movl	$0, 556(%r15)
	jmp	.LBB47_454
.LBB47_410:                             # %if.end465
	testb	$1, 584(%r15)
	je	.LBB47_412
# BB#411:                               # %if.then470
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %rcx
	movl	$5, %edi
	movl	$.L.str83, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str84, %r8d
	jmp	.LBB47_409
.LBB47_412:                             # %if.end475
	movq	256(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_414
# BB#413:                               # %if.then481
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %rcx
	movl	$6, %edi
	movl	$.L.str85, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str86, %r8d
	jmp	.LBB47_409
.LBB47_414:                             # %if.end486
	cmpl	$0, 528(%r15)
	je	.LBB47_418
# BB#415:                               # %land.lhs.true488
	movq	544(%r15), %rcx
	movq	608(%r15), %rax
	cmpq	$-1, %rcx
	je	.LBB47_417
# BB#416:                               # %land.lhs.true488
	cmpq	%rax, %rcx
	jl	.LBB47_418
.LBB47_417:                             # %if.then496
	decq	%rax
	movq	%rax, 544(%r15)
.LBB47_418:                             # %if.end501
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r14
	movq	%r14, %rdi
	callq	strlen
	addq	%r14, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$-1, %edx
	xorl	%eax, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB47_419
.LBB47_34:                              # %if.then274
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %rcx
	movl	$6, %edi
	movl	$.L.str78, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str79115, %r8d
	jmp	.LBB47_2
.LBB47_407:                             # %sw.default.i.i790
	movl	$.L.str2366, %r9d
.LBB47_408:                             # %httpd_method_str.exit.i792
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
	jmp	.LBB47_409
.LBB47_47:                              # %if.then.i733
	movq	240(%rbp), %rdx
	movl	$3, %edi
	movl	$.L.str480, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	208(%rbp), %r9
	movl	$404, %esi              # imm = 0x194
	movl	$.L.str510, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str509, %r8d
	jmp	.LBB47_150
.LBB47_49:                              # %if.end.i734
	movq	%r12, %rdi
	cmpl	$2, %eax
	jne	.LBB47_143
# BB#50:                                # %if.then3.i
	callq	closedir
	movq	648(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$200, %esi
	movl	$.L.str88, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str2669, %r8d
	movl	$.L.str183, %r9d
	movq	%rbp, %rdi
	jmp	.LBB47_453
.LBB47_182:                             # %if.then12.i
	movl	$3, %edi
	movl	$.L.str430, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r15), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB47_409
.LBB47_177:                             # %if.then8.i765
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%r15), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str2669, %ecx
.LBB47_409:                             # %return
	movq	%r15, %rdi
	callq	httpd_send_err
	jmp	.LBB47_454
.LBB47_184:                             # %if.then16.i
	movb	$1, sub_process(%rip)
	movq	8(%r15), %rbx
	movl	72(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB47_186
# BB#185:                               # %if.then.i49.i
	callq	close
	movl	$-1, 72(%rbx)
.LBB47_186:                             # %if.end.i.i777
	movl	76(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB47_188
# BB#187:                               # %if.then4.i.i779
	callq	close
	movl	$-1, 76(%rbx)
.LBB47_188:                             # %httpd_unlisten.exit.i780
	movl	704(%r15), %edi
	movl	$2, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fcntl
	callq	closelog
	movl	704(%r15), %edi
	cmpl	$2, %edi
	ja	.LBB47_191
# BB#189:                               # %if.then.i51.i
	movl	$3, %esi
	callq	dup2
	testl	%eax, %eax
	js	.LBB47_191
# BB#190:                               # %if.then10.i.i
	movl	%eax, 704(%r15)
.LBB47_191:                             # %if.end12.i.i
	movl	$.L.str448, %edi
	movl	$.L.str449, %esi
	callq	build_env
	movq	%rax, make_envp.envp(%rip)
	movl	$.L.str450, %edi
	movl	$.L.str840, %esi
	callq	build_env
	movq	%rax, make_envp.envp+8(%rip)
	movq	8(%r15), %rax
	movq	%r15, %rbp
	cmpl	$0, 100(%rax)
	je	.LBB47_193
# BB#192:                               # %land.lhs.true.i.i.i
	movq	512(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB47_194
.LBB47_193:                             # %if.end.i.i.i
	movq	8(%rax), %rsi
	testq	%rsi, %rsi
	movl	$2, %r15d
	je	.LBB47_195
.LBB47_194:                             # %if.then8.i.i.i
	movl	$.L.str451, %edi
	callq	build_env
	movq	%rax, make_envp.envp+16(%rip)
	movl	$3, %r15d
.LBB47_195:                             # %if.end13.i.i.i
	leal	1(%r15), %ebx
	movq	$.L.str452, make_envp.envp(,%r15,8)
	movq	224(%rbp), %rsi
	movl	$.L.str453, %edi
	callq	build_env
	leal	2(%r15), %r14d
	movq	%rax, make_envp.envp(,%rbx,8)
	movq	8(%rbp), %rax
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
	movq	%rax, make_envp.envp(,%r14,8)
	movl	$.L.str2063, %esi
	movl	180(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB47_201
# BB#196:                               # %if.end13.i.i.i
	cmpl	$3, %eax
	jne	.LBB47_197
# BB#199:                               # %sw.bb2.i.i.i.i
	movl	$.L.str2265, %esi
	jmp	.LBB47_201
.LBB47_143:                             # %if.else375.i
	callq	closedir
	movl	$.L.str2063, %r9d
	movl	180(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB47_149
# BB#144:                               # %if.else375.i
	cmpl	$3, %eax
	jne	.LBB47_145
# BB#147:                               # %sw.bb2.i.i
	movl	$.L.str2265, %r9d
	jmp	.LBB47_149
.LBB47_53:                              # %if.then14.i
	movq	%r12, %rdi
	callq	closedir
	movq	httpd_err503title(%rip), %rdx
	movq	httpd_err503form(%rip), %r8
	movq	208(%rbp), %r9
	movl	$503, %esi              # imm = 0x1F7
	movl	$.L.str2669, %ecx
	jmp	.LBB47_150
.LBB47_55:                              # %if.then22.i
	movl	$3, %edi
	movl	$.L.str430, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	%r12, %rdi
	callq	closedir
	movq	208(%rbp), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	jmp	.LBB47_150
.LBB47_57:                              # %if.then27.i
	movb	$1, sub_process(%rip)
	movq	8(%rbp), %rbx
	movl	72(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB47_59
# BB#58:                                # %if.then.i.i
	callq	close
	movl	$-1, 72(%rbx)
.LBB47_59:                              # %if.end.i.i
	movl	76(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB47_61
# BB#60:                                # %if.then4.i.i
	movl	%eax, %edi
	callq	close
	movl	$-1, 76(%rbx)
.LBB47_61:                              # %httpd_unlisten.exit.i
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
	je	.LBB47_455
# BB#62:                                # %if.end38.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	208(%rax), %rcx
	xorl	%ebp, %ebp
	movl	$.L.str483, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movq	%r12, %rdi
	callq	readdir
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB47_78
# BB#63:
	movabsq	$17596481011712, %r14   # imm = 0x100100000000
.LBB47_64:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_73 Depth 2
	movl	ls.maxnames(%rip), %eax
	cmpl	%eax, %ebp
	jl	.LBB47_77
# BB#65:                                # %if.then45.i
                                        #   in Loop: Header=BB47_64 Depth=1
	testl	%eax, %eax
	jne	.LBB47_67
# BB#66:                                # %if.then47.i
                                        #   in Loop: Header=BB47_64 Depth=1
	movl	$100, ls.maxnames(%rip)
	movl	$409700, %edi           # imm = 0x64064
	callq	malloc
	movq	%rax, %r15
	movq	%r15, ls.names(%rip)
	movl	$800, %edi              # imm = 0x320
	callq	malloc
	jmp	.LBB47_68
.LBB47_67:                              # %if.else53.i
                                        #   in Loop: Header=BB47_64 Depth=1
	leal	(%rax,%rax), %ecx
	movl	%ecx, ls.maxnames(%rip)
	movq	ls.names(%rip), %rcx
	imull	$8194, %eax, %eax       # imm = 0x2002
	cltq
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	realloc
	movq	%rax, ls.names(%rip)
	movq	ls.nameptrs(%rip), %rax
	movslq	ls.maxnames(%rip), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	realloc
	movq	ls.names(%rip), %r15
.LBB47_68:                              # %if.end62.i
                                        #   in Loop: Header=BB47_64 Depth=1
	movq	%rax, ls.nameptrs(%rip)
	testq	%r15, %r15
	je	.LBB47_75
# BB#69:                                # %if.end62.i
                                        #   in Loop: Header=BB47_64 Depth=1
	testq	%rax, %rax
	je	.LBB47_75
# BB#70:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB47_64 Depth=1
	movl	ls.maxnames(%rip), %ecx
	testl	%ecx, %ecx
	jle	.LBB47_77
# BB#71:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB47_64 Depth=1
	movq	%r15, (%rax)
	cmpl	$2, %ecx
	jl	.LBB47_77
# BB#72:                                # %for.body.for.body_crit_edge.i.preheader
                                        #   in Loop: Header=BB47_64 Depth=1
	addl	$-2, %ecx
	movabsq	$17596481011712, %rdx   # imm = 0x100100000000
	xorl	%esi, %esi
	jmp	.LBB47_73
.LBB47_74:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB47_73 Depth=2
	movq	ls.names(%rip), %r15
	movq	ls.nameptrs(%rip), %rax
	incq	%rsi
	addq	%r14, %rdx
.LBB47_73:                              # %for.body.for.body_crit_edge.i
                                        #   Parent Loop BB47_64 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rdi
	sarq	$32, %rdi
	addq	%r15, %rdi
	movq	%rdi, 8(%rax,%rsi,8)
	cmpl	%esi, %ecx
	jne	.LBB47_74
.LBB47_77:                              # %if.end75.i
                                        #   in Loop: Header=BB47_64 Depth=1
	addq	$19, %r13
	movq	%r13, %rdi
	callq	strlen
	movq	ls.nameptrs(%rip), %rcx
	movq	(%rcx,%rbp,8), %rcx
	movslq	%eax, %r15
	movq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	strncpy
	movq	ls.nameptrs(%rip), %rax
	movq	(%rax,%rbp,8), %rax
	movb	$0, (%rax,%r15)
	incq	%rbp
	movq	%r12, %rdi
	callq	readdir
	movq	%rax, %r13
	testq	%r13, %r13
	jne	.LBB47_64
.LBB47_78:                              # %while.end.i
	movq	%r12, %rdi
	callq	closedir
	movq	ls.nameptrs(%rip), %rax
	movslq	%ebp, %r14
	movl	$8, %edx
	movl	$name_compare, %ecx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	qsort
	testl	%r14d, %r14d
	jle	.LBB47_139
# BB#79:                                # %for.body94.lr.ph.i
	leaq	4344(%rsp), %r14
	leaq	4400(%rsp), %r12
	leaq	4256(%rsp), %r13
	xorl	%eax, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB47_80:                              # %for.body94.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_92 Depth 2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%r15,%rax), %rax
	movl	$ls.name, %edi
	movl	$ls.maxname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%r15,%rax), %rax
	movl	$ls.rname, %edi
	movl	$ls.maxrname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	240(%rax), %rcx
	movb	(%rcx), %al
	testb	%al, %al
	je	.LBB47_83
# BB#81:                                # %for.body94.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movzbl	%al, %eax
	cmpl	$46, %eax
	jne	.LBB47_84
# BB#82:                                # %cond.end.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpb	$0, 1(%rcx)
	jne	.LBB47_84
.LBB47_83:                              # %if.then160.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.name(%rip), %rax
	movq	ls.nameptrs(%rip), %rcx
	movq	88(%rsp), %r15          # 8-byte Reload
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	movq	ls.rname(%rip), %rax
	movq	ls.nameptrs(%rip), %rcx
	movq	(%rcx,%r15,8), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	strcpy
	jmp	.LBB47_89
.LBB47_84:                              # %if.else167.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.name(%rip), %rsi
	movq	ls.maxname(%rip), %r8
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %r9
	movl	$.L.str485, %edx
	xorl	%eax, %eax
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%r9, %r8
	callq	my_snprintf
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %r8
	movzbl	(%r8), %eax
	cmpl	$46, %eax
	jne	.LBB47_85
# BB#87:                                # %cond.end227.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpb	$0, 1(%r8)
	movq	ls.rname(%rip), %rcx
	movq	ls.maxrname(%rip), %rsi
	jne	.LBB47_86
# BB#88:                                # %if.then231.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %r8
	movl	$.L.str486, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r8, %rcx
	callq	my_snprintf
	jmp	.LBB47_89
.LBB47_85:                              # %cond.end227.thread.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.rname(%rip), %rcx
	movq	ls.maxrname(%rip), %rsi
.LBB47_86:                              # %if.else235.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.nameptrs(%rip), %rax
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	(%rax,%rdx,8), %r9
	movl	$.L.str458, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	movq	%r8, %rcx
	movq	%r9, %r8
	callq	my_snprintf
.LBB47_89:                              # %if.end241.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.rname(%rip), %rax
	movq	%rax, %rdi
	callq	strlen
	leaq	1(%rax,%rax,2), %rax
	movl	$ls.encrname, %edi
	movl	$ls.maxencrname, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	ls.encrname(%rip), %r15
	movq	ls.rname(%rip), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movb	(%rax), %al
	movb	%al, 55(%rsp)           # 1-byte Spill
	testb	%al, %al
	je	.LBB47_98
# BB#90:                                # %if.end241.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movl	ls.maxencrname(%rip), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$5, %eax
	jl	.LBB47_98
# BB#91:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB47_80 Depth=1
	callq	__ctype_b_loc
	movq	%rax, 64(%rsp)          # 8-byte Spill
	incq	80(%rsp)                # 8-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB47_92:                              # %for.body.i.i
                                        #   Parent Loop BB47_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbq	55(%rsp), %rax          # 1-byte Folded Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	testb	$8, (%rcx,%rax,2)
	jne	.LBB47_94
# BB#93:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB47_92 Depth=2
	movsbl	55(%rsp), %eax          # 1-byte Folded Reload
	movl	$.L.str494, %edi
	movl	$6, %edx
	movl	%eax, %esi
	callq	memchr
	testq	%rax, %rax
	jne	.LBB47_94
# BB#95:                                # %if.else.i.i
                                        #   in Loop: Header=BB47_92 Depth=2
	movzbl	55(%rsp), %ecx          # 1-byte Folded Reload
	movl	$.L.str495, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%ecx, %edx
	callq	sprintf
	addq	$3, %r15
	movq	56(%rsp), %rax          # 8-byte Reload
	addl	$3, %eax
	jmp	.LBB47_96
.LBB47_94:                              # %if.then.i514.i
                                        #   in Loop: Header=BB47_92 Depth=2
	movb	55(%rsp), %al           # 1-byte Reload
	movb	%al, (%r15)
	incq	%r15
	movq	56(%rsp), %rax          # 8-byte Reload
	incl	%eax
.LBB47_96:                              # %for.inc.i.i
                                        #   in Loop: Header=BB47_92 Depth=2
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movb	(%rax), %al
	movb	%al, 55(%rsp)           # 1-byte Spill
	testb	%al, %al
	je	.LBB47_98
# BB#97:                                # %for.inc.i.i
                                        #   in Loop: Header=BB47_92 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	leal	4(%rax), %eax
	incq	80(%rsp)                # 8-byte Folded Spill
	cmpl	72(%rsp), %eax          # 4-byte Folded Reload
	jl	.LBB47_92
.LBB47_98:                              # %strencode.exit.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$0, (%r15)
	movq	ls.name(%rip), %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	__xstat
	testl	%eax, %eax
	js	.LBB47_138
# BB#99:                                # %lor.lhs.false249.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	ls.name(%rip), %rax
	movl	$1, %edi
	movq	%rax, %rsi
	movq	%r13, %rdx
	callq	__lxstat
	testl	%eax, %eax
	js	.LBB47_138
# BB#100:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$0, 112(%rsp)
	movl	4280(%rsp), %eax
	movl	$61440, %ecx            # imm = 0xF000
	andl	%ecx, %eax
	cmpl	$49151, %eax            # imm = 0xBFFF
	jg	.LBB47_114
# BB#101:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$40959, %eax            # imm = 0x9FFF
	jg	.LBB47_116
# BB#102:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$32767, %eax            # imm = 0x7FFF
	jg	.LBB47_112
# BB#103:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$24575, %eax            # imm = 0x5FFF
	jg	.LBB47_110
# BB#104:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$4096, %eax             # imm = 0x1000
	je	.LBB47_108
# BB#105:                               # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$8192, %eax             # imm = 0x2000
	jne	.LBB47_106
# BB#109:                               # %sw.bb257.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$99, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_114:                             # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$49152, %eax            # imm = 0xC000
	jne	.LBB47_119
# BB#115:                               # %sw.bb265.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$115, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_116:                             # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB47_119
# BB#117:                               # %sw.bb267.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$108, 4224(%rsp)
	movq	ls.name(%rip), %rax
	movl	$4096, %edx             # imm = 0x1000
	movq	%rax, %rdi
	leaq	112(%rsp), %rax
	movq	%rax, %rsi
	callq	readlink
	cmpl	$-1, %eax
	movl	$.L.str2669, %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	je	.LBB47_122
# BB#118:                               # %if.then274.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cltq
	movb	$0, 112(%rsp,%rax)
	movl	$.L.str487, %eax
	jmp	.LBB47_121
.LBB47_112:                             # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB47_119
# BB#113:                               # %sw.bb263.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$45, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_110:                             # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$24576, %eax            # imm = 0x6000
	jne	.LBB47_119
# BB#111:                               # %sw.bb261.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$98, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_108:                             # %sw.bb.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$112, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_106:                             # %if.end254.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB47_119
# BB#107:                               # %sw.bb259.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$100, 4224(%rsp)
	jmp	.LBB47_120
.LBB47_119:                             # %sw.default.i738
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$63, 4224(%rsp)
.LBB47_120:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movl	$.L.str2669, %eax
.LBB47_121:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB47_122:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movl	4280(%rsp), %eax
	movl	%eax, %ecx
	andl	$4, %ecx
	shrl	$2, %ecx
	movb	$114, %cl
	jne	.LBB47_124
# BB#123:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$45, %cl
.LBB47_124:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	%cl, 4225(%rsp)
	movl	%eax, %ecx
	andl	$2, %ecx
	shrl	%ecx
	movb	$119, %cl
	jne	.LBB47_126
# BB#125:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$45, %cl
.LBB47_126:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	%cl, 4226(%rsp)
	testb	$1, %al
	movb	$120, %al
	jne	.LBB47_128
# BB#127:                               # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$45, %al
.LBB47_128:                             # %sw.epilog.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	%al, 4227(%rsp)
	movb	$0, 4228(%rsp)
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	ctime
	movq	%rax, %r9
	movb	4(%r9), %al
	movb	%al, (%r9)
	movb	5(%r9), %al
	movb	%al, 1(%r9)
	movb	6(%r9), %al
	movb	%al, 2(%r9)
	movb	$32, 3(%r9)
	movb	8(%r9), %al
	movb	%al, 4(%r9)
	movb	9(%r9), %al
	movb	%al, 5(%r9)
	movb	$32, 6(%r9)
	subq	4344(%rsp), %r15
	cmpq	$15724801, %r15         # imm = 0xEFF101
	jl	.LBB47_130
# BB#129:                               # %if.then318.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$32, 7(%r9)
	movb	20(%r9), %al
	movb	%al, 8(%r9)
	movb	21(%r9), %al
	movb	%al, 9(%r9)
	movb	22(%r9), %al
	movb	%al, 10(%r9)
	movb	23(%r9), %al
	movb	%al, 11(%r9)
	leaq	12(%r9), %rax
	jmp	.LBB47_131
.LBB47_130:                             # %if.else328.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	11(%r9), %al
	movb	%al, 7(%r9)
	leaq	12(%r9), %rax
	movb	12(%r9), %cl
	movb	%cl, 8(%r9)
	movb	$58, 9(%r9)
	movb	14(%r9), %cl
	movb	%cl, 10(%r9)
	movb	15(%r9), %cl
	movb	%cl, 11(%r9)
.LBB47_131:                             # %if.end338.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movb	$0, (%rax)
	movl	4424(%rsp), %edx
	movl	%edx, %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	movl	$.L.str74114, %ecx
	je	.LBB47_137
# BB#132:                               # %if.end338.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$40960, %eax            # imm = 0xA000
	jne	.LBB47_133
# BB#135:                               # %sw.bb344.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movl	$.L.str488, %ecx
	jmp	.LBB47_137
.LBB47_133:                             # %if.end338.i
                                        #   in Loop: Header=BB47_80 Depth=1
	cmpl	$49152, %eax            # imm = 0xC000
	jne	.LBB47_136
# BB#134:                               # %sw.bb343.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movl	$.L.str4688, %ecx
	jmp	.LBB47_137
.LBB47_136:                             # %sw.default345.i
                                        #   in Loop: Header=BB47_80 Depth=1
	testb	$1, %dl
	movl	$.L.str2669, %ecx
	movl	$.L.str489, %edx
	cmovneq	%rdx, %rcx
.LBB47_137:                             # %sw.epilog350.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	4272(%rsp), %rdi
	movq	4304(%rsp), %r8
	movq	ls.encrname(%rip), %rdx
	cmpl	$16384, %eax            # imm = 0x4000
	movl	$.L.str2669, %r10d
	movl	$.L.str74114, %esi
	cmoveq	%rsi, %r10
	movq	ls.nameptrs(%rip), %rsi
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rsi,%rax,8), %rsi
	movq	%rcx, 40(%rsp)
	leaq	112(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$.L.str490, %esi
	xorl	%eax, %eax
	leaq	4224(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdi, %rcx
	movq	%rbx, %rdi
	callq	fprintf
.LBB47_138:                             # %for.inc361.i
                                        #   in Loop: Header=BB47_80 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	incq	%rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpl	%ebp, %eax
	jne	.LBB47_80
.LBB47_139:                             # %for.end363.i
	movl	$.L.str491, %edi
	movl	$22, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movq	%rbx, %rdi
	callq	fclose
	xorl	%edi, %edi
	callq	exit
.LBB47_145:                             # %if.else375.i
	cmpl	$2, %eax
	jne	.LBB47_148
# BB#146:                               # %sw.bb1.i.i
	movl	$.L.str2164, %r9d
	jmp	.LBB47_149
.LBB47_197:                             # %if.end13.i.i.i
	cmpl	$2, %eax
	jne	.LBB47_200
# BB#198:                               # %sw.bb1.i.i.i.i
	movl	$.L.str2164, %esi
	jmp	.LBB47_201
.LBB47_148:                             # %sw.default.i.i
	movl	$.L.str2366, %r9d
.LBB47_149:                             # %httpd_method_str.exit.i
	movl	$501, %esi              # imm = 0x1F5
	movl	$.L.str523, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str522, %r8d
.LBB47_150:                             # %return
	movq	%rbp, %rdi
	callq	httpd_send_err
	jmp	.LBB47_454
.LBB47_141:                             # %if.then373.i
	movl	$2, %edi
	movl	$.L.str493, %esi
	jmp	.LBB47_76
.LBB47_405:                             # %if.then21.i
	movl	$2, %edi
	movl	$.L.str432, %esi
	jmp	.LBB47_76
.LBB47_427:                             # %if.then28.i
                                        #   in Loop: Header=BB47_419 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%r12d, 4560(%rsp,%rax,4)
	incq	%rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	incl	%edx
	incq	%rbx
	movq	%rbx, 64(%rsp)          # 8-byte Spill
.LBB47_419:                             # %for.cond.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_420 Depth 2
                                        #       Child Loop BB47_421 Depth 3
                                        #       Child Loop BB47_424 Depth 3
	movl	%edx, 56(%rsp)          # 4-byte Spill
.LBB47_420:                             # %for.cond.i
                                        #   Parent Loop BB47_419 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_421 Depth 3
                                        #       Child Loop BB47_424 Depth 3
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	-1(%rax), %rbx
	movq	96(%rsp), %rcx          # 8-byte Reload
.LBB47_421:                             # %for.cond2.i
                                        #   Parent Loop BB47_419 Depth=1
                                        #     Parent Loop BB47_420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r14, %rbx
	jb	.LBB47_456
# BB#422:                               # %land.rhs.i
                                        #   in Loop: Header=BB47_421 Depth=3
	movzbl	(%rbx), %eax
	decq	%rbx
	cmpl	$46, %eax
	jne	.LBB47_421
# BB#423:                               # %if.end.i800
                                        #   in Loop: Header=BB47_420 Depth=2
	leaq	2(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	64(%rsp), %r15          # 8-byte Reload
	subq	%rax, %r15
	leaq	1(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$enc_tab+8, %ebp
.LBB47_424:                             # %for.body13.i
                                        #   Parent Loop BB47_419 Depth=1
                                        #     Parent Loop BB47_420 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	(%rbp), %r15
	jne	.LBB47_428
# BB#425:                               # %land.lhs.true.i801
                                        #   in Loop: Header=BB47_424 Depth=3
	movq	-8(%rbp), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rdx
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB47_426
.LBB47_428:                             # %for.inc33.i
                                        #   in Loop: Header=BB47_424 Depth=3
	incl	%r12d
	addq	$32, %rbp
	cmpl	$3, %r12d
	jl	.LBB47_424
	jmp	.LBB47_429
.LBB47_426:                             # %if.then24.i
                                        #   in Loop: Header=BB47_420 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	$99, %eax
	movl	56(%rsp), %edx          # 4-byte Reload
	ja	.LBB47_420
	jmp	.LBB47_427
.LBB47_456:                             # %if.then.i799
	movq	$.L.str99120, 504(%rcx)
	jmp	.LBB47_439
.LBB47_429:                             # %while.body.lr.ph.i.preheader
	movl	$189, %r12d
	xorl	%r14d, %r14d
.LBB47_430:                             # %while.body.i806
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r14,%r12), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rbp
	shlq	$5, %rbp
	movq	typ_tab(%rbp), %rsi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r15, %rdx
	callq	strncasecmp
	testl	%eax, %eax
	js	.LBB47_431
# BB#432:                               # %if.else.i807
                                        #   in Loop: Header=BB47_430 Depth=1
	testl	%eax, %eax
	jg	.LBB47_433
# BB#435:                               # %if.else51.i
                                        #   in Loop: Header=BB47_430 Depth=1
	cmpq	typ_tab+8(%rbp), %r15
	jb	.LBB47_431
# BB#436:                               # %if.else59.i
                                        #   in Loop: Header=BB47_430 Depth=1
	jbe	.LBB47_437
.LBB47_433:                             # %while.cond.backedge.i
                                        #   in Loop: Header=BB47_430 Depth=1
	incl	%ebx
	cmpl	%ebx, %r12d
	movl	%ebx, %r14d
	jge	.LBB47_430
	jmp	.LBB47_434
.LBB47_431:                             # %while.cond.outer.backedge.i
                                        #   in Loop: Header=BB47_430 Depth=1
	leal	-1(%rbx), %r12d
	cmpl	%r14d, %ebx
	jg	.LBB47_430
.LBB47_434:                             # %while.end.i809
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	$.L.str99120, 504(%rcx)
	jmp	.LBB47_438
.LBB47_437:                             # %if.else67.i
	movq	typ_tab+16(%rbp), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 504(%rcx)
.LBB47_438:                             # %done.i
	movl	56(%rsp), %edx          # 4-byte Reload
.LBB47_439:                             # %done.i
	movq	248(%rcx), %rax
	movb	$0, (%rax)
	movq	72(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB47_445
# BB#440:                               # %for.body81.lr.ph.i
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	248(%rax), %r15
	leaq	400(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movslq	%edx, %rax
	leaq	4560(%rsp,%rax,4), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB47_441:                             # %for.body81.i
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movslq	(%rax,%rbp,4), %r12
	shlq	$5, %r12
	leaq	enc_tab+24(%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1(%rbx), %r14
	movq	enc_tab+24(%r12), %rdx
	addq	%r14, %rdx
	movq	%r15, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	httpd_realloc_str
	movq	(%r15), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB47_443
# BB#442:                               #   in Loop: Header=BB47_441 Depth=1
	movq	%rbx, %r14
	jmp	.LBB47_444
.LBB47_443:                             # %if.then94.i
                                        #   in Loop: Header=BB47_441 Depth=1
	movw	$44, (%rdi,%rbx)
	movq	(%r15), %rdi
.LBB47_444:                             # %if.end99.i
                                        #   in Loop: Header=BB47_441 Depth=1
	addq	%r14, %rdi
	movq	enc_tab+16(%r12), %rsi
	callq	strcpy
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	(%rax), %r14
	decq	%rbp
	movl	%ebp, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	addl	%ecx, %eax
	testl	%eax, %eax
	movq	%r14, %rbx
	jg	.LBB47_441
.LBB47_445:                             # %figure_mime.exit
	movq	96(%rsp), %rbx          # 8-byte Reload
	cmpl	$2, 180(%rbx)
	je	.LBB47_451
# BB#446:                               # %if.else509
	movq	480(%rbx), %rcx
	cmpq	$-1, %rcx
	je	.LBB47_449
# BB#447:                               # %land.lhs.true512
	movq	648(%rbx), %rax
	cmpq	%rax, %rcx
	jge	.LBB47_448
.LBB47_449:                             # %if.else525
	movq	240(%rbx), %rdi
	movq	%r13, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	mmc_map
	testq	%rax, %rax
	movq	%rax, 712(%rbx)
	je	.LBB47_450
.LBB47_451:                             # %if.end534
	movq	248(%rbx), %rcx
	movq	504(%rbx), %r9
	movq	608(%rbx), %rax
	movq	648(%rbx), %rdx
	movq	%rdx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$200, %esi
	movl	$.L.str88, %edx
	jmp	.LBB47_452
.LBB47_448:                             # %if.then519
	movq	248(%rbx), %rcx
	movq	504(%rbx), %r9
	movq	%rax, 8(%rsp)
	movq	$-1, (%rsp)
	movl	$304, %esi              # imm = 0x130
	movl	$.L.str87, %edx
.LBB47_452:                             # %return
	movl	$.L.str2669, %r8d
	movq	%rbx, %rdi
.LBB47_453:                             # %return
	callq	send_mime
	xorl	%ebx, %ebx
	jmp	.LBB47_454
.LBB47_450:                             # %if.then532
	movq	208(%rbx), %r9
	movl	$500, %esi              # imm = 0x1F4
	movl	$.L.str520, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str519, %r8d
	movq	%rbx, %rdi
	jmp	.LBB47_3
.LBB47_455:                             # %if.then35.i
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
	movq	%r12, %rdi
	callq	closedir
	movl	$1, %edi
	callq	exit
.LBB47_75:                              # %if.then67.i
	movl	$3, %edi
	movl	$.L.str484, %esi
.LBB47_76:                              # %if.then67.i
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.LBB47_200:                             # %sw.default.i.i.i.i
	movl	$.L.str2366, %esi
.LBB47_201:                             # %httpd_method_str.exit.i.i.i
	leal	3(%r15), %ebx
	movl	$.L.str456, %edi
	callq	build_env
	orl	$4, %r15d
	movq	%rax, make_envp.envp(,%rbx,8)
	movq	256(%rbp), %rsi
	cmpb	$0, (%rsi)
	je	.LBB47_202
# BB#203:                               # %if.then37.i.i.i
	movl	$.L.str457, %edi
	callq	build_env
	leal	1(%r15), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, make_envp.envp(,%r15,8)
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
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_204
# BB#205:                               # %if.then51.i.i.i
	movq	64(%r13), %rcx
	movl	$.L.str458, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r14, %r8
	callq	my_snprintf
	movl	$.L.str459, %edi
	movq	%r12, %rsi
	callq	build_env
	addl	$2, %r15d
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rax, make_envp.envp(,%rcx,8)
	jmp	.LBB47_206
.LBB47_202:
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	jmp	.LBB47_206
.LBB47_204:
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r15d
.LBB47_206:                             # %cond.true.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	232(%rax), %rax
	movzbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB47_208
# BB#207:                               # %cond.end.i.i.i
	cmpb	$0, 1(%rax)
	movl	$.L.str2669, %ecx
	je	.LBB47_209
.LBB47_208:                             # %cond.false109.i.i.i
	movq	%rax, %rcx
.LBB47_209:                             # %cond.end111.i.i.i
	movl	$.L.str460, %edi
	movq	%rcx, %rsi
	callq	build_env
	leal	1(%r15), %r14d
	movslq	%r15d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	264(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB47_211
# BB#210:                               # %if.then121.i.i.i
	movl	$.L.str461, %edi
	movq	%rax, %rsi
	callq	build_env
	addl	$2, %r15d
	movslq	%r14d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movl	%r15d, %r14d
.LBB47_211:                             # %if.end127.i.i.i
	movq	96(%rsp), %rbp          # 8-byte Reload
	leaq	16(%rbp), %rax
	movq	%rax, %rdi
	callq	httpd_ntoa
	movl	$.L.str462, %edi
	movl	$httpd_ntoa.str, %esi
	callq	build_env
	leal	1(%r14), %ebx
	movslq	%r14d, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movq	272(%rbp), %rax
	movq	%rbp, %r15
	cmpb	$0, (%rax)
	je	.LBB47_213
# BB#212:                               # %if.then137.i.i.i
	movl	$.L.str463, %edi
	movq	%rax, %rsi
	callq	build_env
	addl	$2, %r14d
	movslq	%ebx, %rcx
	movq	%rax, make_envp.envp(,%rcx,8)
	movl	%r14d, %ebx
.LBB47_213:                             # %if.end143.i.i.i
	movq	280(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_215
# BB#214:                               # %if.then148.i.i.i
	movl	$.L.str464, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_215:                             # %if.end154.i.i.i
	movq	288(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_217
# BB#216:                               # %if.then159.i.i.i
	movl	$.L.str465, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_217:                             # %if.end165.i.i.i
	movq	296(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_219
# BB#218:                               # %if.then170.i.i.i
	movl	$.L.str466, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_219:                             # %if.end176.i.i.i
	movq	304(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_221
# BB#220:                               # %if.then181.i.i.i
	movl	$.L.str467, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_221:                             # %if.end187.i.i.i
	movq	312(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_223
# BB#222:                               # %if.then192.i.i.i
	movl	$.L.str468, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_223:                             # %if.end198.i.i.i
	movq	320(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_225
# BB#224:                               # %if.then203.i.i.i
	movl	$.L.str469, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_225:                             # %if.end209.i.i.i
	movq	336(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_227
# BB#226:                               # %if.then214.i.i.i
	movl	$.L.str470, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_227:                             # %if.end220.i.i.i
	movq	496(%r15), %rcx
	cmpq	$-1, %rcx
	je	.LBB47_229
# BB#228:                               # %if.then223.i.i.i
	leaq	4560(%rsp), %rbp
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str471, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	my_snprintf
	movl	$.L.str472, %edi
	movq	%rbp, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_229:                             # %if.end232.i.i.i
	movq	360(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_231
# BB#230:                               # %if.then237.i.i.i
	movl	$.L.str473, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_231:                             # %if.end243.i.i.i
	movq	352(%r15), %rax
	cmpb	$0, (%rax)
	je	.LBB47_233
# BB#232:                               # %if.then248.i.i.i
	movl	$.L.str474, %edi
	movl	$.L.str475, %esi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_233:                             # %if.end253.i.i.i
	movl	$.L.str476, %edi
	callq	getenv
	testq	%rax, %rax
	je	.LBB47_235
# BB#234:                               # %if.then257.i.i.i
	movl	$.L.str477, %edi
	movq	%rax, %rsi
	callq	build_env
	movslq	%ebx, %rcx
	incl	%ebx
	movq	%rax, make_envp.envp(,%rcx,8)
.LBB47_235:                             # %make_envp.exit.i.i
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
	movq	264(%rbp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	16(,%rax,8), %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB47_246
# BB#236:                               # %if.end.i180.i.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	strrchr
	testq	%rax, %rax
	leaq	1(%rax), %rax
	cmoveq	%rbx, %rax
	movq	%rax, (%r14)
	movl	$61, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	movl	$1, %eax
	movl	$1, %ebx
	jne	.LBB47_245
	jmp	.LBB47_237
.LBB47_241:                             # %if.then20.i.i.i
                                        #   in Loop: Header=BB47_237 Depth=1
	movb	$0, (%rbp,%r15)
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	strdecode
	movq	%rbp, (%r14,%rbx,8)
	incq	%rbx
	leaq	1(%rbp,%r15), %rbp
.LBB47_237:                             # %for.cond.i.outer.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_238 Depth 2
	xorl	%r15d, %r15d
	jmp	.LBB47_238
.LBB47_240:                             # %for.cond.for.inc_crit_edge.i.i.i
                                        #   in Loop: Header=BB47_238 Depth=2
	incq	%r15
.LBB47_238:                             # %for.cond.i.i.i
                                        #   Parent Loop BB47_237 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rbp,%r15), %al
	testb	%al, %al
	je	.LBB47_242
# BB#239:                               # %for.cond.i.i.i
                                        #   in Loop: Header=BB47_238 Depth=2
	movzbl	%al, %eax
	cmpl	$43, %eax
	jne	.LBB47_240
	jmp	.LBB47_241
.LBB47_242:                             # %for.end.i.i.i
	testq	%r15, %r15
	je	.LBB47_243
# BB#244:                               # %if.then26.i.i.i
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	strdecode
	movslq	%ebx, %rcx
	leal	1(%rbx), %eax
	movq	%rbp, (%r14,%rcx,8)
	jmp	.LBB47_245
.LBB47_243:
	movl	%ebx, %eax
.LBB47_245:                             # %if.end31.i.i.i
	cltq
	movq	$0, (%r14,%rax,8)
	movq	%r14, %rbx
.LBB47_246:                             # %make_argp.exit.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$3, 180(%rax)
	jne	.LBB47_292
# BB#247:                               # %land.lhs.true.i.i
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	160(%rcx), %rax
	cmpq	168(%rcx), %rax
	jbe	.LBB47_292
# BB#248:                               # %if.then17.i.i
	leaq	4552(%rsp), %rax
	movq	%rax, %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB47_249
# BB#252:                               # %if.end21.i.i
	callq	fork
	testl	%eax, %eax
	js	.LBB47_253
# BB#254:                               # %if.end26.i.i
	testl	%eax, %eax
	je	.LBB47_255
# BB#290:                               # %if.end31.i.i
	movl	4556(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4552(%rsp), %eax
	testl	%eax, %eax
	je	.LBB47_294
# BB#291:                               # %if.then36.i.i
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	dup2
	movl	4552(%rsp), %eax
	movl	%eax, %edi
	callq	close
	jmp	.LBB47_294
.LBB47_292:                             # %if.else.i.i781
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	testl	%eax, %eax
	je	.LBB47_294
# BB#293:                               # %if.then44.i.i
	xorl	%esi, %esi
	movl	%eax, %edi
	callq	dup2
.LBB47_294:                             # %if.end48.i.i
	movq	(%rbx), %rax
	movl	$.L.str437, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB47_396
# BB#295:                               # %land.lhs.true52.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 520(%rax)
	je	.LBB47_396
# BB#296:                               # %if.then53.i.i
	leaq	4544(%rsp), %rax
	movq	%rax, %rdi
	callq	pipe
	testl	%eax, %eax
	js	.LBB47_249
# BB#297:                               # %if.end60.i.i
	callq	fork
	testl	%eax, %eax
	js	.LBB47_253
# BB#298:                               # %if.end65.i.i
	testl	%eax, %eax
	jne	.LBB47_392
# BB#299:                               # %if.then67.i.i
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
	cmpl	$-1, %eax
	je	.LBB47_302
# BB#300:                               # %if.then.i.i194.i.i
	movl	%eax, %ecx
	andl	$-2049, %ecx            # imm = 0xFFFFFFFFFFFFF7FF
	cmpl	%eax, %ecx
	je	.LBB47_302
# BB#301:                               # %if.then2.i.i.i.i
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebp, %edi
	movl	%ecx, %edx
	callq	fcntl
.LBB47_302:                             # %httpd_clear_ndelay.exit.i.i.i
	movq	$0, 5600(%rsp)
	leaq	5592(%rsp), %r13
	leaq	5600(%rsp), %rax
	movl	$500, %edx              # imm = 0x1F4
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	httpd_realloc_str
	xorl	%r15d, %r15d
.LBB47_303:                             # %for.cond.outer.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_305 Depth 2
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	leaq	4560(%rsp), %rax
	movq	%rax, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	jns	.LBB47_308
# BB#304:                               # %land.lhs.true.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_303 Depth=1
	callq	__errno_location
	movq	%rax, %r14
.LBB47_305:                             # %land.lhs.true.i196.i.i
                                        #   Parent Loop BB47_303 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %eax
	cmpl	$4, %eax
	je	.LBB47_307
# BB#306:                               # %land.lhs.true.i196.i.i
                                        #   in Loop: Header=BB47_305 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_308
.LBB47_307:                             # %if.then.i.i.i
                                        #   in Loop: Header=BB47_305 Depth=2
	movl	$1, %edi
	callq	sleep
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	leaq	4560(%rsp), %rax
	movq	%rax, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	js	.LBB47_305
.LBB47_308:                             # %if.end.i200.i.i
                                        #   in Loop: Header=BB47_303 Depth=1
	testl	%ebp, %ebp
	jle	.LBB47_309
# BB#310:                               # %if.end12.i.i.i
                                        #   in Loop: Header=BB47_303 Depth=1
	movslq	%ebp, %r12
	leaq	(%r12,%r15), %rbp
	movq	%r13, %rdi
	leaq	5600(%rsp), %rax
	movq	%rax, %rsi
	movq	%rbp, %rdx
	callq	httpd_realloc_str
	movq	5592(%rsp), %r14
	addq	%r14, %r15
	movq	%r15, %rdi
	leaq	4560(%rsp), %rax
	movq	%rax, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movb	$0, (%r14,%rbp)
	movl	$.L.str439, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB47_312
# BB#311:                               # %lor.lhs.false22.i.i.i
                                        #   in Loop: Header=BB47_303 Depth=1
	movl	$.L.str440, %esi
	movq	%r14, %rdi
	callq	strstr
	movq	%rax, %r12
	testq	%r12, %r12
	movq	%rbp, %r15
	je	.LBB47_303
	jmp	.LBB47_312
.LBB47_255:                             # %if.then28.i.i
	movb	$1, sub_process(%rip)
	movl	4552(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4556(%rsp), %ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	160(%rax), %rbp
	movq	168(%rax), %r14
	subq	%r14, %rbp
	je	.LBB47_266
# BB#256:                               # %while.body.lr.ph.i.preheader.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	144(%rax), %r15
	xorl	%eax, %eax
	xorl	%r12d, %r12d
.LBB47_258:                             # %while.body.lr.ph.i.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_260 Depth 2
	leaq	(%rax,%r14), %r13
	addq	%r15, %r13
	movq	%rbp, %rcx
	subq	%rax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	movq	%r13, %rsi
	movq	%rcx, %rdx
	callq	write
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB47_263
# BB#259:                               # %land.lhs.true.i.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_258 Depth=1
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_260:                             # %land.lhs.true.i.i.i.i
                                        #   Parent Loop BB47_258 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_262
# BB#261:                               # %land.lhs.true.i.i.i.i
                                        #   in Loop: Header=BB47_260 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_265
.LBB47_262:                             # %if.then.i.i.i.i
                                        #   in Loop: Header=BB47_260 Depth=2
	movl	$1, %edi
	callq	sleep
	movl	%ebx, %edi
	movq	%r13, %rsi
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB47_260
.LBB47_263:                             # %if.end16.i.i.i.i
                                        #   in Loop: Header=BB47_258 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB47_264
# BB#257:                               # %while.cond.outer.i.i.i.i
                                        #   in Loop: Header=BB47_258 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	addl	%r12d, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	cmpq	%rbp, %rax
	movl	%ecx, %r12d
	jb	.LBB47_258
	jmp	.LBB47_265
.LBB47_396:                             # %if.else95.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ecx
	cmpl	$1, %ecx
	movl	$1, %eax
	je	.LBB47_398
# BB#397:                               # %if.end101.i.i
	movl	$1, %esi
	movl	%ecx, %edi
	callq	dup2
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	cmpl	$2, %eax
	je	.LBB47_399
.LBB47_398:                             # %if.then104.i.i
	movl	$2, %esi
	movl	%eax, %edi
	callq	dup2
	jmp	.LBB47_399
.LBB47_249:                             # %if.then20.i.i
	movl	$3, %edi
	movl	$.L.str436156, %esi
	jmp	.LBB47_250
.LBB47_253:                             # %if.then24.i.i
	movl	$3, %edi
	movl	$.L.str430, %esi
.LBB47_250:                             # %if.then20.i.i
	xorl	%eax, %eax
	callq	syslog
	movq	96(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB47_251
.LBB47_392:                             # %if.end71.i.i
	movl	4544(%rsp), %eax
	movl	%eax, %edi
	callq	close
	movl	4548(%rsp), %ecx
	cmpl	$1, %ecx
	movl	$1, %eax
	je	.LBB47_394
# BB#393:                               # %if.end79.i.i
	movl	$1, %esi
	movl	%ecx, %edi
	callq	dup2
	movl	4548(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB47_399
.LBB47_394:                             # %if.end85.i.i
	movl	$2, %esi
	movl	%eax, %edi
	callq	dup2
	movl	4548(%rsp), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB47_399
# BB#395:                               # %if.then91.i.i
	movl	%eax, %edi
	callq	close
.LBB47_399:                             # %if.end108.i.i
	movl	$10, %edi
	callq	nice
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	__strdup
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB47_400
# BB#401:                               # %if.else114.i.i
	movl	$47, %esi
	movq	%r14, %rdi
	callq	strrchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.LBB47_402
.LBB47_400:                             # %if.then112.i.i
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbp
	jmp	.LBB47_403
.LBB47_309:                             # %if.then11.i.i.i
	movq	5592(%rsp), %r14
	leaq	(%r14,%r15), %r12
	movq	%r15, %rbp
.LBB47_312:                             # %for.end.i203.i.i
	movb	(%r14), %r15b
	testb	%r15b, %r15b
	je	.LBB47_391
# BB#313:                               # %if.end33.i.i.i
	movl	$.L.str441, %esi
	movl	$5, %edx
	movq	%r14, %rdi
	callq	strncmp
	testl	%eax, %eax
	movl	$200, %r13d
	jne	.LBB47_319
# BB#314:
	movq	%r14, %rax
.LBB47_315:                             # %switch.early.test.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	%r15b, %ecx
	cmpl	$9, %ecx
	je	.LBB47_318
# BB#316:                               # %switch.early.test.i.i.i
                                        #   in Loop: Header=BB47_315 Depth=1
	cmpl	$32, %ecx
	je	.LBB47_318
# BB#317:                               # %switch.early.test.while.cond.i_crit_edge.i.i.i
                                        #   in Loop: Header=BB47_315 Depth=1
	movb	1(%rax), %r15b
	incq	%rax
	testb	%r15b, %r15b
	jne	.LBB47_315
.LBB47_318:                             # %__strcspn_c2.exit.i.i.i
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	strtol
	movq	%rax, %r13
.LBB47_319:                             # %if.end79.i.i.i
	movl	$.L.str442, %esi
	movq	%r14, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB47_328
# BB#320:                               # %if.end79.i.i.i
	cmpq	%r12, %rax
	jae	.LBB47_328
# BB#321:                               # %land.lhs.true86.i.i.i
	cmpq	%r14, %rax
	je	.LBB47_323
# BB#322:                               # %lor.lhs.false89.i.i.i
	movzbl	-1(%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB47_328
.LBB47_323:                             # %while.cond.i273.i.i.i.preheader
	addq	$7, %rax
	jmp	.LBB47_324
.LBB47_264:
	movl	%r12d, %eax
	movq	%rax, 88(%rsp)          # 8-byte Spill
.LBB47_265:                             # %httpd_write_fully.exit.i.i.i
	movq	88(%rsp), %rax          # 8-byte Reload
	cltq
	cmpq	%rbp, %rax
	jne	.LBB47_289
.LBB47_266:                             # %while.cond.preheader.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	496(%rax), %rax
	cmpq	%rbp, %rax
	jbe	.LBB47_274
# BB#267:
	movl	$1024, %r14d            # imm = 0x400
	leaq	4560(%rsp), %r12
.LBB47_270:                             # %while.body.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_281 Depth 2
                                        #       Child Loop BB47_283 Depth 3
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	704(%rcx), %ecx
	subq	%rbp, %rax
	cmpq	$1024, %rax             # imm = 0x400
	cmovaq	%r14, %rax
	movl	%ecx, %edi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	read
	movq	%rax, %r15
	testq	%r15, %r15
	jns	.LBB47_279
# BB#271:                               # %land.lhs.true.i187.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_273
# BB#272:                               # %land.lhs.true.i187.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	cmpl	$11, %eax
	jne	.LBB47_289
.LBB47_273:                             # %if.then23.i.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	movl	$1, %edi
	callq	sleep
	jmp	.LBB47_269
.LBB47_279:                             # %if.end25.i.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	xorl	%eax, %eax
	testq	%r15, %r15
	movl	$0, %r13d
	jle	.LBB47_289
.LBB47_281:                             # %while.body.lr.ph.i63.i.i.i
                                        #   Parent Loop BB47_270 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_283 Depth 3
	leaq	4560(%rsp,%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	subq	%rax, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %edi
	movq	%rcx, %rsi
	callq	write
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jns	.LBB47_286
# BB#282:                               # %land.lhs.true.i69.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_281 Depth=2
	callq	__errno_location
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB47_283:                             # %land.lhs.true.i69.i.i.i
                                        #   Parent Loop BB47_270 Depth=1
                                        #     Parent Loop BB47_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_285
# BB#284:                               # %land.lhs.true.i69.i.i.i
                                        #   in Loop: Header=BB47_283 Depth=3
	cmpl	$11, %eax
	jne	.LBB47_288
.LBB47_285:                             # %if.then.i71.i.i.i
                                        #   in Loop: Header=BB47_283 Depth=3
	movl	$1, %edi
	callq	sleep
	movl	%ebx, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, 80(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	js	.LBB47_283
.LBB47_286:                             # %if.end16.i74.i.i.i
                                        #   in Loop: Header=BB47_281 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB47_287
# BB#280:                               # %while.cond.outer.i58.i.i.i
                                        #   in Loop: Header=BB47_281 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	addl	%r13d, %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movslq	%ecx, %rax
	cmpq	%r15, %rax
	movl	%ecx, %r13d
	jb	.LBB47_281
	jmp	.LBB47_288
.LBB47_287:                             #   in Loop: Header=BB47_270 Depth=1
	movl	%r13d, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB47_288:                             # %httpd_write_fully.exit76.i.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cltq
	cmpq	%r15, %rax
	jne	.LBB47_289
# BB#268:                               # %while.cond.outer.i.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	addq	%r15, %rbp
.LBB47_269:                             # %while.cond.outer.i.i.i
                                        #   in Loop: Header=BB47_270 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	496(%rax), %rax
	cmpq	%rbp, %rax
	ja	.LBB47_270
.LBB47_274:                             # %while.end.i.i.i
	movzbl	sub_process(%rip), %eax
	cmpl	$1, %eax
	jne	.LBB47_278
# BB#275:                               # %if.then.i77.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %ebx
	movl	$3, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ebx, %edi
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB47_278
# BB#276:                               # %if.then.i.i.i.i.i
	movl	%eax, %ecx
	orl	$2048, %ecx             # imm = 0x800
	cmpl	%eax, %ecx
	je	.LBB47_278
# BB#277:                               # %if.then2.i.i.i.i.i
	movl	$4, %esi
	xorl	%eax, %eax
	movl	%ebx, %edi
	movl	%ecx, %edx
	callq	fcntl
.LBB47_278:                             # %post_post_garbage_hack.exit.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	leaq	5600(%rsp), %rcx
	movl	$2, %edx
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	read
	xorl	%edi, %edi
	callq	exit
.LBB47_402:                             # %if.else119.i.i
	movb	$0, (%rbp)
	incq	%rbp
	movq	%r14, %rdi
	callq	chdir
.LBB47_403:                             # %if.end122.i.i
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
.LBB47_251:                             # %if.then20.i.i
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
.LBB47_326:                             # %while.cond.i273.i.i.i.backedge
                                        #   in Loop: Header=BB47_324 Depth=1
	incq	%rax
.LBB47_324:                             # %while.cond.i273.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	je	.LBB47_326
# BB#325:                               # %while.cond.i273.i.i.i
                                        #   in Loop: Header=BB47_324 Depth=1
	cmpl	$32, %ecx
	je	.LBB47_326
# BB#327:                               # %__strspn_c2.exit.i.i.i
	xorl	%esi, %esi
	movl	$10, %edx
	movq	%rax, %rdi
	callq	strtol
	movq	%rax, %r13
.LBB47_328:                             # %if.end145.i.i.i
	movl	$.L.str443, %esi
	movq	%r14, %rdi
	callq	strstr
	testq	%rax, %rax
	je	.LBB47_332
# BB#329:                               # %if.end145.i.i.i
	cmpq	%r12, %rax
	jae	.LBB47_332
# BB#330:                               # %land.lhs.true152.i.i.i
	cmpq	%r14, %rax
	je	.LBB47_346
# BB#331:                               # %lor.lhs.false155.i.i.i
	movzbl	-1(%rax), %eax
	cmpl	$10, %eax
	je	.LBB47_346
.LBB47_332:                             # %if.end161.i.i.i
	movl	$.L.str88, %r8d
	cmpl	$301, %r13d             # imm = 0x12D
	jg	.LBB47_335
# BB#333:                               # %if.end161.i.i.i
	movl	$200, %ecx
	cmpl	$200, %r13d
	je	.LBB47_355
	jmp	.LBB47_334
.LBB47_289:                             # %cgi_interpose_input.exit.i.i
	xorl	%edi, %edi
	callq	exit
.LBB47_335:                             # %if.end161.i.i.i
	cmpl	$499, %r13d             # imm = 0x1F3
	jg	.LBB47_342
# BB#336:                               # %if.end161.i.i.i
	cmpl	$399, %r13d             # imm = 0x18F
	jg	.LBB47_340
# BB#337:                               # %if.end161.i.i.i
	cmpl	$302, %r13d             # imm = 0x12E
	jne	.LBB47_338
.LBB47_346:                             # %sw.bb162.i.i.i
	movl	$.L.str447, %r8d
	movl	$302, %ecx              # imm = 0x12E
	jmp	.LBB47_355
.LBB47_342:                             # %if.end161.i.i.i
	cmpl	$500, %r13d             # imm = 0x1F4
	je	.LBB47_352
# BB#343:                               # %if.end161.i.i.i
	cmpl	$501, %r13d             # imm = 0x1F5
	jne	.LBB47_344
# BB#353:                               # %sw.bb170.i.i.i
	movl	$.L.str523, %r8d
	jmp	.LBB47_354
.LBB47_340:                             # %if.end161.i.i.i
	leal	-400(%r13), %eax
	cmpl	$8, %eax
	ja	.LBB47_334
# BB#341:                               # %if.end161.i.i.i
	jmpq	*.LJTI47_0(,%rax,8)
.LBB47_347:                             # %sw.bb164.i.i.i
	movl	$400, %ecx              # imm = 0x190
	movq	httpd_err400title(%rip), %r8
	jmp	.LBB47_355
.LBB47_338:                             # %if.end161.i.i.i
	cmpl	$304, %r13d             # imm = 0x130
	jne	.LBB47_334
# BB#339:                               # %sw.bb163.i.i.i
	movl	$.L.str87, %r8d
	jmp	.LBB47_354
.LBB47_352:                             # %sw.bb169.i.i.i
	movl	$.L.str520, %r8d
	jmp	.LBB47_354
.LBB47_344:                             # %if.end161.i.i.i
	cmpl	$503, %r13d             # imm = 0x1F7
	jne	.LBB47_334
# BB#345:                               # %sw.bb171.i.i.i
	movl	$503, %ecx              # imm = 0x1F7
	movq	httpd_err503title(%rip), %r8
	jmp	.LBB47_355
.LBB47_348:                             # %sw.bb165.i.i.i
	movl	$.L.str446, %r8d
	jmp	.LBB47_354
.LBB47_349:                             # %sw.bb166.i.i.i
	movl	$.L.str515, %r8d
	jmp	.LBB47_354
.LBB47_350:                             # %sw.bb167.i.i.i
	movl	$.L.str510, %r8d
	jmp	.LBB47_354
.LBB47_351:                             # %sw.bb168.i.i.i
	movl	$408, %ecx              # imm = 0x198
	movq	httpd_err408title(%rip), %r8
	jmp	.LBB47_355
.LBB47_334:                             # %sw.default.i.i.i
	movl	$.L.str444, %r8d
.LBB47_354:                             # %sw.epilog.i.i.i
	movl	%r13d, %ecx
.LBB47_355:                             # %sw.epilog.i.i.i
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	4560(%rsp), %r12
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str445, %edx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	my_snprintf
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r15d
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB47_364
# BB#356:
	xorl	%r13d, %r13d
.LBB47_358:                             # %while.body.lr.ph.i289.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_360 Depth 2
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
	testl	%eax, %eax
	jns	.LBB47_363
# BB#359:                               # %land.lhs.true.i295.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_358 Depth=1
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_360:                             # %land.lhs.true.i295.i.i.i
                                        #   Parent Loop BB47_358 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_362
# BB#361:                               # %land.lhs.true.i295.i.i.i
                                        #   in Loop: Header=BB47_360 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_364
.LBB47_362:                             # %if.then.i297.i.i.i
                                        #   in Loop: Header=BB47_360 Depth=2
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	testl	%eax, %eax
	js	.LBB47_360
.LBB47_363:                             # %if.end16.i300.i.i.i
                                        #   in Loop: Header=BB47_358 Depth=1
	testl	%eax, %eax
	je	.LBB47_364
# BB#357:                               # %while.cond.outer.i284.i.i.i
                                        #   in Loop: Header=BB47_358 Depth=1
	addl	%r13d, %eax
	movslq	%eax, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	cmpq	%r12, %rcx
	movl	%eax, %r13d
	jb	.LBB47_358
.LBB47_364:                             # %httpd_write_fully.exit302.i.i.i
	xorl	%ecx, %ecx
	testq	%rbp, %rbp
	je	.LBB47_373
# BB#365:
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %r15d
	xorl	%r12d, %r12d
.LBB47_367:                             # %while.body.lr.ph.i311.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_369 Depth 2
	leaq	(%r14,%rcx), %r13
	movq	%rbp, %rax
	subq	%rcx, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r15d, %edi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	write
	testl	%eax, %eax
	jns	.LBB47_372
# BB#368:                               # %land.lhs.true.i317.lr.ph.i.i.i
                                        #   in Loop: Header=BB47_367 Depth=1
	callq	__errno_location
	movq	%rax, 80(%rsp)          # 8-byte Spill
.LBB47_369:                             # %land.lhs.true.i317.i.i.i
                                        #   Parent Loop BB47_367 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_371
# BB#370:                               # %land.lhs.true.i317.i.i.i
                                        #   in Loop: Header=BB47_369 Depth=2
	cmpl	$11, %eax
	jne	.LBB47_373
.LBB47_371:                             # %if.then.i319.i.i.i
                                        #   in Loop: Header=BB47_369 Depth=2
	movl	$1, %edi
	callq	sleep
	movl	%r15d, %edi
	movq	%r13, %rsi
	movq	88(%rsp), %rdx          # 8-byte Reload
	callq	write
	testl	%eax, %eax
	js	.LBB47_369
.LBB47_372:                             # %if.end16.i322.i.i.i
                                        #   in Loop: Header=BB47_367 Depth=1
	testl	%eax, %eax
	je	.LBB47_373
# BB#366:                               # %while.cond.outer.i306.i.i.i
                                        #   in Loop: Header=BB47_367 Depth=1
	addl	%r12d, %eax
	movslq	%eax, %rcx
	cmpq	%rbp, %rcx
	movl	%eax, %r12d
	jb	.LBB47_367
	jmp	.LBB47_373
.LBB47_376:                             # %if.then195.i.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	movl	$1, %edi
	callq	sleep
.LBB47_373:                             # %for.cond181.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_382 Depth 2
                                        #       Child Loop BB47_384 Depth 3
	leaq	4560(%rsp), %rax
	movl	$1024, %edx             # imm = 0x400
	movl	%ebx, %edi
	movq	%rax, %rsi
	callq	read
	movq	%rax, %rbp
	testl	%ebp, %ebp
	jns	.LBB47_377
# BB#374:                               # %land.lhs.true187.i.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	callq	__errno_location
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_376
# BB#375:                               # %land.lhs.true187.i.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	cmpl	$11, %eax
	je	.LBB47_376
.LBB47_377:                             # %if.end197.i.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	testl	%ebp, %ebp
	jle	.LBB47_390
# BB#378:                               # %if.end201.i.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jne	.LBB47_380
# BB#379:                               #   in Loop: Header=BB47_373 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB47_389
.LBB47_380:                             #   in Loop: Header=BB47_373 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	704(%rcx), %r14d
	movslq	%ebp, %r15
	xorl	%r12d, %r12d
.LBB47_382:                             # %while.body.lr.ph.i.i212.i.i
                                        #   Parent Loop BB47_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB47_384 Depth 3
	leaq	4560(%rsp,%rax), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r15, %rdx
	subq	%rax, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%r14d, %edi
	movq	%rcx, %rsi
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	jns	.LBB47_387
# BB#383:                               # %land.lhs.true.i.lr.ph.i214.i.i
                                        #   in Loop: Header=BB47_382 Depth=2
	callq	__errno_location
	movq	%rax, 72(%rsp)          # 8-byte Spill
.LBB47_384:                             # %land.lhs.true.i.i215.i.i
                                        #   Parent Loop BB47_373 Depth=1
                                        #     Parent Loop BB47_382 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB47_386
# BB#385:                               # %land.lhs.true.i.i215.i.i
                                        #   in Loop: Header=BB47_384 Depth=3
	cmpl	$11, %eax
	jne	.LBB47_389
.LBB47_386:                             # %if.then.i278.i.i.i
                                        #   in Loop: Header=BB47_384 Depth=3
	movl	$1, %edi
	callq	sleep
	movl	%r14d, %edi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	callq	write
	movq	%rax, %r13
	testl	%r13d, %r13d
	js	.LBB47_384
.LBB47_387:                             # %if.end16.i.i221.i.i
                                        #   in Loop: Header=BB47_382 Depth=2
	testl	%r13d, %r13d
	je	.LBB47_388
# BB#381:                               # %while.cond.outer.i.i207.i.i
                                        #   in Loop: Header=BB47_382 Depth=2
	addl	%r12d, %r13d
	movslq	%r13d, %rax
	cmpq	%r15, %rax
	movl	%r13d, %r12d
	jb	.LBB47_382
	jmp	.LBB47_389
.LBB47_388:                             #   in Loop: Header=BB47_373 Depth=1
	movl	%r12d, %r13d
.LBB47_389:                             # %httpd_write_fully.exit.i223.i.i
                                        #   in Loop: Header=BB47_373 Depth=1
	cmpl	%ebp, %r13d
	je	.LBB47_373
.LBB47_390:                             # %for.end210.i.i.i
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	704(%rax), %eax
	movl	$1, %esi
	movl	%eax, %edi
	callq	shutdown
.LBB47_391:                             # %cgi_interpose_output.exit.i.i
	xorl	%edi, %edi
	callq	exit
.Ltmp499:
	.size	really_start_request, .Ltmp499-really_start_request
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI47_0:
	.quad	.LBB47_347
	.quad	.LBB47_348
	.quad	.LBB47_334
	.quad	.LBB47_349
	.quad	.LBB47_350
	.quad	.LBB47_334
	.quad	.LBB47_334
	.quad	.LBB47_334
	.quad	.LBB47_351

	.text
	.align	16, 0x90
	.type	send_mime,@function
send_mime:                              # @send_mime
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp507:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp508:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp509:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp510:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp511:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp512:
	.cfi_def_cfa_offset 56
	subq	$1960, %rsp             # imm = 0x7A8
.Ltmp513:
	.cfi_def_cfa_offset 2016
.Ltmp514:
	.cfi_offset %rbx, -56
.Ltmp515:
	.cfi_offset %r12, -48
.Ltmp516:
	.cfi_offset %r13, -40
.Ltmp517:
	.cfi_offset %r14, -32
.Ltmp518:
	.cfi_offset %r15, -24
.Ltmp519:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	2024(%rsp), %rbp
	movq	2016(%rsp), %rsi
	movq	%rbp, 1952(%rsp)
	movl	%r14d, 184(%rbx)
	movq	%rsi, 192(%rbx)
	cmpl	$0, 520(%rbx)
	je	.LBB48_30
# BB#1:                                 # %if.then
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	cmpl	$200, %r14d
	jne	.LBB48_9
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 528(%rbx)
	je	.LBB48_9
# BB#3:                                 # %land.lhs.true3
	movq	536(%rbx), %rax
	movq	544(%rbx), %rcx
	cmpq	%rax, %rcx
	jl	.LBB48_9
# BB#4:                                 # %land.lhs.true5
	leaq	-1(%rsi), %rsi
	cmpq	%rsi, %rcx
	jne	.LBB48_6
# BB#5:                                 # %land.lhs.true5
	testq	%rax, %rax
	je	.LBB48_9
.LBB48_6:                               # %land.lhs.true10
	movq	488(%rbx), %rax
	cmpq	$-1, %rax
	je	.LBB48_8
# BB#7:                                 # %lor.lhs.false12
	cmpq	648(%rbx), %rax
	jne	.LBB48_9
.LBB48_8:                               # %if.then15
	movl	$206, 184(%rbx)
	movl	$.L.str98119, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$206, %r14d
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB48_10
.LBB48_9:                               # %if.else
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	$0, 528(%rbx)
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
.LBB48_10:                              # %if.end
	xorl	%edi, %edi
	callq	time
	movq	%rax, 1944(%rsp)
	testq	%rbp, %rbp
	jne	.LBB48_12
# BB#11:                                # %if.then19
	movq	%rax, 1952(%rsp)
.LBB48_12:                              # %if.end20
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
	movq	8(%rbx), %rax
	movq	40(%rax), %rcx
	leaq	1088(%rsp), %r15
	movl	$500, %esi              # imm = 0x1F4
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	my_snprintf
	movq	224(%rbx), %rcx
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
	movq	48(%rsp), %r9           # 8-byte Reload
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	leaq	368(%rbx), %r15
	leaq	464(%rbx), %r12
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
	leal	-200(%r14), %eax
	cmpl	$100, %eax
	jb	.LBB48_13
# BB#14:                                # %if.end20
	addl	$-300, %r14d            # imm = 0xFFFFFFFFFFFFFED4
	cmpl	$100, %r14d
	movq	64(%rsp), %rcx          # 8-byte Reload
	jb	.LBB48_16
# BB#15:                                # %if.then37
	leaq	80(%rsp), %r14
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str91118, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rcx, %rbp
	callq	my_snprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	memmove
	movq	%rbp, %rcx
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
	jmp	.LBB48_16
.LBB48_13:
	movq	64(%rsp), %rcx          # 8-byte Reload
.LBB48_16:                              # %if.end41
	cmpb	$0, (%rcx)
	je	.LBB48_18
# BB#17:                                # %if.then44
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str92, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
.LBB48_18:                              # %if.end48
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB48_20
# BB#19:                                # %if.then50
	movq	536(%rbx), %rcx
	movq	544(%rbx), %r8
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
	movq	2016(%rsp), %rcx
	testq	%rcx, %rcx
	js	.LBB48_23
# BB#21:                                # %if.then62
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
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
.LBB48_23:                              # %if.end67
	movq	8(%rbx), %rax
	movq	48(%rax), %rcx
	cmpb	$0, (%rcx)
	je	.LBB48_25
# BB#24:                                # %if.then73
	leaq	80(%rsp), %rbp
	movl	$1000, %esi             # imm = 0x3E8
	movl	$.L.str95, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	my_snprintf
	movq	%rbp, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
	movq	8(%rbx), %rax
.LBB48_25:                              # %if.end79
	movslq	56(%rax), %rax
	testq	%rax, %rax
	js	.LBB48_27
# BB#26:                                # %if.then83
	addq	1944(%rsp), %rax
	movq	%rax, 1936(%rsp)
	leaq	1936(%rsp), %rdi
	callq	gmtime
	leaq	1600(%rsp), %r14
	movl	$100, %esi
	movl	$.L.str89117, %edx
	movq	%r14, %rdi
	movq	%rax, %rcx
	callq	strftime
	movq	8(%rbx), %rax
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
	movq	472(%rbx), %rdx
	addq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	memmove
	addq	472(%rbx), %r13
	movq	%r13, 472(%rbx)
.LBB48_27:                              # %if.end97
	movq	72(%rsp), %r14          # 8-byte Reload
	cmpb	$0, (%r14)
	je	.LBB48_29
# BB#28:                                # %if.then102
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbp
	addq	%rbp, %r13
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	httpd_realloc_str
	movq	368(%rbx), %rdi
	addq	472(%rbx), %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	memmove
	addq	472(%rbx), %rbp
	movq	%rbp, 472(%rbx)
	movq	%rbp, %r13
.LBB48_29:                              # %if.end103
	addq	$2, %r13
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	httpd_realloc_str
	movq	368(%rbx), %rax
	movq	472(%rbx), %rcx
	movw	$2573, (%rax,%rcx)      # imm = 0xA0D
	addq	$2, 472(%rbx)
.LBB48_30:                              # %if.end104
	addq	$1960, %rsp             # imm = 0x7A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp520:
	.size	send_mime, .Ltmp520-send_mime
	.cfi_endproc

	.align	16, 0x90
	.type	auth_check2,@function
auth_check2:                            # @auth_check2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp528:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp529:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp530:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp531:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp532:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp533:
	.cfi_def_cfa_offset 56
	subq	$1176, %rsp             # imm = 0x498
.Ltmp534:
	.cfi_def_cfa_offset 1232
.Ltmp535:
	.cfi_offset %rbx, -56
.Ltmp536:
	.cfi_offset %r12, -48
.Ltmp537:
	.cfi_offset %r13, -40
.Ltmp538:
	.cfi_offset %r14, -32
.Ltmp539:
	.cfi_offset %r15, -24
.Ltmp540:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%r15, %rdi
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
	movq	%r15, %rcx
	callq	my_snprintf
	movq	auth_check2.authpath(%rip), %rsi
	leaq	1032(%rsp), %rdx
	movl	$1, %edi
	callq	__xstat
	testl	%eax, %eax
	js	.LBB49_29
# BB#1:                                 # %if.end
	movq	352(%r14), %rbx
	cmpb	$0, (%rbx)
	je	.LBB49_38
# BB#2:                                 # %lor.lhs.false
	movl	$.L.str499, %esi
	movl	$6, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB49_38
# BB#3:                                 # %if.end11
	movb	6(%rbx), %al
	xorl	%edi, %edi
	testb	%al, %al
	je	.LBB49_19
# BB#4:                                 # %for.body.i.preheader
	addq	$7, %rbx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	.align	16, 0x90
.LBB49_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%al, %rax
	movl	b64_decode_table(,%rax,4), %edx
	cmpl	$-1, %edx
	jne	.LBB49_7
# BB#6:                                 #   in Loop: Header=BB49_5 Depth=1
	movl	%esi, %edx
	jmp	.LBB49_18
	.align	16, 0x90
.LBB49_7:                               # %if.then.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	%ecx, %eax
	cmpl	$3, %ecx
	ja	.LBB49_18
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB49_5 Depth=1
	jmpq	*.LJTI49_0(,%rax,8)
.LBB49_9:                               # %sw.bb.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	$1, %ecx
	jmp	.LBB49_18
.LBB49_10:                              # %sw.bb5.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	$2, %ecx
	cmpl	$498, %edi              # imm = 0x1F2
	jg	.LBB49_18
# BB#11:                                # %if.then9.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	%edx, %eax
	shrl	$4, %eax
	andl	$3, %eax
	shll	$2, %esi
	orl	%eax, %esi
	jmp	.LBB49_17
.LBB49_13:                              # %sw.bb14.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	$3, %ecx
	cmpl	$498, %edi              # imm = 0x1F2
	jg	.LBB49_18
# BB#14:                                # %if.then23.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movl	%edx, %eax
	shrl	$2, %eax
	andl	$15, %eax
	shll	$4, %esi
	orl	%eax, %esi
	jmp	.LBB49_17
.LBB49_15:                              # %sw.bb29.i
                                        #   in Loop: Header=BB49_5 Depth=1
	xorl	%ecx, %ecx
	cmpl	$498, %edi              # imm = 0x1F2
	jg	.LBB49_18
# BB#16:                                # %if.then36.i
                                        #   in Loop: Header=BB49_5 Depth=1
	shll	$6, %esi
	orl	%edx, %esi
.LBB49_17:                              # %for.inc.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movslq	%edi, %rax
	incl	%edi
	movb	%sil, 528(%rsp,%rax)
	.align	16, 0x90
.LBB49_18:                              # %for.inc.i
                                        #   in Loop: Header=BB49_5 Depth=1
	movb	(%rbx), %al
	incq	%rbx
	testb	%al, %al
	movl	%edx, %esi
	jne	.LBB49_5
.LBB49_19:                              # %b64_decode.exit
	movslq	%edi, %rax
	movb	$0, 528(%rsp,%rax)
	leaq	528(%rsp), %rdi
	movl	$58, %esi
	callq	strchr
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB49_38
# BB#20:                                # %if.end21
	movb	$0, (%rbp)
	incq	%rbp
	movl	$58, %esi
	movq	%rbp, %rdi
	callq	strchr
	testq	%rax, %rax
	je	.LBB49_22
# BB#21:                                # %if.then25
	movb	$0, (%rax)
.LBB49_22:                              # %if.end26
	cmpq	$0, auth_check2.maxprevauthpath(%rip)
	movq	auth_check2.authpath(%rip), %rbx
	je	.LBB49_30
# BB#23:                                # %land.lhs.true
	movq	auth_check2.prevauthpath(%rip), %rsi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB49_30
# BB#24:                                # %land.lhs.true32
	movq	1120(%rsp), %rax
	cmpq	auth_check2.prevmtime(%rip), %rax
	jne	.LBB49_30
# BB#25:                                # %land.lhs.true35
	movq	auth_check2.prevuser(%rip), %rsi
	leaq	528(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_26
.LBB49_30:                              # %if.end61
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	$.L.str500, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB49_43
# BB#31:                                # %while.cond.preheader
	leaq	16(%rsp), %rdi
	movl	$500, %esi              # imm = 0x1F4
	movq	%r13, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB49_37
# BB#32:
	leaq	16(%rsp), %rbp
	movabsq	$-4294967296, %r12      # imm = 0xFFFFFFFF00000000
	.align	16, 0x90
.LBB49_33:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	strlen
	shlq	$32, %rax
	addq	%r12, %rax
	sarq	$32, %rax
	movzbl	16(%rsp,%rax), %ecx
	cmpl	$10, %ecx
	jne	.LBB49_35
# BB#34:                                # %if.then80
                                        #   in Loop: Header=BB49_33 Depth=1
	movb	$0, 16(%rsp,%rax)
.LBB49_35:                              # %if.end84
                                        #   in Loop: Header=BB49_33 Depth=1
	movl	$58, %esi
	movq	%rbp, %rdi
	callq	strchr
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB49_36
# BB#40:                                # %if.end90
                                        #   in Loop: Header=BB49_33 Depth=1
	movb	$0, (%rbx)
	movq	%rbp, %rdi
	leaq	528(%rsp), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB49_41
.LBB49_36:                              # %while.cond.backedge
                                        #   in Loop: Header=BB49_33 Depth=1
	movl	$500, %esi              # imm = 0x1F4
	movq	%rbp, %rdi
	movq	%r13, %rdx
	callq	fgets
	testq	%rax, %rax
	jne	.LBB49_33
.LBB49_37:                              # %while.end
	movq	%r13, %rdi
	callq	fclose
.LBB49_38:                              # %cleanup
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	send_authenticate
	movl	$-1, %ebx
.LBB49_29:                              # %cleanup
	movl	%ebx, %eax
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB49_43:                              # %if.then65
	leaq	16(%r14), %rdi
	callq	httpd_ntoa
	movq	auth_check2.authpath(%rip), %rcx
	movl	$3, %edi
	movl	$.L.str501, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	callq	syslog
	movq	208(%r14), %r9
	movl	$403, %esi              # imm = 0x193
	movl	$.L.str515, %edx
	movl	$.L.str2669, %ecx
	movl	$.L.str502, %r8d
	movq	%r14, %rdi
	callq	httpd_send_err
	movl	$-1, %ebx
	jmp	.LBB49_29
.LBB49_41:                              # %if.then102
	incq	%rbx
	movq	%r13, %rdi
	callq	fclose
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbx, %rsi
	callq	crypt
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB49_38
# BB#42:                                # %if.then113
	leaq	360(%r14), %rbp
	leaq	456(%r14), %r15
	leaq	16(%rsp), %r12
	movq	%r12, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	360(%r14), %rdi
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
	jmp	.LBB49_28
.LBB49_26:                              # %if.then45
	movq	auth_check2.prevcryp(%rip), %rsi
	movq	%rbp, %rdi
	callq	crypt
	movq	auth_check2.prevcryp(%rip), %rsi
	movq	%rax, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB49_38
# BB#27:                                # %if.then55
	leaq	360(%r14), %rbx
	leaq	456(%r14), %rbp
	leaq	528(%rsp), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	360(%r14), %rdi
	movq	%r15, %rsi
.LBB49_28:                              # %cleanup
	callq	strcpy
	movl	$1, %ebx
	jmp	.LBB49_29
.Ltmp541:
	.size	auth_check2, .Ltmp541-auth_check2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI49_0:
	.quad	.LBB49_9
	.quad	.LBB49_10
	.quad	.LBB49_13
	.quad	.LBB49_15

	.text
	.align	16, 0x90
	.type	check_referer,@function
check_referer:                          # @check_referer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp549:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp550:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp551:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp552:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp553:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp554:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp555:
	.cfi_def_cfa_offset 80
.Ltmp556:
	.cfi_offset %rbx, -56
.Ltmp557:
	.cfi_offset %r12, -48
.Ltmp558:
	.cfi_offset %r13, -40
.Ltmp559:
	.cfi_offset %r14, -32
.Ltmp560:
	.cfi_offset %r15, -24
.Ltmp561:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	8(%r15), %rax
	movq	112(%rax), %rbx
	testq	%rbx, %rbx
	movl	$1, %r14d
	je	.LBB50_29
# BB#1:                                 # %if.end
	movq	272(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB50_4
# BB#2:                                 # %lor.lhs.false.i
	cmpb	$0, (%rdi)
	je	.LBB50_4
# BB#3:                                 # %lor.lhs.false5.i
	movl	$.L.str498, %esi
	movq	%rax, %r12
	callq	strstr
	movq	%rax, %rbp
	movq	%r12, %rax
	testq	%rbp, %rbp
	je	.LBB50_4
# BB#6:                                 # %if.end12.i
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	2(%rbp), %r14
	xorl	%ebx, %ebx
	movabsq	$288371113640067073, %rax # imm = 0x400800000000001
	jmp	.LBB50_7
	.align	16, 0x90
.LBB50_9:                               # %for.inc.i
                                        #   in Loop: Header=BB50_7 Depth=1
	incq	%rbx
.LBB50_7:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	2(%rbp,%rbx), %ecx
	cmpq	$58, %rcx
	ja	.LBB50_9
# BB#8:                                 # %for.cond.i
                                        #   in Loop: Header=BB50_7 Depth=1
	btq	%rcx, %rax
	jae	.LBB50_9
# BB#10:                                # %for.end.i
	movq	%r15, 8(%rsp)           # 8-byte Spill
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
	xorl	%r12d, %r12d
	callq	__ctype_b_loc
	movq	%rax, %r13
	.align	16, 0x90
.LBB50_12:                              # %for.body26.i
                                        # =>This Inner Loop Header: Depth=1
	movb	2(%rbp,%r12), %al
	movsbq	%al, %r15
	movq	(%r13), %rcx
	testb	$1, 1(%rcx,%r15,2)
	je	.LBB50_14
# BB#13:                                # %if.then32.i
                                        #   in Loop: Header=BB50_12 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movb	(%rax,%r15,4), %al
.LBB50_14:                              # %for.inc39.i
                                        #   in Loop: Header=BB50_12 Depth=1
	leaq	1(%r12), %rcx
	cmpq	%rcx, %rbx
	movb	%al, (%r14,%r12)
	movq	%rcx, %r12
	jne	.LBB50_12
# BB#15:                                # %for.end42.i.loopexit
	addq	%rcx, %r14
.LBB50_16:                              # %for.end42.i
	movb	$0, (%r14)
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	120(%rax), %rdi
	testq	%rdi, %rdi
	movq	8(%rsp), %r15           # 8-byte Reload
	jne	.LBB50_22
# BB#17:                                # %if.else47.i
	cmpl	$0, 100(%rax)
	je	.LBB50_18
# BB#20:                                # %if.else54.i
	movq	512(%r15), %rdi
	testq	%rdi, %rdi
	jne	.LBB50_22
# BB#21:
	movl	$1, %r14d
	jmp	.LBB50_29
.LBB50_4:                               # %if.then.i
	cmpl	$0, 128(%rax)
	je	.LBB50_29
# BB#5:                                 # %land.lhs.true.i
	movq	232(%r15), %rsi
	movq	%rbx, %rdi
.LBB50_24:                              # %land.lhs.true63.i
	callq	match
	testl	%eax, %eax
	je	.LBB50_29
# BB#25:                                # %if.then1
	movq	8(%r15), %rax
	cmpl	$0, 100(%rax)
	je	.LBB50_27
# BB#26:                                # %land.lhs.true
	movq	512(%r15), %rbp
	testq	%rbp, %rbp
	jne	.LBB50_28
.LBB50_27:                              # %if.else
	movq	8(%rax), %rbp
.LBB50_28:                              # %if.end8
	testq	%rbp, %rbp
	movl	$.L.str2669, %eax
	cmoveq	%rax, %rbp
	leaq	16(%r15), %rdi
	callq	httpd_ntoa
	movq	208(%r15), %r8
	movq	272(%r15), %r9
	xorl	%r14d, %r14d
	movl	$6, %edi
	movl	$.L.str496, %esi
	movl	$httpd_ntoa.str, %edx
	xorl	%eax, %eax
	movq	%rbp, %rcx
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
	movq	8(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB50_19
.LBB50_22:                              # %if.end60.i
	movq	%rax, %rbx
	movq	really_check_referer.refhost(%rip), %rsi
	callq	match
	testl	%eax, %eax
	movl	$1, %r14d
	jne	.LBB50_29
# BB#23:                                # %land.lhs.true63.i
	movq	112(%rbx), %rdi
	movq	232(%r15), %rsi
	jmp	.LBB50_24
.LBB50_19:
	movl	$1, %r14d
.LBB50_29:                              # %return
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp562:
	.size	check_referer, .Ltmp562-check_referer
	.cfi_endproc

	.align	16, 0x90
	.type	name_compare,@function
name_compare:                           # @name_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	jmp	strcmp                  # TAILCALL
.Ltmp563:
	.size	name_compare, .Ltmp563-name_compare
	.cfi_endproc

	.align	16, 0x90
	.type	cgi_kill,@function
cgi_kill:                               # @cgi_kill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp567:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp568:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp569:
	.cfi_def_cfa_offset 32
.Ltmp570:
	.cfi_offset %rbx, -24
.Ltmp571:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$2, %esi
	callq	kill
	testl	%eax, %eax
	jne	.LBB52_2
# BB#1:                                 # %if.then
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
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.LBB52_3:                               # %if.then4
	movl	$2, %edi
	movl	$.L.str434, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp572:
	.size	cgi_kill, .Ltmp572-cgi_kill
	.cfi_endproc

	.align	16, 0x90
	.type	build_env,@function
build_env:                              # @build_env
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp577:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp578:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp579:
	.cfi_def_cfa_offset 32
.Ltmp580:
	.cfi_offset %rbx, -32
.Ltmp581:
	.cfi_offset %r14, -24
.Ltmp582:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	strlen
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	strlen
	addq	%rbx, %rax
	movq	build_env.maxbuf(%rip), %rsi
	cmpq	%rsi, %rax
	jbe	.LBB53_2
# BB#1:                                 # %if.then
	movl	$build_env.buf, %edi
	movl	$build_env.maxbuf, %esi
	movq	%rax, %rdx
	callq	httpd_realloc_str
	movq	build_env.maxbuf(%rip), %rsi
.LBB53_2:                               # %if.end
	movq	build_env.buf(%rip), %rdi
	xorl	%eax, %eax
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	my_snprintf
	movq	build_env.buf(%rip), %rdi
	callq	__strdup
	testq	%rax, %rax
	je	.LBB53_4
# BB#3:                                 # %if.end6
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.LBB53_4:                               # %if.then5
	movl	$3, %edi
	movl	$.L.str479, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$1, %edi
	callq	exit
.Ltmp583:
	.size	build_env, .Ltmp583-build_env
	.cfi_endproc

	.align	16, 0x90
	.type	send_authenticate,@function
send_authenticate:                      # @send_authenticate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp587:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp588:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp589:
	.cfi_def_cfa_offset 32
.Ltmp590:
	.cfi_offset %rbx, -24
.Ltmp591:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
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
	movl	$1, 556(%rbx)
.LBB54_2:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp592:
	.size	send_authenticate, .Ltmp592-send_authenticate
	.cfi_endproc

	.align	16, 0x90
	.type	cgi_kill2,@function
cgi_kill2:                              # @cgi_kill2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp595:
	.cfi_def_cfa_offset 16
.Ltmp596:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$9, %esi
	callq	kill
	testl	%eax, %eax
	je	.LBB55_2
# BB#1:                                 # %if.end
	popq	%rbx
	ret
.LBB55_2:                               # %if.then
	movl	$3, %edi
	movl	$.L.str435, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	popq	%rbx
	jmp	syslog                  # TAILCALL
.Ltmp597:
	.size	cgi_kill2, .Ltmp597-cgi_kill2
	.cfi_endproc

	.globl	fdwatch_get_nfiles
	.align	16, 0x90
	.type	fdwatch_get_nfiles,@function
fdwatch_get_nfiles:                     # @fdwatch_get_nfiles
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp603:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp604:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp605:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp606:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp607:
	.cfi_def_cfa_offset 64
.Ltmp608:
	.cfi_offset %rbx, -40
.Ltmp609:
	.cfi_offset %r12, -32
.Ltmp610:
	.cfi_offset %r14, -24
.Ltmp611:
	.cfi_offset %r15, -16
	callq	getdtablesize
	movl	%eax, nfiles(%rip)
	leaq	8(%rsp), %rsi
	movl	$7, %edi
	callq	getrlimit
	testl	%eax, %eax
	jne	.LBB56_7
# BB#1:                                 # %if.then
	movq	8(%rsp), %rcx
	movl	%ecx, nfiles(%rip)
	movq	16(%rsp), %rax
	cmpq	$-1, %rax
	je	.LBB56_2
# BB#3:                                 # %if.else
	cmpq	%rcx, %rax
	jbe	.LBB56_5
# BB#4:                                 # %if.then10
	movq	%rax, 8(%rsp)
	jmp	.LBB56_5
.LBB56_2:                               # %if.then4
	movq	$8192, 8(%rsp)          # imm = 0x2000
.LBB56_5:                               # %if.end13
	leaq	8(%rsp), %rsi
	movl	$7, %edi
	callq	setrlimit
	testl	%eax, %eax
	je	.LBB56_6
.LBB56_7:                               # %if.end21thread-pre-split
	movl	nfiles(%rip), %eax
.LBB56_8:                               # %if.end21
	movl	%eax, %r12d
	movq	$0, nwatches(%rip)
	movslq	%eax, %r15
	leaq	(,%r15,4), %r14
	movq	%r14, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbx, fd_rw(%rip)
	shlq	$3, %r15
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, %rcx
	testq	%rbx, %rbx
	movq	%rcx, fd_data(%rip)
	movl	$-1, %eax
	je	.LBB56_22
# BB#9:                                 # %if.end21
	testq	%rcx, %rcx
	je	.LBB56_22
# BB#10:                                # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB56_17
# BB#11:                                # %for.body.preheader
	leal	-1(%r12), %eax
	incq	%rax
	xorl	%ecx, %ecx
	movabsq	$8589934584, %rdx       # imm = 0x1FFFFFFF8
	andq	%rax, %rdx
	je	.LBB56_15
# BB#12:                                # %vector.body.preheader
	xorl	%ecx, %ecx
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB56_13:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx,%rcx,4)
	movdqu	%xmm0, 16(%rbx,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB56_13
# BB#14:
	movq	%rdx, %rcx
.LBB56_15:                              # %middle.block
	cmpq	%rcx, %rax
	je	.LBB56_17
	.align	16, 0x90
.LBB56_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, (%rbx,%rcx,4)
	incq	%rcx
	cmpl	%r12d, %ecx
	jl	.LBB56_16
.LBB56_17:                              # %for.end
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
	setle	%sil
	orb	%dl, %cl
	movl	$-1, %eax
	cmovel	%r12d, %eax
	jne	.LBB56_22
# BB#18:                                # %for.end
	testb	%sil, %sil
	jne	.LBB56_22
# BB#19:                                # %for.body.i.preheader
	leal	-1(%r12), %eax
	leaq	4(,%rax,4), %rdx
	movl	$255, %esi
	movq	%r15, %rdi
	callq	memset
	xorl	%eax, %eax
	.align	16, 0x90
.LBB56_20:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, (%rbx,%rax,8)
	incq	%rax
	cmpl	%eax, %r12d
	jne	.LBB56_20
# BB#21:                                # %poll_init.exit.loopexit
	movl	%r12d, %eax
.LBB56_22:                              # %poll_init.exit
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	ret
.LBB56_6:                               # %if.then17
	movl	8(%rsp), %eax
	movl	%eax, nfiles(%rip)
	jmp	.LBB56_8
.Ltmp612:
	.size	fdwatch_get_nfiles, .Ltmp612-fdwatch_get_nfiles
	.cfi_endproc

	.globl	fdwatch_add_fd
	.align	16, 0x90
	.type	fdwatch_add_fd,@function
fdwatch_add_fd:                         # @fdwatch_add_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp617:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp618:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp619:
	.cfi_def_cfa_offset 32
.Ltmp620:
	.cfi_offset %rbx, -32
.Ltmp621:
	.cfi_offset %r14, -24
.Ltmp622:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB57_12
# BB#1:                                 # %entry
	movl	nfiles(%rip), %edx
	cmpl	%ecx, %edx
	jle	.LBB57_12
# BB#2:                                 # %lor.lhs.false2
	movslq	%ecx, %r14
	movq	fd_rw(%rip), %rax
	cmpl	$-1, (%rax,%r14,4)
	je	.LBB57_3
.LBB57_12:                              # %if.then
	movl	$3, %edi
	movl	$.L.str514, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	syslog                  # TAILCALL
.LBB57_3:                               # %if.end
	movslq	npoll_fds(%rip), %rsi
	cmpl	%edx, %esi
	jge	.LBB57_4
# BB#5:                                 # %if.end.i
	movq	pollfds(%rip), %rdx
	movl	%ecx, (%rdx,%rsi,8)
	testl	%ebp, %ebp
	jne	.LBB57_6
# BB#8:                                 # %sw.bb.i
	movslq	npoll_fds(%rip), %rcx
	movw	$1, 4(%rdx,%rcx,8)
	jmp	.LBB57_10
.LBB57_4:                               # %if.then.i
	movl	$3, %edi
	movl	$.L.str8522, %esi
	xorl	%eax, %eax
	callq	syslog
	movq	fd_rw(%rip), %rax
	jmp	.LBB57_11
.LBB57_6:                               # %if.end.i
	cmpl	$1, %ebp
	jne	.LBB57_7
# BB#9:                                 # %sw.bb4.i
	movslq	npoll_fds(%rip), %rcx
	movw	$4, 4(%rdx,%rcx,8)
	jmp	.LBB57_10
.LBB57_7:                               # %if.end.sw.epilog_crit_edge.i
	movl	npoll_fds(%rip), %ecx
.LBB57_10:                              # %sw.epilog.i
	movq	poll_fdidx(%rip), %rdx
	movl	%ecx, (%rdx,%r14,4)
	incl	npoll_fds(%rip)
.LBB57_11:                              # %return
	movl	%ebp, (%rax,%r14,4)
	movq	fd_data(%rip), %rax
	movq	%rbx, (%rax,%r14,8)
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp623:
	.size	fdwatch_add_fd, .Ltmp623-fdwatch_add_fd
	.cfi_endproc

	.globl	fdwatch_del_fd
	.align	16, 0x90
	.type	fdwatch_del_fd,@function
fdwatch_del_fd:                         # @fdwatch_del_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp626:
	.cfi_def_cfa_offset 16
.Ltmp627:
	.cfi_offset %rbx, -16
	movl	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB58_8
# BB#1:                                 # %entry
	movl	nfiles(%rip), %eax
	cmpl	%ecx, %eax
	jle	.LBB58_8
# BB#2:                                 # %lor.lhs.false2
	movslq	%ecx, %rbx
	movq	fd_rw(%rip), %rdx
	cmpl	$-1, (%rdx,%rbx,4)
	je	.LBB58_8
# BB#3:                                 # %if.end
	movq	poll_fdidx(%rip), %rcx
	movslq	(%rcx,%rbx,4), %rdx
	testq	%rdx, %rdx
	js	.LBB58_5
# BB#4:                                 # %if.end
	cmpl	%eax, %edx
	jge	.LBB58_5
# BB#6:                                 # %if.end.i
	movl	npoll_fds(%rip), %eax
	decl	%eax
	movl	%eax, npoll_fds(%rip)
	movq	pollfds(%rip), %rcx
	cltq
	movq	(%rcx,%rax,8), %rax
	movq	%rax, (%rcx,%rdx,8)
	movq	pollfds(%rip), %rax
	movslq	(%rax,%rdx,8), %rcx
	movq	poll_fdidx(%rip), %rsi
	movl	%edx, (%rsi,%rcx,4)
	movslq	npoll_fds(%rip), %rcx
	movl	$-1, (%rax,%rcx,8)
	movl	$-1, (%rsi,%rbx,4)
	jmp	.LBB58_7
.LBB58_8:                               # %if.then
	movl	$3, %edi
	movl	$.L.str1515, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	popq	%rbx
	jmp	syslog                  # TAILCALL
.LBB58_5:                               # %if.then.i
	movl	$3, %edi
	movl	$.L.str7521, %esi
	xorl	%eax, %eax
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	syslog
.LBB58_7:                               # %return
	movq	fd_rw(%rip), %rax
	movl	$-1, (%rax,%rbx,4)
	movq	fd_data(%rip), %rax
	movq	$0, (%rax,%rbx,8)
	popq	%rbx
	ret
.Ltmp628:
	.size	fdwatch_del_fd, .Ltmp628-fdwatch_del_fd
	.cfi_endproc

	.globl	fdwatch
	.align	16, 0x90
	.type	fdwatch,@function
fdwatch:                                # @fdwatch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp630:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	incq	nwatches(%rip)
	movq	pollfds(%rip), %rdi
	movslq	npoll_fds(%rip), %rsi
	movl	%eax, %edx
	callq	poll
	testl	%eax, %eax
	jle	.LBB59_1
# BB#2:                                 # %for.cond.preheader.i
	movl	npoll_fds(%rip), %edi
	xorl	%ecx, %ecx
	testl	%edi, %edi
	jle	.LBB59_10
# BB#3:                                 # %for.body.lr.ph.i
	movq	pollfds(%rip), %r9
	xorl	%esi, %esi
	movq	poll_rfdidx(%rip), %r8
	xorl	%edx, %edx
	.align	16, 0x90
.LBB59_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$61, 6(%r9,%rsi,8)
	jne	.LBB59_6
# BB#5:                                 #   in Loop: Header=BB59_4 Depth=1
	movl	%edx, %ecx
	jmp	.LBB59_9
	.align	16, 0x90
.LBB59_6:                               # %if.then6.i
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	(%r9,%rsi,8), %edi
	leal	1(%rdx), %ecx
	cmpl	%eax, %ecx
	movslq	%edx, %rdx
	movl	%edi, (%r8,%rdx,4)
	je	.LBB59_7
# BB#8:                                 # %if.then6.for.inc_crit_edge.i
                                        #   in Loop: Header=BB59_4 Depth=1
	movl	npoll_fds(%rip), %edi
.LBB59_9:                               # %for.inc.i
                                        #   in Loop: Header=BB59_4 Depth=1
	incq	%rsi
	cmpl	%edi, %esi
	movl	%ecx, %edx
	jl	.LBB59_4
	jmp	.LBB59_10
.LBB59_1:
	movl	%eax, %ecx
	jmp	.LBB59_10
.LBB59_7:
	movl	%eax, %ecx
.LBB59_10:                              # %poll_watch.exit
	movl	%ecx, nreturned(%rip)
	movl	$0, next_ridx(%rip)
	movl	%ecx, %eax
	popq	%rdx
	ret
.Ltmp631:
	.size	fdwatch, .Ltmp631-fdwatch
	.cfi_endproc

	.globl	fdwatch_check_fd
	.align	16, 0x90
	.type	fdwatch_check_fd,@function
fdwatch_check_fd:                       # @fdwatch_check_fd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp634:
	.cfi_def_cfa_offset 16
.Ltmp635:
	.cfi_offset %rbx, -16
	movl	%edi, %ecx
	testl	%ecx, %ecx
	js	.LBB60_3
# BB#1:                                 # %entry
	movl	nfiles(%rip), %esi
	cmpl	%ecx, %esi
	jle	.LBB60_3
# BB#2:                                 # %lor.lhs.false2
	movslq	%ecx, %rdx
	movq	fd_rw(%rip), %rax
	movl	(%rax,%rdx,4), %eax
	cmpl	$-1, %eax
	je	.LBB60_3
# BB#4:                                 # %if.end
	movq	poll_fdidx(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	testq	%rdx, %rdx
	js	.LBB60_6
# BB#5:                                 # %if.end
	cmpl	%esi, %edx
	jge	.LBB60_6
# BB#7:                                 # %if.end.i
	movq	pollfds(%rip), %rcx
	movswl	6(%rcx,%rdx,8), %ecx
	xorl	%ebx, %ebx
	testb	$8, %cl
	jne	.LBB60_13
# BB#8:                                 # %if.end5.i
	cmpl	$1, %eax
	jne	.LBB60_9
# BB#11:                                # %sw.bb13.i
	andl	$52, %ecx
	jmp	.LBB60_12
.LBB60_3:                               # %if.then
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str2516, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	syslog
.LBB60_13:                              # %return
	movl	%ebx, %eax
	popq	%rbx
	ret
.LBB60_6:                               # %if.then.i
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str6520, %esi
	xorl	%eax, %eax
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	syslog
	jmp	.LBB60_13
.LBB60_9:                               # %if.end5.i
	testl	%eax, %eax
	jne	.LBB60_13
# BB#10:                                # %sw.bb.i
	andl	$49, %ecx
.LBB60_12:                              # %return
	movl	%ecx, %ebx
	jmp	.LBB60_13
.Ltmp636:
	.size	fdwatch_check_fd, .Ltmp636-fdwatch_check_fd
	.cfi_endproc

	.globl	fdwatch_get_next_client_data
	.align	16, 0x90
	.type	fdwatch_get_next_client_data,@function
fdwatch_get_next_client_data:           # @fdwatch_get_next_client_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp639:
	.cfi_def_cfa_offset 16
.Ltmp640:
	.cfi_offset %rbx, -16
	movslq	next_ridx(%rip), %rdx
	cmpl	nreturned(%rip), %edx
	movq	$-1, %rbx
	jge	.LBB61_7
# BB#1:                                 # %if.end
	leal	1(%rdx), %eax
	testl	%edx, %edx
	movl	%eax, next_ridx(%rip)
	js	.LBB61_3
# BB#2:                                 # %if.end
	movl	nfiles(%rip), %eax
	cmpl	%edx, %eax
	jle	.LBB61_3
# BB#4:                                 # %poll_get_fd.exit
	movq	poll_rfdidx(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rcx
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	js	.LBB61_7
# BB#5:                                 # %poll_get_fd.exit
	cmpl	%eax, %ecx
	jge	.LBB61_7
# BB#6:                                 # %if.end4
	movq	fd_data(%rip), %rax
	movq	(%rax,%rcx,8), %rbx
	jmp	.LBB61_7
.LBB61_3:                               # %poll_get_fd.exit.thread
	xorl	%ebx, %ebx
	movl	$3, %edi
	movl	$.L.str5519, %esi
	xorl	%eax, %eax
                                        # kill: EDX<def> EDX<kill> RDX<kill>
	callq	syslog
.LBB61_7:                               # %return
	movq	%rbx, %rax
	popq	%rbx
	ret
.Ltmp641:
	.size	fdwatch_get_next_client_data, .Ltmp641-fdwatch_get_next_client_data
	.cfi_endproc

	.globl	fdwatch_logstats
	.align	16, 0x90
	.type	fdwatch_logstats,@function
fdwatch_logstats:                       # @fdwatch_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp643:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	jle	.LBB62_2
# BB#1:                                 # %if.then
	movq	nwatches(%rip), %rdx
	cvtsi2ssq	%rdx, %xmm0
	cvtsi2ssq	%rdi, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$6, %edi
	movl	$.L.str3517, %esi
	movl	$.L.str4518, %ecx
	movb	$1, %al
	callq	syslog
.LBB62_2:                               # %if.end
	movq	$0, nwatches(%rip)
	popq	%rax
	ret
.Ltmp644:
	.size	fdwatch_logstats, .Ltmp644-fdwatch_logstats
	.cfi_endproc

	.globl	mmc_map
	.align	16, 0x90
	.type	mmc_map,@function
mmc_map:                                # @mmc_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp651:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp652:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp653:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp654:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp655:
	.cfi_def_cfa_offset 48
	subq	$144, %rsp
.Ltmp656:
	.cfi_def_cfa_offset 192
.Ltmp657:
	.cfi_offset %rbx, -48
.Ltmp658:
	.cfi_offset %r12, -40
.Ltmp659:
	.cfi_offset %r14, -32
.Ltmp660:
	.cfi_offset %r15, -24
.Ltmp661:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %r15
	testq	%rsi, %rsi
	je	.LBB63_4
# BB#1:                                 # %if.then
	leaq	(%rsp), %rdi
	movl	$144, %edx
	callq	memcpy
	jmp	.LBB63_2
.LBB63_4:                               # %if.else
	leaq	(%rsp), %rdx
	movl	$1, %edi
	movq	%r15, %rsi
	callq	__xstat
	testl	%eax, %eax
	je	.LBB63_2
# BB#5:                                 # %if.then2
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str538, %esi
	jmp	.LBB63_6
.LBB63_2:                               # %if.end3
	testq	%rbp, %rbp
	je	.LBB63_7
# BB#3:                                 # %if.then5
	movq	(%rbp), %r14
	jmp	.LBB63_8
.LBB63_7:                               # %if.else6
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r14
.LBB63_8:                               # %if.end8
	movq	hash_table(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB63_9
# BB#10:                                # %if.else.i
	movl	hash_size(%rip), %ebp
	imull	$3, map_count(%rip), %eax
	cmpl	%eax, %ebp
	jge	.LBB63_30
# BB#11:                                # %if.else3.i
	callq	free
	imull	$6, map_count(%rip), %eax
	movl	hash_size(%rip), %ebp
	.align	16, 0x90
.LBB63_12:                              # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	addl	%ebp, %ebp
	cmpl	%eax, %ebp
	jl	.LBB63_12
# BB#13:                                # %do.end.i
	movl	%ebp, hash_size(%rip)
	leal	-1(%rbp), %ebx
	jmp	.LBB63_14
.LBB63_9:                               # %if.then.i
	movl	$1024, hash_size(%rip)  # imm = 0x400
	movl	$1023, %ebx             # imm = 0x3FF
	movl	$1024, %ebp             # imm = 0x400
.LBB63_14:                              # %if.end7.i
	movl	%ebx, hash_mask(%rip)
	movslq	%ebp, %rdi
	shlq	$3, %rdi
	callq	malloc
	testq	%rax, %rax
	movq	%rax, hash_table(%rip)
	je	.LBB63_28
# BB#15:                                # %for.cond.preheader.i
	testl	%ebp, %ebp
	jle	.LBB63_19
# BB#16:                                # %for.body.i.preheader
	movq	$0, (%rax)
	cmpl	$2, %ebp
	jl	.LBB63_19
# BB#17:                                # %for.body.for.body_crit_edge.i.preheader
	leal	-2(%rbp), %ecx
	xorl	%edx, %edx
	jmp	.LBB63_18
	.align	16, 0x90
.LBB63_72:                              # %for.body.for.body_crit_edge.i.for.body.for.body_crit_edge.i_crit_edge
                                        #   in Loop: Header=BB63_18 Depth=1
	movq	hash_table(%rip), %rax
	incq	%rdx
.LBB63_18:                              # %for.body.for.body_crit_edge.i
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 8(%rax,%rdx,8)
	cmpl	%edx, %ecx
	jne	.LBB63_72
.LBB63_19:                              # %for.cond15.preheader.i
	movq	maps(%rip), %rax
	testq	%rax, %rax
	je	.LBB63_30
# BB#20:
	movl	$177573, %ecx           # imm = 0x2B5A5
	jmp	.LBB63_21
	.align	16, 0x90
.LBB63_27:                              # %for.inc24.for.body18_crit_edge.i
                                        #   in Loop: Header=BB63_21 Depth=1
	movl	hash_mask(%rip), %ebx
	movl	hash_size(%rip), %ebp
.LBB63_21:                              # %for.body18.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB63_23 Depth 2
	movl	(%rax), %edx
	xorl	%ecx, %edx
	imull	$33, %edx, %edx
	xorl	8(%rax), %edx
	imull	$33, %edx, %edx
	xorl	16(%rax), %edx
	imull	$33, %edx, %edx
	xorl	24(%rax), %edx
	andl	%ebx, %edx
	movq	hash_table(%rip), %rdi
	cmpq	$0, (%rdi,%rdx,8)
	jne	.LBB63_22
# BB#73:                                #   in Loop: Header=BB63_21 Depth=1
	leaq	(%rdi,%rdx,8), %rdi
	movl	%edx, %esi
	jmp	.LBB63_26
	.align	16, 0x90
.LBB63_22:                              #   in Loop: Header=BB63_21 Depth=1
	leal	-1(%rbp,%rdx), %ebp
	andl	%ebx, %ebp
	movl	%edx, %esi
	.align	16, 0x90
.LBB63_23:                              # %if.end.i.i
                                        #   Parent Loop BB63_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%ebp, %esi
	je	.LBB63_28
# BB#24:                                # %for.inc.i.i
                                        #   in Loop: Header=BB63_23 Depth=2
	incl	%esi
	andl	%ebx, %esi
	cmpq	$0, (%rdi,%rsi,8)
	jne	.LBB63_23
# BB#25:                                #   in Loop: Header=BB63_21 Depth=1
	leaq	(%rdi,%rsi,8), %rdi
.LBB63_26:                              # %for.inc24.i
                                        #   in Loop: Header=BB63_21 Depth=1
	movq	%rax, (%rdi)
	movl	%edx, 56(%rax)
	movl	%esi, 60(%rax)
	movq	64(%rax), %rax
	testq	%rax, %rax
	jne	.LBB63_27
# BB#29:                                # %if.end12.loopexit
	movl	hash_size(%rip), %ebp
.LBB63_30:                              # %if.end12
	movq	(%rsp), %r10
	movq	8(%rsp), %rcx
	movq	48(%rsp), %r9
	movq	104(%rsp), %r8
	movl	%ecx, %eax
	xorl	$177573, %eax           # imm = 0x2B5A5
	imull	$33, %eax, %eax
	movl	%r10d, %edx
	xorl	%eax, %edx
	imull	$33, %edx, %eax
	movl	%r9d, %edx
	xorl	%eax, %edx
	imull	$33, %edx, %edx
	movl	%r8d, %eax
	xorl	%edx, %eax
	movl	hash_mask(%rip), %ebx
	andl	%ebx, %eax
	movq	hash_table(%rip), %rsi
	movq	(%rsi,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB63_39
# BB#31:
	leal	-1(%rbp,%rax), %ebp
	andl	%ebx, %ebp
	movl	%eax, %edi
	.align	16, 0x90
.LBB63_32:                              # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, 56(%rdx)
	jne	.LBB63_37
# BB#33:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB63_32 Depth=1
	cmpq	%rcx, (%rdx)
	jne	.LBB63_37
# BB#34:                                # %land.lhs.true4.i
                                        #   in Loop: Header=BB63_32 Depth=1
	cmpq	%r10, 8(%rdx)
	jne	.LBB63_37
# BB#35:                                # %land.lhs.true7.i
                                        #   in Loop: Header=BB63_32 Depth=1
	cmpq	%r9, 16(%rdx)
	jne	.LBB63_37
# BB#36:                                # %land.lhs.true10.i
                                        #   in Loop: Header=BB63_32 Depth=1
	cmpq	%r8, 24(%rdx)
	je	.LBB63_41
	.align	16, 0x90
.LBB63_37:                              # %if.end14.i
                                        #   in Loop: Header=BB63_32 Depth=1
	cmpl	%ebp, %edi
	je	.LBB63_39
# BB#38:                                # %for.inc.i
                                        #   in Loop: Header=BB63_32 Depth=1
	incl	%edi
	andl	%ebx, %edi
	movq	(%rsi,%rdi,8), %rdx
	testq	%rdx, %rdx
	jne	.LBB63_32
	jmp	.LBB63_39
.LBB63_28:                              # %if.then11
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str1539, %esi
	jmp	.LBB63_6
.LBB63_41:                              # %find_hash.exit
	testq	%rdx, %rdx
	je	.LBB63_39
# BB#42:                                # %if.then16
	incl	32(%rdx)
	movq	%r14, 40(%rdx)
	movq	48(%rdx), %rbp
	jmp	.LBB63_71
.LBB63_39:                              # %if.end17
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	open
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB63_40
# BB#43:                                # %if.end21
	movq	free_maps(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB63_45
# BB#44:                                # %if.then23
	movq	64(%rbx), %rax
	movq	%rax, free_maps(%rip)
	decl	free_count(%rip)
	jmp	.LBB63_48
.LBB63_40:                              # %if.then20
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str2540, %esi
	jmp	.LBB63_6
.LBB63_45:                              # %if.else24
	movl	$72, %edi
	callq	malloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB63_46
# BB#47:                                # %if.end29
	incl	alloc_count(%rip)
.LBB63_48:                              # %if.end31
	movq	8(%rsp), %rax
	movq	%rax, (%rbx)
	movq	(%rsp), %rax
	movq	%rax, 8(%rbx)
	movq	48(%rsp), %r15
	testq	%r15, %r15
	movq	%r15, 16(%rbx)
	movq	104(%rsp), %rax
	movq	%rax, 24(%rbx)
	movl	$1, 32(%rbx)
	movq	%r14, 40(%rbx)
	je	.LBB63_49
# BB#53:                                # %if.else43
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movl	%r12d, %r8d
	callq	mmap
	cmpq	$-1, %rax
	movq	%rax, 48(%rbx)
	jne	.LBB63_50
# BB#54:                                # %land.lhs.true
	callq	__errno_location
	cmpl	$12, (%rax)
	jne	.LBB63_64
# BB#55:                                # %if.then51
	movl	$3, %edi
	movl	$.L.str11549, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	$maps, %r14d
	movq	maps(%rip), %rbp
	jmp	.LBB63_56
.LBB63_49:                              # %if.then41
	movq	$1, 48(%rbx)
.LBB63_50:                              # %if.end61
	movl	%r12d, %edi
	callq	close
	movq	16(%rbx), %rax
	movl	$177573, %ecx           # imm = 0x2B5A5
	xorl	(%rbx), %ecx
	imull	$33, %ecx, %ecx
	xorl	8(%rbx), %ecx
	imull	$33, %ecx, %ecx
	movl	%eax, %edx
	xorl	%ecx, %edx
	imull	$33, %edx, %ecx
	xorl	24(%rbx), %ecx
	movl	hash_mask(%rip), %edx
	andl	%edx, %ecx
	movl	hash_size(%rip), %esi
	movq	hash_table(%rip), %rdi
	cmpq	$0, (%rdi,%rcx,8)
	je	.LBB63_51
# BB#65:
	leal	-1(%rsi,%rcx), %ebp
	andl	%edx, %ebp
	movl	%ecx, %esi
	.align	16, 0x90
.LBB63_66:                              # %if.end.i143
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, %esi
	je	.LBB63_69
# BB#67:                                # %for.inc.i147
                                        #   in Loop: Header=BB63_66 Depth=1
	incl	%esi
	andl	%edx, %esi
	cmpq	$0, (%rdi,%rsi,8)
	jne	.LBB63_66
# BB#68:
	leaq	(%rdi,%rsi,8), %rdx
	jmp	.LBB63_52
.LBB63_51:
	leaq	(%rdi,%rcx,8), %rdx
	movl	%ecx, %esi
.LBB63_52:                              # %if.end67
	movq	%rbx, (%rdx)
	movl	%ecx, 56(%rbx)
	movl	%esi, 60(%rbx)
	movq	maps(%rip), %rcx
	movq	%rcx, 64(%rbx)
	movq	%rbx, maps(%rip)
	incl	map_count(%rip)
	addq	%rax, mapped_bytes(%rip)
	movq	48(%rbx), %rbp
	jmp	.LBB63_71
.LBB63_69:                              # %if.then65
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str5543, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB63_70
.LBB63_61:                              # %really_unmap.exit.i
                                        #   in Loop: Header=BB63_56 Depth=1
	movq	16(%rbp), %rax
	subq	%rax, mapped_bytes(%rip)
	movq	64(%rbp), %rax
	movq	%rax, (%r14)
	decl	map_count(%rip)
	movq	free_maps(%rip), %rax
	movq	%rax, 64(%rbp)
	movq	%rbp, free_maps(%rip)
	incl	free_count(%rip)
	movslq	60(%rbp), %rax
	movq	hash_table(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	(%r14), %rbp
.LBB63_56:                              # %if.then51
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB63_63
# BB#57:                                # %for.body.i116
                                        #   in Loop: Header=BB63_56 Depth=1
	cmpl	$0, 32(%rbp)
	jne	.LBB63_62
# BB#58:                                # %if.then.i119
                                        #   in Loop: Header=BB63_56 Depth=1
	movq	16(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB63_61
# BB#59:                                # %if.then.i.i
                                        #   in Loop: Header=BB63_56 Depth=1
	movq	48(%rbp), %rdi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB63_61
# BB#60:                                # %if.then3.i.i
                                        #   in Loop: Header=BB63_56 Depth=1
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB63_61
.LBB63_62:                              # %if.else.i127
                                        #   in Loop: Header=BB63_56 Depth=1
	movq	%rbp, %r14
	movq	64(%rbp), %rbp
	addq	$64, %r14
	jmp	.LBB63_56
.LBB63_46:                              # %if.then27
	movl	%r12d, %edi
	callq	close
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str3541, %esi
.LBB63_6:                               # %cleanup
	xorl	%eax, %eax
	callq	syslog
.LBB63_71:                              # %cleanup
	movq	%rbp, %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB63_63:                              # %if.end54
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movq	%r15, %rsi
	movl	%r12d, %r8d
	callq	mmap
	cmpq	$-1, %rax
	movq	%rax, 48(%rbx)
	jne	.LBB63_50
.LBB63_64:                              # %if.then57
	xorl	%ebp, %ebp
	movl	$3, %edi
	movl	$.L.str4542, %esi
	xorl	%eax, %eax
	callq	syslog
	movl	%r12d, %edi
	callq	close
.LBB63_70:                              # %cleanup
	movq	%rbx, %rdi
	callq	free
	decl	alloc_count(%rip)
	jmp	.LBB63_71
.Ltmp662:
	.size	mmc_map, .Ltmp662-mmc_map
	.cfi_endproc

	.globl	mmc_unmap
	.align	16, 0x90
	.type	mmc_unmap,@function
mmc_unmap:                              # @mmc_unmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp667:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp668:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp669:
	.cfi_def_cfa_offset 32
.Ltmp670:
	.cfi_offset %rbx, -32
.Ltmp671:
	.cfi_offset %r14, -24
.Ltmp672:
	.cfi_offset %rbp, -16
	testq	%rsi, %rsi
	je	.LBB64_12
# BB#1:                                 # %if.then
	movq	(%rsi), %r10
	movq	8(%rsi), %r11
	movq	48(%rsi), %r8
	movq	104(%rsi), %r9
	movl	%r11d, %eax
	xorl	$177573, %eax           # imm = 0x2B5A5
	imull	$33, %eax, %eax
	movl	%r10d, %ecx
	xorl	%eax, %ecx
	imull	$33, %ecx, %eax
	movl	%r8d, %ecx
	xorl	%eax, %ecx
	imull	$33, %ecx, %ecx
	movl	%r9d, %eax
	xorl	%ecx, %eax
	movl	hash_mask(%rip), %r14d
	andl	%r14d, %eax
	movl	hash_size(%rip), %esi
	movq	hash_table(%rip), %rcx
	movq	(%rcx,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB64_12
# BB#2:
	leal	-1(%rsi,%rax), %ebp
	andl	%r14d, %ebp
	movl	%eax, %esi
	.align	16, 0x90
.LBB64_3:                               # %if.end.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, 56(%rbx)
	jne	.LBB64_8
# BB#4:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r11, (%rbx)
	jne	.LBB64_8
# BB#5:                                 # %land.lhs.true4.i
                                        #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r10, 8(%rbx)
	jne	.LBB64_8
# BB#6:                                 # %land.lhs.true7.i
                                        #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r8, 16(%rbx)
	jne	.LBB64_8
# BB#7:                                 # %land.lhs.true10.i
                                        #   in Loop: Header=BB64_3 Depth=1
	cmpq	%r9, 24(%rbx)
	je	.LBB64_10
	.align	16, 0x90
.LBB64_8:                               # %if.end14.i
                                        #   in Loop: Header=BB64_3 Depth=1
	cmpl	%ebp, %esi
	je	.LBB64_12
# BB#9:                                 # %for.inc.i
                                        #   in Loop: Header=BB64_3 Depth=1
	incl	%esi
	andl	%r14d, %esi
	movq	(%rcx,%rsi,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB64_3
	jmp	.LBB64_12
.LBB64_10:                              # %find_hash.exit
	testq	%rbx, %rbx
	je	.LBB64_12
# BB#11:                                # %land.lhs.true
	cmpq	%rdi, 48(%rbx)
	je	.LBB64_18
.LBB64_12:                              # %for.cond.preheader
	movq	maps(%rip), %rbx
	jmp	.LBB64_13
	.align	16, 0x90
.LBB64_16:                              # %for.cond
                                        #   in Loop: Header=BB64_13 Depth=1
	movq	64(%rbx), %rbx
.LBB64_13:                              # %for.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB64_14
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB64_13 Depth=1
	cmpq	%rdi, 48(%rbx)
	jne	.LBB64_16
.LBB64_18:                              # %if.else
	movl	32(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB64_19
# BB#20:                                # %if.else18
	decl	%eax
	movl	%eax, 32(%rbx)
	testq	%rdx, %rdx
	je	.LBB64_22
# BB#21:                                # %if.then21
	movq	(%rdx), %rax
	jmp	.LBB64_23
.LBB64_14:                              # %if.then15
	movl	$3, %edi
	movl	$.L.str6544, %esi
.LBB64_15:                              # %if.then15
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	syslog                  # TAILCALL
.LBB64_19:                              # %if.then17
	movl	$3, %edi
	movl	$.L.str7545, %esi
	jmp	.LBB64_15
.LBB64_22:                              # %if.else23
	xorl	%edi, %edi
	callq	time
.LBB64_23:                              # %if.end28
	movq	%rax, 40(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp673:
	.size	mmc_unmap, .Ltmp673-mmc_unmap
	.cfi_endproc

	.globl	mmc_cleanup
	.align	16, 0x90
	.type	mmc_cleanup,@function
mmc_cleanup:                            # @mmc_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp678:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp679:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp680:
	.cfi_def_cfa_offset 32
.Ltmp681:
	.cfi_offset %rbx, -32
.Ltmp682:
	.cfi_offset %r14, -24
.Ltmp683:
	.cfi_offset %r15, -16
	testq	%rdi, %rdi
	je	.LBB65_2
# BB#1:                                 # %if.then
	movq	(%rdi), %r14
	jmp	.LBB65_3
.LBB65_2:                               # %if.else
	xorl	%edi, %edi
	callq	time
	movq	%rax, %r14
.LBB65_3:                               # %if.end
	movl	$maps, %r15d
	movq	maps(%rip), %rax
	testq	%rax, %rax
	je	.LBB65_12
.LBB65_4:                               # %for.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB65_5 Depth 2
	movq	%rax, %rbx
	.align	16, 0x90
.LBB65_5:                               # %for.body
                                        #   Parent Loop BB65_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 32(%rbx)
	jne	.LBB65_11
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	%r14, %rax
	subq	40(%rbx), %rax
	cmpq	expire_age(%rip), %rax
	jl	.LBB65_11
# BB#7:                                 # %if.then4
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB65_10
# BB#8:                                 # %if.then.i
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	48(%rbx), %rdi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB65_10
# BB#9:                                 # %if.then3.i
                                        #   in Loop: Header=BB65_5 Depth=2
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
.LBB65_10:                              # %really_unmap.exit
                                        #   in Loop: Header=BB65_5 Depth=2
	movq	mapped_bytes(%rip), %rax
	subq	16(%rbx), %rax
	movq	%rax, mapped_bytes(%rip)
	movq	64(%rbx), %rcx
	movq	%rcx, (%r15)
	decl	map_count(%rip)
	movq	free_maps(%rip), %rcx
	movq	%rcx, 64(%rbx)
	movq	%rbx, free_maps(%rip)
	incl	free_count(%rip)
	movslq	60(%rbx), %rcx
	movq	hash_table(%rip), %rdx
	movq	$0, (%rdx,%rcx,8)
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	jne	.LBB65_5
	jmp	.LBB65_13
	.align	16, 0x90
.LBB65_11:                              # %if.else5
                                        #   in Loop: Header=BB65_4 Depth=1
	movq	64(%rbx), %rax
	addq	$64, %rbx
	testq	%rax, %rax
	movq	%rbx, %r15
	jne	.LBB65_4
.LBB65_12:                              # %for.end.loopexit
	movq	mapped_bytes(%rip), %rax
.LBB65_13:                              # %for.end
	cmpq	$1000000001, %rax       # imm = 0x3B9ACA01
	jl	.LBB65_17
# BB#14:                                # %if.then8
	movq	expire_age(%rip), %rax
	addq	%rax, %rax
	cmpq	$183, %rax
	movl	$60, %ecx
	jl	.LBB65_16
# BB#15:                                # %cond.true
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
.LBB65_16:                              # %cond.end
	movq	%rcx, expire_age(%rip)
	jmp	.LBB65_25
.LBB65_17:                              # %if.else12
	movl	map_count(%rip), %eax
	cmpl	$1001, %eax             # imm = 0x3E9
	jl	.LBB65_21
# BB#18:                                # %if.then14
	movq	expire_age(%rip), %rax
	addq	%rax, %rax
	cmpq	$183, %rax
	movl	$60, %ecx
	jl	.LBB65_20
# BB#19:                                # %cond.true18
	movabsq	$6148914691236517206, %rcx # imm = 0x5555555555555556
	imulq	%rcx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	%rdx, %rcx
.LBB65_20:                              # %cond.end22
	movq	%rcx, expire_age(%rip)
	jmp	.LBB65_25
.LBB65_21:                              # %if.else24
	cmpl	$499, %eax              # imm = 0x1F3
	jg	.LBB65_25
# BB#22:                                # %if.then26
	imulq	$5, expire_age(%rip), %rcx
	cmpq	$7199, %rcx             # imm = 0x1C1F
	movl	$1800, %eax             # imm = 0x708
	jg	.LBB65_24
# BB#23:                                # %cond.true30
	movq	%rcx, %rax
	sarq	$63, %rax
	shrq	$62, %rax
	addq	%rcx, %rax
	sarq	$2, %rax
.LBB65_24:                              # %cond.end34
	movq	%rax, expire_age(%rip)
.LBB65_25:                              # %while.cond.preheader
	movl	free_count(%rip), %eax
	cmpl	$101, %eax
	jl	.LBB65_27
	.align	16, 0x90
.LBB65_26:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	free_maps(%rip), %rdi
	movq	64(%rdi), %rcx
	movq	%rcx, free_maps(%rip)
	decl	%eax
	movl	%eax, free_count(%rip)
	callq	free
	decl	alloc_count(%rip)
	movl	free_count(%rip), %eax
	cmpl	$100, %eax
	jg	.LBB65_26
.LBB65_27:                              # %while.end
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.Ltmp684:
	.size	mmc_cleanup, .Ltmp684-mmc_cleanup
	.cfi_endproc

	.globl	mmc_destroy
	.align	16, 0x90
	.type	mmc_destroy,@function
mmc_destroy:                            # @mmc_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp687:
	.cfi_def_cfa_offset 16
.Ltmp688:
	.cfi_offset %rbx, -16
	jmp	.LBB66_1
	.align	16, 0x90
.LBB66_5:                               # %really_unmap.exit
                                        #   in Loop: Header=BB66_1 Depth=1
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
	je	.LBB66_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB66_5
# BB#3:                                 # %if.then.i
                                        #   in Loop: Header=BB66_1 Depth=1
	movq	48(%rbx), %rdi
	callq	munmap
	testl	%eax, %eax
	jns	.LBB66_5
# BB#4:                                 # %if.then3.i
                                        #   in Loop: Header=BB66_1 Depth=1
	movl	$3, %edi
	movl	$.L.str10548, %esi
	xorl	%eax, %eax
	callq	syslog
	jmp	.LBB66_5
	.align	16, 0x90
.LBB66_6:                               # %while.body3
                                        #   in Loop: Header=BB66_7 Depth=1
	movq	64(%rdi), %rax
	movq	%rax, free_maps(%rip)
	decl	free_count(%rip)
	callq	free
	decl	alloc_count(%rip)
.LBB66_7:                               # %while.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	free_maps(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB66_6
# BB#8:                                 # %while.end5
	popq	%rbx
	ret
.Ltmp689:
	.size	mmc_destroy, .Ltmp689-mmc_destroy
	.cfi_endproc

	.globl	mmc_logstats
	.align	16, 0x90
	.type	mmc_logstats,@function
mmc_logstats:                           # @mmc_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp691:
	.cfi_def_cfa_offset 32
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
	jne	.LBB67_2
# BB#1:                                 # %if.end
	addq	$24, %rsp
	ret
.LBB67_2:                               # %if.then
	movl	$3, %edi
	movl	$.L.str9547, %esi
	xorl	%eax, %eax
	addq	$24, %rsp
	jmp	syslog                  # TAILCALL
.Ltmp692:
	.size	mmc_logstats, .Ltmp692-mmc_logstats
	.cfi_endproc

	.globl	tmr_init
	.align	16, 0x90
	.type	tmr_init,@function
tmr_init:                               # @tmr_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp694:
	.cfi_def_cfa_offset 16
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
.Ltmp695:
	.size	tmr_init, .Ltmp695-tmr_init
	.cfi_endproc

	.globl	tmr_create
	.align	16, 0x90
	.type	tmr_create,@function
tmr_create:                             # @tmr_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp703:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp704:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp705:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp706:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp707:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp708:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp709:
	.cfi_def_cfa_offset 64
.Ltmp710:
	.cfi_offset %rbx, -56
.Ltmp711:
	.cfi_offset %r12, -48
.Ltmp712:
	.cfi_offset %r13, -40
.Ltmp713:
	.cfi_offset %r14, -32
.Ltmp714:
	.cfi_offset %r15, -24
.Ltmp715:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movq	free_timers(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB69_2
# BB#1:                                 # %if.then
	movq	56(%rbx), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	jmp	.LBB69_4
.LBB69_2:                               # %if.else
	movl	$72, %edi
	callq	malloc
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB69_10
# BB#3:                                 # %if.end
	incl	alloc_count561(%rip)
	movq	%rax, %rbx
.LBB69_4:                               # %if.end3
	movq	%rbp, (%rbx)
	movq	%r13, 8(%rbx)
	movq	%r14, 16(%rbx)
	movl	%r12d, 24(%rbx)
	leaq	32(%rbx), %rdi
	testq	%r15, %r15
	je	.LBB69_6
# BB#5:                                 # %if.then9
	movups	(%r15), %xmm0
	movups	%xmm0, (%rdi)
	jmp	.LBB69_7
.LBB69_6:                               # %if.else10
	xorl	%esi, %esi
	callq	gettimeofday
.LBB69_7:                               # %if.end13
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	addq	32(%rbx), %rcx
	movq	%rcx, 32(%rbx)
	subq	%rax, %r14
	imulq	$1000, %r14, %rsi       # imm = 0x3E8
	addq	40(%rbx), %rsi
	cmpq	$1000000, %rsi          # imm = 0xF4240
	movq	%rsi, 40(%rbx)
	jl	.LBB69_9
# BB#8:                                 # %if.then20
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rsi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 32(%rbx)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rsi
	movq	%rsi, 40(%rbx)
.LBB69_9:                               # %if.end30
	xorl	%ecx, %esi
	imulq	$128207979, %rsi, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %esi
	movl	%esi, 64(%rbx)
	movq	%rbx, %rdi
	callq	l_add
	incl	active_count(%rip)
.LBB69_10:                              # %return
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp716:
	.size	tmr_create, .Ltmp716-tmr_create
	.cfi_endproc

	.globl	tmr_timeout
	.align	16, 0x90
	.type	tmr_timeout,@function
tmr_timeout:                            # @tmr_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r10d, %r10d
	movq	$-536, %rcx             # imm = 0xFFFFFFFFFFFFFDE8
	movabsq	$2361183241434822607, %r8 # imm = 0x20C49BA5E353F7CF
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB70_1:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	timers+536(%rcx), %rax
	testq	%rax, %rax
	je	.LBB70_5
# BB#2:                                 # %if.then.i
                                        #   in Loop: Header=BB70_1 Depth=1
	movq	32(%rax), %rdx
	movq	40(%rax), %rax
	subq	(%rdi), %rdx
	imulq	$1000, %rdx, %rsi       # imm = 0x3E8
	subq	8(%rdi), %rax
	imulq	%r8
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%rsi, %rdx
	testl	%r9d, %r9d
	jne	.LBB70_4
# BB#3:                                 #   in Loop: Header=BB70_1 Depth=1
	movl	$1, %r9d
	movq	%rdx, %r10
	jmp	.LBB70_5
	.align	16, 0x90
.LBB70_4:                               # %if.else.i
                                        #   in Loop: Header=BB70_1 Depth=1
	cmpq	%r10, %rdx
	cmovleq	%rdx, %r10
.LBB70_5:                               # %for.inc.i
                                        #   in Loop: Header=BB70_1 Depth=1
	addq	$8, %rcx
	jne	.LBB70_1
# BB#6:                                 # %for.end.i
	xorl	%eax, %eax
	testl	%r9d, %r9d
	je	.LBB70_8
# BB#7:                                 # %if.end13.i
	xorl	%ecx, %ecx
	testq	%r10, %r10
	cmovnsq	%r10, %rcx
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movq	%rdx, tmr_timeout.timeout(%rip)
	movl	$tmr_timeout.timeout, %eax
	imulq	$1000, %rdx, %rdx       # imm = 0x3E8
	subq	%rdx, %rcx
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	movq	%rcx, tmr_timeout.timeout+8(%rip)
.LBB70_8:                               # %return
	ret
.Ltmp717:
	.size	tmr_timeout, .Ltmp717-tmr_timeout
	.cfi_endproc

	.globl	tmr_mstimeout
	.align	16, 0x90
	.type	tmr_mstimeout,@function
tmr_mstimeout:                          # @tmr_mstimeout
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%r10d, %r10d
	movq	$-536, %rsi             # imm = 0xFFFFFFFFFFFFFDE8
	movabsq	$2361183241434822607, %r8 # imm = 0x20C49BA5E353F7CF
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB71_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	timers+536(%rsi), %rax
	testq	%rax, %rax
	je	.LBB71_5
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	32(%rax), %rdx
	movq	40(%rax), %rax
	subq	(%rdi), %rdx
	imulq	$1000, %rdx, %rcx       # imm = 0x3E8
	subq	8(%rdi), %rax
	imulq	%r8
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	testl	%r9d, %r9d
	jne	.LBB71_4
# BB#3:                                 #   in Loop: Header=BB71_1 Depth=1
	movl	$1, %r9d
	movq	%rdx, %r10
	jmp	.LBB71_5
	.align	16, 0x90
.LBB71_4:                               # %if.else
                                        #   in Loop: Header=BB71_1 Depth=1
	cmpq	%r10, %rdx
	cmovleq	%rdx, %r10
.LBB71_5:                               # %for.inc
                                        #   in Loop: Header=BB71_1 Depth=1
	addq	$8, %rsi
	jne	.LBB71_1
# BB#6:                                 # %for.end
	movq	$-1, %rax
	testl	%r9d, %r9d
	je	.LBB71_8
# BB#7:                                 # %if.end13
	xorl	%eax, %eax
	testq	%r10, %r10
	cmovnsq	%r10, %rax
.LBB71_8:                               # %return
	ret
.Ltmp718:
	.size	tmr_mstimeout, .Ltmp718-tmr_mstimeout
	.cfi_endproc

	.globl	tmr_run
	.align	16, 0x90
	.type	tmr_run,@function
tmr_run:                                # @tmr_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp726:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp727:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp728:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp729:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp730:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp731:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp732:
	.cfi_def_cfa_offset 64
.Ltmp733:
	.cfi_offset %rbx, -56
.Ltmp734:
	.cfi_offset %r12, -48
.Ltmp735:
	.cfi_offset %r13, -40
.Ltmp736:
	.cfi_offset %r14, -32
.Ltmp737:
	.cfi_offset %r15, -24
.Ltmp738:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movabsq	$2361183241434822607, %r12 # imm = 0x20C49BA5E353F7CF
	movabsq	$4835703278458516699, %r13 # imm = 0x431BDE82D7B634DB
	.align	16, 0x90
.LBB72_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_2 Depth 2
	movq	timers(,%r15,8), %rbx
	testq	%rbx, %rbx
	je	.LBB72_15
	.align	16, 0x90
.LBB72_2:                               # %for.body3
                                        #   Parent Loop BB72_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	32(%rbx), %rax
	cmpq	(%r14), %rax
	jg	.LBB72_15
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	56(%rbx), %rbp
	jne	.LBB72_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	40(%rbx), %rax
	cmpq	8(%r14), %rax
	jg	.LBB72_15
.LBB72_5:                               # %if.end
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rbx)
	cmpl	$0, 24(%rbx)
	jne	.LBB72_6
# BB#17:                                # %if.else
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	48(%rbx), %rcx
	movq	56(%rbx), %rax
	testq	%rcx, %rcx
	jne	.LBB72_19
# BB#18:                                # %if.then.i.i65
                                        #   in Loop: Header=BB72_2 Depth=2
	movslq	64(%rbx), %rcx
	movq	%rax, timers(,%rcx,8)
	jmp	.LBB72_20
	.align	16, 0x90
.LBB72_6:                               # %if.then14
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	16(%rbx), %rsi
	movq	%rsi, %rax
	imulq	%r12
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	addq	32(%rbx), %rcx
	movq	%rcx, 32(%rbx)
	subq	%rax, %rsi
	imulq	$1000, %rsi, %rsi       # imm = 0x3E8
	addq	40(%rbx), %rsi
	cmpq	$1000000, %rsi          # imm = 0xF4240
	movq	%rsi, 40(%rbx)
	jl	.LBB72_8
# BB#7:                                 # %if.then24
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	%rsi, %rax
	imulq	%r13
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 32(%rbx)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rsi
	movq	%rsi, 40(%rbx)
.LBB72_8:                               # %if.end34
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	48(%rbx), %rdx
	movq	56(%rbx), %rax
	testq	%rdx, %rdx
	jne	.LBB72_10
# BB#9:                                 # %if.then.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movslq	64(%rbx), %rdx
	movq	%rax, timers(,%rdx,8)
	jmp	.LBB72_11
	.align	16, 0x90
.LBB72_19:                              # %if.else.i.i67
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	%rax, 56(%rcx)
.LBB72_20:                              # %if.end.i.i69
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB72_22
# BB#21:                                # %if.then6.i.i71
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	48(%rbx), %rcx
	movq	%rcx, 48(%rax)
.LBB72_22:                              # %tmr_cancel.exit
                                        #   in Loop: Header=BB72_2 Depth=2
	decl	active_count(%rip)
	movq	free_timers(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%rbx)
	jmp	.LBB72_14
	.align	16, 0x90
.LBB72_10:                              # %if.else.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	%rax, 56(%rdx)
.LBB72_11:                              # %if.end.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	56(%rbx), %rax
	testq	%rax, %rax
	je	.LBB72_13
# BB#12:                                # %if.then6.i.i
                                        #   in Loop: Header=BB72_2 Depth=2
	movq	48(%rbx), %rdx
	movq	%rdx, 48(%rax)
.LBB72_13:                              # %l_resort.exit
                                        #   in Loop: Header=BB72_2 Depth=2
	xorl	%ecx, %esi
	imulq	$128207979, %rsi, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %esi
	movl	%esi, 64(%rbx)
	movq	%rbx, %rdi
	callq	l_add
.LBB72_14:                              # %for.cond1.backedge
                                        #   in Loop: Header=BB72_2 Depth=2
	testq	%rbp, %rbp
	movq	%rbp, %rbx
	jne	.LBB72_2
	.align	16, 0x90
.LBB72_15:                              # %for.inc36
                                        #   in Loop: Header=BB72_1 Depth=1
	incq	%r15
	cmpq	$67, %r15
	jne	.LBB72_1
# BB#16:                                # %for.end37
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp739:
	.size	tmr_run, .Ltmp739-tmr_run
	.cfi_endproc

	.globl	tmr_cancel
	.align	16, 0x90
	.type	tmr_cancel,@function
tmr_cancel:                             # @tmr_cancel
	.cfi_startproc
# BB#0:                                 # %entry
	movq	48(%rdi), %rcx
	movq	56(%rdi), %rax
	testq	%rcx, %rcx
	je	.LBB73_1
# BB#2:                                 # %if.else.i
	movq	%rax, 56(%rcx)
	jmp	.LBB73_3
.LBB73_1:                               # %if.then.i
	movslq	64(%rdi), %rcx
	movq	%rax, timers(,%rcx,8)
.LBB73_3:                               # %if.end.i
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB73_5
# BB#4:                                 # %if.then6.i
	movq	48(%rdi), %rcx
	movq	%rcx, 48(%rax)
.LBB73_5:                               # %l_remove.exit
	decl	active_count(%rip)
	movq	free_timers(%rip), %rax
	movq	%rax, 56(%rdi)
	movq	%rdi, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%rdi)
	ret
.Ltmp740:
	.size	tmr_cancel, .Ltmp740-tmr_cancel
	.cfi_endproc

	.globl	tmr_reset
	.align	16, 0x90
	.type	tmr_reset,@function
tmr_reset:                              # @tmr_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movups	(%rdi), %xmm0
	movups	%xmm0, 32(%rsi)
	movq	16(%rsi), %rdi
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%rdi, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$7, %rcx
	addq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	addq	32(%rsi), %rcx
	movq	%rcx, 32(%rsi)
	subq	%rax, %rdi
	imulq	$1000, %rdi, %rdi       # imm = 0x3E8
	addq	40(%rsi), %rdi
	cmpq	$1000000, %rdi          # imm = 0xF4240
	movq	%rdi, 40(%rsi)
	jl	.LBB74_2
# BB#1:                                 # %if.then
	movabsq	$4835703278458516699, %rdx # imm = 0x431BDE82D7B634DB
	movq	%rdi, %rax
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$18, %rdx
	addq	%rax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 32(%rsi)
	imulq	$1000000, %rdx, %rax    # imm = 0xF4240
	subq	%rax, %rdi
	movq	%rdi, 40(%rsi)
.LBB74_2:                               # %if.end
	movq	48(%rsi), %rdx
	movq	56(%rsi), %rax
	testq	%rdx, %rdx
	je	.LBB74_3
# BB#4:                                 # %if.else.i.i
	movq	%rax, 56(%rdx)
	jmp	.LBB74_5
.LBB74_3:                               # %if.then.i.i
	movslq	64(%rsi), %rdx
	movq	%rax, timers(,%rdx,8)
.LBB74_5:                               # %if.end.i.i
	movq	56(%rsi), %rax
	testq	%rax, %rax
	je	.LBB74_7
# BB#6:                                 # %if.then6.i.i
	movq	48(%rsi), %rdx
	movq	%rdx, 48(%rax)
.LBB74_7:                               # %l_resort.exit
	xorl	%ecx, %edi
	imulq	$128207979, %rdi, %rax  # imm = 0x7A44C6B
	shrq	$33, %rax
	imull	$67, %eax, %eax
	subl	%eax, %edi
	movl	%edi, 64(%rsi)
	movq	%rsi, %rdi
	jmp	l_add                   # TAILCALL
.Ltmp741:
	.size	tmr_reset, .Ltmp741-tmr_reset
	.cfi_endproc

	.globl	tmr_cleanup
	.align	16, 0x90
	.type	tmr_cleanup,@function
tmr_cleanup:                            # @tmr_cleanup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp743:
	.cfi_def_cfa_offset 16
	jmp	.LBB75_2
	.align	16, 0x90
.LBB75_1:                               # %while.body
                                        #   in Loop: Header=BB75_2 Depth=1
	movq	56(%rdi), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	callq	free
	decl	alloc_count561(%rip)
.LBB75_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	free_timers(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB75_1
# BB#3:                                 # %while.end
	popq	%rax
	ret
.Ltmp744:
	.size	tmr_cleanup, .Ltmp744-tmr_cleanup
	.cfi_endproc

	.globl	tmr_destroy
	.align	16, 0x90
	.type	tmr_destroy,@function
tmr_destroy:                            # @tmr_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp746:
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	jmp	.LBB76_1
	.align	16, 0x90
.LBB76_7:                               # %tmr_cancel.exit
                                        #   in Loop: Header=BB76_1 Depth=1
	decl	active_count(%rip)
	movq	free_timers(%rip), %rdx
	movq	%rdx, 56(%rcx)
	movq	%rcx, free_timers(%rip)
	incl	free_count560(%rip)
	movq	$0, 48(%rcx)
.LBB76_1:                               # %while.cond.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	timers(,%rax,8), %rcx
	testq	%rcx, %rcx
	jne	.LBB76_2
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB76_1 Depth=1
	incq	%rax
	cmpq	$67, %rax
	jne	.LBB76_1
	jmp	.LBB76_10
	.align	16, 0x90
.LBB76_2:                               # %while.body
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	48(%rcx), %rsi
	movq	56(%rcx), %rdx
	testq	%rsi, %rsi
	jne	.LBB76_4
# BB#3:                                 # %if.then.i.i
                                        #   in Loop: Header=BB76_1 Depth=1
	movslq	64(%rcx), %rsi
	movq	%rdx, timers(,%rsi,8)
	jmp	.LBB76_5
	.align	16, 0x90
.LBB76_4:                               # %if.else.i.i
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	%rdx, 56(%rsi)
.LBB76_5:                               # %if.end.i.i
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	56(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB76_7
# BB#6:                                 # %if.then6.i.i
                                        #   in Loop: Header=BB76_1 Depth=1
	movq	48(%rcx), %rsi
	movq	%rsi, 48(%rdx)
	jmp	.LBB76_7
	.align	16, 0x90
.LBB76_9:                               # %while.body.i
                                        #   in Loop: Header=BB76_10 Depth=1
	movq	56(%rdi), %rax
	movq	%rax, free_timers(%rip)
	decl	free_count560(%rip)
	callq	free
	decl	alloc_count561(%rip)
.LBB76_10:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	free_timers(%rip), %rdi
	testq	%rdi, %rdi
	jne	.LBB76_9
# BB#11:                                # %tmr_cleanup.exit
	popq	%rax
	ret
.Ltmp747:
	.size	tmr_destroy, .Ltmp747-tmr_destroy
	.cfi_endproc

	.globl	tmr_logstats
	.align	16, 0x90
	.type	tmr_logstats,@function
tmr_logstats:                           # @tmr_logstats
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp749:
	.cfi_def_cfa_offset 16
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
	jne	.LBB77_2
# BB#1:                                 # %if.end
	popq	%rax
	ret
.LBB77_2:                               # %if.then
	movl	$3, %edi
	movl	$.L.str1563, %esi
	xorl	%eax, %eax
	popq	%rdx
	jmp	syslog                  # TAILCALL
.Ltmp750:
	.size	tmr_logstats, .Ltmp750-tmr_logstats
	.cfi_endproc

	.align	16, 0x90
	.type	l_add,@function
l_add:                                  # @l_add
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	64(%rdi), %rdx
	movq	timers(,%rdx,8), %rax
	testq	%rax, %rax
	je	.LBB78_1
# BB#2:                                 # %if.else
	movq	32(%rdi), %r8
	cmpq	32(%rax), %r8
	jl	.LBB78_7
# BB#3:                                 # %lor.lhs.false
	jne	.LBB78_4
# BB#6:                                 # %land.lhs.true
	movq	40(%rdi), %rcx
	cmpq	40(%rax), %rcx
	jle	.LBB78_7
.LBB78_4:                               # %for.cond.preheader
	leaq	56(%rax), %rdx
	movq	56(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB78_5
	.align	16, 0x90
.LBB78_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rsi
	cmpq	32(%rsi), %r8
	jl	.LBB78_14
# BB#9:                                 # %lor.lhs.false29
                                        #   in Loop: Header=BB78_8 Depth=1
	jne	.LBB78_11
# BB#10:                                # %land.lhs.true35
                                        #   in Loop: Header=BB78_8 Depth=1
	movq	40(%rdi), %rcx
	cmpq	40(%rsi), %rcx
	jle	.LBB78_14
.LBB78_11:                              # %for.cond.backedge
                                        #   in Loop: Header=BB78_8 Depth=1
	leaq	56(%rsi), %rdx
	movq	56(%rsi), %rcx
	testq	%rcx, %rcx
	movq	%rsi, %rax
	jne	.LBB78_8
	jmp	.LBB78_12
.LBB78_7:                               # %if.then15
	movq	%rdi, timers(,%rdx,8)
	movq	$0, 48(%rdi)
	movq	%rax, 56(%rdi)
	movq	%rdi, 48(%rax)
	ret
.LBB78_1:                               # %if.then
	movq	%rdi, timers(,%rdx,8)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rdi)
	ret
.LBB78_5:
	movq	%rax, %rsi
.LBB78_12:                              # %for.end
	movq	%rdi, (%rdx)
	movq	%rsi, 48(%rdi)
	movq	$0, 56(%rdi)
	ret
.LBB78_14:                              # %if.then41
	movq	%rdi, (%rdx)
	movq	%rax, 48(%rdi)
	movq	%rsi, 56(%rdi)
	movq	%rdi, 48(%rsi)
	ret
.Ltmp751:
	.size	l_add, .Ltmp751-l_add
	.cfi_endproc

	.globl	match
	.align	16, 0x90
	.type	match,@function
match:                                  # @match
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp756:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp757:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp758:
	.cfi_def_cfa_offset 32
.Ltmp759:
	.cfi_offset %rbx, -32
.Ltmp760:
	.cfi_offset %r14, -24
.Ltmp761:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	jmp	.LBB79_1
	.align	16, 0x90
.LBB79_3:                               # %for.cond
                                        #   in Loop: Header=BB79_1 Depth=1
	movq	%r15, %rbx
	incq	%rbx
.LBB79_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	movl	$124, %esi
	movq	%rbx, %rdi
	callq	strchr
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB79_2
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	%r15d, %esi
	subl	%ebx, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	match_one
	testl	%eax, %eax
	je	.LBB79_3
# BB#5:                                 # %return
	movl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	ret
.LBB79_2:                               # %if.then
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	match_one               # TAILCALL
.Ltmp762:
	.size	match, .Ltmp762-match
	.cfi_endproc

	.align	16, 0x90
	.type	match_one,@function
match_one:                              # @match_one
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp770:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp771:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp772:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp773:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp774:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp775:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp776:
	.cfi_def_cfa_offset 64
.Ltmp777:
	.cfi_offset %rbx, -56
.Ltmp778:
	.cfi_offset %r12, -48
.Ltmp779:
	.cfi_offset %r13, -40
.Ltmp780:
	.cfi_offset %r14, -32
.Ltmp781:
	.cfi_offset %r15, -24
.Ltmp782:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jle	.LBB80_1
# BB#2:
	movslq	%r14d, %rcx
	movq	%r15, %rdi
	movq	%r12, %r13
	.align	16, 0x90
.LBB80_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %eax
	cmpl	$42, %eax
	je	.LBB80_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB80_3 Depth=1
	movzbl	%al, %edx
	cmpl	$63, %edx
	jne	.LBB80_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB80_3 Depth=1
	cmpb	$0, (%rdi)
	jne	.LBB80_7
.LBB80_6:                               # %if.end72
                                        #   in Loop: Header=BB80_3 Depth=1
	movzbl	(%rdi), %esi
	xorl	%eax, %eax
	cmpl	%esi, %edx
	jne	.LBB80_19
.LBB80_7:                               # %for.inc79
                                        #   in Loop: Header=BB80_3 Depth=1
	incq	%r13
	incq	%rdi
	movq	%r13, %rax
	subq	%r12, %rax
	incq	%rbx
	cmpq	%rcx, %rax
	jl	.LBB80_3
	jmp	.LBB80_8
.LBB80_1:
	movq	%r15, %rdi
.LBB80_8:                               # %for.end82
	cmpb	$0, (%rdi)
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB80_19
.LBB80_9:                               # %if.then11
	movzbl	1(%r13), %eax
	cmpl	$42, %eax
	jne	.LBB80_10
# BB#20:                                # %if.then15
	addq	$2, %r13
	callq	strlen
	jmp	.LBB80_13
.LBB80_10:
	incq	%r13
	movq	$-1, %rax
.LBB80_11:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%rdi,%rax), %cl
	incq	%rax
	testb	%cl, %cl
	je	.LBB80_13
# BB#12:                                # %while.cond.i
                                        #   in Loop: Header=BB80_11 Depth=1
	movzbl	%cl, %ecx
	cmpl	$47, %ecx
	jne	.LBB80_11
.LBB80_13:                              # %if.end59
	testl	%eax, %eax
	js	.LBB80_14
# BB#17:                                # %for.body68.lr.ph
	addl	%r12d, %r14d
	subl	%r13d, %r14d
	movslq	%eax, %rbp
	addq	%rbp, %r15
	addq	%r15, %rbx
	incl	%ebp
	.align	16, 0x90
.LBB80_18:                              # %for.body68
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	match_one
	testl	%eax, %eax
	movl	$1, %eax
	jne	.LBB80_19
# BB#15:                                # %for.cond65
                                        #   in Loop: Header=BB80_18 Depth=1
	decq	%rbx
	decl	%ebp
	testl	%ebp, %ebp
	jg	.LBB80_18
# BB#16:
	xorl	%eax, %eax
	jmp	.LBB80_19
.LBB80_14:
	xorl	%eax, %eax
.LBB80_19:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.Ltmp783:
	.size	match_one, .Ltmp783-match_one
	.cfi_endproc

	.globl	tdate_parse
	.align	16, 0x90
	.type	tdate_parse,@function
tdate_parse:                            # @tdate_parse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp791:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp792:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp793:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp794:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp795:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp796:
	.cfi_def_cfa_offset 56
	subq	$1080, %rsp             # imm = 0x438
.Ltmp797:
	.cfi_def_cfa_offset 1136
.Ltmp798:
	.cfi_offset %rbx, -56
.Ltmp799:
	.cfi_offset %r12, -48
.Ltmp800:
	.cfi_offset %r13, -40
.Ltmp801:
	.cfi_offset %r14, -32
.Ltmp802:
	.cfi_offset %r15, -24
.Ltmp803:
	.cfi_offset %rbp, -16
	jmp	.LBB81_1
	.align	16, 0x90
.LBB81_3:                               # %for.inc
                                        #   in Loop: Header=BB81_1 Depth=1
	incq	%rdi
.LBB81_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %eax
	cmpl	$9, %eax
	je	.LBB81_3
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB81_1 Depth=1
	movzbl	%al, %eax
	cmpl	$32, %eax
	je	.LBB81_3
# BB#4:                                 # %for.end
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
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	callq	__isoc99_sscanf
	cmpl	$6, %eax
	jne	.LBB81_19
# BB#5:                                 # %land.lhs.true
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_7
# BB#6:                                 # %if.then.i
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_7:                               # %scan_mon.exit
	movb	576(%rsp), %bl
	xorl	%r13d, %r13d
	testb	%bl, %bl
	movl	$22, %r15d
	je	.LBB81_14
# BB#8:                                 # %for.body.lr.ph.i417
	callq	__ctype_b_loc
	movq	%rax, %r12
	leaq	577(%rsp), %r14
	.align	16, 0x90
.LBB81_9:                               # %for.body.i425
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %rbp
	movq	(%r12), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_13
# BB#10:                                # %if.then.i427
                                        #   in Loop: Header=BB81_9 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_12
# BB#11:                                # %cond.true.i.i430
                                        #   in Loop: Header=BB81_9 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %eax
.LBB81_12:                              # %tolower.exit.i433
                                        #   in Loop: Header=BB81_9 Depth=1
	movb	%al, -1(%r14)
.LBB81_13:                              # %for.inc.i436
                                        #   in Loop: Header=BB81_9 Depth=1
	movb	(%r14), %bl
	incq	%r14
	testb	%bl, %bl
	jne	.LBB81_9
	.align	16, 0x90
.LBB81_14:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r13), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rbp
	shlq	$4, %rbp
	movq	scan_mon.mon_tab(%rbp), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_16
# BB#15:                                # %if.then.i171
                                        #   in Loop: Header=BB81_14 Depth=1
	decl	%ebx
	movl	%ebx, %r15d
	jmp	.LBB81_18
	.align	16, 0x90
.LBB81_16:                              # %if.else.i
                                        #   in Loop: Header=BB81_14 Depth=1
	testl	%eax, %eax
	jle	.LBB81_165
# BB#17:                                # %if.then3.i
                                        #   in Loop: Header=BB81_14 Depth=1
	incl	%ebx
	movl	%ebx, %r13d
.LBB81_18:                              # %if.end9.i
                                        #   in Loop: Header=BB81_14 Depth=1
	cmpl	%r13d, %r15d
	jge	.LBB81_14
.LBB81_19:                              # %if.else
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
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_22
# BB#21:                                # %if.then.i173
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_22:                              # %scan_mon.exit174
	movb	576(%rsp), %bl
	xorl	%r13d, %r13d
	testb	%bl, %bl
	movl	$22, %r15d
	je	.LBB81_29
# BB#23:                                # %for.body.lr.ph.i440
	callq	__ctype_b_loc
	movq	%rax, %r12
	leaq	577(%rsp), %r14
	.align	16, 0x90
.LBB81_24:                              # %for.body.i448
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %rbp
	movq	(%r12), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_28
# BB#25:                                # %if.then.i450
                                        #   in Loop: Header=BB81_24 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_27
# BB#26:                                # %cond.true.i.i453
                                        #   in Loop: Header=BB81_24 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %eax
.LBB81_27:                              # %tolower.exit.i456
                                        #   in Loop: Header=BB81_24 Depth=1
	movb	%al, -1(%r14)
.LBB81_28:                              # %for.inc.i459
                                        #   in Loop: Header=BB81_24 Depth=1
	movb	(%r14), %bl
	incq	%r14
	testb	%bl, %bl
	jne	.LBB81_24
	.align	16, 0x90
.LBB81_29:                              # %for.cond.i183
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r13), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rbp
	shlq	$4, %rbp
	movq	scan_mon.mon_tab(%rbp), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_31
# BB#30:                                # %if.then.i185
                                        #   in Loop: Header=BB81_29 Depth=1
	decl	%ebx
	movl	%ebx, %r15d
	jmp	.LBB81_33
	.align	16, 0x90
.LBB81_31:                              # %if.else.i187
                                        #   in Loop: Header=BB81_29 Depth=1
	testl	%eax, %eax
	jle	.LBB81_165
# BB#32:                                # %if.then3.i189
                                        #   in Loop: Header=BB81_29 Depth=1
	incl	%ebx
	movl	%ebx, %r13d
.LBB81_33:                              # %if.end9.i195
                                        #   in Loop: Header=BB81_29 Depth=1
	cmpl	%r13d, %r15d
	jge	.LBB81_29
.LBB81_34:                              # %if.else32
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
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_37
# BB#36:                                # %if.then.i199
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_37:                              # %scan_mon.exit200
	movb	576(%rsp), %r15b
	xorl	%r13d, %r13d
	testb	%r15b, %r15b
	movl	$22, %r14d
	je	.LBB81_44
# BB#38:                                # %for.body.lr.ph.i463
	callq	__ctype_b_loc
	movq	%rax, %r12
	leaq	577(%rsp), %rbx
	.align	16, 0x90
.LBB81_39:                              # %for.body.i471
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%r15b, %rbp
	movq	(%r12), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_43
# BB#40:                                # %if.then.i473
                                        #   in Loop: Header=BB81_39 Depth=1
	movsbl	%r15b, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_42
# BB#41:                                # %cond.true.i.i476
                                        #   in Loop: Header=BB81_39 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %eax
.LBB81_42:                              # %tolower.exit.i479
                                        #   in Loop: Header=BB81_39 Depth=1
	movb	%al, -1(%rbx)
.LBB81_43:                              # %for.inc.i482
                                        #   in Loop: Header=BB81_39 Depth=1
	movb	(%rbx), %r15b
	incq	%rbx
	testb	%r15b, %r15b
	jne	.LBB81_39
	.align	16, 0x90
.LBB81_44:                              # %for.cond.i209
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r14,%r13), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rbp
	shlq	$4, %rbp
	movq	scan_mon.mon_tab(%rbp), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_46
# BB#45:                                # %if.then.i211
                                        #   in Loop: Header=BB81_44 Depth=1
	decl	%ebx
	movl	%ebx, %r14d
	jmp	.LBB81_48
	.align	16, 0x90
.LBB81_46:                              # %if.else.i213
                                        #   in Loop: Header=BB81_44 Depth=1
	testl	%eax, %eax
	jle	.LBB81_165
# BB#47:                                # %if.then3.i215
                                        #   in Loop: Header=BB81_44 Depth=1
	incl	%ebx
	movl	%ebx, %r13d
.LBB81_48:                              # %if.end9.i221
                                        #   in Loop: Header=BB81_44 Depth=1
	cmpl	%r13d, %r14d
	jge	.LBB81_44
.LBB81_49:                              # %if.else49
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
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_52
# BB#51:                                # %if.then.i225
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_52:                              # %scan_mon.exit226
	movb	576(%rsp), %r12b
	xorl	%r14d, %r14d
	testb	%r12b, %r12b
	movl	$22, %r13d
	je	.LBB81_59
# BB#53:                                # %for.body.lr.ph.i486
	callq	__ctype_b_loc
	movq	%rax, %rbx
	leaq	577(%rsp), %r15
	.align	16, 0x90
.LBB81_54:                              # %for.body.i494
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%r12b, %rbp
	movq	(%rbx), %rax
	testb	$1, 1(%rax,%rbp,2)
	je	.LBB81_58
# BB#55:                                # %if.then.i496
                                        #   in Loop: Header=BB81_54 Depth=1
	movsbl	%r12b, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_57
# BB#56:                                # %cond.true.i.i499
                                        #   in Loop: Header=BB81_54 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbp,4), %eax
.LBB81_57:                              # %tolower.exit.i502
                                        #   in Loop: Header=BB81_54 Depth=1
	movb	%al, -1(%r15)
.LBB81_58:                              # %for.inc.i505
                                        #   in Loop: Header=BB81_54 Depth=1
	movb	(%r15), %r12b
	incq	%r15
	testb	%r12b, %r12b
	jne	.LBB81_54
	.align	16, 0x90
.LBB81_59:                              # %for.cond.i235
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r13,%r14), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rbp
	shlq	$4, %rbp
	movq	scan_mon.mon_tab(%rbp), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_61
# BB#60:                                # %if.then.i237
                                        #   in Loop: Header=BB81_59 Depth=1
	decl	%ebx
	movl	%ebx, %r13d
	jmp	.LBB81_63
	.align	16, 0x90
.LBB81_61:                              # %if.else.i239
                                        #   in Loop: Header=BB81_59 Depth=1
	testl	%eax, %eax
	jle	.LBB81_165
# BB#62:                                # %if.then3.i241
                                        #   in Loop: Header=BB81_59 Depth=1
	incl	%ebx
	movl	%ebx, %r14d
.LBB81_63:                              # %if.end9.i247
                                        #   in Loop: Header=BB81_59 Depth=1
	cmpl	%r14d, %r13d
	jge	.LBB81_59
.LBB81_64:                              # %if.else66
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
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_67
# BB#66:                                # %if.then.i251
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_67:                              # %scan_wday.exit
	movb	64(%rsp), %bl
	xorl	%r12d, %r12d
	testb	%bl, %bl
	movl	$13, %r15d
	je	.LBB81_74
# BB#68:                                # %for.body.lr.ph.i509
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	65(%rsp), %rbp
	.align	16, 0x90
.LBB81_69:                              # %for.body.i517
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %r13
	movq	(%r14), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_73
# BB#70:                                # %if.then.i519
                                        #   in Loop: Header=BB81_69 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_72
# BB#71:                                # %cond.true.i.i522
                                        #   in Loop: Header=BB81_69 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %eax
.LBB81_72:                              # %tolower.exit.i525
                                        #   in Loop: Header=BB81_69 Depth=1
	movb	%al, -1(%rbp)
.LBB81_73:                              # %for.inc.i528
                                        #   in Loop: Header=BB81_69 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB81_69
	.align	16, 0x90
.LBB81_74:                              # %for.cond.i260
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	scan_wday.wday_tab(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_76
# BB#75:                                # %if.then.i262
                                        #   in Loop: Header=BB81_74 Depth=1
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_78
	.align	16, 0x90
.LBB81_76:                              # %if.else.i264
                                        #   in Loop: Header=BB81_74 Depth=1
	testl	%eax, %eax
	jle	.LBB81_79
# BB#77:                                # %if.then3.i266
                                        #   in Loop: Header=BB81_74 Depth=1
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_78:                              # %if.end9.i272
                                        #   in Loop: Header=BB81_74 Depth=1
	cmpl	%r12d, %r15d
	jge	.LBB81_74
	jmp	.LBB81_93
.LBB81_165:                             # %if.then58
	leaq	scan_mon.mon_tab+8(%rbp), %rax
.LBB81_154:                             # %if.end144
	movq	(%rax), %rbx
	movslq	60(%rsp), %r8
	movslq	56(%rsp), %r9
	movslq	52(%rsp), %r10
	movl	48(%rsp), %esi
	movl	44(%rsp), %edi
	cmpl	$1901, %edi             # imm = 0x76D
	jl	.LBB81_156
# BB#155:                               # %if.then148
	addl	$-1900, %edi            # imm = 0xFFFFFFFFFFFFF894
	jmp	.LBB81_157
.LBB81_156:                             # %if.else150
	leal	100(%rdi), %eax
	cmpl	$70, %edi
	cmovgel	%edi, %eax
	movl	%eax, %edi
.LBB81_157:                             # %if.end157
	imull	$365, %edi, %eax        # imm = 0x16D
	addl	$-25550, %eax           # imm = 0xFFFFFFFFFFFF9C32
	cltq
	leal	-69(%rdi), %ebp
	sarl	$31, %ebp
	shrl	$30, %ebp
	leal	-69(%rdi,%rbp), %ebp
	sarl	$2, %ebp
	movslq	%ebp, %rcx
	addq	%rax, %rcx
	movslq	%ebx, %rax
	movslq	tm_to_time.monthtab(,%rax,4), %rbp
	addq	%rcx, %rbp
	cmpl	$2, %ebx
	jl	.LBB81_163
# BB#158:                               # %land.lhs.true.i
	addl	$1900, %edi             # imm = 0x76C
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	movq	%rax, %rbx
	sarq	$39, %rbx
	addl	%edx, %ebx
	imull	$400, %ebx, %ebx        # imm = 0x190
	cmpl	%ebx, %ecx
	je	.LBB81_159
# BB#160:                               # %cond.true.i.i
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	cmpl	%eax, %edi
	movb	$1, %al
	je	.LBB81_162
# BB#161:                               # %cond.true3.i.i
	testb	$3, %dil
	setne	%al
	jmp	.LBB81_162
.LBB81_159:
	xorl	%eax, %eax
.LBB81_162:                             # %is_leap.exit.i
	movzbl	%al, %eax
	xorq	$1, %rax
	addq	%rax, %rbp
.LBB81_163:                             # %tm_to_time.exit
	decl	%esi
	movslq	%esi, %rax
	addq	%rbp, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%r10,%rax,8), %rax
	imulq	$60, %rax, %rax
	addq	%r9, %rax
	imulq	$60, %rax, %rax
	addq	%r8, %rax
	jmp	.LBB81_164
.LBB81_79:                              # %land.lhs.true76
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_81
# BB#80:                                # %if.then.i276
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_81:                              # %scan_mon.exit277
	movb	576(%rsp), %bl
	xorl	%r12d, %r12d
	testb	%bl, %bl
	movl	$22, %r15d
	je	.LBB81_88
# BB#82:                                # %for.body.lr.ph.i532
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	577(%rsp), %rbp
	.align	16, 0x90
.LBB81_83:                              # %for.body.i540
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %r13
	movq	(%r14), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_87
# BB#84:                                # %if.then.i542
                                        #   in Loop: Header=BB81_83 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_86
# BB#85:                                # %cond.true.i.i545
                                        #   in Loop: Header=BB81_83 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %eax
.LBB81_86:                              # %tolower.exit.i548
                                        #   in Loop: Header=BB81_83 Depth=1
	movb	%al, -1(%rbp)
.LBB81_87:                              # %for.inc.i551
                                        #   in Loop: Header=BB81_83 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB81_83
	.align	16, 0x90
.LBB81_88:                              # %for.cond.i286
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_90
# BB#89:                                # %if.then.i288
                                        #   in Loop: Header=BB81_88 Depth=1
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_92
	.align	16, 0x90
.LBB81_90:                              # %if.else.i290
                                        #   in Loop: Header=BB81_88 Depth=1
	testl	%eax, %eax
	jle	.LBB81_153
# BB#91:                                # %if.then3.i292
                                        #   in Loop: Header=BB81_88 Depth=1
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_92:                              # %if.end9.i298
                                        #   in Loop: Header=BB81_88 Depth=1
	cmpl	%r12d, %r15d
	jge	.LBB81_88
.LBB81_93:                              # %if.else90
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
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_96
# BB#95:                                # %if.then.i302
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_96:                              # %scan_wday.exit303
	movb	64(%rsp), %r12b
	xorl	%r13d, %r13d
	testb	%r12b, %r12b
	movl	$13, %r15d
	je	.LBB81_103
# BB#97:                                # %for.body.lr.ph.i555
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	65(%rsp), %rbp
	.align	16, 0x90
.LBB81_98:                              # %for.body.i563
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%r12b, %rbx
	movq	(%r14), %rax
	testb	$1, 1(%rax,%rbx,2)
	je	.LBB81_102
# BB#99:                                # %if.then.i565
                                        #   in Loop: Header=BB81_98 Depth=1
	movsbl	%r12b, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_101
# BB#100:                               # %cond.true.i.i568
                                        #   in Loop: Header=BB81_98 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%rbx,4), %eax
.LBB81_101:                             # %tolower.exit.i571
                                        #   in Loop: Header=BB81_98 Depth=1
	movb	%al, -1(%rbp)
.LBB81_102:                             # %for.inc.i574
                                        #   in Loop: Header=BB81_98 Depth=1
	movb	(%rbp), %r12b
	incq	%rbp
	testb	%r12b, %r12b
	jne	.LBB81_98
	.align	16, 0x90
.LBB81_103:                             # %for.cond.i312
                                        # =>This Inner Loop Header: Depth=1
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
	testl	%eax, %eax
	jns	.LBB81_105
# BB#104:                               # %if.then.i314
                                        #   in Loop: Header=BB81_103 Depth=1
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_107
	.align	16, 0x90
.LBB81_105:                             # %if.else.i316
                                        #   in Loop: Header=BB81_103 Depth=1
	testl	%eax, %eax
	jle	.LBB81_108
# BB#106:                               # %if.then3.i318
                                        #   in Loop: Header=BB81_103 Depth=1
	incl	%ebp
	movl	%ebp, %r13d
.LBB81_107:                             # %if.end9.i324
                                        #   in Loop: Header=BB81_103 Depth=1
	cmpl	%r13d, %r15d
	jge	.LBB81_103
	jmp	.LBB81_122
.LBB81_108:                             # %land.lhs.true100
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_110
# BB#109:                               # %if.then.i328
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_110:                             # %scan_mon.exit329
	movb	576(%rsp), %bl
	xorl	%r12d, %r12d
	testb	%bl, %bl
	movl	$22, %r15d
	je	.LBB81_117
# BB#111:                               # %for.body.lr.ph.i578
	callq	__ctype_b_loc
	movq	%rax, %r14
	leaq	577(%rsp), %rbp
	.align	16, 0x90
.LBB81_112:                             # %for.body.i586
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %r13
	movq	(%r14), %rax
	testb	$1, 1(%rax,%r13,2)
	je	.LBB81_116
# BB#113:                               # %if.then.i588
                                        #   in Loop: Header=BB81_112 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_115
# BB#114:                               # %cond.true.i.i591
                                        #   in Loop: Header=BB81_112 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r13,4), %eax
.LBB81_115:                             # %tolower.exit.i594
                                        #   in Loop: Header=BB81_112 Depth=1
	movb	%al, -1(%rbp)
.LBB81_116:                             # %for.inc.i597
                                        #   in Loop: Header=BB81_112 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB81_112
	.align	16, 0x90
.LBB81_117:                             # %for.cond.i338
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_119
# BB#118:                               # %if.then.i340
                                        #   in Loop: Header=BB81_117 Depth=1
	decl	%ebp
	movl	%ebp, %r15d
	jmp	.LBB81_121
	.align	16, 0x90
.LBB81_119:                             # %if.else.i342
                                        #   in Loop: Header=BB81_117 Depth=1
	testl	%eax, %eax
	jle	.LBB81_153
# BB#120:                               # %if.then3.i344
                                        #   in Loop: Header=BB81_117 Depth=1
	incl	%ebp
	movl	%ebp, %r12d
.LBB81_121:                             # %if.end9.i350
                                        #   in Loop: Header=BB81_117 Depth=1
	cmpl	%r12d, %r15d
	jge	.LBB81_117
.LBB81_122:                             # %if.else114
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
	movq	$-1, %rax
	jne	.LBB81_164
# BB#123:                               # %land.lhs.true120
	movb	scan_wday.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_125
# BB#124:                               # %if.then.i354
	movl	$scan_wday.wday_tab, %edi
	movl	$14, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_wday.sorted(%rip)
.LBB81_125:                             # %scan_wday.exit355
	movb	64(%rsp), %bl
	xorl	%r13d, %r13d
	testb	%bl, %bl
	movl	$13, %r12d
	je	.LBB81_132
# BB#126:                               # %for.body.lr.ph.i601
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	65(%rsp), %rbp
	.align	16, 0x90
.LBB81_127:                             # %for.body.i609
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %r14
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r14,2)
	je	.LBB81_131
# BB#128:                               # %if.then.i611
                                        #   in Loop: Header=BB81_127 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_130
# BB#129:                               # %cond.true.i.i614
                                        #   in Loop: Header=BB81_127 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %eax
.LBB81_130:                             # %tolower.exit.i617
                                        #   in Loop: Header=BB81_127 Depth=1
	movb	%al, -1(%rbp)
.LBB81_131:                             # %for.inc.i620
                                        #   in Loop: Header=BB81_127 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB81_127
	.align	16, 0x90
.LBB81_132:                             # %for.cond.i364
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r12,%r13), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rax
	shlq	$4, %rax
	movq	scan_wday.wday_tab(%rax), %rsi
	leaq	64(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_134
# BB#133:                               # %if.then.i366
                                        #   in Loop: Header=BB81_132 Depth=1
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_136
	.align	16, 0x90
.LBB81_134:                             # %if.else.i368
                                        #   in Loop: Header=BB81_132 Depth=1
	testl	%eax, %eax
	jle	.LBB81_138
# BB#135:                               # %if.then3.i370
                                        #   in Loop: Header=BB81_132 Depth=1
	incl	%ebp
	movl	%ebp, %r13d
.LBB81_136:                             # %if.end9.i376
                                        #   in Loop: Header=BB81_132 Depth=1
	cmpl	%r13d, %r12d
	jge	.LBB81_132
# BB#137:
	movq	$-1, %rax
	jmp	.LBB81_164
.LBB81_138:                             # %land.lhs.true124
	movb	scan_mon.sorted(%rip), %al
	testb	%al, %al
	jne	.LBB81_140
# BB#139:                               # %if.then.i380
	movl	$scan_mon.mon_tab, %edi
	movl	$23, %esi
	movl	$16, %edx
	movl	$strlong_compare, %ecx
	callq	qsort
	movb	$1, scan_mon.sorted(%rip)
.LBB81_140:                             # %scan_mon.exit381
	movb	576(%rsp), %bl
	xorl	%r13d, %r13d
	testb	%bl, %bl
	movl	$22, %r12d
	je	.LBB81_147
# BB#141:                               # %for.body.lr.ph.i
	callq	__ctype_b_loc
	movq	%rax, %r15
	leaq	577(%rsp), %rbp
	.align	16, 0x90
.LBB81_142:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsbq	%bl, %r14
	movq	(%r15), %rax
	testb	$1, 1(%rax,%r14,2)
	je	.LBB81_146
# BB#143:                               # %if.then.i412
                                        #   in Loop: Header=BB81_142 Depth=1
	movsbl	%bl, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	cmpl	$383, %ecx              # imm = 0x17F
	ja	.LBB81_145
# BB#144:                               # %cond.true.i.i413
                                        #   in Loop: Header=BB81_142 Depth=1
	callq	__ctype_tolower_loc
	movq	(%rax), %rax
	movl	(%rax,%r14,4), %eax
.LBB81_145:                             # %tolower.exit.i
                                        #   in Loop: Header=BB81_142 Depth=1
	movb	%al, -1(%rbp)
.LBB81_146:                             # %for.inc.i
                                        #   in Loop: Header=BB81_142 Depth=1
	movb	(%rbp), %bl
	incq	%rbp
	testb	%bl, %bl
	jne	.LBB81_142
	.align	16, 0x90
.LBB81_147:                             # %for.cond.i390
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r12,%r13), %eax
	movl	%eax, %ebp
	shrl	$31, %ebp
	addl	%eax, %ebp
	sarl	%ebp
	movslq	%ebp, %rbx
	shlq	$4, %rbx
	movq	scan_mon.mon_tab(%rbx), %rsi
	leaq	576(%rsp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jns	.LBB81_149
# BB#148:                               # %if.then.i392
                                        #   in Loop: Header=BB81_147 Depth=1
	decl	%ebp
	movl	%ebp, %r12d
	jmp	.LBB81_151
	.align	16, 0x90
.LBB81_149:                             # %if.else.i394
                                        #   in Loop: Header=BB81_147 Depth=1
	testl	%eax, %eax
	jle	.LBB81_153
# BB#150:                               # %if.then3.i396
                                        #   in Loop: Header=BB81_147 Depth=1
	incl	%ebp
	movl	%ebp, %r13d
.LBB81_151:                             # %if.end9.i402
                                        #   in Loop: Header=BB81_147 Depth=1
	cmpl	%r13d, %r12d
	jge	.LBB81_147
# BB#152:
	movq	$-1, %rax
.LBB81_164:                             # %cleanup
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
.LBB81_153:                             # %if.then128
	leaq	scan_mon.mon_tab+8(%rbx), %rax
	jmp	.LBB81_154
.Ltmp804:
	.size	tdate_parse, .Ltmp804-tdate_parse
	.cfi_endproc

	.align	16, 0x90
	.type	strlong_compare,@function
strlong_compare:                        # @strlong_compare
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	jmp	strcmp                  # TAILCALL
.Ltmp805:
	.size	strlong_compare, .Ltmp805-strlong_compare
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

	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.ident	"clang version 3.5 (trunk 196464) (llvm/trunk 196460)"
	.section	".note.GNU-stack","",@progbits
