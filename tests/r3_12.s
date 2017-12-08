	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $232, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $304, %r15
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
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105346
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105347
then105346:
	movq $0, %rcx
	movq %rcx, %rcx
end105347:
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
	orq $2, %rbx
	movq %rbx, -192(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105348
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105349
then105348:
	movq $0, %rcx
	movq %rcx, %rcx
end105349:
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
	orq $2, %rbx
	movq %rbx, -208(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105350
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105351
then105350:
	movq $0, %rcx
	movq %rcx, %rcx
end105351:
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
	orq $2, %rbx
	movq %rbx, -176(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105352
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105353
then105352:
	movq $0, %rcx
	movq %rcx, %rcx
end105353:
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
	orq $2, %rbx
	movq %rbx, -48(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105354
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105355
then105354:
	movq $0, %rcx
	movq %rcx, %rcx
end105355:
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
	orq $2, %rbx
	movq %rbx, -128(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105356
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105357
then105356:
	movq $0, %rcx
	movq %rcx, %rcx
end105357:
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
	orq $2, %rbx
	movq %rbx, -168(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105358
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105359
then105358:
	movq $0, %rcx
	movq %rcx, %rcx
end105359:
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
	orq $2, %rbx
	movq %rbx, -104(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105360
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105361
then105360:
	movq $0, %rcx
	movq %rcx, %rcx
end105361:
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
	orq $2, %rbx
	movq %rbx, -144(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105362
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105363
then105362:
	movq $0, %rcx
	movq %rcx, %rcx
end105363:
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
	orq $2, %rbx
	movq %rbx, -224(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105364
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105365
then105364:
	movq $0, %rcx
	movq %rcx, %rcx
end105365:
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
	orq $2, %rbx
	movq %rbx, -40(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105366
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105367
then105366:
	movq $0, %rcx
	movq %rcx, %rcx
end105367:
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
	orq $2, %rbx
	movq %rbx, -120(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105368
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105369
then105368:
	movq $0, %rcx
	movq %rcx, %rcx
end105369:
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
	orq $2, %rbx
	movq %rbx, -24(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105370
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105371
then105370:
	movq $0, %rcx
	movq %rcx, %rcx
end105371:
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
	orq $2, %rbx
	movq %rbx, -200(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105372
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105373
then105372:
	movq $0, %rcx
	movq %rcx, %rcx
end105373:
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
	orq $2, %rbx
	movq %rbx, -64(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105374
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105375
then105374:
	movq $0, %rcx
	movq %rcx, %rcx
end105375:
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
	orq $2, %rbx
	movq %rbx, -216(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105376
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105377
then105376:
	movq $0, %rcx
	movq %rcx, %rcx
end105377:
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
	orq $2, %rbx
	movq %rbx, -184(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105378
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105379
then105378:
	movq $0, %rcx
	movq %rcx, %rcx
end105379:
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
	orq $2, %rbx
	movq %rbx, -272(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105380
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105381
then105380:
	movq $0, %rcx
	movq %rcx, %rcx
end105381:
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
	orq $2, %rbx
	movq %rbx, -56(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105382
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105383
then105382:
	movq $0, %rcx
	movq %rcx, %rcx
end105383:
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
	orq $2, %rbx
	movq %rbx, -280(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105384
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105385
then105384:
	movq $0, %rcx
	movq %rcx, %rcx
end105385:
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
	orq $2, %rbx
	movq %rbx, -232(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then105386
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end105387
then105386:
	movq $0, %rcx
	movq %rcx, %rcx
end105387:
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
	orq $2, %rbx
	movq %rbx, %rbx
	movq -192(%r15), %r12
	andq $7, %r12
	cmpq $2, %r12
	je then105388
	callq exit
	jmp end105389
then105388:
	movq $7, %r12
	notq %r12
	andq -192(%r15), %r12
end105389:
	movq %r12, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then105390
	callq exit
	jmp end105391
then105390:
	movq %rcx, %r13
	sarq $3, %r13
end105391:
	movq -208(%r15), %r12
	andq $7, %r12
	cmpq $2, %r12
	je then105392
	callq exit
	jmp end105393
then105392:
	movq $7, %r12
	notq %r12
	andq -208(%r15), %r12
end105393:
	movq %r12, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then105394
	callq exit
	jmp end105395
then105394:
	movq %rcx, %r12
	sarq $3, %r12
end105395:
	movq -176(%r15), %r14
	andq $7, %r14
	cmpq $2, %r14
	je then105396
	callq exit
	jmp end105397
then105396:
	movq $7, %r14
	notq %r14
	andq -176(%r15), %r14
end105397:
	movq %r14, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then105398
	callq exit
	jmp end105399
then105398:
	movq %rcx, %r14
	sarq $3, %r14
end105399:
	movq -48(%r15), %rax
	movq %rax, -288(%r15)
	andq $7, -288(%r15)
	cmpq $2, -288(%r15)
	je then105400
	callq exit
	jmp end105401
then105400:
	movq $7, -288(%r15)
	notq -288(%r15)
	movq -48(%r15), %rax
	andq %rax, -288(%r15)
end105401:
	movq -288(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -48(%rbp)
	andq $7, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then105402
	callq exit
	jmp end105403
then105402:
	movq %rcx, -48(%rbp)
	sarq $3, -48(%rbp)
end105403:
	movq -128(%r15), %rax
	movq %rax, -80(%r15)
	andq $7, -80(%r15)
	cmpq $2, -80(%r15)
	je then105404
	callq exit
	jmp end105405
then105404:
	movq $7, -80(%r15)
	notq -80(%r15)
	movq -128(%r15), %rax
	andq %rax, -80(%r15)
end105405:
	movq -80(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -56(%rbp)
	andq $7, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then105406
	callq exit
	jmp end105407
then105406:
	movq %rcx, -56(%rbp)
	sarq $3, -56(%rbp)
end105407:
	movq -168(%r15), %rax
	movq %rax, -136(%r15)
	andq $7, -136(%r15)
	cmpq $2, -136(%r15)
	je then105408
	callq exit
	jmp end105409
then105408:
	movq $7, -136(%r15)
	notq -136(%r15)
	movq -168(%r15), %rax
	andq %rax, -136(%r15)
end105409:
	movq -136(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -152(%rbp)
	andq $7, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then105410
	callq exit
	jmp end105411
then105410:
	movq %rcx, -152(%rbp)
	sarq $3, -152(%rbp)
end105411:
	movq -104(%r15), %rax
	movq %rax, -296(%r15)
	andq $7, -296(%r15)
	cmpq $2, -296(%r15)
	je then105412
	callq exit
	jmp end105413
then105412:
	movq $7, -296(%r15)
	notq -296(%r15)
	movq -104(%r15), %rax
	andq %rax, -296(%r15)
end105413:
	movq -296(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -144(%rbp)
	andq $7, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then105414
	callq exit
	jmp end105415
then105414:
	movq %rcx, -144(%rbp)
	sarq $3, -144(%rbp)
end105415:
	movq -144(%r15), %rax
	movq %rax, -16(%r15)
	andq $7, -16(%r15)
	cmpq $2, -16(%r15)
	je then105416
	callq exit
	jmp end105417
then105416:
	movq $7, -16(%r15)
	notq -16(%r15)
	movq -144(%r15), %rax
	andq %rax, -16(%r15)
end105417:
	movq -16(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -168(%rbp)
	andq $7, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then105418
	callq exit
	jmp end105419
then105418:
	movq %rcx, -168(%rbp)
	sarq $3, -168(%rbp)
end105419:
	movq -224(%r15), %rax
	movq %rax, -264(%r15)
	andq $7, -264(%r15)
	cmpq $2, -264(%r15)
	je then105420
	callq exit
	jmp end105421
then105420:
	movq $7, -264(%r15)
	notq -264(%r15)
	movq -224(%r15), %rax
	andq %rax, -264(%r15)
end105421:
	movq -264(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -64(%rbp)
	andq $7, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then105422
	callq exit
	jmp end105423
then105422:
	movq %rcx, -64(%rbp)
	sarq $3, -64(%rbp)
end105423:
	movq -40(%r15), %rax
	movq %rax, -248(%r15)
	andq $7, -248(%r15)
	cmpq $2, -248(%r15)
	je then105424
	callq exit
	jmp end105425
then105424:
	movq $7, -248(%r15)
	notq -248(%r15)
	movq -40(%r15), %rax
	andq %rax, -248(%r15)
end105425:
	movq -248(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then105426
	callq exit
	jmp end105427
then105426:
	movq %rcx, -96(%rbp)
	sarq $3, -96(%rbp)
end105427:
	movq -120(%r15), %rax
	movq %rax, -112(%r15)
	andq $7, -112(%r15)
	cmpq $2, -112(%r15)
	je then105428
	callq exit
	jmp end105429
then105428:
	movq $7, -112(%r15)
	notq -112(%r15)
	movq -120(%r15), %rax
	andq %rax, -112(%r15)
end105429:
	movq -112(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -136(%rbp)
	andq $7, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then105430
	callq exit
	jmp end105431
then105430:
	movq %rcx, -136(%rbp)
	sarq $3, -136(%rbp)
end105431:
	movq -24(%r15), %rax
	movq %rax, -32(%r15)
	andq $7, -32(%r15)
	cmpq $2, -32(%r15)
	je then105432
	callq exit
	jmp end105433
then105432:
	movq $7, -32(%r15)
	notq -32(%r15)
	movq -24(%r15), %rax
	andq %rax, -32(%r15)
end105433:
	movq -32(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -160(%rbp)
	andq $7, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then105434
	callq exit
	jmp end105435
then105434:
	movq %rcx, -160(%rbp)
	sarq $3, -160(%rbp)
end105435:
	movq -200(%r15), %rax
	movq %rax, -72(%r15)
	andq $7, -72(%r15)
	cmpq $2, -72(%r15)
	je then105436
	callq exit
	jmp end105437
then105436:
	movq $7, -72(%r15)
	notq -72(%r15)
	movq -200(%r15), %rax
	andq %rax, -72(%r15)
end105437:
	movq -72(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then105438
	callq exit
	jmp end105439
then105438:
	movq %rcx, -128(%rbp)
	sarq $3, -128(%rbp)
end105439:
	movq -64(%r15), %rax
	movq %rax, -304(%r15)
	andq $7, -304(%r15)
	cmpq $2, -304(%r15)
	je then105440
	callq exit
	jmp end105441
then105440:
	movq $7, -304(%r15)
	notq -304(%r15)
	movq -64(%r15), %rax
	andq %rax, -304(%r15)
end105441:
	movq -304(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then105442
	callq exit
	jmp end105443
then105442:
	movq %rcx, -88(%rbp)
	sarq $3, -88(%rbp)
end105443:
	movq -216(%r15), %rax
	movq %rax, -96(%r15)
	andq $7, -96(%r15)
	cmpq $2, -96(%r15)
	je then105444
	callq exit
	jmp end105445
then105444:
	movq $7, -96(%r15)
	notq -96(%r15)
	movq -216(%r15), %rax
	andq %rax, -96(%r15)
end105445:
	movq -96(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then105446
	callq exit
	jmp end105447
then105446:
	movq %rcx, -112(%rbp)
	sarq $3, -112(%rbp)
end105447:
	movq -184(%r15), %rax
	movq %rax, -152(%r15)
	andq $7, -152(%r15)
	cmpq $2, -152(%r15)
	je then105448
	callq exit
	jmp end105449
then105448:
	movq $7, -152(%r15)
	notq -152(%r15)
	movq -184(%r15), %rax
	andq %rax, -152(%r15)
end105449:
	movq -152(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then105450
	callq exit
	jmp end105451
then105450:
	movq %rcx, -72(%rbp)
	sarq $3, -72(%rbp)
end105451:
	movq -272(%r15), %rax
	movq %rax, -160(%r15)
	andq $7, -160(%r15)
	cmpq $2, -160(%r15)
	je then105452
	callq exit
	jmp end105453
then105452:
	movq $7, -160(%r15)
	notq -160(%r15)
	movq -272(%r15), %rax
	andq %rax, -160(%r15)
end105453:
	movq -160(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -176(%rbp)
	andq $7, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then105454
	callq exit
	jmp end105455
then105454:
	movq %rcx, -176(%rbp)
	sarq $3, -176(%rbp)
end105455:
	movq -56(%r15), %rax
	movq %rax, -256(%r15)
	andq $7, -256(%r15)
	cmpq $2, -256(%r15)
	je then105456
	callq exit
	jmp end105457
then105456:
	movq $7, -256(%r15)
	notq -256(%r15)
	movq -56(%r15), %rax
	andq %rax, -256(%r15)
end105457:
	movq -256(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -184(%rbp)
	andq $7, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then105458
	callq exit
	jmp end105459
then105458:
	movq %rcx, -184(%rbp)
	sarq $3, -184(%rbp)
end105459:
	movq -280(%r15), %rax
	movq %rax, -8(%r15)
	andq $7, -8(%r15)
	cmpq $2, -8(%r15)
	je then105460
	callq exit
	jmp end105461
then105460:
	movq $7, -8(%r15)
	notq -8(%r15)
	movq -280(%r15), %rax
	andq %rax, -8(%r15)
end105461:
	movq -8(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then105462
	callq exit
	jmp end105463
then105462:
	movq %rcx, -104(%rbp)
	sarq $3, -104(%rbp)
end105463:
	movq -232(%r15), %rax
	movq %rax, -88(%r15)
	andq $7, -88(%r15)
	cmpq $2, -88(%r15)
	je then105464
	callq exit
	jmp end105465
then105464:
	movq $7, -88(%r15)
	notq -88(%r15)
	movq -232(%r15), %rax
	andq %rax, -88(%r15)
end105465:
	movq -88(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then105466
	callq exit
	jmp end105467
then105466:
	movq %rcx, -80(%rbp)
	sarq $3, -80(%rbp)
end105467:
	movq %rbx, -240(%r15)
	andq $7, -240(%r15)
	cmpq $2, -240(%r15)
	je then105468
	callq exit
	jmp end105469
then105468:
	movq $7, -240(%r15)
	notq -240(%r15)
	andq %rbx, -240(%r15)
end105469:
	movq -240(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105470
	callq exit
	jmp end105471
then105470:
	movq %rcx, %rbx
	sarq $3, %rbx
end105471:
	movq $21, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then105472
	callq exit
	jmp end105473
then105472:
	movq %rcx, -120(%rbp)
	sarq $3, -120(%rbp)
end105473:
	movq %rbx, %rbx
	addq -120(%rbp), %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105474
	callq exit
	jmp end105475
then105474:
	movq %rcx, %rbx
	sarq $3, %rbx
end105475:
	movq -80(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105476
	callq exit
	jmp end105477
then105476:
	movq %rcx, %rbx
	sarq $3, %rbx
end105477:
	movq -104(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105478
	callq exit
	jmp end105479
then105478:
	movq %rcx, %rbx
	sarq $3, %rbx
end105479:
	movq -184(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105480
	callq exit
	jmp end105481
then105480:
	movq %rcx, %rbx
	sarq $3, %rbx
end105481:
	movq -176(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105482
	callq exit
	jmp end105483
then105482:
	movq %rcx, %rbx
	sarq $3, %rbx
end105483:
	movq -72(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105484
	callq exit
	jmp end105485
then105484:
	movq %rcx, %rbx
	sarq $3, %rbx
end105485:
	movq -112(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105486
	callq exit
	jmp end105487
then105486:
	movq %rcx, %rbx
	sarq $3, %rbx
end105487:
	movq -88(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105488
	callq exit
	jmp end105489
then105488:
	movq %rcx, %rbx
	sarq $3, %rbx
end105489:
	movq -128(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105490
	callq exit
	jmp end105491
then105490:
	movq %rcx, %rbx
	sarq $3, %rbx
end105491:
	movq -160(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105492
	callq exit
	jmp end105493
then105492:
	movq %rcx, %rbx
	sarq $3, %rbx
end105493:
	movq -136(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105494
	callq exit
	jmp end105495
then105494:
	movq %rcx, %rbx
	sarq $3, %rbx
end105495:
	movq -96(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105496
	callq exit
	jmp end105497
then105496:
	movq %rcx, %rbx
	sarq $3, %rbx
end105497:
	movq -64(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105498
	callq exit
	jmp end105499
then105498:
	movq %rcx, %rbx
	sarq $3, %rbx
end105499:
	movq -168(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105500
	callq exit
	jmp end105501
then105500:
	movq %rcx, %rbx
	sarq $3, %rbx
end105501:
	movq -144(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105502
	callq exit
	jmp end105503
then105502:
	movq %rcx, %rbx
	sarq $3, %rbx
end105503:
	movq -152(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105504
	callq exit
	jmp end105505
then105504:
	movq %rcx, %rbx
	sarq $3, %rbx
end105505:
	movq -56(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105506
	callq exit
	jmp end105507
then105506:
	movq %rcx, %rbx
	sarq $3, %rbx
end105507:
	movq -48(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105508
	callq exit
	jmp end105509
then105508:
	movq %rcx, %rbx
	sarq $3, %rbx
end105509:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105510
	callq exit
	jmp end105511
then105510:
	movq %rcx, %rbx
	sarq $3, %rbx
end105511:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then105512
	callq exit
	jmp end105513
then105512:
	movq %rcx, %rbx
	sarq $3, %rbx
end105513:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $304, %r15
	addq $232, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
