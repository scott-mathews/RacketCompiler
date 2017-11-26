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
	je then200397
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200398
then200397:
	movq $0, %rcx
	movq %rcx, %rcx
end200398:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
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
	je then200399
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200400
then200399:
	movq $0, %rcx
	movq %rcx, %rcx
end200400:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -448(%r15)
	movq -448(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -448(%r15), %rax
	movq %rax, -56(%r15)
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
	je then200401
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200402
then200401:
	movq $0, %rcx
	movq %rcx, %rcx
end200402:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -136(%r15)
	movq -136(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -136(%r15), %rax
	movq %rax, -112(%r15)
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
	je then200403
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200404
then200403:
	movq $0, %rcx
	movq %rcx, %rcx
end200404:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r14
	movq %r14, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
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
	je then200405
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200406
then200405:
	movq $0, %rcx
	movq %rcx, %rcx
end200406:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -104(%r15)
	movq -104(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -104(%r15), %rax
	movq %rax, -296(%r15)
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
	je then200407
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200408
then200407:
	movq $0, %rcx
	movq %rcx, %rcx
end200408:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -360(%r15)
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
	je then200409
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200410
then200409:
	movq $0, %rcx
	movq %rcx, %rcx
end200410:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -144(%r15)
	movq -144(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -144(%r15), %rax
	movq %rax, -248(%r15)
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
	je then200411
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200412
then200411:
	movq $0, %rcx
	movq %rcx, %rcx
end200412:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -272(%r15)
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
	je then200413
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200414
then200413:
	movq $0, %rcx
	movq %rcx, %rcx
end200414:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -128(%r15)
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
	je then200415
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200416
then200415:
	movq $0, %rcx
	movq %rcx, %rcx
end200416:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -320(%r15)
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
	je then200417
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200418
then200417:
	movq $0, %rcx
	movq %rcx, %rcx
end200418:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -232(%r15)
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
	je then200419
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200420
then200419:
	movq $0, %rcx
	movq %rcx, %rcx
end200420:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -280(%r15)
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
	je then200421
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200422
then200421:
	movq $0, %rcx
	movq %rcx, %rcx
end200422:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r13
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
	je then200423
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200424
then200423:
	movq $0, %rcx
	movq %rcx, %rcx
end200424:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
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
	je then200425
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200426
then200425:
	movq $0, %rcx
	movq %rcx, %rcx
end200426:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -488(%r15)
	movq -488(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -488(%r15), %rax
	movq %rax, -216(%r15)
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
	je then200427
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200428
then200427:
	movq $0, %rcx
	movq %rcx, %rcx
end200428:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $1, -56(%rbp)
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
	je then200429
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200430
then200429:
	movq $0, %rcx
	movq %rcx, %rcx
end200430:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -344(%r15)
	movq $1, -64(%rbp)
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
	je then200431
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200432
then200431:
	movq $0, %rcx
	movq %rcx, %rcx
end200432:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -336(%r15)
	movq $1, -168(%rbp)
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
	je then200433
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200434
then200433:
	movq $0, %rcx
	movq %rcx, %rcx
end200434:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -328(%r15)
	movq $1, -160(%rbp)
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
	je then200435
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200436
then200435:
	movq $0, %rcx
	movq %rcx, %rcx
end200436:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -384(%r15)
	movq $1, -184(%rbp)
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
	je then200437
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end200438
then200437:
	movq $0, %rcx
	movq %rcx, %rcx
end200438:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %r12, %r11
	movq 8(%r11), %rdx
	movq -56(%r15), %r11
	movq 8(%r11), %rsi
	movq -112(%r15), %r11
	movq 8(%r11), %rdi
	movq %r14, %r11
	movq 8(%r11), %r8
	movq -296(%r15), %r11
	movq 8(%r11), %r9
	movq -360(%r15), %r11
	movq 8(%r11), %r10
	movq -248(%r15), %r11
	movq 8(%r11), %r12
	movq -272(%r15), %r11
	movq 8(%r11), %r14
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -320(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -280(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -216(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -344(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -336(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -328(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%rbp)
	movq -384(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -80(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rcx, -136(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -176(%rbp)
	addq -176(%rbp), %rbx
	movq -104(%rbp), %rax
	movq %rax, -200(%rbp)
	addq %rbx, -200(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -240(%rbp)
	addq -240(%rbp), %r13
	movq -144(%rbp), %rax
	movq %rax, -232(%rbp)
	addq %r13, -232(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -96(%rbp)
	addq -96(%rbp), %r14
	addq %r14, %r12
	addq %r12, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rdx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $256, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
