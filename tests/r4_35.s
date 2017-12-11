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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309083
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
	je then309085
	movq $0, %rbx
	jmp end309086
then309085:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end309086:
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
	jmp end309084
then309083:
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
	je then309087
	movq $0, %r13
	jmp end309088
then309087:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309088:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309089
	movq $0, %r13
	jmp end309090
then309089:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309090:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309091
	movq $0, %r13
	jmp end309092
then309091:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309092:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309093
	movq $0, %r13
	jmp end309094
then309093:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309094:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309095
	movq $0, %r13
	jmp end309096
then309095:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309096:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309097
	movq $0, %r12
	jmp end309098
then309097:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309098:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309099
	movq $0, -168(%rbp)
	jmp end309100
then309099:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309100:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309101
	movq $0, %r12
	jmp end309102
then309101:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309102:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309103
	movq $0, %r13
	jmp end309104
then309103:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309104:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309105
	movq $0, %r14
	jmp end309106
then309105:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309106:
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
end309084:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309107
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
	je then309109
	movq $0, %rbx
	jmp end309110
then309109:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end309110:
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
	jmp end309108
then309107:
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
	je then309111
	movq $0, %r13
	jmp end309112
then309111:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309112:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309113
	movq $0, %r13
	jmp end309114
then309113:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309114:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309115
	movq $0, %r13
	jmp end309116
then309115:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309116:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309117
	movq $0, %r13
	jmp end309118
then309117:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309118:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309119
	movq $0, %r13
	jmp end309120
then309119:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309120:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309121
	movq $0, %r12
	jmp end309122
then309121:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309122:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309123
	movq $0, -168(%rbp)
	jmp end309124
then309123:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309124:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309125
	movq $0, %r12
	jmp end309126
then309125:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309126:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309127
	movq $0, %r13
	jmp end309128
then309127:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309128:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309129
	movq $0, %r14
	jmp end309130
then309129:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309130:
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
end309108:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309131
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
	je then309133
	movq $0, %rbx
	jmp end309134
then309133:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end309134:
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
	jmp end309132
then309131:
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
	je then309135
	movq $0, %r13
	jmp end309136
then309135:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309136:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309137
	movq $0, %r13
	jmp end309138
then309137:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309138:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309139
	movq $0, %r13
	jmp end309140
then309139:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309140:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309141
	movq $0, %r13
	jmp end309142
then309141:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309142:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309143
	movq $0, %r13
	jmp end309144
then309143:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309144:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309145
	movq $0, %r12
	jmp end309146
then309145:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309146:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309147
	movq $0, -168(%rbp)
	jmp end309148
then309147:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309148:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309149
	movq $0, %r12
	jmp end309150
then309149:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309150:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309151
	movq $0, %r13
	jmp end309152
then309151:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309152:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309153
	movq $0, %r14
	jmp end309154
then309153:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309154:
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
end309132:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309155
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
	je then309157
	movq $0, %rbx
	jmp end309158
then309157:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end309158:
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
	jmp end309156
then309155:
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
	je then309159
	movq $0, %r13
	jmp end309160
then309159:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309160:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309161
	movq $0, %r13
	jmp end309162
then309161:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309162:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309163
	movq $0, %r13
	jmp end309164
then309163:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309164:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309165
	movq $0, %r13
	jmp end309166
then309165:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309166:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309167
	movq $0, %r13
	jmp end309168
then309167:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309168:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309169
	movq $0, %r12
	jmp end309170
then309169:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309170:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309171
	movq $0, -168(%rbp)
	jmp end309172
then309171:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309172:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309173
	movq $0, %r12
	jmp end309174
then309173:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309174:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309175
	movq $0, %r13
	jmp end309176
then309175:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309176:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309177
	movq $0, %r14
	jmp end309178
then309177:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309178:
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
end309156:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309179
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
	je then309181
	movq $0, %rbx
	jmp end309182
then309181:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rbx
end309182:
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
	jmp end309180
then309179:
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
	je then309183
	movq $0, %r13
	jmp end309184
then309183:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309184:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309185
	movq $0, %r13
	jmp end309186
then309185:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309186:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309187
	movq $0, %r13
	jmp end309188
then309187:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309188:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309189
	movq $0, %r13
	jmp end309190
then309189:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309190:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309191
	movq $0, %r13
	jmp end309192
then309191:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309192:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309193
	movq $0, %r12
	jmp end309194
then309193:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309194:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309195
	movq $0, -168(%rbp)
	jmp end309196
then309195:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309196:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309197
	movq $0, %r12
	jmp end309198
then309197:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309198:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309199
	movq $0, %r13
	jmp end309200
then309199:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309200:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309201
	movq $0, %r14
	jmp end309202
then309201:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309202:
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
end309180:
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
	cmpq $0, %rbx
	sete %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309203
	movq $42, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rdx, %rcx
	setle %al
	movzbq %al, %rcx
	movq $0, %rax
	cmpq %rcx, %rax
	je then309205
	movq $0, %rcx
	jmp end309206
then309205:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
end309206:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	jmp end309204
then309203:
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
	je then309207
	movq $0, %r13
	jmp end309208
then309207:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309208:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309209
	movq $0, %r13
	jmp end309210
then309209:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309210:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309211
	movq $0, %r13
	jmp end309212
then309211:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309212:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309213
	movq $0, %r13
	jmp end309214
then309213:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309214:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309215
	movq $0, %r13
	jmp end309216
then309215:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309216:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309217
	movq $0, %r12
	jmp end309218
then309217:
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %r12
end309218:
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
	movq -200(%rbp), %rax
	cmpq %rax, -184(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -176(%rbp)
	movq $0, %rax
	cmpq -176(%rbp), %rax
	je then309219
	movq $0, -168(%rbp)
	jmp end309220
then309219:
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -168(%rbp)
end309220:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309221
	movq $0, %r12
	jmp end309222
then309221:
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %r12
end309222:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309223
	movq $0, %r13
	jmp end309224
then309223:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309224:
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
	cmpq -320(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309225
	movq $0, %r14
	jmp end309226
then309225:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309226:
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
end309204:
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
	cmpq %r13, %r12
	setle %al
	movzbq %al, %r12
	movq $0, %rax
	cmpq %r12, %rax
	je then309227
	movq $0, %r12
	jmp end309228
then309227:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r12
end309228:
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
	cmpq %r14, %r13
	setle %al
	movzbq %al, %r13
	movq $0, %rax
	cmpq %r13, %rax
	je then309229
	movq $0, %r13
	jmp end309230
then309229:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r13
end309230:
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
	cmpq -48(%rbp), %r14
	setle %al
	movzbq %al, %r14
	movq $0, %rax
	cmpq %r14, %rax
	je then309231
	movq $0, %r14
	jmp end309232
then309231:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %r14
end309232:
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
	cmpq %rax, -80(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	je then309233
	movq $0, -64(%rbp)
	jmp end309234
then309233:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
end309234:
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
	cmpq %rax, -136(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	je then309235
	movq $0, -120(%rbp)
	jmp end309236
then309235:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
end309236:
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
	cmpq %rax, -208(%rbp)
	setle %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	movq $0, %rax
	cmpq -200(%rbp), %rax
	je then309237
	movq $0, -192(%rbp)
	jmp end309238
then309237:
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -192(%rbp)
end309238:
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
