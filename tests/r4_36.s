	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $456, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $0, -280(%rbp)
	movq $1, %r12
	movq $2, -376(%rbp)
	movq $3, -112(%rbp)
	movq $4, -288(%rbp)
	movq $5, -232(%rbp)
	movq $6, -152(%rbp)
	movq $7, -328(%rbp)
	movq $8, -64(%rbp)
	movq $9, %r13
	movq $10, -144(%rbp)
	movq $11, -304(%rbp)
	movq $12, %r14
	movq $13, -216(%rbp)
	movq $14, -128(%rbp)
	movq $15, -336(%rbp)
	movq $16, -80(%rbp)
	movq $17, -248(%rbp)
	movq $18, -184(%rbp)
	movq $19, -360(%rbp)
	movq $20, -96(%rbp)
	movq $21, -48(%rbp)
	movq $22, -312(%rbp)
	movq $23, -136(%rbp)
	movq $24, %rbx
	movq $25, -56(%rbp)
	movq $26, -320(%rbp)
	movq $27, -168(%rbp)
	movq $28, -256(%rbp)
	movq $29, -88(%rbp)
	movq $30, -344(%rbp)
	movq $31, -160(%rbp)
	movq $32, -240(%rbp)
	movq $33, -72(%rbp)
	movq $34, -352(%rbp)
	movq $35, -176(%rbp)
	movq $36, -264(%rbp)
	movq $37, -296(%rbp)
	movq $38, -120(%rbp)
	movq $39, -368(%rbp)
	movq $40, -224(%rbp)
	movq $41, -272(%rbp)
	movq $42, -104(%rbp)
	movq $43, -400(%rbp)
	movq $44, -192(%rbp)
	movq $45, -384(%rbp)
	movq $46, -208(%rbp)
	movq $47, -408(%rbp)
	movq $48, -200(%rbp)
	movq $49, -392(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $408, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then23528
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
	jmp end23529
then23528:
	movq $0, %rcx
	movq %rcx, %rcx
end23529:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -392(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -200(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -408(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -208(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -384(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -192(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -400(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -272(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -224(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -368(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -296(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -264(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -176(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -352(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -240(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -344(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -256(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -320(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 200(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -312(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -360(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -184(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -248(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -336(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -216(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 104(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -304(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 80(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -328(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -232(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -288(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -376(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq %rbx, %r11
	movq 344(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $456, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq