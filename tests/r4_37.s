	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $40, %rsp
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, -8(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then350987
	movq $0, %rbx
	jmp end350988
then350987:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end350988:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rax

	addq $40, %rsp
	subq $8, %r15
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
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, -8(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then350989
	movq $0, %rbx
	jmp end350990
then350989:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end350990:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rax

	addq $40, %rsp
	subq $8, %r15
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
	subq $40, %rsp
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, -8(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then350991
	movq $0, %rbx
	jmp end350992
then350991:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end350992:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rax

	addq $40, %rsp
	subq $8, %r15
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
	subq $40, %rsp
	addq $8, %r15
	movq $0, -8(%r15)

	movq %rdi, %rbx
	movq %rsi, %rbx
	movq %rbx, -8(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then350993
	movq $0, %rbx
	jmp end350994
then350993:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end350994:
	movq %rbx, %rbx
	movq free_ptr(%rip), %rbx
	addq $16, free_ptr(%rip)
	movq %rbx, %r11
	movq $131, 0(%r11)
	movq %rbx, %r11
	movq -8(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rbx, %rax

	addq $40, %rsp
	subq $8, %r15
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
	addq $56, %r15
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then350995
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rbx
	movq %rbx, %rbx
	addq $16, %rbx
	movq fromspace_end(%rip), %rcx
	cmpq %rcx, %rbx
	setle %al
	movzbq %al, %rbx
	movq $0, %rax
	cmpq %rbx, %rax
	je then350997
	movq $0, %rbx
	jmp end350998
then350997:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end350998:
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
	jmp end350996
then350995:
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then350999
	movq $0, %r13
	jmp end351000
then350999:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351000:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -24(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351001
	movq $0, %r13
	jmp end351002
then351001:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351002:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -32(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351003
	movq $0, %r13
	jmp end351004
then351003:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351004:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -40(%r15)
	movq $2, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351005
	movq $0, %r13
	jmp end351006
then351005:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351006:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -48(%r15)
	movq $1, %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351007
	movq $0, %r13
	jmp end351008
then351007:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351008:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -56(%r15)
	movq free_ptr(%rip), %r12
	movq %r12, %r12
	addq $48, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then351009
	movq $0, %r12
	jmp end351010
then351009:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end351010:
	movq %r12, %r12
	movq free_ptr(%rip), %r12
	addq $48, free_ptr(%rip)
	movq %r12, %r11
	movq $3979, 0(%r11)
	movq %r12, %r11
	movq -56(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -48(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -32(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %r13
	movq %r12, %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq %r12, %r12
	leaq function4(%rip), %r12
	movq free_ptr(%rip), %r13
	movq %r13, %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351011
	movq $0, %r13
	jmp end351012
then351011:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351012:
	movq %r13, %r13
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, %r12
	movq %r12, %r11
	movq 8(%r11), %r13
	movq $1, %r14
	negq %r14
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %r12, %rdi
	movq %rbx, %rsi
	movq -8(%r15), %rdx
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rbx
end350996:
	movq %rbx, %rax

	addq $40, %rsp
	subq $56, %r15
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
	subq $208, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $56, %r15
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then351013
	movq $0, %r12
	jmp end351014
then351013:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end351014:
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
	leaq function2(%rip), %r12
	movq free_ptr(%rip), %r13
	addq $16, %r13
	movq fromspace_end(%rip), %r14
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then351015
	movq $0, %r13
	jmp end351016
then351015:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end351016:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %r12, 8(%r11)
	movq $0, %r12
	movq %r13, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %r12
	leaq function3(%rip), %r13
	movq free_ptr(%rip), %r14
	addq $16, %r14
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	cmpq -48(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then351017
	movq $0, %r14
	jmp end351018
then351017:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end351018:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, 8(%r11)
	movq $0, %r13
	movq %r14, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %r13
	leaq function4(%rip), %r14
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	cmpq %rax, -80(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	je then351019
	movq $0, -64(%rbp)
	jmp end351020
then351019:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end351020:
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %r11
	movq %r14, 8(%r11)
	movq $0, %r14
	movq -48(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq 8(%r11), %r14
	movq $42, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	cmpq %rax, -136(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	je then351021
	movq $0, -120(%rbp)
	jmp end351022
then351021:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
end351022:
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
	movq -40(%r15), %rdi
	movq $1, %rsi
	movq -56(%r15), %rdx
	callq *%r14
	movq %rax, %r14
	movq -32(%r15), %rdi
	movq %r14, %rsi
	callq *%r13
	movq %rax, %r13
	movq -24(%r15), %rdi
	movq %r13, %rsi
	callq *%r12
	movq %rax, %r12
	movq %r12, -16(%r15)
	movq free_ptr(%rip), %r12
	addq $16, %r12
	movq fromspace_end(%rip), %r13
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then351023
	movq $0, %r12
	jmp end351024
then351023:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end351024:
	movq free_ptr(%rip), %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $131, 0(%r11)
	movq %r12, %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %r13
	movq -8(%r15), %rdi
	movq %r12, %rsi
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
	subq $56, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
