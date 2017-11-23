	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $1320, %rsp
	addq $224, %r15
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

	movq %rdi, %r12
	movq %rsi, %r13
	movq $0, %rax
	cmpq %rax, %r12
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then324656
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
	je then324658
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324659
then324658:
	movq $0, %rcx
	movq %rcx, %rcx
end324659:
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
	movq %rcx, %r14
	movq $2, %rbx
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
	je then324660
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324661
then324660:
	movq $0, %rcx
	movq %rcx, %rcx
end324661:
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
	movq %rcx, -192(%r15)
	movq $3, %rbx
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
	je then324662
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324663
then324662:
	movq $0, %rcx
	movq %rcx, %rcx
end324663:
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
	movq %rcx, -168(%r15)
	movq $4, %rbx
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
	je then324664
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324665
then324664:
	movq $0, %rcx
	movq %rcx, %rcx
end324665:
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
	movq %rcx, -80(%r15)
	movq $5, %rbx
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
	je then324666
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324667
then324666:
	movq $0, %rcx
	movq %rcx, %rcx
end324667:
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
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324668
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324669
then324668:
	movq $0, %rcx
	movq %rcx, %rcx
end324669:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -192(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -168(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, -136(%r15)
	movq $-1, -1304(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1296(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, -1344(%rbp)
	movq $-1, -1328(%rbp)
	movq $-1, %r14
	movq $-1, -1312(%rbp)
	movq $-1, %rbx
	movq $-1, -1352(%rbp)
	movq $-1, -1336(%rbp)
	movq $-1, -1240(%rbp)
	movq $-1, -1272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324670
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324671
then324670:
	movq $0, %rcx
	movq %rcx, %rcx
end324671:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -1304(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1352(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1240(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -136(%r15), %rax
	movq %rax, -104(%r15)
	movq %rbx, %r14
	movq -136(%r15), %rax
	movq %rax, -112(%r15)
	movq %rbx, %rbx
	movq -136(%r15), %rax
	movq %rax, -8(%r15)
	movq %rbx, -32(%r15)
	movq -136(%r15), %rax
	movq %rax, -224(%r15)
	movq %rbx, -208(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324672
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324673
then324672:
	movq $0, %rcx
	movq %rcx, %rcx
end324673:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -224(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -208(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function0(%rip), %r14
	leaq function6(%rip), %rbx
	movq %r12, %rdi
	movq $1, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rdi
	movq %r13, %rsi
	callq *%r14
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324657
then324656:
	movq %r13, %rbx
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
	je then324674
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324675
then324674:
	movq $0, %rcx
	movq %rcx, %rcx
end324675:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
end324657:
	movq %rbx, %rax

	addq $1320, %rsp
	subq $224, %r15
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
	subq $1320, %rsp
	addq $224, %r15
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

	movq %rdi, %r12
	movq %rsi, %r13
	movq $0, %rax
	cmpq %rax, %r12
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then324676
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
	je then324678
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324679
then324678:
	movq $0, %rcx
	movq %rcx, %rcx
end324679:
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
	movq %rcx, -32(%r15)
	movq $2, %rbx
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
	je then324680
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324681
then324680:
	movq $0, %rcx
	movq %rcx, %rcx
end324681:
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
	movq $3, %r14
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
	je then324682
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324683
then324682:
	movq $0, %rcx
	movq %rcx, %rcx
end324683:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -128(%r15)
	movq $4, %r14
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
	je then324684
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324685
then324684:
	movq $0, %rcx
	movq %rcx, %rcx
end324685:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -136(%r15)
	movq $5, %r14
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
	je then324686
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324687
then324686:
	movq $0, %rcx
	movq %rcx, %rcx
end324687:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324688
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324689
then324688:
	movq $0, %rcx
	movq %rcx, %rcx
end324689:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $-1, -1272(%rbp)
	movq $-1, -1240(%rbp)
	movq $-1, -1352(%rbp)
	movq $-1, -1312(%rbp)
	movq $-1, -1344(%rbp)
	movq $-1, -1336(%rbp)
	movq $-1, %r14
	movq $-1, -1328(%rbp)
	movq $-1, -1360(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1304(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324690
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324691
then324690:
	movq $0, %rcx
	movq %rcx, %rcx
end324691:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1240(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1352(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1360(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1304(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rcx, %rcx
	movq %rbx, -160(%r15)
	movq %rcx, -104(%r15)
	movq %rbx, -176(%r15)
	movq %rcx, -96(%r15)
	movq %rbx, -184(%r15)
	movq %rcx, %r14
	movq %rbx, %rbx
	movq %rcx, -56(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324692
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324693
then324692:
	movq $0, %rcx
	movq %rcx, %rcx
end324693:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -160(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -104(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -176(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -184(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function1(%rip), %r14
	leaq function6(%rip), %rbx
	movq %r12, %rdi
	movq $1, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rdi
	movq %r13, %rsi
	callq *%r14
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324677
then324676:
	movq %r13, %rbx
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
	je then324694
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324695
then324694:
	movq $0, %rcx
	movq %rcx, %rcx
end324695:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
end324677:
	movq %rbx, %rax

	addq $1320, %rsp
	subq $224, %r15
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
	subq $1304, %rsp
	addq $224, %r15
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

	movq %rdi, -1240(%rbp)
	movq %rsi, -40(%r15)
	movq $0, %rax
	cmpq %rax, -1240(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then324696
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
	je then324698
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324699
then324698:
	movq $0, %rcx
	movq %rcx, %rcx
end324699:
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
	movq %rcx, %r13
	movq $2, %rbx
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
	je then324700
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324701
then324700:
	movq $0, %rcx
	movq %rcx, %rcx
end324701:
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
	movq %rcx, %r14
	movq $3, %rbx
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
	je then324702
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324703
then324702:
	movq $0, %rcx
	movq %rcx, %rcx
end324703:
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
	movq %rcx, -56(%r15)
	movq $4, %rbx
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
	je then324704
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324705
then324704:
	movq $0, %rcx
	movq %rcx, %rcx
end324705:
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
	movq %rcx, %r12
	movq $5, %rbx
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
	je then324706
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324707
then324706:
	movq $0, %rcx
	movq %rcx, %rcx
end324707:
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
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324708
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324709
then324708:
	movq $0, %rcx
	movq %rcx, %rcx
end324709:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, -120(%r15)
	movq $-1, %rbx
	movq $-1, -1336(%rbp)
	movq $-1, %r12
	movq $-1, -1328(%rbp)
	movq $-1, -1344(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1304(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1296(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, %r14
	movq $-1, -1312(%rbp)
	movq $-1, %r13
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324710
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324711
then324710:
	movq $0, %rcx
	movq %rcx, %rcx
end324711:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1304(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq -120(%r15), %rax
	movq %rax, -112(%r15)
	movq %rbx, %r13
	movq -120(%r15), %rax
	movq %rax, -136(%r15)
	movq %rbx, %rbx
	movq -120(%r15), %r14
	movq %rbx, %r12
	movq -120(%r15), %rax
	movq %rax, -32(%r15)
	movq %rbx, -192(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324712
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324713
then324712:
	movq $0, %rcx
	movq %rcx, %rcx
end324713:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -192(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function2(%rip), %rbx
	leaq function6(%rip), %r12
	movq -1240(%rbp), %rdi
	movq $1, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %rdi
	movq -40(%r15), %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324697
then324696:
	movq -40(%r15), %rbx
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
	je then324714
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324715
then324714:
	movq $0, %rcx
	movq %rcx, %rcx
end324715:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
end324697:
	movq %rbx, %rax

	addq $1304, %rsp
	subq $224, %r15
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
	subq $1336, %rsp
	addq $224, %r15
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

	movq %rdi, %r13
	movq %rsi, %r12
	movq $0, %rax
	cmpq %rax, %r13
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then324716
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
	je then324718
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324719
then324718:
	movq $0, %rcx
	movq %rcx, %rcx
end324719:
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
	movq %rcx, %r14
	movq $2, %rbx
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
	je then324720
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324721
then324720:
	movq $0, %rcx
	movq %rcx, %rcx
end324721:
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
	movq %rcx, -96(%r15)
	movq $3, %rbx
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
	je then324722
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324723
then324722:
	movq $0, %rcx
	movq %rcx, %rcx
end324723:
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
	movq %rcx, -24(%r15)
	movq $4, %rbx
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
	je then324724
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324725
then324724:
	movq $0, %rcx
	movq %rcx, %rcx
end324725:
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
	movq $5, -1296(%rbp)
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
	je then324726
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324727
then324726:
	movq $0, %rcx
	movq %rcx, %rcx
end324727:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -40(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324728
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324729
then324728:
	movq $0, %rcx
	movq %rcx, %rcx
end324729:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq $-1, -1240(%rbp)
	movq $-1, -1344(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, -1368(%rbp)
	movq $-1, -1336(%rbp)
	movq $-1, -1352(%rbp)
	movq $-1, -1328(%rbp)
	movq $-1, -1360(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1312(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1304(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, %r14
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324730
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324731
then324730:
	movq $0, %rcx
	movq %rcx, %rcx
end324731:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -1240(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1368(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1352(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1360(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1304(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rcx, %rcx
	movq %rbx, -64(%r15)
	movq %rcx, %r14
	movq %rbx, %rbx
	movq %rcx, -136(%r15)
	movq %rbx, -112(%r15)
	movq %rcx, -56(%r15)
	movq %rbx, -8(%r15)
	movq %rcx, -72(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324732
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324733
then324732:
	movq $0, %rcx
	movq %rcx, %rcx
end324733:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -112(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -72(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function3(%rip), %r14
	leaq function6(%rip), %rbx
	movq %r13, %rdi
	movq $1, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rdi
	movq %r12, %rsi
	callq *%r14
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324717
then324716:
	movq %r12, %rbx
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
	je then324734
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324735
then324734:
	movq $0, %rcx
	movq %rcx, %rcx
end324735:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
end324717:
	movq %rbx, %rax

	addq $1336, %rsp
	subq $224, %r15
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
	subq $1320, %rsp
	addq $224, %r15
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

	movq %rdi, -1304(%rbp)
	movq %rsi, %r14
	movq $0, %rax
	cmpq %rax, -1304(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, %rbx
	movq %rbx, %rax
	cmpq $1, %rax
	je then324736
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
	je then324738
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324739
then324738:
	movq $0, %rcx
	movq %rcx, %rcx
end324739:
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
	movq %rcx, -96(%r15)
	movq $2, %rbx
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
	je then324740
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324741
then324740:
	movq $0, %rcx
	movq %rcx, %rcx
end324741:
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
	movq $3, %r12
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
	je then324742
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324743
then324742:
	movq $0, %rcx
	movq %rcx, %rcx
end324743:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -64(%r15)
	movq $4, %r12
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
	je then324744
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324745
then324744:
	movq $0, %rcx
	movq %rcx, %rcx
end324745:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq $5, %r13
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
	je then324746
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324747
then324746:
	movq $0, %rcx
	movq %rcx, %rcx
end324747:
	movq %rcx, %rcx
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
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324748
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324749
then324748:
	movq $0, %rcx
	movq %rcx, %rcx
end324749:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r12
	movq $-1, -1320(%rbp)
	movq $-1, %r13
	movq $-1, -1312(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1328(%rbp)
	movq $-1, -1296(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1240(%rbp)
	movq $-1, -1352(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1360(%rbp)
	movq $-1, -1336(%rbp)
	movq $-1, %rbx
	movq $-1, -1344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324750
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324751
then324750:
	movq $0, %rcx
	movq %rcx, %rcx
end324751:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1240(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1352(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1360(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	movq %r12, -88(%r15)
	movq %rbx, -56(%r15)
	movq %r12, %r12
	movq %rbx, %rbx
	movq %r12, %r13
	movq %rbx, -8(%r15)
	movq %r12, -128(%r15)
	movq %rbx, -24(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324752
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324753
then324752:
	movq $0, %rcx
	movq %rcx, %rcx
end324753:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq -88(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -8(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rcx, %r11
	movq -24(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
	leaq function4(%rip), %rbx
	leaq function6(%rip), %r12
	movq -1304(%rbp), %rdi
	movq $1, %rsi
	callq *%r12
	movq %rax, %rcx
	movq %rcx, %rdi
	movq %r14, %rsi
	callq *%rbx
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324737
then324736:
	movq %r14, %rbx
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
	je then324754
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324755
then324754:
	movq $0, %rcx
	movq %rcx, %rcx
end324755:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $131, 0(%r11)
	movq %rcx, %r11
	movq %rbx, %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rcx, %rbx
end324737:
	movq %rbx, %rax

	addq $1320, %rsp
	subq $224, %r15
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
	subq $1312, %rsp
	addq $208, %r15
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

	movq %rdi, %rbx
	movq $0, %rax
	cmpq %rax, %rbx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324756
	movq $1, %r12
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
	je then324758
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324759
then324758:
	movq $0, %rcx
	movq %rcx, %rcx
end324759:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $2, %r12
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
	je then324760
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324761
then324760:
	movq $0, %rcx
	movq %rcx, %rcx
end324761:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r13
	movq $3, %r12
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
	je then324762
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324763
then324762:
	movq $0, %rcx
	movq %rcx, %rcx
end324763:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -40(%r15)
	movq $4, %r12
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
	je then324764
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324765
then324764:
	movq $0, %rcx
	movq %rcx, %rcx
end324765:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, -120(%r15)
	movq $5, %r12
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
	je then324766
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324767
then324766:
	movq $0, %rcx
	movq %rcx, %rcx
end324767:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $16, free_ptr(%rip)
	movq %rcx, %r11
	movq $3, 0(%r11)
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r12
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $48, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324768
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, %rcx
	jmp end324769
then324768:
	movq $0, %rcx
	movq %rcx, %rcx
end324769:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $48, free_ptr(%rip)
	movq %rcx, %r11
	movq $3979, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -120(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r14
	movq $-1, -1296(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -1240(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1256(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -1304(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, -1232(%rbp)
	movq $-1, %r13
	movq $-1, -1336(%rbp)
	movq $-1, %r12
	movq $-1, -1344(%rbp)
	movq $-1, -1328(%rbp)
	movq $-1, -1248(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -1312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $144, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324770
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, %rcx
	jmp end324771
then324770:
	movq $0, %rcx
	movq %rcx, %rcx
end324771:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $144, free_ptr(%rip)
	movq %rcx, %r11
	movq $35, 0(%r11)
	movq %rcx, %r11
	movq -1296(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1264(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1240(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1280(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1256(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1272(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1304(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1320(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1232(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 80(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1336(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 96(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1344(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1328(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1248(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1288(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -1312(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rcx, %rcx
	movq %r14, %r14
	movq %rcx, -136(%r15)
	movq %r14, -64(%r15)
	movq %rcx, %r13
	movq %r14, -144(%r15)
	movq %rcx, %r12
	movq %r14, -128(%r15)
	movq %rcx, -96(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rcx
	addq $72, %rcx
	movq fromspace_end(%rip), %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq %rax, %rcx
	sete %al
	movzbq %al, %rax
	movq %rax, %rcx
	movq %rcx, %rax
	cmpq $1, %rax
	je then324772
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, %rcx
	jmp end324773
then324772:
	movq $0, %rcx
	movq %rcx, %rcx
end324773:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rax
	movq %rax, %rcx
	addq $72, free_ptr(%rip)
	movq %rcx, %r11
	movq $32657, 0(%r11)
	movq %rcx, %r11
	movq %r14, %rax
	movq %rax, 8(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -136(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r13, %rax
	movq %rax, 32(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -144(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq %r12, %rax
	movq %rax, 48(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, %rdx
	movq %rcx, %r11
	movq -96(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, %rdx
	movq %rcx, %rcx
	leaq function5(%rip), %r12
	leaq function6(%rip), %r13
	movq %rbx, %rdi
	movq $1, %rsi
	callq *%r13
	movq %rax, %rbx
	movq %rbx, %rdi
	callq *%r12
	movq %rax, %rbx
	movq %rbx, %rbx
	jmp end324757
then324756:
	movq $42, %rbx
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
	je then324774
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, %rcx
	jmp end324775
then324774:
	movq $0, %rcx
	movq %rcx, %rcx
end324775:
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
end324757:
	movq %rbx, %rax

	addq $1312, %rsp
	subq $208, %r15
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
	subq $0, %rsp
	addq $0, %r15

	movq %rdi, %rbx
	movq %rsi, %rcx
	movq %rcx, %rcx
	negq %rcx
	movq %rbx, %rbx
	addq %rcx, %rbx
	movq %rbx, %rax

	addq $0, %rsp
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
	subq $64, %rsp
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

	leaq function0(%rip), %rax
	movq %rax, -48(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -56(%rbp)
	leaq function2(%rip), %r14
	leaq function3(%rip), %r13
	leaq function4(%rip), %r12
	leaq function5(%rip), %rbx
	movq $20, %rdi
	callq *%rbx
	movq %rax, %rbx
	movq $20, %rdi
	movq %rbx, %rsi
	callq *%r12
	movq %rax, %rbx
	movq $20, %rdi
	movq %rbx, %rsi
	callq *%r13
	movq %rax, %rbx
	movq $20, %rdi
	movq %rbx, %rsi
	callq *%r14
	movq %rax, %rbx
	movq $20, %rdi
	movq %rbx, %rsi
	callq *-56(%rbp)
	movq %rax, %rbx
	movq $20, %rdi
	movq %rbx, %rsi
	callq *-48(%rbp)
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
	addq $64, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
