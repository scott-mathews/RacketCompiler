	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $824, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $8, %r15
	movq $0, -8(%r15)

	movq $0, %rbx
	movq $1, %r12
	movq $2, %r13
	movq $3, %r14
	movq $4, -48(%rbp)
	movq $5, -56(%rbp)
	movq $6, -64(%rbp)
	movq $7, -72(%rbp)
	movq $8, -80(%rbp)
	movq $9, -88(%rbp)
	movq $10, -96(%rbp)
	movq $11, -104(%rbp)
	movq $12, -112(%rbp)
	movq $13, -120(%rbp)
	movq $14, -128(%rbp)
	movq $15, -136(%rbp)
	movq $16, -144(%rbp)
	movq $17, -152(%rbp)
	movq $18, -160(%rbp)
	movq $19, -168(%rbp)
	movq $20, -176(%rbp)
	movq $21, -184(%rbp)
	movq $22, -192(%rbp)
	movq $23, -200(%rbp)
	movq $24, -208(%rbp)
	movq $25, -216(%rbp)
	movq $26, -224(%rbp)
	movq $27, -232(%rbp)
	movq $28, -240(%rbp)
	movq $29, -248(%rbp)
	movq $30, -256(%rbp)
	movq $31, -264(%rbp)
	movq $32, -272(%rbp)
	movq $33, -280(%rbp)
	movq $34, -288(%rbp)
	movq $35, -296(%rbp)
	movq $36, -304(%rbp)
	movq $37, -312(%rbp)
	movq $38, -320(%rbp)
	movq $39, -328(%rbp)
	movq $40, -336(%rbp)
	movq $41, -344(%rbp)
	movq $42, -352(%rbp)
	movq $43, -360(%rbp)
	movq $44, -368(%rbp)
	movq $45, -376(%rbp)
	movq $46, -384(%rbp)
	movq $47, -392(%rbp)
	movq $48, -400(%rbp)
	movq $49, -408(%rbp)
	movq free_ptr(%rip), %rcx
	addq $408, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19085
	movq $0, %rcx
	jmp end19086
then19085:
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
end19086:
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %r11
	movq -408(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -400(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -392(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -384(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -376(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -368(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -360(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -352(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -344(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -336(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -328(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -320(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -312(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -304(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -296(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -288(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -280(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -272(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -264(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -256(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -248(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -240(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -232(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -224(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -216(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -208(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -200(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -192(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -184(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -176(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -8(%r15)
	movq $0, %rbx
	movq $1, %r12
	movq $2, %r13
	movq $3, %r14
	movq $4, -416(%rbp)
	movq $5, -424(%rbp)
	movq $6, -432(%rbp)
	movq $7, -440(%rbp)
	movq $8, -448(%rbp)
	movq $9, -456(%rbp)
	movq $10, -464(%rbp)
	movq $11, -472(%rbp)
	movq $12, -480(%rbp)
	movq $13, -488(%rbp)
	movq $14, -496(%rbp)
	movq $15, -504(%rbp)
	movq $16, -512(%rbp)
	movq $17, -520(%rbp)
	movq $18, -528(%rbp)
	movq $19, -536(%rbp)
	movq $20, -544(%rbp)
	movq $21, -552(%rbp)
	movq $22, -560(%rbp)
	movq $23, -568(%rbp)
	movq $24, -576(%rbp)
	movq $25, -584(%rbp)
	movq $26, -592(%rbp)
	movq $27, -600(%rbp)
	movq $28, -608(%rbp)
	movq $29, -616(%rbp)
	movq $30, -624(%rbp)
	movq $31, -632(%rbp)
	movq $32, -640(%rbp)
	movq $33, -648(%rbp)
	movq $34, -656(%rbp)
	movq $35, -664(%rbp)
	movq $36, -672(%rbp)
	movq $37, -680(%rbp)
	movq $38, -688(%rbp)
	movq $39, -696(%rbp)
	movq $40, -704(%rbp)
	movq $41, -712(%rbp)
	movq $42, -720(%rbp)
	movq $43, -728(%rbp)
	movq $44, -736(%rbp)
	movq $45, -744(%rbp)
	movq $46, -752(%rbp)
	movq $47, -760(%rbp)
	movq $48, -768(%rbp)
	movq $49, -776(%rbp)
	movq free_ptr(%rip), %rcx
	addq $408, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then19087
	movq $0, %rcx
	jmp end19088
then19087:
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
end19088:
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %r11
	movq -776(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -768(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -760(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -752(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -744(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -736(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -728(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -720(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -712(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -704(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -696(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -688(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -680(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -672(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -664(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -656(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -648(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -640(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -632(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -624(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -616(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -608(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -600(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -592(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -584(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -576(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -568(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -560(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -552(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -544(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -536(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -528(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -520(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -512(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -504(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -496(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -488(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -480(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -472(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -464(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -456(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -448(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -440(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -432(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -424(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -416(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -8(%r15), %r11
	movq 344(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $8, %r15
	addq $824, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
