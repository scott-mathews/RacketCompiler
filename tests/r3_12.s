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
	addq $504, %r15
	movq $0, -504(%r15)
	movq $0, -496(%r15)
	movq $0, -488(%r15)
	movq $0, -480(%r15)
	movq $0, -472(%r15)
	movq $0, -464(%r15)
	movq $0, -456(%r15)
	movq $0, -448(%r15)
	movq $0, -440(%r15)
	movq $0, -432(%r15)
	movq $0, -424(%r15)
	movq $0, -416(%r15)
	movq $0, -408(%r15)
	movq $0, -400(%r15)
	movq $0, -392(%r15)
	movq $0, -384(%r15)
	movq $0, -376(%r15)
	movq $0, -368(%r15)
	movq $0, -360(%r15)
	movq $0, -352(%r15)
	movq $0, -344(%r15)
	movq $0, -336(%r15)
	movq $0, -328(%r15)
	movq $0, -320(%r15)
	movq $0, -312(%r15)
	movq $0, -304(%r15)
	movq $0, -296(%r15)
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
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119392
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119393
then119392:
	movq $0, %rcx
	movq %rcx, %rcx
end119393:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r13
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119394
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119395
then119394:
	movq $0, %rcx
	movq %rcx, %rcx
end119395:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -480(%r15)
	movq -480(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -480(%r15), %rax
	movq %rax, -456(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119396
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119397
then119396:
	movq $0, %rcx
	movq %rcx, %rcx
end119397:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119398
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119399
then119398:
	movq $0, %rcx
	movq %rcx, %rcx
end119399:
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -384(%r15)
	movq -384(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -384(%r15), %rax
	movq %rax, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119400
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119401
then119400:
	movq $0, %rcx
	movq %rcx, %rcx
end119401:
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -312(%r15)
	movq -312(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -312(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119402
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119403
then119402:
	movq $0, %rcx
	movq %rcx, %rcx
end119403:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -16(%r15)
	movq -16(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -16(%r15), %rax
	movq %rax, -240(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119404
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119405
then119404:
	movq $0, %rcx
	movq %rcx, %rcx
end119405:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -392(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119406
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119407
then119406:
	movq $0, %rcx
	movq %rcx, %rcx
end119407:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119408
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119409
then119408:
	movq $0, %rcx
	movq %rcx, %rcx
end119409:
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -56(%r15), %rax
	movq %rax, -376(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119410
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119411
then119410:
	movq $0, %rcx
	movq %rcx, %rcx
end119411:
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -368(%r15)
	movq -368(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -368(%r15), %rax
	movq %rax, -352(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119412
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119413
then119412:
	movq $0, %rcx
	movq %rcx, %rcx
end119413:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -120(%r15)
	movq -120(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -120(%r15), %rax
	movq %rax, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119414
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119415
then119414:
	movq $0, %rcx
	movq %rcx, %rcx
end119415:
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -328(%r15)
	movq -328(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -328(%r15), %rax
	movq %rax, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119416
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119417
then119416:
	movq $0, %rcx
	movq %rcx, %rcx
end119417:
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -264(%r15)
	movq -264(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -264(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119418
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119419
then119418:
	movq $0, %rcx
	movq %rcx, %rcx
end119419:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -360(%r15)
	movq -360(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -360(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119420
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119421
then119420:
	movq $0, %rcx
	movq %rcx, %rcx
end119421:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119422
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119423
then119422:
	movq $0, %rcx
	movq %rcx, %rcx
end119423:
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -168(%r15), %rax
	movq %rax, -408(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119424
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119425
then119424:
	movq $0, %rcx
	movq %rcx, %rcx
end119425:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -280(%r15)
	movq -280(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -280(%r15), %rax
	movq %rax, -448(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119426
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119427
then119426:
	movq $0, %rcx
	movq %rcx, %rcx
end119427:
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -256(%r15), %rax
	movq %rax, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119428
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119429
then119428:
	movq $0, %rcx
	movq %rcx, %rcx
end119429:
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -232(%r15), %rax
	movq %rax, -432(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119430
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119431
then119430:
	movq $0, %rcx
	movq %rcx, %rcx
end119431:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -424(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119432
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119433
then119432:
	movq $0, %rcx
	movq %rcx, %rcx
end119433:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r13, %r11
	movq 8(%r11), %rbx
	movq -456(%r15), %r11
	movq 8(%r11), %rdx
	movq %r12, %r11
	movq 8(%r11), %rsi
	movq -96(%r15), %r11
	movq 8(%r11), %rdi
	movq -192(%r15), %r11
	movq 8(%r11), %r8
	movq -240(%r15), %r11
	movq 8(%r11), %r9
	movq -392(%r15), %r11
	movq 8(%r11), %r10
	movq -128(%r15), %r11
	movq 8(%r11), %r12
	movq -376(%r15), %r11
	movq 8(%r11), %r13
	movq -352(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -408(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -448(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -432(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -424(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -64(%rbp), %rax
	movq %rax, -144(%rbp)
	addq %rcx, -144(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -152(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -168(%rbp)
	addq -168(%rbp), %r14
	movq -176(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %r14, -120(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -96(%rbp)
	addq -96(%rbp), %r13
	addq %r13, %r12
	addq %r12, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
