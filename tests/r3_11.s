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
	movq %rcx, %rcx
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
	je then400894
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end400895
then400894:
	movq $0, %rcx
	movq %rcx, %rcx
end400895:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rdx
	addq $16, free_ptr(%rip)
	movq %rdx, %r11
	movq $3, 0(%r11)
	movq %rdx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rdx, %rdx
	movq $1, %rbx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
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
	je then400896
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end400897
then400896:
	movq $0, %rcx
	movq %rcx, %rcx
end400897:
	movq %rcx, %rcx
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
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400898
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400899
then400898:
	movq $0, %rsi
	movq %rsi, %rsi
end400899:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $16, free_ptr(%rip)
	movq %rdi, %r11
	movq $3, 0(%r11)
	movq %rdi, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdi, %r9
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400900
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400901
then400900:
	movq $0, %rsi
	movq %rsi, %rsi
end400901:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %rdi
	addq $16, free_ptr(%rip)
	movq %rdi, %r11
	movq $3, 0(%r11)
	movq %rdi, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %rdi, %rdi
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400902
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400903
then400902:
	movq $0, %rsi
	movq %rsi, %rsi
end400903:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $16, free_ptr(%rip)
	movq %r8, %r11
	movq $3, 0(%r11)
	movq %r8, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r8, %r14
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400904
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400905
then400904:
	movq $0, %rsi
	movq %rsi, %rsi
end400905:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r12
	addq $16, free_ptr(%rip)
	movq %r12, %r11
	movq $3, 0(%r11)
	movq %r12, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r12, %r12
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400906
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400907
then400906:
	movq $0, %rsi
	movq %rsi, %rsi
end400907:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r10
	addq $16, free_ptr(%rip)
	movq %r10, %r11
	movq $3, 0(%r11)
	movq %r10, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r10, %r10
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400908
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400909
then400908:
	movq $0, %rsi
	movq %rsi, %rsi
end400909:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -208(%r15)
	addq $16, free_ptr(%rip)
	movq -208(%r15), %r11
	movq $3, 0(%r11)
	movq -208(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -208(%r15), %rax
	movq %rax, -16(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400910
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400911
then400910:
	movq $0, %rsi
	movq %rsi, %rsi
end400911:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r8
	addq $16, free_ptr(%rip)
	movq %r8, %r11
	movq $3, 0(%r11)
	movq %r8, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r8, %r8
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400912
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400913
then400912:
	movq $0, %rsi
	movq %rsi, %rsi
end400913:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, %r13
	addq $16, free_ptr(%rip)
	movq %r13, %r11
	movq $3, 0(%r11)
	movq %r13, %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq %r13, %r13
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400914
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400915
then400914:
	movq $0, %rsi
	movq %rsi, %rsi
end400915:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -8(%r15), %rax
	movq %rax, -72(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400916
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400917
then400916:
	movq $0, %rsi
	movq %rsi, %rsi
end400917:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -48(%r15), %rax
	movq %rax, -32(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400918
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400919
then400918:
	movq $0, %rsi
	movq %rsi, %rsi
end400919:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -104(%r15), %rax
	movq %rax, -296(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400920
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400921
then400920:
	movq $0, %rsi
	movq %rsi, %rsi
end400921:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -40(%r15), %rax
	movq %rax, -304(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400922
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400923
then400922:
	movq $0, %rsi
	movq %rsi, %rsi
end400923:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -64(%r15), %rax
	movq %rax, -224(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400924
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400925
then400924:
	movq $0, %rsi
	movq %rsi, %rsi
end400925:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -88(%r15), %rax
	movq %rax, -144(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400926
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400927
then400926:
	movq $0, %rsi
	movq %rsi, %rsi
end400927:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -168(%r15), %rax
	movq %rax, -232(%r15)
	movq $1, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
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
	je then400928
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end400929
then400928:
	movq $0, %rcx
	movq %rcx, %rcx
end400929:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -208(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rsi
	movq %rcx, -152(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400930
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400931
then400930:
	movq $0, %rsi
	movq %rsi, %rsi
end400931:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -256(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400932
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400933
then400932:
	movq $0, %rsi
	movq %rsi, %rsi
end400933:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -24(%r15), %rax
	movq %rax, -192(%r15)
	movq $1, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rsi
	addq $16, %rsi
	movq fromspace_end(%rip), %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq %rax, %rsi
	sete %al
	movzbq %al, %rax
	movq %rax, %rsi
	movq %rsi, %rax
	cmpq $1, %rax
	je then400934
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rsi
	jmp end400935
then400934:
	movq $0, %rsi
	movq %rsi, %rsi
end400935:
	movq %rsi, %rsi
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %r11
	movq %rcx, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -80(%r15), %rax
	movq %rax, -136(%r15)
	movq %rdx, %r11
	movq 8(%r11), %rcx
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq %r9, %r11
	movq 8(%r11), %rdx
	movq %rdi, %r11
	movq 8(%r11), %rsi
	movq %r14, %r11
	movq 8(%r11), %rdi
	movq %r12, %r11
	movq 8(%r11), %r9
	movq %r10, %r11
	movq 8(%r11), %r10
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	movq %r8, %r11
	movq 8(%r11), %r8
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -72(%r15), %r11
	movq 8(%r11), %r14
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -296(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -304(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -224(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -248(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -128(%rbp)
	addq $21, -128(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -168(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -168(%rbp), %rax
	addq %rax, -184(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -184(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -160(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -160(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -136(%rbp)
	movq %r14, %r14
	addq -136(%rbp), %r14
	movq %r13, %r13
	addq %r14, %r13
	movq %r8, %r8
	addq %r13, %r8
	movq %r12, %r12
	addq %r8, %r12
	movq %r10, %r10
	addq %r12, %r10
	movq %r9, %r9
	addq %r10, %r9
	movq %rdi, %rdi
	addq %r9, %rdi
	movq %rsi, %rsi
	addq %rdi, %rsi
	movq %rdx, %rdx
	addq %rsi, %rdx
	movq %rbx, %rbx
	addq %rdx, %rbx
	movq %rcx, %rcx
	addq %rbx, %rcx
	movq %rcx, %rax

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
