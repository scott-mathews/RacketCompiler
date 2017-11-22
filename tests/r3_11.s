	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $240, %rsp
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

	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88268
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88269
then88268:
	movq $0, %rcx
	movq %rcx, %rcx
end88269:
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
	movq %rax, -176(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88270
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88271
then88270:
	movq $0, %rcx
	movq %rcx, %rcx
end88271:
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -152(%r15), %rax
	movq %rax, -208(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88272
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88273
then88272:
	movq $0, %rcx
	movq %rcx, %rcx
end88273:
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88274
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88275
then88274:
	movq $0, %rcx
	movq %rcx, %rcx
end88275:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -112(%r15), %rax
	movq %rax, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88276
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88277
then88276:
	movq $0, %rcx
	movq %rcx, %rcx
end88277:
	movq free_ptr(%rip), %rax
	movq %rax, -328(%r15)
	addq $16, free_ptr(%rip)
	movq -328(%r15), %r11
	movq $3, 0(%r11)
	movq -328(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -328(%r15), %rax
	movq %rax, -224(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88278
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88279
then88278:
	movq $0, %rcx
	movq %rcx, %rcx
end88279:
	movq free_ptr(%rip), %rax
	movq %rax, -272(%r15)
	addq $16, free_ptr(%rip)
	movq -272(%r15), %r11
	movq $3, 0(%r11)
	movq -272(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -272(%r15), %rax
	movq %rax, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88280
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88281
then88280:
	movq $0, %rcx
	movq %rcx, %rcx
end88281:
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %rax
	movq %rax, -200(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88282
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88283
then88282:
	movq $0, %rcx
	movq %rcx, %rcx
end88283:
	movq free_ptr(%rip), %rax
	movq %rax, %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88284
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88285
then88284:
	movq $0, %rcx
	movq %rcx, %rcx
end88285:
	movq free_ptr(%rip), %rax
	movq %rax, -296(%r15)
	addq $16, free_ptr(%rip)
	movq -296(%r15), %r11
	movq $3, 0(%r11)
	movq -296(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -296(%r15), %rax
	movq %rax, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88286
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88287
then88286:
	movq $0, %rcx
	movq %rcx, %rcx
end88287:
	movq free_ptr(%rip), %rax
	movq %rax, -288(%r15)
	addq $16, free_ptr(%rip)
	movq -288(%r15), %r11
	movq $3, 0(%r11)
	movq -288(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -288(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88288
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88289
then88288:
	movq $0, %rcx
	movq %rcx, %rcx
end88289:
	movq free_ptr(%rip), %rax
	movq %rax, -232(%r15)
	addq $16, free_ptr(%rip)
	movq -232(%r15), %r11
	movq $3, 0(%r11)
	movq -232(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -232(%r15), %rax
	movq %rax, -216(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88290
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88291
then88290:
	movq $0, %rcx
	movq %rcx, %rcx
end88291:
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -64(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88292
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88293
then88292:
	movq $0, %rcx
	movq %rcx, %rcx
end88293:
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -40(%r15), %rax
	movq %rax, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88294
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88295
then88294:
	movq $0, %rcx
	movq %rcx, %rcx
end88295:
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88296
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88297
then88296:
	movq $0, %rcx
	movq %rcx, %rcx
end88297:
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -48(%r15), %rax
	movq %rax, -144(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88298
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88299
then88298:
	movq $0, %rcx
	movq %rcx, %rcx
end88299:
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
	movq %rax, -248(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88300
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88301
then88300:
	movq $0, %rcx
	movq %rcx, %rcx
end88301:
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -168(%r15), %rax
	movq %rax, -240(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88302
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88303
then88302:
	movq $0, %rcx
	movq %rcx, %rcx
end88303:
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
	movq $1, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88304
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88305
then88304:
	movq $0, %rcx
	movq %rcx, %rcx
end88305:
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -32(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88306
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88307
then88306:
	movq $0, %rcx
	movq %rcx, %rcx
end88307:
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -96(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then88308
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end88309
then88308:
	movq $0, %rcx
	movq %rcx, %rcx
end88309:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -176(%r15), %r11
	movq 8(%r11), %rdx
	movq -208(%r15), %r11
	movq 8(%r11), %rsi
	movq %r13, %r11
	movq 8(%r11), %rdi
	movq -120(%r15), %r11
	movq 8(%r11), %r8
	movq -224(%r15), %r11
	movq 8(%r11), %r9
	movq -56(%r15), %r11
	movq 8(%r11), %r10
	movq -200(%r15), %r11
	movq 8(%r11), %r13
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -216(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -240(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -112(%rbp), %rax
	movq %rax, -184(%rbp)
	addq %rcx, -184(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -224(%rbp)
	addq -224(%rbp), %rbx
	movq -56(%rbp), %rax
	movq %rax, -208(%rbp)
	addq %rbx, -208(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -216(%rbp)
	addq -216(%rbp), %r12
	movq -72(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %r12, -136(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -120(%rbp)
	addq -120(%rbp), %r14
	addq %r14, %r13
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
	subq $336, %r15
	addq $240, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
