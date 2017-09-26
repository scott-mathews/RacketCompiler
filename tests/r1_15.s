	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp

callq read_int
	movq %rax, %rbx
callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

	movq %rax, %rcx
	callq print_int
	addq $32, %rsp
	movq $0, %rax
	popq %rbp
	retq
