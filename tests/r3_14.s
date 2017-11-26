	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $176, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $240, %r15
	movq $0, -240(%r15)
	movq $0, -232(%r15)
	movq $0, -224(%r15)
	movq $0, -216(%r15)
	movq $0, -208(%r15)
	movq $0, -200(%r15)
	movq $0, -192(%r15)
	movq $0, -184(%r15)
	movq $0, -176(%r15)
	movq $0, -168(%r15)
	movq $0, -160(%r15)
	movq $0, -152(%r15)
	movq $0, -144(%r15)
	movq $0, -136(%r15)
	movq $0, -128(%r15)
	movq $0, -120(%r15)
	movq $0, -112(%r15)
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

	movq $20, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248622
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end248623
then248622:
	movq $0, %rcx
	movq %rcx, %rcx
end248623:
	movq free_ptr(%rip), %rax
	movq %rax, -160(%rbp)
	addq $16, free_ptr(%rip)
	movq -160(%rbp), %r11
	movq $3, 0(%r11)
	movq -160(%rbp), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -160(%rbp), %rax
	movq %rax, -192(%r15)
	movq $1, %rbx
	movq $2, -48(%rbp)
	movq $3, %r13
	movq $4, %r14
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248624
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248625
then248624:
	movq $0, %rcx
	movq %rcx, %rcx
end248625:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -48(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %r13
	movq $2, %r12
	movq $3, %r14
	movq $4, %rbx
	movq $5, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248626
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248627
then248626:
	movq $0, %rcx
	movq %rcx, %rcx
end248627:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $2059, 0(%r11)
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -104(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r12
	movq %rdx, %r13
	movq $3, %r14
	movq $4, %rbx
	movq $5, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248628
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248629
then248628:
	movq $0, %rcx
	movq %rcx, %rcx
end248629:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $1035, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -128(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq %rdx, %rbx
	movq $1, %r13
	movq $2, -80(%rbp)
	movq $4, %r14
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248630
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248631
then248630:
	movq $0, %rcx
	movq %rcx, %rcx
end248631:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $523, 0(%r11)
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -80(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, -56(%rbp)
	movq $2, %rbx
	movq $3, %r13
	movq %rdx, %r12
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248632
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248633
then248632:
	movq $0, %rcx
	movq %rcx, %rcx
end248633:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $267, 0(%r11)
	movq %rdx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r13
	movq $2, -96(%rbp)
	movq $3, %r12
	movq $4, %r14
	movq %rdx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248634
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248635
then248634:
	movq $0, %rcx
	movq %rcx, %rcx
end248635:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $139, 0(%r11)
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -96(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, -72(%rbp)
	movq $2, %r14
	movq $3, %rbx
	movq $4, %r13
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248636
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248637
then248636:
	movq $0, %rcx
	movq %rcx, %rcx
end248637:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r14
	movq $2, %r12
	movq $3, %r13
	movq $4, %rbx
	movq $5, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248638
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248639
then248638:
	movq $0, %rcx
	movq %rcx, %rcx
end248639:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -88(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r14
	movq $2, -152(%rbp)
	movq $3, %r12
	movq $4, %rbx
	movq $5, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248640
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248641
then248640:
	movq $0, %rcx
	movq %rcx, %rcx
end248641:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -152(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %rbx
	movq $2, %r12
	movq $3, -112(%rbp)
	movq $4, %r13
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248642
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248643
then248642:
	movq $0, %rcx
	movq %rcx, %rcx
end248643:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -112(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %rbx
	movq $2, %r12
	movq $3, -120(%rbp)
	movq $4, %r13
	movq $5, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248644
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248645
then248644:
	movq $0, %rcx
	movq %rcx, %rcx
end248645:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -120(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r12
	movq $2, %r14
	movq $3, %r13
	movq $4, -64(%rbp)
	movq $5, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248646
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248647
then248646:
	movq $0, %rcx
	movq %rcx, %rcx
end248647:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -64(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r14
	movq $2, %r12
	movq $3, -136(%rbp)
	movq $4, %r13
	movq $5, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248648
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248649
then248648:
	movq $0, %rcx
	movq %rcx, %rcx
end248649:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -136(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq $1, %r13
	movq $2, %r14
	movq $3, %rbx
	movq $4, -144(%rbp)
	movq $5, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then248650
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end248651
then248650:
	movq $0, %rcx
	movq %rcx, %rcx
end248651:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $48, free_ptr(%rip)
	movq %rdx, %r11
	movq $11, 0(%r11)
	movq %rdx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq -144(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rcx
	movq %rdx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rcx
	movq -192(%r15), %r11
	movq 8(%r11), %rbx
	addq $22, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $240, %r15
	addq $176, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
