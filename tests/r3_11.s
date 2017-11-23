	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $256, %rsp
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
	je then326862
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326863
then326862:
	movq $0, %rcx
	movq %rcx, %rcx
end326863:
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
	movq %rax, -192(%r15)
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
	je then326864
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326865
then326864:
	movq $0, %rcx
	movq %rcx, %rcx
end326865:
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -56(%r15), %rax
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
	je then326866
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326867
then326866:
	movq $0, %rcx
	movq %rcx, %rcx
end326867:
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
	je then326868
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326869
then326868:
	movq $0, %rcx
	movq %rcx, %rcx
end326869:
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -152(%r15), %rax
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
	je then326870
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326871
then326870:
	movq $0, %rcx
	movq %rcx, %rcx
end326871:
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -72(%r15), %rax
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
	je then326872
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326873
then326872:
	movq $0, %rcx
	movq %rcx, %rcx
end326873:
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -176(%r15), %rax
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
	je then326874
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326875
then326874:
	movq $0, %rcx
	movq %rcx, %rcx
end326875:
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
	je then326876
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326877
then326876:
	movq $0, %rcx
	movq %rcx, %rcx
end326877:
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
	je then326878
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326879
then326878:
	movq $0, %rcx
	movq %rcx, %rcx
end326879:
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
	je then326880
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326881
then326880:
	movq $0, %rcx
	movq %rcx, %rcx
end326881:
	movq free_ptr(%rip), %rax
	movq %rax, -296(%r15)
	addq $16, free_ptr(%rip)
	movq -296(%r15), %r11
	movq $3, 0(%r11)
	movq -296(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -296(%r15), %rax
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
	je then326882
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326883
then326882:
	movq $0, %rcx
	movq %rcx, %rcx
end326883:
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
	movq %rax, -264(%r15)
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
	je then326884
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326885
then326884:
	movq $0, %rcx
	movq %rcx, %rcx
end326885:
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
	movq $1, %r13
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
	je then326886
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326887
then326886:
	movq $0, %rcx
	movq %rcx, %rcx
end326887:
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -216(%r15), %rax
	movq %rax, -224(%r15)
	movq $1, %r13
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
	je then326888
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326889
then326888:
	movq $0, %rcx
	movq %rcx, %rcx
end326889:
	movq free_ptr(%rip), %rax
	movq %rax, -320(%r15)
	addq $16, free_ptr(%rip)
	movq -320(%r15), %r11
	movq $3, 0(%r11)
	movq -320(%r15), %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -320(%r15), %rax
	movq %rax, -256(%r15)
	movq $1, %r13
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
	je then326890
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326891
then326890:
	movq $0, %rcx
	movq %rcx, %rcx
end326891:
	movq free_ptr(%rip), %rax
	movq %rax, %r14
	addq $16, free_ptr(%rip)
	movq %r14, %r11
	movq $3, 0(%r11)
	movq %r14, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq $1, %r13
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
	je then326892
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326893
then326892:
	movq $0, %rcx
	movq %rcx, %rcx
end326893:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq $1, -120(%rbp)
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
	je then326894
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326895
then326894:
	movq $0, %rcx
	movq %rcx, %rcx
end326895:
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -312(%r15), %rax
	movq %rax, -232(%r15)
	movq $1, -168(%rbp)
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
	je then326896
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326897
then326896:
	movq $0, %rcx
	movq %rcx, %rcx
end326897:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -240(%r15)
	movq $1, -88(%rbp)
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
	je then326898
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326899
then326898:
	movq $0, %rcx
	movq %rcx, %rcx
end326899:
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -184(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, -56(%rbp)
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
	je then326900
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326901
then326900:
	movq $0, %rcx
	movq %rcx, %rcx
end326901:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -200(%r15)
	movq $1, -184(%rbp)
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
	je then326902
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end326903
then326902:
	movq $0, %rcx
	movq %rcx, %rcx
end326903:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq -192(%r15), %r11
	movq 8(%r11), %rdx
	movq -208(%r15), %r11
	movq 8(%r11), %rsi
	movq %r12, %r11
	movq 8(%r11), %rdi
	movq -64(%r15), %r11
	movq 8(%r11), %r8
	movq -112(%r15), %r11
	movq 8(%r11), %r9
	movq -128(%r15), %r11
	movq 8(%r11), %r10
	movq -16(%r15), %r11
	movq 8(%r11), %r12
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -120(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%rbp)
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -224(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -104(%rbp)
	movq -256(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq %r14, %r11
	movq 8(%r11), %r14
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -112(%rbp)
	movq -240(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -224(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -240(%rbp)
	movq -200(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -176(%rbp), %rax
	movq %rax, -128(%rbp)
	addq %rcx, -128(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -136(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -216(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -216(%rbp), %rax
	addq %rax, -232(%rbp)
	addq -232(%rbp), %r13
	addq %r13, %r14
	movq -72(%rbp), %rax
	movq %rax, -152(%rbp)
	addq %r14, -152(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -152(%rbp), %rax
	addq %rax, -200(%rbp)
	addq -200(%rbp), %rbx
	movq -96(%rbp), %rax
	movq %rax, -192(%rbp)
	addq %rbx, -192(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -144(%rbp)
	addq -144(%rbp), %r12
	addq %r12, %r10
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
	addq $256, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
