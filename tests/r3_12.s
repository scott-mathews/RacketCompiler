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
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95327
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95328
then95327:
	movq $0, %rcx
	movq %rcx, %rcx
end95328:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -88(%r15)
	movq -88(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -88(%r15), %rax
	movq %rax, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95329
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95330
then95329:
	movq $0, %rcx
	movq %rcx, %rcx
end95330:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -232(%r15), %rax
	movq %rax, -304(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95331
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95332
then95331:
	movq $0, %rcx
	movq %rcx, %rcx
end95332:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
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
	je then95333
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95334
then95333:
	movq $0, %rcx
	movq %rcx, %rcx
end95334:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -344(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95335
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95336
then95335:
	movq $0, %rcx
	movq %rcx, %rcx
end95336:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -32(%r15)
	movq -32(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -32(%r15), %rax
	movq %rax, -360(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95337
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95338
then95337:
	movq $0, %rcx
	movq %rcx, %rcx
end95338:
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -224(%r15), %rax
	movq %rax, -256(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95339
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95340
then95339:
	movq $0, %rcx
	movq %rcx, %rcx
end95340:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -104(%r15)
	movq -104(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -104(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95341
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95342
then95341:
	movq $0, %rcx
	movq %rcx, %rcx
end95342:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95343
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95344
then95343:
	movq $0, %rcx
	movq %rcx, %rcx
end95344:
	movq free_ptr(%rip), %rax
	movq %rax, -384(%r15)
	addq $16, free_ptr(%rip)
	movq -384(%r15), %r11
	movq $3, 0(%r11)
	movq -384(%r15), %rax
	movq %rax, -440(%r15)
	movq -440(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -440(%r15), %rax
	movq %rax, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95345
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95346
then95345:
	movq $0, %rcx
	movq %rcx, %rcx
end95346:
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %rax
	movq %rax, -312(%r15)
	movq -312(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -312(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95347
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95348
then95347:
	movq $0, %rcx
	movq %rcx, %rcx
end95348:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r14
	movq %r14, %r11
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
	je then95349
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95350
then95349:
	movq $0, %rcx
	movq %rcx, %rcx
end95350:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -408(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95351
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95352
then95351:
	movq $0, %rcx
	movq %rcx, %rcx
end95352:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -208(%r15)
	movq -208(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -208(%r15), %rax
	movq %rax, -392(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95353
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95354
then95353:
	movq $0, %rcx
	movq %rcx, %rcx
end95354:
	movq free_ptr(%rip), %rax
	movq %rax, -472(%r15)
	addq $16, free_ptr(%rip)
	movq -472(%r15), %r11
	movq $3, 0(%r11)
	movq -472(%r15), %rax
	movq %rax, -480(%r15)
	movq -480(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -480(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95355
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95356
then95355:
	movq $0, %rcx
	movq %rcx, %rcx
end95356:
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -448(%r15)
	movq -448(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -448(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95357
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95358
then95357:
	movq $0, %rcx
	movq %rcx, %rcx
end95358:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -328(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95359
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95360
then95359:
	movq $0, %rcx
	movq %rcx, %rcx
end95360:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95361
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95362
then95361:
	movq $0, %rcx
	movq %rcx, %rcx
end95362:
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -376(%r15)
	movq -376(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -376(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95363
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95364
then95363:
	movq $0, %rcx
	movq %rcx, %rcx
end95364:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -96(%r15)
	movq -96(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -96(%r15), %rax
	movq %rax, -288(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95365
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95366
then95365:
	movq $0, %rcx
	movq %rcx, %rcx
end95366:
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -296(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then95367
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end95368
then95367:
	movq $0, %rcx
	movq %rcx, %rcx
end95368:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -56(%r15), %r11
	movq 8(%r11), %rbx
	movq -304(%r15), %r11
	movq 8(%r11), %rdx
	movq %r13, %r11
	movq 8(%r11), %rsi
	movq -344(%r15), %r11
	movq 8(%r11), %rdi
	movq -360(%r15), %r11
	movq 8(%r11), %r8
	movq -256(%r15), %r11
	movq 8(%r11), %r9
	movq -24(%r15), %r11
	movq 8(%r11), %r10
	movq -320(%r15), %r11
	movq 8(%r11), %r13
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -408(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -392(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -328(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -112(%rbp), %rax
	movq %rax, -200(%rbp)
	addq %rcx, -200(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -120(%rbp)
	addq -120(%rbp), %r12
	movq -144(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %r12, -56(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -72(%rbp)
	addq -72(%rbp), %r14
	movq -88(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %r14, -168(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -152(%rbp)
	addq -152(%rbp), %r13
	addq %r13, %r10
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
