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
	je then119008
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119009
then119008:
	movq $0, %rcx
	movq %rcx, %rcx
end119009:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r14
	movq %r14, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119010
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119011
then119010:
	movq $0, %rcx
	movq %rcx, %rcx
end119011:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -296(%r15)
	movq -296(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -296(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119012
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119013
then119012:
	movq $0, %rcx
	movq %rcx, %rcx
end119013:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -16(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119014
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119015
then119014:
	movq $0, %rcx
	movq %rcx, %rcx
end119015:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -336(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119016
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119017
then119016:
	movq $0, %rcx
	movq %rcx, %rcx
end119017:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -240(%r15)
	movq -240(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -240(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119018
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119019
then119018:
	movq $0, %rcx
	movq %rcx, %rcx
end119019:
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -440(%r15)
	movq -440(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -440(%r15), %rax
	movq %rax, -344(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119020
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119021
then119020:
	movq $0, %rcx
	movq %rcx, %rcx
end119021:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119022
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119023
then119022:
	movq $0, %rcx
	movq %rcx, %rcx
end119023:
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -424(%r15)
	movq -424(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -424(%r15), %rax
	movq %rax, -232(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119024
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119025
then119024:
	movq $0, %rcx
	movq %rcx, %rcx
end119025:
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -376(%r15)
	movq -376(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -376(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119026
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119027
then119026:
	movq $0, %rcx
	movq %rcx, %rcx
end119027:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -368(%r15)
	movq -368(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -368(%r15), %rax
	movq %rax, -304(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119028
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119029
then119028:
	movq $0, %rcx
	movq %rcx, %rcx
end119029:
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -288(%r15), %rax
	movq %rax, -400(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119030
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119031
then119030:
	movq $0, %rcx
	movq %rcx, %rcx
end119031:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -256(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119032
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119033
then119032:
	movq $0, %rcx
	movq %rcx, %rcx
end119033:
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $3, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -248(%r15)
	movq -248(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -248(%r15), %rax
	movq %rax, -312(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119034
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119035
then119034:
	movq $0, %rcx
	movq %rcx, %rcx
end119035:
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -328(%r15)
	movq -328(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -328(%r15), %rax
	movq %rax, -128(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119036
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119037
then119036:
	movq $0, %rcx
	movq %rcx, %rcx
end119037:
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -272(%r15)
	movq -272(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -272(%r15), %rax
	movq %rax, -184(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119038
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119039
then119038:
	movq $0, %rcx
	movq %rcx, %rcx
end119039:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -464(%r15)
	movq -464(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -464(%r15), %rax
	movq %rax, -152(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119040
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119041
then119040:
	movq $0, %rcx
	movq %rcx, %rcx
end119041:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119042
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119043
then119042:
	movq $0, %rcx
	movq %rcx, %rcx
end119043:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -40(%r15)
	movq -40(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -40(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119044
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119045
then119044:
	movq $0, %rcx
	movq %rcx, %rcx
end119045:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -264(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119046
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119047
then119046:
	movq $0, %rcx
	movq %rcx, %rcx
end119047:
	movq free_ptr(%rip), %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then119048
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end119049
then119048:
	movq $0, %rcx
	movq %rcx, %rcx
end119049:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %r14, %r11
	movq 8(%r11), %rbx
	movq -136(%r15), %r11
	movq 8(%r11), %rdx
	movq -16(%r15), %r11
	movq 8(%r11), %rsi
	movq -336(%r15), %r11
	movq 8(%r11), %rdi
	movq -72(%r15), %r11
	movq 8(%r11), %r8
	movq -344(%r15), %r11
	movq 8(%r11), %r9
	movq %r12, %r11
	movq 8(%r11), %r10
	movq -232(%r15), %r11
	movq 8(%r11), %r12
	movq -64(%r15), %r11
	movq 8(%r11), %r14
	movq -304(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -400(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -256(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -312(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -184(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -320(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq %r13, %r11
	movq 8(%r11), %r13
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	addq %rcx, %r13
	movq -200(%rbp), %rax
	movq %rax, -96(%rbp)
	addq %r13, -96(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -184(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -144(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -144(%rbp), %rax
	addq %rax, -176(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -176(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -128(%rbp)
	addq -128(%rbp), %r14
	addq %r14, %r12
	addq %r12, %r10
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
