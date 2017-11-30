	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $328, %rsp
	addq $88, %r15
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

	movq %rdi, -192(%rbp)
	movq $0, %rax
	cmpq -192(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then483824
	leaq function0(%rip), %rax
	movq %rax, -152(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -296(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $16, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then483826
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -232(%rbp)
	jmp end483827
then483826:
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -232(%rbp)
end483827:
	movq -232(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rdi
	movq $1, %rsi
	callq *-296(%rbp)
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rdi
	callq *-152(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -312(%rbp)
	jmp end483825
then483824:
	leaq function3(%rip), %rax
	movq %rax, -176(%rbp)
	movq $20, %rdi
	callq *-176(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %rax
	movq %rax, -72(%r15)
	movq $42, -72(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -48(%rbp)
	movq $20, %rdi
	callq *-48(%rbp)
	movq %rax, -8(%r15)
	movq -8(%r15), %rax
	movq %rax, -64(%r15)
	leaq function1(%rip), %rax
	movq %rax, -328(%rbp)
	movq $20, %rdi
	callq *-328(%rbp)
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -88(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $40, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then483828
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, -304(%rbp)
	jmp end483829
then483828:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -304(%rbp)
end483829:
	movq -304(%rbp), %rax
	movq %rax, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $40, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $1673, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -48(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -48(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -48(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -48(%r15), %rax
	movq %rax, -312(%rbp)
end483825:
	movq -312(%rbp), %rax

	addq $328, %rsp
	subq $88, %r15
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
	subq $304, %rsp
	addq $72, %r15
	movq $0, -72(%r15)
	movq $0, -64(%r15)
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -80(%rbp)
	movq $0, %rax
	cmpq -80(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -288(%rbp)
	cmpq $1, -288(%rbp)
	je then483830
	leaq function1(%rip), %rax
	movq %rax, -232(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -168(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -224(%rbp)
	addq $16, -224(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -224(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then483832
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -304(%rbp)
	jmp end483833
then483832:
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -304(%rbp)
end483833:
	movq -304(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rdi
	movq $1, %rsi
	callq *-168(%rbp)
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rdi
	callq *-232(%rbp)
	movq %rax, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -144(%rbp)
	jmp end483831
then483830:
	leaq function3(%rip), %rax
	movq %rax, -176(%rbp)
	movq $20, %rdi
	callq *-176(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq $42, -192(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -184(%rbp)
	movq $20, %rdi
	callq *-184(%rbp)
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -240(%rbp)
	addq $32, -240(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -240(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then483834
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -296(%rbp)
	jmp end483835
then483834:
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -296(%rbp)
end483835:
	movq -296(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $32, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $647, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -16(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -16(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -16(%r15), %rax
	movq %rax, -144(%rbp)
end483831:
	movq -144(%rbp), %rax

	addq $304, %rsp
	subq $72, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function2
function2:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $280, %rsp
	addq $56, %r15
	movq $0, -56(%r15)
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -256(%rbp)
	movq $0, %rax
	cmpq -256(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then483836
	leaq function2(%rip), %rax
	movq %rax, -56(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -232(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $16, -192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -192(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then483838
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end483839
then483838:
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -264(%rbp)
end483839:
	movq -264(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rdi
	movq $1, %rsi
	callq *-232(%rbp)
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rdi
	callq *-56(%rbp)
	movq %rax, -24(%r15)
	movq -24(%r15), %rax
	movq %rax, -280(%rbp)
	jmp end483837
then483836:
	leaq function3(%rip), %rax
	movq %rax, -112(%rbp)
	movq $20, %rdi
	callq *-112(%rbp)
	movq %rax, -56(%r15)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq $42, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $24, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -176(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then483840
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -272(%rbp)
	jmp end483841
then483840:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -272(%rbp)
end483841:
	movq -272(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $24, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $133, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -40(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -40(%r15), %rax
	movq %rax, -280(%rbp)
end483837:
	movq -280(%rbp), %rax

	addq $280, %rsp
	subq $56, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function3
function3:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $232, %rsp
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq %rdi, -88(%rbp)
	movq $0, %rax
	cmpq -88(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then483842
	leaq function3(%rip), %rax
	movq %rax, -200(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -232(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -144(%rbp)
	addq $16, -144(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -144(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then483844
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -224(%rbp)
	jmp end483845
then483844:
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -224(%rbp)
end483845:
	movq -224(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rdi
	movq $1, %rsi
	callq *-232(%rbp)
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rdi
	callq *-200(%rbp)
	movq %rax, -16(%r15)
	movq -16(%r15), %rax
	movq %rax, -120(%rbp)
	jmp end483843
then483842:
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $8, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then483846
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end483847
then483846:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -216(%rbp)
end483847:
	movq -216(%rbp), %rax
	movq %rax, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $8, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $1, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -120(%rbp)
end483843:
	movq -120(%rbp), %rax

	addq $232, %rsp
	subq $40, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function4
function4:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $72, %rsp
	addq $0, %r15

	movq %rdi, -72(%rbp)
	movq %rsi, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	negq -48(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax

	addq $72, %rsp
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
	subq $272, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $104, %r15
	movq $0, -104(%r15)
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

	leaq function3(%rip), %rax
	movq %rax, -144(%rbp)
	movq $20, %rdi
	callq *-144(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %rax
	movq %rax, -64(%r15)
	movq $42, -160(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -104(%rbp)
	movq $20, %rdi
	callq *-104(%rbp)
	movq %rax, -40(%r15)
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	leaq function1(%rip), %rax
	movq %rax, -112(%rbp)
	movq $20, %rdi
	callq *-112(%rbp)
	movq %rax, -48(%r15)
	movq -48(%r15), %rax
	movq %rax, -56(%r15)
	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	movq $20, %rdi
	callq *-48(%rbp)
	movq %rax, -72(%r15)
	movq -72(%r15), %rax
	movq %rax, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $48, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -192(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -192(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then483848
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -224(%rbp)
	jmp end483849
then483848:
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -224(%rbp)
end483849:
	movq -224(%rbp), %rax
	movq %rax, -200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $48, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3723, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -32(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -32(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -32(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -32(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -32(%r15), %r11
	movq 40(%r11), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq 32(%r11), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq 24(%r11), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 16(%r11), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $104, %r15
	addq $272, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
