	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $328, %rsp
	addq $64, %r15
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -104(%rbp)
	movq %rsi, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -248(%rbp)
	cmpq $1, -248(%rbp)
	je then378013
	leaq function0(%rip), %rax
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -192(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -192(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then378015
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -320(%rbp)
	jmp end378016
then378015:
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -320(%rbp)
end378016:
	movq -320(%rbp), %rax
	movq %rax, -272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -48(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then378017
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end378018
then378017:
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -120(%rbp)
end378018:
	movq -120(%rbp), %rax
	movq %rax, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq $1, -224(%rbp)
	negq -224(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -24(%r15), %rdi
	movq -56(%rbp), %rsi
	callq *-80(%rbp)
	movq %rax, -64(%r15)
	movq -64(%r15), %rax
	movq %rax, -88(%rbp)
	jmp end378014
then378013:
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -304(%rbp)
	addq $8, -304(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -184(%rbp)
	movq -304(%rbp), %rax
	cmpq %rax, -184(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then378019
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end378020
then378019:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -264(%rbp)
end378020:
	movq -264(%rbp), %rax
	movq %rax, -296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $8, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $1, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -88(%rbp)
end378014:
	movq -88(%rbp), %rax

	addq $328, %rsp
	subq $64, %r15
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
	subq $400, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $96, %r15
	movq $0, -96(%r15)
	movq $0, -88(%r15)
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

	leaq function0(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -248(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then378021
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -344(%rbp)
	jmp end378022
then378021:
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -344(%rbp)
end378022:
	movq -344(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -248(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -88(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -272(%rbp)
	movq -24(%r15), %rdi
	movq $1, %rsi
	callq *-272(%rbp)
	movq %rax, -72(%r15)
	movq -72(%r15), %rax
	movq %rax, -80(%r15)
	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -56(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -320(%rbp)
	cmpq $1, -320(%rbp)
	je then378023
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -200(%rbp)
	jmp end378024
then378023:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -200(%rbp)
end378024:
	movq -200(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -32(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -64(%r15), %rdi
	movq $2, %rsi
	callq *-112(%rbp)
	movq %rax, -96(%r15)
	movq -96(%r15), %rax
	movq %rax, -56(%r15)
	movq $42, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $32, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -352(%rbp)
	cmpq $1, -352(%rbp)
	je then378025
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -152(%rbp)
	jmp end378026
then378025:
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -152(%rbp)
end378026:
	movq -152(%rbp), %rax
	movq %rax, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $32, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $391, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -40(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -40(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -40(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $96, %r15
	addq $400, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
