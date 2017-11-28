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
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94943
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94944
then94943:
	movq $0, %rcx
	movq %rcx, %rcx
end94944:
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -472(%r15)
	movq -472(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -472(%r15), %rax
	movq %rax, -64(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94945
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94946
then94945:
	movq $0, %rcx
	movq %rcx, %rcx
end94946:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -368(%r15)
	movq -368(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -368(%r15), %rax
	movq %rax, -176(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94947
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94948
then94947:
	movq $0, %rcx
	movq %rcx, %rcx
end94948:
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -496(%r15)
	movq -496(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -496(%r15), %rax
	movq %rax, -392(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94949
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94950
then94949:
	movq $0, %rcx
	movq %rcx, %rcx
end94950:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r12
	movq %r12, %r11
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
	je then94951
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94952
then94951:
	movq $0, %rcx
	movq %rcx, %rcx
end94952:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, -208(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94953
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94954
then94953:
	movq $0, %rcx
	movq %rcx, %rcx
end94954:
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
	je then94955
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94956
then94955:
	movq $0, %rcx
	movq %rcx, %rcx
end94956:
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -272(%r15)
	movq -272(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -272(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94957
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94958
then94957:
	movq $0, %rcx
	movq %rcx, %rcx
end94958:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r14
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94959
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94960
then94959:
	movq $0, %rcx
	movq %rcx, %rcx
end94960:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r13
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
	je then94961
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94962
then94961:
	movq $0, %rcx
	movq %rcx, %rcx
end94962:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -8(%r15)
	movq -8(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -8(%r15), %rax
	movq %rax, -248(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94963
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94964
then94963:
	movq $0, %rcx
	movq %rcx, %rcx
end94964:
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $3, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -232(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	addq $16, %rcx
	movq free_ptr(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94965
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94966
then94965:
	movq $0, %rcx
	movq %rcx, %rcx
end94966:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -168(%r15)
	movq -168(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -168(%r15), %rax
	movq %rax, -296(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94967
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94968
then94967:
	movq $0, %rcx
	movq %rcx, %rcx
end94968:
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -288(%r15), %rax
	movq %rax, -376(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94969
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94970
then94969:
	movq $0, %rcx
	movq %rcx, %rcx
end94970:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -344(%r15)
	movq -344(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -344(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94971
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94972
then94971:
	movq $0, %rcx
	movq %rcx, %rcx
end94972:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -88(%r15)
	movq -88(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -88(%r15), %rax
	movq %rax, -48(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94973
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94974
then94973:
	movq $0, %rcx
	movq %rcx, %rcx
end94974:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -112(%r15)
	movq -112(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -112(%r15), %rax
	movq %rax, -360(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94975
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94976
then94975:
	movq $0, %rcx
	movq %rcx, %rcx
end94976:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -72(%r15)
	movq -72(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -72(%r15), %rax
	movq %rax, -56(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94977
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94978
then94977:
	movq $0, %rcx
	movq %rcx, %rcx
end94978:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -104(%r15)
	movq -104(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -104(%r15), %rax
	movq %rax, -328(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94979
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94980
then94979:
	movq $0, %rcx
	movq %rcx, %rcx
end94980:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -160(%r15)
	movq -160(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -160(%r15), %rax
	movq %rax, -96(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94981
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94982
then94981:
	movq $0, %rcx
	movq %rcx, %rcx
end94982:
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -408(%r15)
	movq -408(%r15), %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -408(%r15), %rax
	movq %rax, -264(%r15)
	movq $1, %rbx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $16, %rdx
	movq free_ptr(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then94983
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end94984
then94983:
	movq $0, %rcx
	movq %rcx, %rcx
end94984:
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq -64(%r15), %r11
	movq 8(%r11), %rbx
	movq -176(%r15), %r11
	movq 8(%r11), %rdx
	movq -392(%r15), %r11
	movq 8(%r11), %rsi
	movq %r12, %r11
	movq 8(%r11), %rdi
	movq -208(%r15), %r11
	movq 8(%r11), %r8
	movq -16(%r15), %r11
	movq 8(%r11), %r9
	movq -136(%r15), %r11
	movq 8(%r11), %r10
	movq %r14, %r11
	movq 8(%r11), %r12
	movq %r13, %r11
	movq 8(%r11), %r13
	movq -248(%r15), %r11
	movq 8(%r11), %r14
	movq -320(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -296(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -376(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -160(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -192(%rbp)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -360(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%rbp)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -328(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -200(%rbp)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -176(%rbp), %rax
	movq %rax, -136(%rbp)
	addq %rcx, -136(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -136(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -88(%rbp), %rax
	addq %rax, -48(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -48(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -96(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -96(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -128(%rbp)
	addq -128(%rbp), %r14
	addq %r14, %r13
	addq %r13, %r12
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
