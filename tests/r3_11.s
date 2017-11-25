	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $256, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $288, %r15
	movq $0, -288(%r15)
	movq $0, -280(%r15)
	movq $0, -272(%r15)
	movq $0, -264(%r15)
	movq $0, -256(%r15)
	movq $0, -248(%r15)
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

	movq $1, %rbx
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
	je then242569
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242570
then242569:
	movq $0, %rcx
	movq %rcx, %rdx
end242570:
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -224(%r15), %rax
	movq %rax, -128(%r15)
	movq $1, %rbx
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
	je then242571
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242572
then242571:
	movq $0, %rcx
	movq %rcx, %rdx
end242572:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -216(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, %rbx
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
	je then242573
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242574
then242573:
	movq $0, %rcx
	movq %rcx, %rdx
end242574:
	movq free_ptr(%rip), %rax
	movq %rax, -120(%rbp)
	addq $16, free_ptr(%rip)
	movq -120(%rbp), %r11
	movq $3, 0(%r11)
	movq -120(%rbp), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -120(%rbp), %rax
	movq %rax, -48(%r15)
	movq $1, %rbx
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
	je then242575
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242576
then242575:
	movq $0, %rcx
	movq %rcx, %rdx
end242576:
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -88(%r15), %rax
	movq %rax, -176(%r15)
	movq $1, %rbx
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
	je then242577
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242578
then242577:
	movq $0, %rcx
	movq %rcx, %rdx
end242578:
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -80(%r15), %rax
	movq %rax, -256(%r15)
	movq $1, %rbx
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
	je then242579
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242580
then242579:
	movq $0, %rcx
	movq %rcx, %rdx
end242580:
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3, 0(%r11)
	movq -144(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -144(%r15), %rax
	movq %rax, -120(%r15)
	movq $1, %rbx
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
	je then242581
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242582
then242581:
	movq $0, %rcx
	movq %rcx, %rdx
end242582:
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq $1, %rbx
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
	je then242583
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242584
then242583:
	movq $0, %rcx
	movq %rcx, %rdx
end242584:
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -16(%r15), %rax
	movq %rax, -152(%r15)
	movq $1, %rbx
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
	je then242585
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242586
then242585:
	movq $0, %rcx
	movq %rcx, %rdx
end242586:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %rbx
	movq $1, %r12
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
	je then242587
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242588
then242587:
	movq $0, %rcx
	movq %rcx, %rdx
end242588:
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -96(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, %r12
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
	je then242589
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242590
then242589:
	movq $0, %rcx
	movq %rcx, %rdx
end242590:
	movq free_ptr(%rip), %rax
	movq %rax, %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq $1, %r12
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
	je then242591
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242592
then242591:
	movq $0, %rcx
	movq %rcx, %rdx
end242592:
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -40(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, %r12
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
	je then242593
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242594
then242593:
	movq $0, %rcx
	movq %rcx, %rdx
end242594:
	movq free_ptr(%rip), %rax
	movq %rax, -208(%r15)
	addq $16, free_ptr(%rip)
	movq -208(%r15), %r11
	movq $3, 0(%r11)
	movq -208(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -208(%r15), %rax
	movq %rax, -160(%r15)
	movq $1, %r12
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
	je then242595
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242596
then242595:
	movq $0, %rcx
	movq %rcx, %rdx
end242596:
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	addq $16, free_ptr(%rip)
	movq -144(%rbp), %r11
	movq $3, 0(%r11)
	movq -144(%rbp), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -144(%rbp), %rax
	movq %rax, -232(%r15)
	movq $1, %r12
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
	je then242597
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242598
then242597:
	movq $0, %rcx
	movq %rcx, %rdx
end242598:
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	addq $16, free_ptr(%rip)
	movq -152(%rbp), %r11
	movq $3, 0(%r11)
	movq -152(%rbp), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -152(%rbp), %rax
	movq %rax, -112(%r15)
	movq $1, %r12
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
	je then242599
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242600
then242599:
	movq $0, %rcx
	movq %rcx, %rdx
end242600:
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $3, 0(%r11)
	movq -192(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -192(%r15), %rax
	movq %rax, -56(%r15)
	movq $1, %r12
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
	je then242601
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242602
then242601:
	movq $0, %rcx
	movq %rcx, %rdx
end242602:
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -240(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, %r12
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
	je then242603
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242604
then242603:
	movq $0, %rcx
	movq %rcx, %rdx
end242604:
	movq free_ptr(%rip), %rax
	movq %rax, -136(%rbp)
	addq $16, free_ptr(%rip)
	movq -136(%rbp), %r11
	movq $3, 0(%r11)
	movq -136(%rbp), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -136(%rbp), %rax
	movq %rax, -64(%r15)
	movq $1, %r12
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
	je then242605
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242606
then242605:
	movq $0, %rcx
	movq %rcx, %rdx
end242606:
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -8(%r15), %rax
	movq %rax, -32(%r15)
	movq $1, %r12
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
	je then242607
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242608
then242607:
	movq $0, %rcx
	movq %rcx, %rdx
end242608:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq $1, -128(%rbp)
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
	je then242609
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rdx
	jmp end242610
then242609:
	movq $0, %rcx
	movq %rcx, %rdx
end242610:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -128(%r15), %r11
	movq 8(%r11), %rdx
	movq -136(%r15), %r11
	movq 8(%r11), %rsi
	movq -48(%r15), %r11
	movq 8(%r11), %rdi
	movq -176(%r15), %r11
	movq 8(%r11), %r8
	movq -256(%r15), %r11
	movq 8(%r11), %r9
	movq -120(%r15), %r11
	movq 8(%r11), %r10
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq %r12, %r11
	movq 8(%r11), %r12
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	addq %rcx, %r12
	movq -64(%rbp), %rax
	movq %rax, -240(%rbp)
	addq %r12, -240(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -184(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -216(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -232(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -72(%rbp)
	addq -72(%rbp), %r14
	movq -208(%rbp), %rax
	movq %rax, -88(%rbp)
	addq %r14, -88(%rbp)
	addq -88(%rbp), %rbx
	movq -200(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rbx, -80(%rbp)
	addq -80(%rbp), %r13
	addq %r13, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rdx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $288, %r15
	addq $256, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
