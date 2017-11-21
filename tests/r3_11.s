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
	je then2295
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2296
then2295:
	movq $0, %rcx
	movq %rcx, %rcx
end2296:
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
	movq %rax, -136(%r15)
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
	je then2297
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2298
then2297:
	movq $0, %rcx
	movq %rcx, %rcx
end2298:
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
	je then2299
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2300
then2299:
	movq $0, %rcx
	movq %rcx, %rcx
end2300:
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
	je then2301
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2302
then2301:
	movq $0, %rcx
	movq %rcx, %rcx
end2302:
	movq free_ptr(%rip), %rax
	movq %rax, %r10
	addq $16, free_ptr(%rip)
	movq %r10, %r11
	movq $3, 0(%r11)
	movq %r10, %r11
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
	je then2303
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2304
then2303:
	movq $0, %rcx
	movq %rcx, %rcx
end2304:
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
	je then2305
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2306
then2305:
	movq $0, %rcx
	movq %rcx, %rcx
end2306:
	movq free_ptr(%rip), %rax
	movq %rax, %r9
	addq $16, free_ptr(%rip)
	movq %r9, %r11
	movq $3, 0(%r11)
	movq %r9, %r11
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
	je then2307
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2308
then2307:
	movq $0, %rcx
	movq %rcx, %rcx
end2308:
	movq free_ptr(%rip), %rax
	movq %rax, -248(%r15)
	addq $16, free_ptr(%rip)
	movq -248(%r15), %r11
	movq $3, 0(%r11)
	movq -248(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -248(%r15), %rax
	movq %rax, -168(%r15)
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
	je then2309
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2310
then2309:
	movq $0, %rcx
	movq %rcx, %rcx
end2310:
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $16, free_ptr(%rip)
	movq %rdi, %r11
	movq $3, 0(%r11)
	movq %rdi, %r11
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
	je then2311
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2312
then2311:
	movq $0, %rcx
	movq %rcx, %rcx
end2312:
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $16, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $3, 0(%r11)
	movq -304(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -304(%r15), %rax
	movq %rax, -184(%r15)
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
	je then2313
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2314
then2313:
	movq $0, %rcx
	movq %rcx, %rcx
end2314:
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $3, 0(%r11)
	movq -192(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -192(%r15), %rax
	movq %rax, -112(%r15)
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
	je then2315
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2316
then2315:
	movq $0, %rcx
	movq %rcx, %rcx
end2316:
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -88(%r15), %rax
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
	je then2317
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2318
then2317:
	movq $0, %rcx
	movq %rcx, %rcx
end2318:
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -224(%r15), %rax
	movq %rax, -80(%r15)
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
	je then2319
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2320
then2319:
	movq $0, %rcx
	movq %rcx, %rcx
end2320:
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $16, free_ptr(%rip)
	movq %r8, %r11
	movq $3, 0(%r11)
	movq %r8, %r11
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
	je then2321
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2322
then2321:
	movq $0, %rcx
	movq %rcx, %rcx
end2322:
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
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
	je then2323
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2324
then2323:
	movq $0, %rcx
	movq %rcx, %rcx
end2324:
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
	movq %rax, -72(%r15)
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
	je then2325
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2326
then2325:
	movq $0, %rcx
	movq %rcx, %rcx
end2326:
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
	movq %rax, -152(%r15)
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
	je then2327
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2328
then2327:
	movq $0, %rcx
	movq %rcx, %rcx
end2328:
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -16(%r15), %rax
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
	je then2329
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2330
then2329:
	movq $0, %rcx
	movq %rcx, %rcx
end2330:
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
	movq %rax, -96(%r15)
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
	je then2331
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2332
then2331:
	movq $0, %rcx
	movq %rcx, %rcx
end2332:
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
	movq %rax, -160(%r15)
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
	je then2333
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2334
then2333:
	movq $0, %rcx
	movq %rcx, %rcx
end2334:
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
	movq $1, %r12
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
	je then2335
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end2336
then2335:
	movq $0, %rcx
	movq %rcx, %rcx
end2336:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq -136(%r15), %r11
	movq 8(%r11), %rsi
	movq %r13, %r11
	movq 8(%r11), %r12
	movq -176(%r15), %r11
	movq 8(%r11), %r13
	movq %r10, %r11
	movq 8(%r11), %r10
	movq %r14, %r11
	movq 8(%r11), %r14
	movq %r9, %r11
	movq 8(%r11), %r9
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq %rdi, %r11
	movq 8(%r11), %rdi
	movq -184(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq %r8, %r11
	movq 8(%r11), %r8
	movq %rdx, %r11
	movq 8(%r11), %rdx
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	addq %rcx, %rbx
	movq -192(%rbp), %rax
	movq %rax, -120(%rbp)
	addq %rbx, -120(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -184(%rbp)
	addq -184(%rbp), %rdx
	addq %rdx, %r8
	movq -144(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %r8, -80(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -64(%rbp)
	addq -64(%rbp), %rdi
	movq -152(%rbp), %rax
	movq %rax, -48(%rbp)
	addq %rdi, -48(%rbp)
	addq -48(%rbp), %r9
	addq %r9, %r14
	addq %r14, %r10
	addq %r10, %r13
	addq %r13, %r12
	addq %r12, %rsi
	movq %rsi, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $336, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
