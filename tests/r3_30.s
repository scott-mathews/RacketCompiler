	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $1192, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $8, %r15
	movq $0, -8(%r15)

	movq $0, -440(%rbp)
	movq $1, -1064(%rbp)
	movq $2, -520(%rbp)
	movq $3, -1144(%rbp)
	movq $4, -1000(%rbp)
	movq $5, -1056(%rbp)
	movq $6, -512(%rbp)
	movq $7, -1136(%rbp)
	movq $8, -424(%rbp)
	movq $9, -472(%rbp)
	movq $10, -1096(%rbp)
	movq $11, -544(%rbp)
	movq $12, -1040(%rbp)
	movq $13, -480(%rbp)
	movq $14, -1104(%rbp)
	movq $15, -552(%rbp)
	movq $16, -1048(%rbp)
	movq $17, -496(%rbp)
	movq $18, -1120(%rbp)
	movq $19, -568(%rbp)
	movq $20, -432(%rbp)
	movq $21, -504(%rbp)
	movq $22, -1128(%rbp)
	movq $23, -576(%rbp)
	movq $24, -1016(%rbp)
	movq $25, -1072(%rbp)
	movq $26, -448(%rbp)
	movq $27, -1008(%rbp)
	movq $28, -528(%rbp)
	movq $29, -1080(%rbp)
	movq $30, -456(%rbp)
	movq $31, -1024(%rbp)
	movq $32, -560(%rbp)
	movq $33, -1112(%rbp)
	movq $34, -488(%rbp)
	movq $35, -416(%rbp)
	movq $36, -536(%rbp)
	movq $37, -1088(%rbp)
	movq $38, -464(%rbp)
	movq $39, -1032(%rbp)
	movq $40, -376(%rbp)
	movq $41, %r13
	movq $42, -928(%rbp)
	movq $43, %rbx
	movq $44, -984(%rbp)
	movq $45, %r14
	movq $46, -936(%rbp)
	movq $47, %r12
	movq $48, -992(%rbp)
	movq $49, -368(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rdx
	addq $408, %rdx
	movq fromspace_end(%rip), %rcx
	cmpq %rdx, %rcx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then553121
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
	jmp end553122
then553121:
	movq $0, %rcx
	movq %rcx, %rcx
end553122:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -368(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -992(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 384(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -936(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 368(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -984(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 352(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -928(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 336(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -376(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1032(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -464(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1088(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -536(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -416(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -488(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1112(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -560(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1024(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -456(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1080(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -528(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1008(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -448(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1072(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1016(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -576(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1128(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -504(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -432(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -568(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1120(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -496(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1048(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -552(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1104(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -480(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1040(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -544(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1096(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -472(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -424(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1136(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -512(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1056(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1000(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1144(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -520(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -1064(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -440(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, -8(%r15)
	movq $0, -952(%rbp)
	movq $1, -352(%rbp)
	movq $2, -344(%rbp)
	movq $3, -392(%rbp)
	movq $4, -960(%rbp)
	movq $5, -360(%rbp)
	movq $6, -904(%rbp)
	movq $7, -400(%rbp)
	movq $8, -968(%rbp)
	movq $9, -96(%rbp)
	movq $10, %r13
	movq $11, -856(%rbp)
	movq $12, -240(%rbp)
	movq $13, -640(%rbp)
	movq $14, %rbx
	movq $15, -808(%rbp)
	movq $16, -192(%rbp)
	movq $17, -664(%rbp)
	movq $18, -584(%rbp)
	movq $19, -840(%rbp)
	movq $20, -216(%rbp)
	movq $21, -648(%rbp)
	movq $22, %r12
	movq $23, -824(%rbp)
	movq $24, -200(%rbp)
	movq $25, -920(%rbp)
	movq $26, -896(%rbp)
	movq $27, -384(%rbp)
	movq $28, -944(%rbp)
	movq $29, -168(%rbp)
	movq $30, -912(%rbp)
	movq $31, -408(%rbp)
	movq $32, -976(%rbp)
	movq $33, -160(%rbp)
	movq $34, -80(%rbp)
	movq $35, -320(%rbp)
	movq $36, -768(%rbp)
	movq $37, -152(%rbp)
	movq $38, -632(%rbp)
	movq $39, -312(%rbp)
	movq $40, -760(%rbp)
	movq $41, -144(%rbp)
	movq $42, -88(%rbp)
	movq $43, -872(%rbp)
	movq $44, -256(%rbp)
	movq $45, -704(%rbp)
	movq $46, %r14
	movq $47, -864(%rbp)
	movq $48, -248(%rbp)
	movq $49, -712(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $408, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then553123
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
	jmp end553124
then553123:
	movq $0, %rcx
	movq %rcx, %rcx
end553124:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -712(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -248(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -864(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 376(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -704(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -256(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -872(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -88(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -144(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -760(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -312(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -632(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -152(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -768(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -320(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -80(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -160(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -976(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -408(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -912(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -168(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -944(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -384(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -896(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -920(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -200(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -824(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 184(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -648(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -216(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -840(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -584(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -664(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -192(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -808(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 120(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -640(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -240(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -856(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq %r13, 88(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -96(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -968(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -400(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -904(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -360(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -960(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -392(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -344(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -352(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -952(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq $0, -112(%rbp)
	movq $1, -56(%rbp)
	movq $2, -336(%rbp)
	movq $3, -776(%rbp)
	movq $4, -136(%rbp)
	movq $5, -624(%rbp)
	movq $6, -304(%rbp)
	movq $7, -752(%rbp)
	movq $8, -120(%rbp)
	movq $9, -608(%rbp)
	movq $10, -328(%rbp)
	movq $11, -272(%rbp)
	movq $12, -720(%rbp)
	movq $13, -64(%rbp)
	movq $14, -880(%rbp)
	movq $15, -264(%rbp)
	movq $16, -736(%rbp)
	movq $17, -616(%rbp)
	movq $18, -832(%rbp)
	movq $19, -208(%rbp)
	movq $20, -656(%rbp)
	movq $21, %rbx
	movq $22, -888(%rbp)
	movq $23, -280(%rbp)
	movq $24, -728(%rbp)
	movq $25, -72(%rbp)
	movq $26, -816(%rbp)
	movq $27, -784(%rbp)
	movq $28, %r12
	movq $29, -672(%rbp)
	movq $30, -224(%rbp)
	movq $31, -848(%rbp)
	movq $32, -592(%rbp)
	movq $33, -696(%rbp)
	movq $34, -184(%rbp)
	movq $35, -800(%rbp)
	movq $36, %r14
	movq $37, -688(%rbp)
	movq $38, -176(%rbp)
	movq $39, -792(%rbp)
	movq $40, %r13
	movq $41, -680(%rbp)
	movq $42, -232(%rbp)
	movq $43, -288(%rbp)
	movq $44, -600(%rbp)
	movq $45, -104(%rbp)
	movq $46, -744(%rbp)
	movq $47, -296(%rbp)
	movq $48, -48(%rbp)
	movq $49, -128(%rbp)
	movq free_ptr(%rip), %rcx
	movq %rcx, %rcx
	addq $408, %rcx
	movq fromspace_end(%rip), %rdx
	cmpq %rcx, %rdx
	sete %al
	movzbq %al, %rcx
	cmpq $1, %rcx
	je then553125
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, %rcx
	jmp end553126
then553125:
	movq $0, %rcx
	movq %rcx, %rcx
end553126:
	movq %rcx, %rcx
	movq free_ptr(%rip), %rcx
	addq $408, free_ptr(%rip)
	movq %rcx, %r11
	movq $101, 0(%r11)
	movq %rcx, %rcx
	movq %rcx, %r11
	movq -128(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -48(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -296(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -744(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -104(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -600(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -288(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -232(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -680(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r13, 328(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -792(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -176(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -688(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r14, 296(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -800(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -184(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -696(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -592(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -848(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -224(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -672(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %r12, 232(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -784(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -816(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -72(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -728(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -280(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq -888(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, %rdx
	movq %rdx, %rdx
	movq %rcx, %r11
	movq %rbx, 176(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -656(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -208(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -832(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -616(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -736(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -264(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -880(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -64(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -720(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -272(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -328(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -608(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -120(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -752(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -304(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -624(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -136(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -776(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -336(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -56(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, %rbx
	movq %rbx, %rbx
	movq %rcx, %rbx
	movq -8(%r15), %r11
	movq 344(%r11), %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $8, %r15
	addq $1192, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
