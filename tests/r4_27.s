	.globl function0
function0:
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
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then4297
	movq $0, %rbx
	jmp end4298
then4297:
	leaq function1(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4299
	movq $0, %r13
	jmp end4300
then4299:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end4300:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq $1, %r14
	negq %r14
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %r12, %rdi
	movq %rbx, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end4298:
	movq %rbx, %rax

	addq $40, %rsp
	subq $0, %r15
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
	subq $40, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then4301
	movq $1, %rbx
	jmp end4302
then4301:
	leaq function0(%rip), %r12
	movq %r12, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r13, %r14
	sete %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then4303
	movq $0, %r13
	jmp end4304
then4303:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end4304:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq $1, %r14
	negq %r14
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %r12, %rdi
	movq %rbx, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end4302:
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
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	leaq function1(%rip), %rbx
	movq %rbx, %rbx
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r12, %r13
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then4305
	movq $0, %r12
	jmp end4306
then4305:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end4306:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r12, %rbx
	movq %rbx, %r11
	movq 8(%r11), %r12
	movq %rbx, %rdi
	movq $2, %rsi
	callq *%r12
	movq %rax, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then4307
	movq $42, %rbx
	jmp end4308
then4307:
	movq $0, %rbx
end4308:
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $0, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
