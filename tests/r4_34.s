	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $168, %rsp
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -72(%rbp)
	movq %rsi, -56(%rbp)
	movq %rdx, -16(%r15)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -48(%rbp), %rdi
	movq -104(%rbp), %rsi
	movq $1, %rdx
	callq *-168(%rbp)
	movq %rax, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -80(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $16, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -64(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then378641
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end378642
then378641:
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -120(%rbp)
end378642:
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -24(%r15), %rax

	addq $168, %rsp
	subq $24, %r15
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
	subq $80, %rsp
	addq $0, %r15

	movq %rdi, -56(%rbp)
	movq %rsi, -64(%rbp)
	movq %rdx, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -48(%rbp), %rax

	addq $80, %rsp
	subq $0, %r15
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
	subq $360, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $64, %r15
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -288(%rbp)
	addq $16, -288(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -256(%rbp)
	movq -288(%rbp), %rax
	cmpq %rax, -256(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then378643
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end378644
then378643:
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -64(%rbp)
end378644:
	movq -64(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -48(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $16, -264(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -264(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then378645
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -224(%rbp)
	jmp end378646
then378645:
	movq $0, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -224(%rbp)
end378646:
	movq -224(%rbp), %rax
	movq %rax, -312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -272(%rbp)
	movq $43, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -184(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -184(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then378647
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end378648
then378647:
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -88(%rbp)
end378648:
	movq -88(%rbp), %rax
	movq %rax, -304(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -56(%r15), %rdi
	movq -8(%r15), %rsi
	movq -16(%r15), %rdx
	callq *-56(%rbp)
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $64, %r15
	addq $360, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
