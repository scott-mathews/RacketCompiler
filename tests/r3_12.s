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
	je then194729
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194730
then194729:
	movq $0, %rcx
	movq %rcx, %rcx
end194730:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r14
	movq %r14, %r11
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
	je then194731
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194732
then194731:
	movq $0, %rcx
	movq %rcx, %rcx
end194732:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -296(%r15)
	movq -296(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -296(%r15), %rax
	movq %rax, -272(%r15)
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
	je then194733
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194734
then194733:
	movq $0, %rcx
	movq %rcx, %rcx
end194734:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -240(%r15)
	movq -240(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -240(%r15), %rax
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
	je then194735
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194736
then194735:
	movq $0, %rcx
	movq %rcx, %rcx
end194736:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -200(%r15)
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
	je then194737
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194738
then194737:
	movq $0, %rcx
	movq %rcx, %rcx
end194738:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -320(%r15)
	movq -320(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -320(%r15), %rax
	movq %rax, -432(%r15)
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
	je then194739
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194740
then194739:
	movq $0, %rcx
	movq %rcx, %rcx
end194740:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r13
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
	je then194741
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194742
then194741:
	movq $0, %rcx
	movq %rcx, %rcx
end194742:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -416(%r15)
	movq -416(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -416(%r15), %rax
	movq %rax, -368(%r15)
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
	je then194743
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194744
then194743:
	movq $0, %rcx
	movq %rcx, %rcx
end194744:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -392(%r15)
	movq -392(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -392(%r15), %rax
	movq %rax, -152(%r15)
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
	je then194745
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194746
then194745:
	movq $0, %rcx
	movq %rcx, %rcx
end194746:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r12
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
	je then194747
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194748
then194747:
	movq $0, %rcx
	movq %rcx, %rcx
end194748:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -400(%r15)
	movq -400(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -400(%r15), %rax
	movq %rax, -344(%r15)
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
	je then194749
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194750
then194749:
	movq $0, %rcx
	movq %rcx, %rcx
end194750:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -24(%r15)
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
	je then194751
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194752
then194751:
	movq $0, %rcx
	movq %rcx, %rcx
end194752:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -72(%r15)
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
	je then194753
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194754
then194753:
	movq $0, %rcx
	movq %rcx, %rcx
end194754:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -80(%r15)
	movq -80(%r15), %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq -80(%r15), %rax
	movq %rax, -384(%r15)
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
	je then194755
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194756
then194755:
	movq $0, %rcx
	movq %rcx, %rcx
end194756:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, -112(%r15)
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
	je then194757
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194758
then194757:
	movq $0, %rcx
	movq %rcx, %rcx
end194758:
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
	movq $1, -160(%rbp)
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
	je then194759
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194760
then194759:
	movq $0, %rcx
	movq %rcx, %rcx
end194760:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -360(%r15)
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
	je then194761
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194762
then194761:
	movq $0, %rcx
	movq %rcx, %rcx
end194762:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -232(%r15)
	movq $1, -152(%rbp)
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
	je then194763
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194764
then194763:
	movq $0, %rcx
	movq %rcx, %rcx
end194764:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -160(%r15)
	movq -160(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -160(%r15), %rax
	movq %rax, -256(%r15)
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
	je then194765
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194766
then194765:
	movq $0, %rcx
	movq %rcx, %rcx
end194766:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -176(%r15)
	movq $1, -48(%rbp)
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
	je then194767
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194768
then194767:
	movq $0, %rcx
	movq %rcx, %rcx
end194768:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, -96(%r15)
	movq -96(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rcx
	movq -96(%r15), %rax
	movq %rax, -8(%r15)
	movq $1, -176(%rbp)
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
	je then194769
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end194770
then194769:
	movq $0, %rcx
	movq %rcx, %rcx
end194770:
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %r14, %r11
	movq 8(%r11), %rdx
	movq -272(%r15), %r11
	movq 8(%r11), %rsi
	movq -64(%r15), %r11
	movq 8(%r11), %rdi
	movq -200(%r15), %r11
	movq 8(%r11), %r8
	movq -432(%r15), %r11
	movq 8(%r11), %r9
	movq %r13, %r11
	movq 8(%r11), %r10
	movq -368(%r15), %r11
	movq 8(%r11), %r13
	movq -152(%r15), %r11
	movq 8(%r11), %r14
	movq %r12, %r11
	movq 8(%r11), %r12
	movq -344(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -128(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -72(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	movq -384(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%rbp)
	movq -112(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -136(%rbp)
	movq %rbx, %r11
	movq 8(%r11), %rbx
	movq -360(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%rbp)
	movq -256(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -240(%rbp)
	movq -176(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -208(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -248(%rbp)
	movq %rcx, %r11
	movq 8(%r11), %rcx
	addq $21, %rcx
	movq -248(%rbp), %rax
	movq %rax, -64(%rbp)
	addq %rcx, -64(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -64(%rbp), %rax
	addq %rax, -104(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -104(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -200(%rbp)
	addq -200(%rbp), %rbx
	movq -136(%rbp), %rax
	movq %rax, -72(%rbp)
	addq %rbx, -72(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -224(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -224(%rbp), %rax
	addq %rax, -192(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -192(%rbp), %rax
	addq %rax, -232(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -232(%rbp), %rax
	addq %rax, -184(%rbp)
	addq -184(%rbp), %r12
	addq %r12, %r14
	addq %r14, %r13
	addq %r13, %r10
	addq %r10, %r9
	addq %r9, %r8
	addq %r8, %rdi
	addq %rdi, %rsi
	addq %rsi, %rdx
	movq %rdx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $256, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
