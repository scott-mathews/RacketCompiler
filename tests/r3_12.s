	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $352, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $336, %r15
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

	movq $1, -232(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then330379
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end330380
then330379:
	movq $0, %rbx
	movq %rbx, %rbx
end330380:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq -232(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330381
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330382
then330381:
	movq $0, %rsi
	movq %rsi, %rsi
end330382:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -264(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330383
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330384
then330383:
	movq $0, %rsi
	movq %rsi, %rsi
end330384:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -312(%r15), %rax
	movq %rax, -208(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330385
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330386
then330385:
	movq $0, %rsi
	movq %rsi, %rsi
end330386:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3, 0(%r11)
	movq -144(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -144(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330387
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330388
then330387:
	movq $0, %rsi
	movq %rsi, %rsi
end330388:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -320(%r15)
	addq $16, free_ptr(%rip)
	movq -320(%r15), %r11
	movq $3, 0(%r11)
	movq -320(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -320(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330389
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330390
then330389:
	movq $0, %rsi
	movq %rsi, %rsi
end330390:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -176(%r15), %rax
	movq %rax, -224(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330391
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330392
then330391:
	movq $0, %rsi
	movq %rsi, %rsi
end330392:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -256(%r15), %rax
	movq %rax, -160(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330393
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330394
then330393:
	movq $0, %rsi
	movq %rsi, %rsi
end330394:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -96(%r15), %rax
	movq %rax, -272(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330395
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330396
then330395:
	movq $0, %rsi
	movq %rsi, %rsi
end330396:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -240(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then330397
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
	jmp end330398
then330397:
	movq $0, %rbx
	movq %rbx, %rbx
end330398:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $3, 0(%r11)
	movq %rbx, %r11
	movq -224(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rbx, %rbx
	movq $1, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330399
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330400
then330399:
	movq $0, %rsi
	movq %rsi, %rsi
end330400:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %r11
	movq -264(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -64(%r15), %rax
	movq %rax, -184(%r15)
	movq $1, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330401
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330402
then330401:
	movq $0, %rsi
	movq %rsi, %rsi
end330402:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -56(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330403
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330404
then330403:
	movq $0, %rsi
	movq %rsi, %rsi
end330404:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -280(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330405
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330406
then330405:
	movq $0, %rsi
	movq %rsi, %rsi
end330406:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -232(%r15)
	addq $16, free_ptr(%rip)
	movq -232(%r15), %r11
	movq $3, 0(%r11)
	movq -232(%r15), %r11
	movq -328(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -232(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330407
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330408
then330407:
	movq $0, %rsi
	movq %rsi, %rsi
end330408:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -48(%r15), %rax
	movq %rax, -16(%r15)
	movq $1, -336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330409
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330410
then330409:
	movq $0, %rsi
	movq %rsi, %rsi
end330410:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -8(%r15), %rax
	movq %rax, -128(%r15)
	movq $1, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330411
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330412
then330411:
	movq $0, %rsi
	movq %rsi, %rsi
end330412:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -32(%r15), %rax
	movq %rax, -88(%r15)
	movq $1, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330413
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330414
then330413:
	movq $0, %rsi
	movq %rsi, %rsi
end330414:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -104(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330415
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330416
then330415:
	movq $0, %rsi
	movq %rsi, %rsi
end330416:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -112(%r15), %rax
	movq %rax, -288(%r15)
	movq $1, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330417
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330418
then330417:
	movq $0, %rsi
	movq %rsi, %rsi
end330418:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -296(%r15)
	addq $16, free_ptr(%rip)
	movq -296(%r15), %r11
	movq $3, 0(%r11)
	movq -296(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -296(%r15), %rax
	movq %rax, -200(%r15)
	movq $1, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then330419
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end330420
then330419:
	movq $0, %rsi
	movq %rsi, %rsi
end330420:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -216(%r15), %rax
	movq %rax, -120(%r15)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %r12
	movq -208(%r15), %r11
	movq 8(%r11), %r8
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -256(%rbp)
	movq -224(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %r9
	movq -272(%r15), %r11
	movq 8(%r11), %rcx
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %r14
	movq -184(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rdi
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -248(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %r10
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -288(%r15), %r11
	movq 8(%r11), %rdx
	movq -200(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %r13
	movq %r13, %r13
	addq $21, %r13
	movq -152(%rbp), %rax
	movq %rax, -288(%rbp)
	addq %r13, -288(%rbp)
	movq %rdx, %rdx
	addq -288(%rbp), %rdx
	movq -80(%rbp), %rax
	movq %rax, -168(%rbp)
	addq %rdx, -168(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -240(%rbp)
	movq %r10, %r10
	addq -240(%rbp), %r10
	movq -160(%rbp), %rax
	movq %rax, -304(%rbp)
	addq %r10, -304(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -304(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -272(%rbp)
	movq %rdi, %rdi
	addq -272(%rbp), %rdi
	movq -136(%rbp), %rax
	movq %rax, -320(%rbp)
	addq %rdi, -320(%rbp)
	movq %r14, %r14
	addq -320(%rbp), %r14
	movq -88(%rbp), %rax
	movq %rax, -296(%rbp)
	addq %r14, -296(%rbp)
	movq %rcx, %rcx
	addq -296(%rbp), %rcx
	movq %r9, %r9
	addq %rcx, %r9
	movq -112(%rbp), %rax
	movq %rax, -312(%rbp)
	addq %r9, -312(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -312(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -200(%rbp)
	movq %r8, %r8
	addq -200(%rbp), %r8
	movq %r12, %r12
	addq %r8, %r12
	movq -48(%rbp), %rax
	movq %rax, -216(%rbp)
	addq %r12, -216(%rbp)
	movq -216(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $336, %r15
	addq $352, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
