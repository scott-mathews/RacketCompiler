	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $160, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $48, %r15
	movq $0, -48(%r15)
	movq $0, -40(%r15)
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $20, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71397
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end71398
then71397:
	movq $0, %rcx
	movq %rcx, %rcx
end71398:
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
	movq $1, -112(%rbp)
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71399
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71400
then71399:
	movq $0, %rcx
	movq %rcx, %rcx
end71400:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq %rbx, -40(%r15)
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71401
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71402
then71401:
	movq $0, %rcx
	movq %rcx, %rcx
end71402:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $139, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %r12
	movq %rbx, -32(%r15)
	movq $3, %r13
	movq $4, %r14
	movq $5, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71403
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71404
then71403:
	movq $0, %rcx
	movq %rcx, %rcx
end71404:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $267, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %rbx
	movq $2, %r14
	movq %rcx, -48(%r15)
	movq $4, %r13
	movq $5, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71405
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71406
then71405:
	movq $0, %rcx
	movq %rcx, %rcx
end71406:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $523, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %r12
	movq $2, %rbx
	movq $3, %r14
	movq %rcx, -24(%r15)
	movq $5, %r13
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71407
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71408
then71407:
	movq $0, %rcx
	movq %rcx, %rcx
end71408:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $1035, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r13, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rcx
	movq $1, %r13
	movq $2, %rbx
	movq $3, %r14
	movq $4, %r12
	movq %rcx, -8(%r15)
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71409
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71410
then71409:
	movq $0, %rcx
	movq %rcx, %rcx
end71410:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $2059, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, -48(%rbp)
	movq $3, %r13
	movq $4, %r14
	movq $5, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71411
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71412
then71411:
	movq $0, %rcx
	movq %rcx, %rcx
end71412:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r14
	movq $3, %r13
	movq $4, -96(%rbp)
	movq $5, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71413
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71414
then71413:
	movq $0, %rcx
	movq %rcx, %rcx
end71414:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %r14
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, -80(%rbp)
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $48, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71415
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71416
then71415:
	movq $0, %rcx
	movq %rcx, %rcx
end71416:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %r14
	movq $2, %r12
	movq $3, %rbx
	movq $4, %r13
	movq $5, -64(%rbp)
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71417
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71418
then71417:
	movq $0, %rcx
	movq %rcx, %rcx
end71418:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r12, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %r13
	movq $2, %r14
	movq $3, %rbx
	movq $4, -56(%rbp)
	movq $5, %r12
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71419
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71420
then71419:
	movq $0, %rcx
	movq %rcx, %rcx
end71420:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r12, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r14, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %r13
	movq $2, %rbx
	movq $3, %r12
	movq $4, -88(%rbp)
	movq $5, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71421
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71422
then71421:
	movq $0, %rcx
	movq %rcx, %rcx
end71422:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, -104(%rbp)
	movq $2, %rbx
	movq $3, %r13
	movq $4, %r12
	movq $5, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71423
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71424
then71423:
	movq $0, %rcx
	movq %rcx, %rcx
end71424:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $1, %rbx
	movq $2, %r13
	movq $3, -72(%rbp)
	movq $4, %r12
	movq $5, %r14
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then71425
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end71426
then71425:
	movq $0, %rcx
	movq %rcx, %rcx
end71426:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $11, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %r14, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 16(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq -16(%r15), %r11
	movq 8(%r11), %rbx
	movq %rbx, %rbx
	addq $22, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $48, %r15
	addq $160, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
