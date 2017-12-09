	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $160, %r15
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
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72373
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72374
then72373:
	movq $0, %rcx
	movq %rcx, %rcx
end72374:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -104(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72375
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72376
then72375:
	movq $0, %rcx
	movq %rcx, %rcx
end72376:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -64(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72377
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72378
then72377:
	movq $0, %rcx
	movq %rcx, %rcx
end72378:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -48(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72379
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72380
then72379:
	movq $0, %rcx
	movq %rcx, %rcx
end72380:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -56(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72381
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72382
then72381:
	movq $0, %rcx
	movq %rcx, %rcx
end72382:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72383
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72384
then72383:
	movq $0, %rcx
	movq %rcx, %rcx
end72384:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -72(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72385
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72386
then72385:
	movq $0, %rcx
	movq %rcx, %rcx
end72386:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -88(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72387
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72388
then72387:
	movq $0, %rcx
	movq %rcx, %rcx
end72388:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -96(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72389
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72390
then72389:
	movq $0, %rcx
	movq %rcx, %rcx
end72390:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -40(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72391
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72392
then72391:
	movq $0, %rcx
	movq %rcx, %rcx
end72392:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72393
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72394
then72393:
	movq $0, %rcx
	movq %rcx, %rcx
end72394:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -160(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72395
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72396
then72395:
	movq $0, %rcx
	movq %rcx, %rcx
end72396:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -32(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72397
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72398
then72397:
	movq $0, %rcx
	movq %rcx, %rcx
end72398:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -144(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72399
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72400
then72399:
	movq $0, %rcx
	movq %rcx, %rcx
end72400:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -152(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72401
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72402
then72401:
	movq $0, %rcx
	movq %rcx, %rcx
end72402:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -136(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72403
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72404
then72403:
	movq $0, %rcx
	movq %rcx, %rcx
end72404:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -24(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72405
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72406
then72405:
	movq $0, %rcx
	movq %rcx, %rcx
end72406:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -120(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72407
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72408
then72407:
	movq $0, %rcx
	movq %rcx, %rcx
end72408:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -80(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72409
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72410
then72409:
	movq $0, %rcx
	movq %rcx, %rcx
end72410:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -112(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72411
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72412
then72411:
	movq $0, %rcx
	movq %rcx, %rcx
end72412:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then72413
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end72414
then72413:
	movq $0, %rcx
	movq %rcx, %rcx
end72414:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq -104(%r15), %r11
	movq 8(%r11), %rcx
	movq -64(%r15), %r11
	movq 8(%r11), %rdx
	movq -48(%r15), %r11
	movq 8(%r11), %rsi
	movq -56(%r15), %r11
	movq 8(%r11), %rdi
	movq -16(%r15), %r11
	movq 8(%r11), %r8
	movq -72(%r15), %r11
	movq 8(%r11), %r9
	movq -88(%r15), %r11
	movq 8(%r11), %r10
	movq -96(%r15), %r11
	movq 8(%r11), %r12
	movq -40(%r15), %r11
	movq 8(%r11), %r13
	movq -8(%r15), %r11
	movq 8(%r11), %r14
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	addq $21, %rbx
	movq -160(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %rbx, -72(%rbp)
	movq -64(%rbp), %rbx
	addq -72(%rbp), %rbx
	movq -104(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rbx, -152(%rbp)
	movq -112(%rbp), %rbx
	addq -152(%rbp), %rbx
	movq -88(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rbx, -136(%rbp)
	movq -48(%rbp), %rbx
	addq -136(%rbp), %rbx
	movq -96(%rbp), %rax
	movq %rax, -144(%rbp)
	addq %rbx, -144(%rbp)
	movq -56(%rbp), %rbx
	addq -144(%rbp), %rbx
	movq -80(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %rbx, -120(%rbp)
	movq -128(%rbp), %rbx
	addq -120(%rbp), %rbx
	movq %r14, %r14
	addq %rbx, %r14
	movq %r13, %rbx
	addq %r14, %rbx
	movq %r12, %r12
	addq %rbx, %r12
	movq %r10, %rbx
	addq %r12, %rbx
	movq %r9, %r9
	addq %rbx, %r9
	movq %r8, %rbx
	addq %r9, %rbx
	movq %rdi, %rdi
	addq %rbx, %rdi
	movq %rsi, %rbx
	addq %rdi, %rbx
	movq %rdx, %rdx
	addq %rbx, %rdx
	movq %rcx, %rbx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $160, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
