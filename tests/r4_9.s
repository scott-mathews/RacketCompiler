	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $64, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $1, -48(%rbp)
	movq -48(%rbp), %rax

	addq $64, %rsp
	subq $0, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function1
function1:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $280, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -136(%rbp)
	movq %rsi, -168(%rbp)
	movq %rdx, -24(%r15)
	movq -168(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -272(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -264(%rbp)
	movq -88(%rbp), %rdi
	movq -264(%rbp), %rsi
	callq *-272(%rbp)
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -24(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -256(%rbp)
	movq -72(%rbp), %rdi
	movq -256(%rbp), %rsi
	callq *-200(%rbp)
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -24(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -112(%rbp)
	movq -128(%rbp), %rdi
	movq -112(%rbp), %rsi
	callq *-120(%rbp)
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -248(%rbp)
	addq $32, -248(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -248(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then376812
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end376813
then376812:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -280(%rbp)
end376813:
	movq -280(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $32, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $7, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -8(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -8(%r15), %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -8(%r15), %rax

	addq $280, %rsp
	subq $24, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $448, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $80, %r15
	movq $0, -80(%r15)
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $1, -176(%rbp)
	movq $2, -336(%rbp)
	movq $3, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -152(%rbp)
	addq $32, -152(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -184(%rbp)
	movq -152(%rbp), %rax
	cmpq %rax, -184(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -368(%rbp)
	cmpq $1, -368(%rbp)
	je then376814
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end376815
then376814:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -216(%rbp)
end376815:
	movq -216(%rbp), %rax
	movq %rax, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $32, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $7, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -24(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -24(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -24(%r15), %rax
	movq %rax, -40(%r15)
	leaq function1(%rip), %rax
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -392(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $16, -192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -168(%rbp)
	movq -192(%rbp), %rax
	cmpq %rax, -168(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -400(%rbp)
	cmpq $1, -400(%rbp)
	je then376816
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -208(%rbp)
	jmp end376817
then376816:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -208(%rbp)
end376817:
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -392(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -32(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -384(%rbp)
	leaq function0(%rip), %rax
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -304(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -304(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then376818
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -376(%rbp)
	jmp end376819
then376818:
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -376(%rbp)
end376819:
	movq -376(%rbp), %rax
	movq %rax, -248(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -224(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -72(%r15), %rdi
	movq -56(%r15), %rsi
	movq -40(%r15), %rdx
	callq *-384(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -16(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -56(%rbp)
	movq -16(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $33, -264(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -264(%rbp), %rax
	addq %rax, -320(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -320(%rbp), %rax
	addq %rax, -272(%rbp)
	movq -272(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $80, %r15
	addq $448, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
