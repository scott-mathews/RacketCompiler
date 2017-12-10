	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $56, %rsp
	addq $40, %r15
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
	je then5057
	leaq function3(%rip), %rbx
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
	je then5059
	movq $0, %r12
	jmp end5060
then5059:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end5060:
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
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
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
	je then5061
	movq $0, %r13
	jmp end5062
then5061:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5062:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -16(%r15)
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
	je then5063
	movq $0, %r13
	jmp end5064
then5063:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5064:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -24(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $40, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then5065
	movq $0, %rcx
	jmp end5066
then5065:
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, %rcx
end5066:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $40, free_ptr(%rip)
	movq %rcx, %r11
	movq $1673, 0(%r11)
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	jmp end5058
then5057:
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
	je then5067
	movq $0, %r13
	jmp end5068
then5067:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5068:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5069
	movq $0, %r14
	jmp end5070
then5069:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5070:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r14, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5071
	movq $0, %r14
	jmp end5072
then5071:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5072:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -40(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -32(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end5058:
	movq %rbx, %rax

	addq $56, %rsp
	subq $40, %r15
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
	subq $56, %rsp
	addq $32, %r15
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
	je then5073
	leaq function3(%rip), %rbx
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
	je then5075
	movq $0, %r12
	jmp end5076
then5075:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end5076:
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
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
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
	je then5077
	movq $0, %r13
	jmp end5078
then5077:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5078:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -16(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $32, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then5079
	movq $0, %rcx
	jmp end5080
then5079:
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, %rcx
end5080:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $32, free_ptr(%rip)
	movq %rcx, %r11
	movq $647, 0(%r11)
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	jmp end5074
then5073:
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
	je then5081
	movq $0, %r13
	jmp end5082
then5081:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5082:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5083
	movq $0, %r14
	jmp end5084
then5083:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5084:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r14, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5085
	movq $0, %r14
	jmp end5086
then5085:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5086:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -32(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -24(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end5074:
	movq %rbx, %rax

	addq $56, %rsp
	subq $32, %r15
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
	subq $56, %rsp
	addq $24, %r15
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
	je then5087
	leaq function3(%rip), %rbx
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
	je then5089
	movq $0, %r12
	jmp end5090
then5089:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end5090:
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
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $24, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then5091
	movq $0, %rcx
	jmp end5092
then5091:
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, %rcx
end5092:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $24, free_ptr(%rip)
	movq %rcx, %r11
	movq $133, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	jmp end5088
then5087:
	leaq function2(%rip), %r12
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
	je then5093
	movq $0, %r13
	jmp end5094
then5093:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5094:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5095
	movq $0, %r14
	jmp end5096
then5095:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5096:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r14, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5097
	movq $0, %r14
	jmp end5098
then5097:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5098:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -24(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end5088:
	movq %rbx, %rax

	addq $56, %rsp
	subq $24, %r15
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
	subq $56, %rsp
	addq $16, %r15
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
	je then5099
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $8, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rbx, %rcx
	sete %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then5101
	movq $0, %rbx
	jmp end5102
then5101:
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, %rbx
end5102:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $8, free_ptr(%rip)
	movq %rbx, %r11
	movq $1, 0(%r11)
	movq %rbx, %rbx
	jmp end5100
then5099:
	leaq function3(%rip), %r12
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
	je then5103
	movq $0, %r13
	jmp end5104
then5103:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5104:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r12, %r12
	movq %r13, -8(%r15)
	movq -8(%r15), %r11
	movq 8(%r11), %r12
	leaq function4(%rip), %r13
	movq %r13, %r13
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq %r14, -48(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5105
	movq $0, %r14
	jmp end5106
then5105:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5106:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r13, %r13
	movq %r14, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %r13
	movq %rbx, %rbx
	movq free_ptr(%rip), %r14
	movq %r14, %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -56(%rbp)
	cmpq %r14, -56(%rbp)
	sete %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then5107
	movq $0, %r14
	jmp end5108
then5107:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end5108:
	movq %r14, %r14
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -16(%r15), %rdi
	movq %rbx, %rsi
	movq $1, %rdx
	callq *%r13
	movq %rax, %rbx
	movq -8(%r15), %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
end5100:
	movq %rbx, %rax

	addq $56, %rsp
	subq $16, %r15
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
	subq $88, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $32, %r15
	movq $0, -32(%r15)
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	leaq function3(%rip), %rbx
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
	je then5109
	movq $0, %r12
	jmp end5110
then5109:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end5110:
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
	movq $20, %rsi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, -8(%r15)
	movq $42, %rbx
	leaq function2(%rip), %r12
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
	je then5111
	movq $0, %r13
	jmp end5112
then5111:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5112:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -16(%r15)
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
	je then5113
	movq $0, %r13
	jmp end5114
then5113:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5114:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %r12
	movq %r12, -24(%r15)
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
	je then5115
	movq $0, %r13
	jmp end5116
then5115:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end5116:
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
	movq %r12, %rdi
	movq $20, %rsi
	callq *%r13
	movq %rax, %rcx
	movq %rcx, -32(%r15)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then5117
	movq $0, %rcx
	jmp end5118
then5117:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
end5118:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3723, 0(%r11)
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq 40(%r11), %rbx
	movq %rbx, %r11
	movq 32(%r11), %rbx
	movq %rbx, %r11
	movq 24(%r11), %rbx
	movq %rbx, %r11
	movq 16(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $32, %r15
	addq $88, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
