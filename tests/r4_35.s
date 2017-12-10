	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115258
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
	je then115260
	movq $0, %rbx
	jmp end115261
then115260:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end115261:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end115259
then115258:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115262
	movq $0, %r13
	jmp end115263
then115262:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115263:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115264
	movq $0, %r13
	jmp end115265
then115264:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115265:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115266
	movq $0, %r13
	jmp end115267
then115266:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115267:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115268
	movq $0, %r13
	jmp end115269
then115268:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115269:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115270
	movq $0, %r13
	jmp end115271
then115270:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115271:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115272
	movq $0, %r12
	jmp end115273
then115272:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115273:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115274
	movq $0, -168(%rbp)
	jmp end115275
then115274:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115275:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115276
	movq $0, %r12
	jmp end115277
then115276:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115277:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function0(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115278
	movq $0, %r13
	jmp end115279
then115278:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115279:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115280
	movq $0, %r14
	jmp end115281
then115280:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115281:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115259:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115282
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
	je then115284
	movq $0, %rbx
	jmp end115285
then115284:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end115285:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end115283
then115282:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115286
	movq $0, %r13
	jmp end115287
then115286:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115287:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115288
	movq $0, %r13
	jmp end115289
then115288:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115289:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115290
	movq $0, %r13
	jmp end115291
then115290:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115291:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115292
	movq $0, %r13
	jmp end115293
then115292:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115293:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115294
	movq $0, %r13
	jmp end115295
then115294:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115295:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115296
	movq $0, %r12
	jmp end115297
then115296:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115297:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115298
	movq $0, -168(%rbp)
	jmp end115299
then115298:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115299:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115300
	movq $0, %r12
	jmp end115301
then115300:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115301:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115302
	movq $0, %r13
	jmp end115303
then115302:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115303:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115304
	movq $0, %r14
	jmp end115305
then115304:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115305:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115283:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115306
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
	je then115308
	movq $0, %rbx
	jmp end115309
then115308:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end115309:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end115307
then115306:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115310
	movq $0, %r13
	jmp end115311
then115310:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115311:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115312
	movq $0, %r13
	jmp end115313
then115312:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115313:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115314
	movq $0, %r13
	jmp end115315
then115314:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115315:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115316
	movq $0, %r13
	jmp end115317
then115316:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115317:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115318
	movq $0, %r13
	jmp end115319
then115318:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115319:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115320
	movq $0, %r12
	jmp end115321
then115320:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115321:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115322
	movq $0, -168(%rbp)
	jmp end115323
then115322:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115323:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115324
	movq $0, %r12
	jmp end115325
then115324:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115325:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115326
	movq $0, %r13
	jmp end115327
then115326:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115327:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115328
	movq $0, %r14
	jmp end115329
then115328:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115329:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115307:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115330
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
	je then115332
	movq $0, %rbx
	jmp end115333
then115332:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end115333:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end115331
then115330:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115334
	movq $0, %r13
	jmp end115335
then115334:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115335:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115336
	movq $0, %r13
	jmp end115337
then115336:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115337:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115338
	movq $0, %r13
	jmp end115339
then115338:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115339:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115340
	movq $0, %r13
	jmp end115341
then115340:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115341:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115342
	movq $0, %r13
	jmp end115343
then115342:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115343:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115344
	movq $0, %r12
	jmp end115345
then115344:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115345:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115346
	movq $0, -168(%rbp)
	jmp end115347
then115346:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115347:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115348
	movq $0, %r12
	jmp end115349
then115348:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115349:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function3(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115350
	movq $0, %r13
	jmp end115351
then115350:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115351:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115352
	movq $0, %r14
	jmp end115353
then115352:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115353:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115331:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $144, %r15
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

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rdx, -8(%r15)
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115354
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
	je then115356
	movq $0, %rbx
	jmp end115357
then115356:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end115357:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rbx
	jmp end115355
then115354:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115358
	movq $0, %r13
	jmp end115359
then115358:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115359:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115360
	movq $0, %r13
	jmp end115361
then115360:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115361:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115362
	movq $0, %r13
	jmp end115363
then115362:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115363:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115364
	movq $0, %r13
	jmp end115365
then115364:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115365:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115366
	movq $0, %r13
	jmp end115367
then115366:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115367:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -64(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115368
	movq $0, %r12
	jmp end115369
then115368:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115369:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -24(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115370
	movq $0, -168(%rbp)
	jmp end115371
then115370:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115371:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $144, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $35, 0(%r11)
	movq -72(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -72(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -72(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -72(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -72(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -72(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -72(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -72(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -72(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -72(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -72(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -72(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -72(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -72(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -72(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -72(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -72(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -72(%r15), %r12
	movq -24(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -24(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -24(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq -24(%r15), %rax
	movq %rax, -128(%r15)
	movq %r12, -136(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115372
	movq $0, %r12
	jmp end115373
then115372:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115373:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -136(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function4(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115374
	movq $0, %r13
	jmp end115375
then115374:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115375:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115376
	movq $0, %r14
	jmp end115377
then115376:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115377:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -144(%r15), %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115355:
	movq %rbx, %rax

	addq $320, %rsp
	subq $144, %r15
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
	subq $320, %rsp
	addq $128, %r15
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
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115378
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
	je then115380
	movq $0, %rcx
	jmp end115381
then115380:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end115381:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end115379
then115378:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115382
	movq $0, %r13
	jmp end115383
then115382:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115383:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -16(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115384
	movq $0, %r13
	jmp end115385
then115384:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115385:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -24(%r15)
	movq $3, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115386
	movq $0, %r13
	jmp end115387
then115386:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115387:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $4, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115388
	movq $0, %r13
	jmp end115389
then115388:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115389:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $5, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115390
	movq $0, %r13
	jmp end115391
then115390:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115391:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115392
	movq $0, %r12
	jmp end115393
then115392:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end115393:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -24(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, -8(%r15)
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
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	addq $144, -184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -184(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then115394
	movq $0, -168(%rbp)
	jmp end115395
then115394:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end115395:
	movq -168(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $144, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $35, 0(%r11)
	movq -56(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -56(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -56(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -224(%rbp)
	movq -56(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -232(%rbp)
	movq -56(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -240(%rbp)
	movq -56(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -248(%rbp)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -256(%rbp)
	movq -56(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -264(%rbp)
	movq -56(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -272(%rbp)
	movq -56(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -280(%rbp)
	movq -56(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -288(%rbp)
	movq -56(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -296(%rbp)
	movq -56(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -56(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -312(%rbp)
	movq -56(%r15), %r11
	movq %r14, 24(%r11)
	movq $0, %r14
	movq -56(%r15), %r11
	movq %r13, 16(%r11)
	movq $0, %r13
	movq -56(%r15), %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq -56(%r15), %r12
	movq -8(%r15), %rax
	movq %rax, -64(%r15)
	movq %r12, -72(%r15)
	movq -8(%r15), %rax
	movq %rax, -80(%r15)
	movq %r12, -88(%r15)
	movq -8(%r15), %rax
	movq %rax, -96(%r15)
	movq %r12, -104(%r15)
	movq -8(%r15), %rax
	movq %rax, -112(%r15)
	movq %r12, -120(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $72, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115396
	movq $0, %r12
	jmp end115397
then115396:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end115397:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $72, free_ptr(%rip)
	movq %r12, %r11
	movq $32657, 0(%r11)
	movq %r12, %r11
	movq -120(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -112(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -104(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -96(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -80(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function5(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115398
	movq $0, %r13
	jmp end115399
then115398:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115399:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -128(%r15)
	movq -128(%r15), %r11
	movq 8(%r11), %r12
	leaq function6(%rip), %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -320(%rbp)
	cmpq %r14, -320(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115400
	movq $0, %r14
	jmp end115401
then115400:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115401:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, %r13
	movq %r13, %r11
	movq 8(%r11), %r14
	movq %r13, %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r14
	movq %rax, %rbx
	movq -128(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end115379:
	movq %rbx, %rax

	addq $320, %rsp
	subq $128, %r15
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
	subq $288, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $88, %r15
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

	leaq function0(%rip), %rbx
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then115402
	movq $0, %r12
	jmp end115403
then115402:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end115403:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r12, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %rbx
	leaq function1(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then115404
	movq $0, %r13
	jmp end115405
then115404:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end115405:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function2(%rip), %r13
	movq free_ptr(%rip), %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then115406
	movq $0, %r14
	jmp end115407
then115406:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end115407:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	leaq function3(%rip), %r14
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	je then115408
	movq $0, -64(%rbp)
	jmp end115409
then115408:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end115409:
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %r11
	movq %r14, 8(%r11)
	movq $0, %r14
	movq -40(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r14
	leaq function4(%rip), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	je then115410
	movq $0, -120(%rbp)
	jmp end115411
then115410:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
end115411:
	movq -120(%rbp), %rax
	movq %rax, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	leaq function5(%rip), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%rbp)
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	movq $0, %rax
	cmpq -200(%rbp), %rax
	je then115412
	movq $0, -192(%rbp)
	jmp end115413
then115412:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
end115413:
	movq -192(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -232(%rbp)
	movq -80(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %rdi
	movq $20, %rsi
	callq *-240(%rbp)
	movq %rax, -88(%r15)
	movq -48(%r15), %rdi
	movq $20, %rsi
	movq -88(%r15), %rdx
	callq *-168(%rbp)
	movq %rax, -64(%r15)
	movq -32(%r15), %rdi
	movq $20, %rsi
	movq -64(%r15), %rdx
	callq *%r14
	movq %rax, %r14
	movq -24(%r15), %rdi
	movq $20, %rsi
	movq %r14, %rdx
	callq *%r13
	movq %rax, %r13
	movq -16(%r15), %rdi
	movq $20, %rsi
	movq %r13, %rdx
	callq *%r12
	movq %rax, %r12
	movq -8(%r15), %rdi
	movq $20, %rsi
	movq %r12, %rdx
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
	subq $88, %r15
	addq $288, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
