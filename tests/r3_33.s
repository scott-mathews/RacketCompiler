	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $1352, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $24, %r15
	movq $0, -24(%r15)
	movq $0, -16(%r15)
	movq $0, -8(%r15)

	movq $0, -744(%rbp)
	movq $1, -632(%rbp)
	movq $2, -1296(%rbp)
	movq $3, -656(%rbp)
	movq $4, -672(%rbp)
	movq $5, -640(%rbp)
	movq $6, -648(%rbp)
	movq $7, -1304(%rbp)
	movq $8, -664(%rbp)
	movq $9, -696(%rbp)
	movq $10, -56(%rbp)
	movq $11, -736(%rbp)
	movq $12, -88(%rbp)
	movq $13, -688(%rbp)
	movq $14, -48(%rbp)
	movq $15, -728(%rbp)
	movq $16, -80(%rbp)
	movq $17, -704(%rbp)
	movq $18, -64(%rbp)
	movq $19, -104(%rbp)
	movq $20, -96(%rbp)
	movq $21, -712(%rbp)
	movq $22, -680(%rbp)
	movq $23, -112(%rbp)
	movq $24, -720(%rbp)
	movq $25, -152(%rbp)
	movq $26, -760(%rbp)
	movq $27, -224(%rbp)
	movq $28, -848(%rbp)
	movq $29, -184(%rbp)
	movq $30, -792(%rbp)
	movq $31, -240(%rbp)
	movq $32, -864(%rbp)
	movq $33, -168(%rbp)
	movq $34, -752(%rbp)
	movq $35, -880(%rbp)
	movq $36, -840(%rbp)
	movq $37, -160(%rbp)
	movq $38, -120(%rbp)
	movq $39, -872(%rbp)
	movq $40, -192(%rbp)
	movq $41, -832(%rbp)
	movq $42, -136(%rbp)
	movq $43, -904(%rbp)
	movq $44, -216(%rbp)
	movq $45, -800(%rbp)
	movq $46, -128(%rbp)
	movq $47, -888(%rbp)
	movq $48, -200(%rbp)
	movq $49, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -808(%rbp)
	addq $408, -808(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -248(%rbp)
	movq -808(%rbp), %rax
	cmpq %rax, -248(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1224(%rbp)
	cmpq $1, -1224(%rbp)
	je then482736
	movq %r15, %rdi
	movq $408, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end482737
then482736:
	movq $0, -1288(%rbp)
	movq -1288(%rbp), %rax
	movq %rax, -280(%rbp)
end482737:
	movq -280(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $408, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $101, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 400(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -928(%rbp)
	movq -24(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 392(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -856(%rbp)
	movq -24(%r15), %r11
	movq -888(%rbp), %rax
	movq %rax, 384(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -768(%rbp)
	movq -24(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 376(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -1168(%rbp)
	movq -24(%r15), %r11
	movq -800(%rbp), %rax
	movq %rax, 368(%r11)
	movq $0, -600(%rbp)
	movq -600(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -24(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 360(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -1128(%rbp)
	movq -24(%r15), %r11
	movq -904(%rbp), %rax
	movq %rax, 352(%r11)
	movq $0, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -24(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 344(%r11)
	movq $0, -912(%rbp)
	movq -912(%rbp), %rax
	movq %rax, -1216(%rbp)
	movq -24(%r15), %r11
	movq -832(%rbp), %rax
	movq %rax, 336(%r11)
	movq $0, -1096(%rbp)
	movq -1096(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -24(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 328(%r11)
	movq $0, -920(%rbp)
	movq -920(%rbp), %rax
	movq %rax, -536(%rbp)
	movq -24(%r15), %r11
	movq -872(%rbp), %rax
	movq %rax, 320(%r11)
	movq $0, -1112(%rbp)
	movq -1112(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -24(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 312(%r11)
	movq $0, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -24(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 304(%r11)
	movq $0, -1104(%rbp)
	movq -1104(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -24(%r15), %r11
	movq -840(%rbp), %rax
	movq %rax, 296(%r11)
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -560(%rbp)
	movq -24(%r15), %r11
	movq -880(%rbp), %rax
	movq %rax, 288(%r11)
	movq $0, -1120(%rbp)
	movq -1120(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -24(%r15), %r11
	movq -752(%rbp), %rax
	movq %rax, 280(%r11)
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -24(%r15), %r11
	movq -168(%rbp), %rax
	movq %rax, 272(%r11)
	movq $0, -520(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -1064(%rbp)
	movq -24(%r15), %r11
	movq -864(%rbp), %rax
	movq %rax, 264(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -1280(%rbp)
	movq -24(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 256(%r11)
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -24(%r15), %r11
	movq -792(%rbp), %rax
	movq %rax, 248(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -1208(%rbp)
	movq -24(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 240(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -24(%r15), %r11
	movq -848(%rbp), %rax
	movq %rax, 232(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq -24(%r15), %r11
	movq -224(%rbp), %rax
	movq %rax, 224(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -1000(%rbp)
	movq -24(%r15), %r11
	movq -760(%rbp), %rax
	movq %rax, 216(%r11)
	movq $0, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq -24(%r15), %r11
	movq -152(%rbp), %rax
	movq %rax, 208(%r11)
	movq $0, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -24(%r15), %r11
	movq -720(%rbp), %rax
	movq %rax, 200(%r11)
	movq $0, -984(%rbp)
	movq -984(%rbp), %rax
	movq %rax, -584(%rbp)
	movq -24(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 192(%r11)
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -424(%rbp)
	movq -24(%r15), %r11
	movq -680(%rbp), %rax
	movq %rax, 184(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -24(%r15), %r11
	movq -712(%rbp), %rax
	movq %rax, 176(%r11)
	movq $0, -1176(%rbp)
	movq -1176(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -24(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 168(%r11)
	movq $0, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -608(%rbp)
	movq -24(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 160(%r11)
	movq $0, -1184(%rbp)
	movq -1184(%rbp), %rax
	movq %rax, -432(%rbp)
	movq -24(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 152(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -544(%rbp)
	movq -24(%r15), %r11
	movq -704(%rbp), %rax
	movq %rax, 144(%r11)
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -24(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq -24(%r15), %r11
	movq -728(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -24(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -1240(%rbp)
	movq -24(%r15), %r11
	movq -688(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq -24(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -24(%r15), %r11
	movq -736(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -24(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -24(%r15), %r11
	movq -696(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -1144(%rbp)
	movq -24(%r15), %r11
	movq -664(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -976(%rbp)
	movq -24(%r15), %r11
	movq -1304(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -24(%r15), %r11
	movq -648(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -24(%r15), %r11
	movq -640(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -24(%r15), %r11
	movq -672(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -24(%r15), %r11
	movq -656(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -24(%r15), %r11
	movq -1296(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -784(%rbp)
	movq -24(%r15), %r11
	movq -632(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -24(%r15), %r11
	movq -744(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -24(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 344(%r11), %rax
	movq %rax, -72(%rbp)
	movq -72(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $24, %r15
	addq $1352, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
