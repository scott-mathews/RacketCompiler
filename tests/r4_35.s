	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $152, %rsp
	addq $136, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39465
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then39467
	movq $0, %rbx
	jmp end39468
then39467:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end39468:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end39466
then39465:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39469
	movq $0, %rcx
	jmp end39470
then39469:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39470:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39471
	movq $0, %rcx
	jmp end39472
then39471:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39472:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39473
	movq $0, %rcx
	jmp end39474
then39473:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39474:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39475
	movq $0, %rcx
	jmp end39476
then39475:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39476:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39477
	movq $0, %rcx
	jmp end39478
then39477:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39478:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39479
	movq $0, %rcx
	jmp end39480
then39479:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39480:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39481
	movq $0, %rcx
	jmp end39482
then39481:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39482:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -24(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -24(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq -24(%r15), %rax
	movq %rax, -120(%r15)
	movq %rcx, -128(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39483
	movq $0, %rcx
	jmp end39484
then39483:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39484:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function0(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39485
	movq $0, %rcx
	jmp end39486
then39485:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39486:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39487
	movq $0, %rcx
	jmp end39488
then39487:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39488:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -136(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39466:
	movq %rbx, %rax

	addq $152, %rsp
	subq $136, %r15
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
	subq $152, %rsp
	addq $136, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39489
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then39491
	movq $0, %rbx
	jmp end39492
then39491:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end39492:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end39490
then39489:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39493
	movq $0, %rcx
	jmp end39494
then39493:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39494:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39495
	movq $0, %rcx
	jmp end39496
then39495:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39496:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39497
	movq $0, %rcx
	jmp end39498
then39497:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39498:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39499
	movq $0, %rcx
	jmp end39500
then39499:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39500:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39501
	movq $0, %rcx
	jmp end39502
then39501:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39502:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39503
	movq $0, %rcx
	jmp end39504
then39503:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39504:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39505
	movq $0, %rcx
	jmp end39506
then39505:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39506:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -24(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -24(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq -24(%r15), %rax
	movq %rax, -120(%r15)
	movq %rcx, -128(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39507
	movq $0, %rcx
	jmp end39508
then39507:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39508:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39509
	movq $0, %rcx
	jmp end39510
then39509:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39510:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39511
	movq $0, %rcx
	jmp end39512
then39511:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39512:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -136(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39490:
	movq %rbx, %rax

	addq $152, %rsp
	subq $136, %r15
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
	subq $152, %rsp
	addq $136, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39513
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then39515
	movq $0, %rbx
	jmp end39516
then39515:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end39516:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end39514
then39513:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39517
	movq $0, %rcx
	jmp end39518
then39517:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39518:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39519
	movq $0, %rcx
	jmp end39520
then39519:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39520:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39521
	movq $0, %rcx
	jmp end39522
then39521:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39522:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39523
	movq $0, %rcx
	jmp end39524
then39523:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39524:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39525
	movq $0, %rcx
	jmp end39526
then39525:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39526:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39527
	movq $0, %rcx
	jmp end39528
then39527:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39528:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39529
	movq $0, %rcx
	jmp end39530
then39529:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39530:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -24(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -24(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq -24(%r15), %rax
	movq %rax, -120(%r15)
	movq %rcx, -128(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39531
	movq $0, %rcx
	jmp end39532
then39531:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39532:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function2(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39533
	movq $0, %rcx
	jmp end39534
then39533:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39534:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39535
	movq $0, %rcx
	jmp end39536
then39535:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39536:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -136(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39514:
	movq %rbx, %rax

	addq $152, %rsp
	subq $136, %r15
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
	subq $152, %rsp
	addq $136, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39537
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then39539
	movq $0, %rbx
	jmp end39540
then39539:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end39540:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end39538
then39537:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39541
	movq $0, %rcx
	jmp end39542
then39541:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39542:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39543
	movq $0, %rcx
	jmp end39544
then39543:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39544:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39545
	movq $0, %rcx
	jmp end39546
then39545:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39546:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39547
	movq $0, %rcx
	jmp end39548
then39547:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39548:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39549
	movq $0, %rcx
	jmp end39550
then39549:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39550:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39551
	movq $0, %rcx
	jmp end39552
then39551:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39552:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39553
	movq $0, %rcx
	jmp end39554
then39553:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39554:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -24(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -24(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq -24(%r15), %rax
	movq %rax, -120(%r15)
	movq %rcx, -128(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39555
	movq $0, %rcx
	jmp end39556
then39555:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39556:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function3(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39557
	movq $0, %rcx
	jmp end39558
then39557:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39558:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39559
	movq $0, %rcx
	jmp end39560
then39559:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39560:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -136(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39538:
	movq %rbx, %rax

	addq $152, %rsp
	subq $136, %r15
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
	subq $152, %rsp
	addq $136, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39561
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then39563
	movq $0, %rbx
	jmp end39564
then39563:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end39564:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rcx, %rcx
	movq %rbx, %rbx
	jmp end39562
then39561:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39565
	movq $0, %rcx
	jmp end39566
then39565:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39566:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39567
	movq $0, %rcx
	jmp end39568
then39567:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39568:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39569
	movq $0, %rcx
	jmp end39570
then39569:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39570:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39571
	movq $0, %rcx
	jmp end39572
then39571:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39572:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39573
	movq $0, %rcx
	jmp end39574
then39573:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39574:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -64(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39575
	movq $0, %rcx
	jmp end39576
then39575:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39576:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39577
	movq $0, %rcx
	jmp end39578
then39577:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39578:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -24(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -24(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -24(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq -24(%r15), %rax
	movq %rax, -120(%r15)
	movq %rcx, -128(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39579
	movq $0, %rcx
	jmp end39580
then39579:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39580:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function4(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39581
	movq $0, %rcx
	jmp end39582
then39581:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39582:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39583
	movq $0, %rcx
	jmp end39584
then39583:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39584:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -136(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39562:
	movq %rbx, %rax

	addq $152, %rsp
	subq $136, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function5
function5:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $152, %rsp
	addq $120, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39585
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39587
	movq $0, %rcx
	jmp end39588
then39587:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39588:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	jmp end39586
then39585:
	movq $1, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39589
	movq $0, %rcx
	jmp end39590
then39589:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39590:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -16(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39591
	movq $0, %rcx
	jmp end39592
then39591:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39592:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39593
	movq $0, %rcx
	jmp end39594
then39593:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39594:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39595
	movq $0, %rcx
	jmp end39596
then39595:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39596:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39597
	movq $0, %rcx
	jmp end39598
then39597:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39598:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -48(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39599
	movq $0, %rcx
	jmp end39600
then39599:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end39600:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -8(%r15)
	movq $-1, %r12
	movq $-1, %r13
	movq $-1, %r14
	movq $-1, -48(%rbp)
	movq $-1, -56(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -152(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39601
	movq $0, %rcx
	jmp end39602
then39601:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
end39602:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq -8(%r15), %rax
	movq %rax, -56(%r15)
	movq %rcx, -64(%r15)
	movq -8(%r15), %rax
	movq %rax, -72(%r15)
	movq %rcx, -80(%r15)
	movq -8(%r15), %rax
	movq %rax, -88(%r15)
	movq %rcx, -96(%r15)
	movq -8(%r15), %rax
	movq %rax, -104(%r15)
	movq %rcx, -112(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39603
	movq $0, %rcx
	jmp end39604
then39603:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
end39604:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	leaq function5(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39605
	movq $0, %rcx
	jmp end39606
then39605:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39606:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -120(%r15)
	movq -120(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39607
	movq $0, %rcx
	jmp end39608
then39607:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39608:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %r13
	movq %rcx, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -120(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end39586:
	movq %rbx, %rax

	addq $152, %rsp
	subq $120, %r15
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq

	.globl function6
function6:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, %rcx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $40, %rsp
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
	subq $120, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $40, %r15
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function0(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39609
	movq $0, %rcx
	jmp end39610
then39609:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39610:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	leaq function1(%rip), %rcx
	movq %rcx, %r12
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39611
	movq $0, %rcx
	jmp end39612
then39611:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39612:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function2(%rip), %rcx
	movq %rcx, %r13
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39613
	movq $0, %rcx
	jmp end39614
then39613:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39614:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	leaq function3(%rip), %rcx
	movq %rcx, %r14
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39615
	movq $0, %rcx
	jmp end39616
then39615:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39616:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r14
	leaq function4(%rip), %rcx
	movq %rcx, -48(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39617
	movq $0, %rcx
	jmp end39618
then39617:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39618:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	leaq function5(%rip), %rcx
	movq %rcx, -64(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then39619
	movq $0, %rcx
	jmp end39620
then39619:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end39620:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %rcx
	movq %rcx, %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq %rcx, %rdi
	movq $20, %rsi
	callq *-72(%rbp)
	movq %rax, %rcx
	movq -40(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *-56(%rbp)
	movq %rax, %rcx
	movq -32(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r14
	movq %rax, %rcx
	movq -24(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r13
	movq %rax, %rcx
	movq -16(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%r12
	movq %rax, %rcx
	movq -8(%r15), %rdi
	movq $20, %rsi
	movq %rcx, %rdx
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $40, %r15
	addq $120, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
