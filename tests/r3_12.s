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
	addq $504, %r15
	movq $0, -504(%r15)
	movq $0, -496(%r15)
	movq $0, -488(%r15)
	movq $0, -480(%r15)
	movq $0, -472(%r15)
	movq $0, -464(%r15)
	movq $0, -456(%r15)
	movq $0, -448(%r15)
	movq $0, -440(%r15)
	movq $0, -432(%r15)
	movq $0, -424(%r15)
	movq $0, -416(%r15)
	movq $0, -408(%r15)
	movq $0, -400(%r15)
	movq $0, -392(%r15)
	movq $0, -384(%r15)
	movq $0, -376(%r15)
	movq $0, -368(%r15)
	movq $0, -360(%r15)
	movq $0, -352(%r15)
	movq $0, -344(%r15)
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
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16022
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16023
then16022:
	movq $0, %rcx
	movq %rcx, %rcx
end16023:
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -496(%r15)
	movq -496(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -496(%r15), %rax
	movq %rax, -120(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16024
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16025
then16024:
	movq $0, %rcx
	movq %rcx, %rcx
end16025:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -80(%r15)
	movq -80(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -80(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16026
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16027
then16026:
	movq $0, %rcx
	movq %rcx, %rcx
end16027:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -408(%r15)
	movq -408(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -408(%r15), %rax
	movq %rax, -240(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16028
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16029
then16028:
	movq $0, %rcx
	movq %rcx, %rcx
end16029:
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -448(%r15)
	movq -448(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -448(%r15), %rax
	movq %rax, -176(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16030
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16031
then16030:
	movq $0, %rcx
	movq %rcx, %rcx
end16031:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -192(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16032
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16033
then16032:
	movq $0, %rcx
	movq %rcx, %rcx
end16033:
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -424(%r15)
	movq -424(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -424(%r15), %rax
	movq %rax, -184(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16034
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16035
then16034:
	movq $0, %rcx
	movq %rcx, %rcx
end16035:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -384(%r15)
	movq -384(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -384(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16036
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16037
then16036:
	movq $0, %rcx
	movq %rcx, %rcx
end16037:
	movq free_ptr(%rip), %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16038
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16039
then16038:
	movq $0, %rcx
	movq %rcx, %rcx
end16039:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -128(%r15)
	movq -128(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -128(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16040
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16041
then16040:
	movq $0, %rcx
	movq %rcx, %rcx
end16041:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -224(%r15)
	movq -224(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -224(%r15), %rax
	movq %rax, -280(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16042
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16043
then16042:
	movq $0, %rcx
	movq %rcx, %rcx
end16043:
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -368(%r15)
	movq -368(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -368(%r15), %rax
	movq %rax, -352(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16044
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16045
then16044:
	movq $0, %rcx
	movq %rcx, %rcx
end16045:
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -152(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16046
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16047
then16046:
	movq $0, %rcx
	movq %rcx, %rcx
end16047:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16048
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16049
then16048:
	movq $0, %rcx
	movq %rcx, %rcx
end16049:
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -472(%r15)
	movq -472(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -472(%r15), %rax
	movq %rax, -392(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16050
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16051
then16050:
	movq $0, %rcx
	movq %rcx, %rcx
end16051:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -272(%r15)
	movq -272(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -272(%r15), %rax
	movq %rax, -104(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16052
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16053
then16052:
	movq $0, %rcx
	movq %rcx, %rcx
end16053:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r13
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16054
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16055
then16054:
	movq $0, %rcx
	movq %rcx, %rcx
end16055:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -72(%r15)
	movq -72(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -72(%r15), %rax
	movq %rax, -88(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16056
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16057
then16056:
	movq $0, %rcx
	movq %rcx, %rcx
end16057:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -376(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16058
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16059
then16058:
	movq $0, %rcx
	movq %rcx, %rcx
end16059:
	movq free_ptr(%rip), %rax
	movq %rax, -400(%r15)
	addq $16, free_ptr(%rip)
	movq -400(%r15), %r11
	movq $3, 0(%r11)
	movq -400(%r15), %rax
	movq %rax, -464(%r15)
	movq -464(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -464(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16060
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16061
then16060:
	movq $0, %rcx
	movq %rcx, %rcx
end16061:
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -304(%r15)
	movq -304(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -304(%r15), %rax
	movq %rax, -288(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then16062
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end16063
then16062:
	movq $0, %rcx
	movq %rcx, %rcx
end16063:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -120(%r15), %r11
	movq 8(%r11), %rbx
	movq -64(%r15), %r11
	movq 8(%r11), %rdx
	movq -240(%r15), %r11
	movq 8(%r11), %rsi
	movq -176(%r15), %r11
	movq 8(%r11), %rdi
	movq -192(%r15), %r11
	movq 8(%r11), %r8
	movq -184(%r15), %r11
	movq 8(%r11), %r9
	movq -320(%r15), %r11
	movq 8(%r11), %r10
	movq %r14, %r11
	movq 8(%r11), %r14
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -280(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -352(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -392(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -376(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -176(%rbp), %rax
	movq %rax, -80(%rbp)
	addq %rcx, -80(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -120(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -112(%rbp)
	addq -112(%rbp), %r13
	movq -144(%rbp), %rax
	movq %rax, -96(%rbp)
	addq %r13, -96(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -64(%rbp)
	addq -64(%rbp), %r12
	movq -192(%rbp), %rax
	movq %rax, -56(%rbp)
	addq %r12, -56(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -104(%rbp)
	addq -104(%rbp), %r14
	addq %r14, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	addq %rdx, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $208, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
