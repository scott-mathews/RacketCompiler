	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $232, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $240, %r15
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
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104706
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104707
then104706:
	movq $0, %rcx
	movq %rcx, %rcx
end104707:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -240(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104708
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104709
then104708:
	movq $0, %rcx
	movq %rcx, %rcx
end104709:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -176(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104710
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104711
then104710:
	movq $0, %rcx
	movq %rcx, %rcx
end104711:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -128(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104712
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104713
then104712:
	movq $0, %rcx
	movq %rcx, %rcx
end104713:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -160(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104714
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104715
then104714:
	movq $0, %rcx
	movq %rcx, %rcx
end104715:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -232(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104716
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104717
then104716:
	movq $0, %rcx
	movq %rcx, %rcx
end104717:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -48(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104718
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104719
then104718:
	movq $0, %rcx
	movq %rcx, %rcx
end104719:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -56(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104720
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104721
then104720:
	movq $0, %rcx
	movq %rcx, %rcx
end104721:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -32(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104722
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104723
then104722:
	movq $0, %rcx
	movq %rcx, %rcx
end104723:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -72(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104724
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104725
then104724:
	movq $0, %rcx
	movq %rcx, %rcx
end104725:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -40(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104726
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104727
then104726:
	movq $0, %rcx
	movq %rcx, %rcx
end104727:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -64(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104728
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104729
then104728:
	movq $0, %rcx
	movq %rcx, %rcx
end104729:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -136(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104730
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104731
then104730:
	movq $0, %rcx
	movq %rcx, %rcx
end104731:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -184(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104732
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104733
then104732:
	movq $0, %rcx
	movq %rcx, %rcx
end104733:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -224(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104734
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104735
then104734:
	movq $0, %rcx
	movq %rcx, %rcx
end104735:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -208(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104736
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104737
then104736:
	movq $0, %rcx
	movq %rcx, %rcx
end104737:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -104(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104738
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104739
then104738:
	movq $0, %rcx
	movq %rcx, %rcx
end104739:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -80(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104740
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104741
then104740:
	movq $0, %rcx
	movq %rcx, %rcx
end104741:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -16(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104742
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104743
then104742:
	movq $0, %rcx
	movq %rcx, %rcx
end104743:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -112(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rcx
	movq free_ptr(%rip), %rdx
	movq %rdx, %rdx
	addq $16, %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104744
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104745
then104744:
	movq $0, %rcx
	movq %rcx, %rcx
end104745:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, -168(%r15)
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq fromspace_end(%rip), %rdx
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $16, %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then104746
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end104747
then104746:
	movq $0, %rcx
	movq %rcx, %rcx
end104747:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq %rbx, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	orq $2, %rbx
	movq %rbx, %r12
	movq -240(%r15), %rbx
	andq $7, %rbx
	cmpq $2, %rbx
	je then104748
	callq exit
	jmp end104749
then104748:
	movq $7, %rbx
	notq %rbx
	andq -240(%r15), %rbx
end104749:
	movq %rbx, %r11
	movq 8(%r11), %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then104750
	callq exit
	jmp end104751
then104750:
	movq %rcx, %rbx
	sarq $3, %rbx
end104751:
	movq -176(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104752
	callq exit
	jmp end104753
then104752:
	movq $7, %r13
	notq %r13
	andq -176(%r15), %r13
end104753:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then104754
	callq exit
	jmp end104755
then104754:
	movq %rcx, %r14
	sarq $3, %r14
end104755:
	movq -128(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104756
	callq exit
	jmp end104757
then104756:
	movq $7, %r13
	notq %r13
	andq -128(%r15), %r13
end104757:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then104758
	callq exit
	jmp end104759
then104758:
	movq %rcx, -128(%rbp)
	sarq $3, -128(%rbp)
end104759:
	movq -160(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104760
	callq exit
	jmp end104761
then104760:
	movq $7, %r13
	notq %r13
	andq -160(%r15), %r13
end104761:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then104762
	callq exit
	jmp end104763
then104762:
	movq %rcx, -104(%rbp)
	sarq $3, -104(%rbp)
end104763:
	movq -232(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104764
	callq exit
	jmp end104765
then104764:
	movq $7, %r13
	notq %r13
	andq -232(%r15), %r13
end104765:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then104766
	callq exit
	jmp end104767
then104766:
	movq %rcx, -120(%rbp)
	sarq $3, -120(%rbp)
end104767:
	movq -48(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104768
	callq exit
	jmp end104769
then104768:
	movq $7, %r13
	notq %r13
	andq -48(%r15), %r13
end104769:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then104770
	callq exit
	jmp end104771
then104770:
	movq %rcx, -88(%rbp)
	sarq $3, -88(%rbp)
end104771:
	movq -56(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104772
	callq exit
	jmp end104773
then104772:
	movq $7, %r13
	notq %r13
	andq -56(%r15), %r13
end104773:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -64(%rbp)
	andq $7, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then104774
	callq exit
	jmp end104775
then104774:
	movq %rcx, -64(%rbp)
	sarq $3, -64(%rbp)
end104775:
	movq -32(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104776
	callq exit
	jmp end104777
then104776:
	movq $7, %r13
	notq %r13
	andq -32(%r15), %r13
end104777:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then104778
	callq exit
	jmp end104779
then104778:
	movq %rcx, -96(%rbp)
	sarq $3, -96(%rbp)
end104779:
	movq -72(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104780
	callq exit
	jmp end104781
then104780:
	movq $7, %r13
	notq %r13
	andq -72(%r15), %r13
end104781:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then104782
	callq exit
	jmp end104783
then104782:
	movq %rcx, -72(%rbp)
	sarq $3, -72(%rbp)
end104783:
	movq -40(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104784
	callq exit
	jmp end104785
then104784:
	movq $7, %r13
	notq %r13
	andq -40(%r15), %r13
end104785:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, -168(%rbp)
	andq $7, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then104786
	callq exit
	jmp end104787
then104786:
	movq %rcx, -168(%rbp)
	sarq $3, -168(%rbp)
end104787:
	movq -64(%r15), %r13
	andq $7, %r13
	cmpq $2, %r13
	je then104788
	callq exit
	jmp end104789
then104788:
	movq $7, %r13
	notq %r13
	andq -64(%r15), %r13
end104789:
	movq %r13, %r11
	movq 8(%r11), %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then104790
	callq exit
	jmp end104791
then104790:
	movq %rcx, %r13
	sarq $3, %r13
end104791:
	movq -136(%r15), %rax
	movq %rax, -144(%r15)
	andq $7, -144(%r15)
	cmpq $2, -144(%r15)
	je then104792
	callq exit
	jmp end104793
then104792:
	movq $7, -144(%r15)
	notq -144(%r15)
	movq -136(%r15), %rax
	andq %rax, -144(%r15)
end104793:
	movq -144(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -160(%rbp)
	andq $7, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then104794
	callq exit
	jmp end104795
then104794:
	movq %rcx, -160(%rbp)
	sarq $3, -160(%rbp)
end104795:
	movq -184(%r15), %rax
	movq %rax, -216(%r15)
	andq $7, -216(%r15)
	cmpq $2, -216(%r15)
	je then104796
	callq exit
	jmp end104797
then104796:
	movq $7, -216(%r15)
	notq -216(%r15)
	movq -184(%r15), %rax
	andq %rax, -216(%r15)
end104797:
	movq -216(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then104798
	callq exit
	jmp end104799
then104798:
	movq %rcx, -80(%rbp)
	sarq $3, -80(%rbp)
end104799:
	movq -224(%r15), %rax
	movq %rax, -192(%r15)
	andq $7, -192(%r15)
	cmpq $2, -192(%r15)
	je then104800
	callq exit
	jmp end104801
then104800:
	movq $7, -192(%r15)
	notq -192(%r15)
	movq -224(%r15), %rax
	andq %rax, -192(%r15)
end104801:
	movq -192(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -176(%rbp)
	andq $7, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then104802
	callq exit
	jmp end104803
then104802:
	movq %rcx, -176(%rbp)
	sarq $3, -176(%rbp)
end104803:
	movq -208(%r15), %rax
	movq %rax, -96(%r15)
	andq $7, -96(%r15)
	cmpq $2, -96(%r15)
	je then104804
	callq exit
	jmp end104805
then104804:
	movq $7, -96(%r15)
	notq -96(%r15)
	movq -208(%r15), %rax
	andq %rax, -96(%r15)
end104805:
	movq -96(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -152(%rbp)
	andq $7, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then104806
	callq exit
	jmp end104807
then104806:
	movq %rcx, -152(%rbp)
	sarq $3, -152(%rbp)
end104807:
	movq -104(%r15), %rax
	movq %rax, -24(%r15)
	andq $7, -24(%r15)
	cmpq $2, -24(%r15)
	je then104808
	callq exit
	jmp end104809
then104808:
	movq $7, -24(%r15)
	notq -24(%r15)
	movq -104(%r15), %rax
	andq %rax, -24(%r15)
end104809:
	movq -24(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -184(%rbp)
	andq $7, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then104810
	callq exit
	jmp end104811
then104810:
	movq %rcx, -184(%rbp)
	sarq $3, -184(%rbp)
end104811:
	movq -80(%r15), %rax
	movq %rax, -120(%r15)
	andq $7, -120(%r15)
	cmpq $2, -120(%r15)
	je then104812
	callq exit
	jmp end104813
then104812:
	movq $7, -120(%r15)
	notq -120(%r15)
	movq -80(%r15), %rax
	andq %rax, -120(%r15)
end104813:
	movq -120(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -136(%rbp)
	andq $7, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then104814
	callq exit
	jmp end104815
then104814:
	movq %rcx, -136(%rbp)
	sarq $3, -136(%rbp)
end104815:
	movq -16(%r15), %rax
	movq %rax, -200(%r15)
	andq $7, -200(%r15)
	cmpq $2, -200(%r15)
	je then104816
	callq exit
	jmp end104817
then104816:
	movq $7, -200(%r15)
	notq -200(%r15)
	movq -16(%r15), %rax
	andq %rax, -200(%r15)
end104817:
	movq -200(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -56(%rbp)
	andq $7, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then104818
	callq exit
	jmp end104819
then104818:
	movq %rcx, -56(%rbp)
	sarq $3, -56(%rbp)
end104819:
	movq -112(%r15), %rax
	movq %rax, -152(%r15)
	andq $7, -152(%r15)
	cmpq $2, -152(%r15)
	je then104820
	callq exit
	jmp end104821
then104820:
	movq $7, -152(%r15)
	notq -152(%r15)
	movq -112(%r15), %rax
	andq %rax, -152(%r15)
end104821:
	movq -152(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then104822
	callq exit
	jmp end104823
then104822:
	movq %rcx, -112(%rbp)
	sarq $3, -112(%rbp)
end104823:
	movq -168(%r15), %rax
	movq %rax, -8(%r15)
	andq $7, -8(%r15)
	cmpq $2, -8(%r15)
	je then104824
	callq exit
	jmp end104825
then104824:
	movq $7, -8(%r15)
	notq -8(%r15)
	movq -168(%r15), %rax
	andq %rax, -8(%r15)
end104825:
	movq -8(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -48(%rbp)
	andq $7, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then104826
	callq exit
	jmp end104827
then104826:
	movq %rcx, -48(%rbp)
	sarq $3, -48(%rbp)
end104827:
	movq %r12, -88(%r15)
	andq $7, -88(%r15)
	cmpq $2, -88(%r15)
	je then104828
	callq exit
	jmp end104829
then104828:
	movq $7, -88(%r15)
	notq -88(%r15)
	andq %r12, -88(%r15)
end104829:
	movq -88(%r15), %r11
	movq 8(%r11), %rcx
	movq %rcx, -144(%rbp)
	andq $7, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then104830
	callq exit
	jmp end104831
then104830:
	movq %rcx, -144(%rbp)
	sarq $3, -144(%rbp)
end104831:
	movq $21, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104832
	callq exit
	jmp end104833
then104832:
	movq %rcx, %r12
	sarq $3, %r12
end104833:
	movq -144(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104834
	callq exit
	jmp end104835
then104834:
	movq %rcx, %r12
	sarq $3, %r12
end104835:
	movq -48(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104836
	callq exit
	jmp end104837
then104836:
	movq %rcx, %r12
	sarq $3, %r12
end104837:
	movq -112(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104838
	callq exit
	jmp end104839
then104838:
	movq %rcx, %r12
	sarq $3, %r12
end104839:
	movq -56(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104840
	callq exit
	jmp end104841
then104840:
	movq %rcx, %r12
	sarq $3, %r12
end104841:
	movq -136(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104842
	callq exit
	jmp end104843
then104842:
	movq %rcx, %r12
	sarq $3, %r12
end104843:
	movq -184(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104844
	callq exit
	jmp end104845
then104844:
	movq %rcx, %r12
	sarq $3, %r12
end104845:
	movq -152(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104846
	callq exit
	jmp end104847
then104846:
	movq %rcx, %r12
	sarq $3, %r12
end104847:
	movq -176(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104848
	callq exit
	jmp end104849
then104848:
	movq %rcx, %r12
	sarq $3, %r12
end104849:
	movq -80(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104850
	callq exit
	jmp end104851
then104850:
	movq %rcx, %r12
	sarq $3, %r12
end104851:
	movq -160(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104852
	callq exit
	jmp end104853
then104852:
	movq %rcx, %r12
	sarq $3, %r12
end104853:
	movq %r13, %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104854
	callq exit
	jmp end104855
then104854:
	movq %rcx, %r12
	sarq $3, %r12
end104855:
	movq -168(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104856
	callq exit
	jmp end104857
then104856:
	movq %rcx, %r12
	sarq $3, %r12
end104857:
	movq -72(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104858
	callq exit
	jmp end104859
then104858:
	movq %rcx, %r12
	sarq $3, %r12
end104859:
	movq -96(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104860
	callq exit
	jmp end104861
then104860:
	movq %rcx, %r12
	sarq $3, %r12
end104861:
	movq -64(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104862
	callq exit
	jmp end104863
then104862:
	movq %rcx, %r12
	sarq $3, %r12
end104863:
	movq -88(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104864
	callq exit
	jmp end104865
then104864:
	movq %rcx, %r12
	sarq $3, %r12
end104865:
	movq -120(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104866
	callq exit
	jmp end104867
then104866:
	movq %rcx, %r12
	sarq $3, %r12
end104867:
	movq -104(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104868
	callq exit
	jmp end104869
then104868:
	movq %rcx, %r12
	sarq $3, %r12
end104869:
	movq -128(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104870
	callq exit
	jmp end104871
then104870:
	movq %rcx, %r12
	sarq $3, %r12
end104871:
	movq %r14, %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then104872
	callq exit
	jmp end104873
then104872:
	movq %rcx, %r12
	sarq $3, %r12
end104873:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $240, %r15
	addq $232, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
