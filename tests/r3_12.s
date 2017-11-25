	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $224, %rsp
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
	je then39228
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39229
then39228:
	movq $0, %rcx
	movq %rcx, %rcx
end39229:
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
	je then39230
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39231
then39230:
	movq $0, %rcx
	movq %rcx, %rcx
end39231:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -216(%r15), %rax
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
	je then39232
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39233
then39232:
	movq $0, %rcx
	movq %rcx, %rcx
end39233:
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -24(%r15), %rax
	movq %rax, -48(%r15)
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
	je then39234
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39235
then39234:
	movq $0, %rcx
	movq %rcx, %rcx
end39235:
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
	je then39236
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39237
then39236:
	movq $0, %rcx
	movq %rcx, %rcx
end39237:
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
	movq %rax, -40(%r15)
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
	je then39238
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39239
then39238:
	movq $0, %rcx
	movq %rcx, %rcx
end39239:
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
	je then39240
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39241
then39240:
	movq $0, %rcx
	movq %rcx, %rcx
end39241:
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -160(%r15), %rax
	movq %rax, -64(%r15)
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
	je then39242
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39243
then39242:
	movq $0, %rcx
	movq %rcx, %rcx
end39243:
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
	je then39244
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39245
then39244:
	movq $0, %rcx
	movq %rcx, %rcx
end39245:
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -184(%r15), %rax
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
	je then39246
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39247
then39246:
	movq $0, %rcx
	movq %rcx, %rcx
end39247:
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
	je then39248
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39249
then39248:
	movq $0, %rcx
	movq %rcx, %rcx
end39249:
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
	movq %rax, -296(%r15)
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
	je then39250
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39251
then39250:
	movq $0, %rcx
	movq %rcx, %rcx
end39251:
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
	je then39252
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39253
then39252:
	movq $0, %rcx
	movq %rcx, %rcx
end39253:
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
	movq %rax, -32(%r15)
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
	je then39254
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39255
then39254:
	movq $0, %rcx
	movq %rcx, %rcx
end39255:
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
	je then39256
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39257
then39256:
	movq $0, %rcx
	movq %rcx, %rcx
end39257:
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
	je then39258
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39259
then39258:
	movq $0, %rcx
	movq %rcx, %rcx
end39259:
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -280(%r15), %rax
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
	je then39260
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39261
then39260:
	movq $0, %rcx
	movq %rcx, %rcx
end39261:
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
	je then39262
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39263
then39262:
	movq $0, %rcx
	movq %rcx, %rcx
end39263:
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
	movq %rax, -128(%r15)
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
	je then39264
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39265
then39264:
	movq $0, %rcx
	movq %rcx, %rcx
end39265:
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -120(%r15), %rax
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
	je then39266
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39267
then39266:
	movq $0, %rcx
	movq %rcx, %rcx
end39267:
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
	movq $1, -112(%rbp)
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
	je then39268
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end39269
then39268:
	movq $0, %rcx
	movq %rcx, %rcx
end39269:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -136(%r15), %r11
	movq 8(%r11), %rdx
	movq -144(%r15), %r11
	movq 8(%r11), %rsi
	movq -48(%r15), %r11
	movq 8(%r11), %rdi
	movq -16(%r15), %r11
	movq 8(%r11), %r8
	movq -40(%r15), %r11
	movq 8(%r11), %r9
	movq %r14, %r11
	movq 8(%r11), %r10
	movq -64(%r15), %r11
	movq 8(%r11), %r14
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -296(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -176(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -208(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -48(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	addq %rcx, %rbx
	movq -104(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %rbx, -152(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -200(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -200(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -208(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -208(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -80(%rbp)
	addq -80(%rbp), %r13
	movq -176(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %r13, -72(%rbp)
	addq -72(%rbp), %r12
	addq %r12, %r14
	addq %r14, %r10
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
	addq $224, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
