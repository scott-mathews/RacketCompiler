	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $1528, %rsp
	addq $344, %r15
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

	movq %rdi, -560(%rbp)
	movq %rsi, -72(%rbp)
	movq %rdx, -304(%r15)
	movq $0, %rax
	cmpq -72(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1288(%rbp)
	cmpq $1, -1288(%rbp)
	je then380199
	movq $1, -848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -832(%rbp)
	movq -832(%rbp), %rax
	movq %rax, -816(%rbp)
	addq $16, -816(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -688(%rbp)
	movq -816(%rbp), %rax
	cmpq %rax, -688(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1400(%rbp)
	cmpq $1, -1400(%rbp)
	je then380201
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -504(%rbp)
	jmp end380202
then380201:
	movq $0, -1296(%rbp)
	movq -1296(%rbp), %rax
	movq %rax, -504(%rbp)
end380202:
	movq -504(%rbp), %rax
	movq %rax, -1336(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -848(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -72(%r15), %rax
	movq %rax, -128(%r15)
	movq $2, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1432(%rbp)
	movq -1432(%rbp), %rax
	movq %rax, -800(%rbp)
	addq $16, -800(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -736(%rbp)
	movq -800(%rbp), %rax
	cmpq %rax, -736(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1304(%rbp)
	cmpq $1, -1304(%rbp)
	je then380203
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -496(%rbp)
	jmp end380204
then380203:
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -496(%rbp)
end380204:
	movq -496(%rbp), %rax
	movq %rax, -632(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -144(%r15)
	movq -144(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -512(%rbp)
	movq -144(%r15), %rax
	movq %rax, -344(%r15)
	movq $3, -664(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1440(%rbp)
	movq -1440(%rbp), %rax
	movq %rax, -672(%rbp)
	addq $16, -672(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -784(%rbp)
	movq -672(%rbp), %rax
	cmpq %rax, -784(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1352(%rbp)
	cmpq $1, -1352(%rbp)
	je then380205
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -544(%rbp)
	jmp end380206
then380205:
	movq $0, -1360(%rbp)
	movq -1360(%rbp), %rax
	movq %rax, -544(%rbp)
end380206:
	movq -544(%rbp), %rax
	movq %rax, -488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -664(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1368(%rbp)
	movq -1368(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -24(%r15), %rax
	movq %rax, -64(%r15)
	movq $4, -728(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1456(%rbp)
	movq -1456(%rbp), %rax
	movq %rax, -720(%rbp)
	addq $16, -720(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -792(%rbp)
	movq -720(%rbp), %rax
	cmpq %rax, -792(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1408(%rbp)
	cmpq $1, -1408(%rbp)
	je then380207
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -608(%rbp)
	jmp end380208
then380207:
	movq $0, -616(%rbp)
	movq -616(%rbp), %rax
	movq %rax, -608(%rbp)
end380208:
	movq -608(%rbp), %rax
	movq %rax, -568(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -328(%r15)
	addq $16, free_ptr(%rip)
	movq -328(%r15), %r11
	movq $3, 0(%r11)
	movq -328(%r15), %rax
	movq %rax, -280(%r15)
	movq -280(%r15), %r11
	movq -728(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1392(%rbp)
	movq -1392(%rbp), %rax
	movq %rax, -600(%rbp)
	movq -280(%r15), %rax
	movq %rax, -8(%r15)
	movq $5, -1496(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1528(%rbp)
	movq -1528(%rbp), %rax
	movq %rax, -768(%rbp)
	addq $16, -768(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -696(%rbp)
	movq -768(%rbp), %rax
	cmpq %rax, -696(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -520(%rbp)
	cmpq $1, -520(%rbp)
	je then380209
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1416(%rbp)
	jmp end380210
then380209:
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -1416(%rbp)
end380210:
	movq -1416(%rbp), %rax
	movq %rax, -752(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -1496(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1424(%rbp)
	movq -232(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -1040(%rbp)
	addq $48, -1040(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -920(%rbp)
	movq -1040(%rbp), %rax
	cmpq %rax, -920(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -808(%rbp)
	cmpq $1, -808(%rbp)
	je then380211
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -1472(%rbp)
	jmp end380212
then380211:
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -1472(%rbp)
end380212:
	movq -1472(%rbp), %rax
	movq %rax, -1344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $48, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3979, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq -240(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -136(%rbp)
	movq -136(%rbp), %rax
	movq %rax, -1032(%rbp)
	movq -240(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -240(%r15), %r11
	movq -344(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -240(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -432(%rbp)
	movq -240(%r15), %rax
	movq %rax, -264(%r15)
	movq $-1, -320(%rbp)
	movq $-1, -1048(%rbp)
	movq $-1, -96(%rbp)
	movq $-1, -400(%rbp)
	movq $-1, -1096(%rbp)
	movq $-1, -176(%rbp)
	movq $-1, -912(%rbp)
	movq $-1, -424(%rbp)
	movq $-1, -1120(%rbp)
	movq $-1, -192(%rbp)
	movq $-1, -904(%rbp)
	movq $-1, -416(%rbp)
	movq $-1, -1112(%rbp)
	movq $-1, -184(%rbp)
	movq $-1, -896(%rbp)
	movq $-1, -408(%rbp)
	movq $-1, -1104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -264(%rbp)
	addq $144, -264(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -264(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -760(%rbp)
	cmpq $1, -760(%rbp)
	je then380213
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -1504(%rbp)
	jmp end380214
then380213:
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -1504(%rbp)
end380214:
	movq -1504(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $144, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $35, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq -1104(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -1176(%rbp)
	movq -256(%r15), %r11
	movq -408(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -968(%rbp)
	movq -256(%r15), %r11
	movq -896(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -256(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -856(%rbp)
	movq -856(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -256(%r15), %r11
	movq -1112(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -256(%r15), %r11
	movq -416(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -864(%rbp)
	movq -864(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -256(%r15), %r11
	movq -904(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -256(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -256(%r15), %r11
	movq -1120(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -256(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -256(%r15), %r11
	movq -912(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -1208(%rbp)
	movq -256(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq -256(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -256(%r15), %r11
	movq -400(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -1160(%rbp)
	movq -256(%r15), %r11
	movq -96(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -984(%rbp)
	movq -984(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -256(%r15), %r11
	movq -1048(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -256(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -256(%r15), %rax
	movq %rax, -248(%r15)
	movq -264(%r15), %rax
	movq %rax, -296(%r15)
	movq -248(%r15), %rax
	movq %rax, -88(%r15)
	movq -264(%r15), %rax
	movq %rax, -40(%r15)
	movq -248(%r15), %rax
	movq %rax, -112(%r15)
	movq -264(%r15), %rax
	movq %rax, -272(%r15)
	movq -248(%r15), %rax
	movq %rax, -56(%r15)
	movq -264(%r15), %rax
	movq %rax, -192(%r15)
	movq -248(%r15), %rax
	movq %rax, -80(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -1232(%rbp)
	addq $72, -1232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1224(%rbp)
	movq -1232(%rbp), %rax
	cmpq %rax, -1224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -648(%rbp)
	cmpq $1, -648(%rbp)
	je then380215
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -1512(%rbp)
	jmp end380216
then380215:
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -1512(%rbp)
end380216:
	movq -1512(%rbp), %rax
	movq %rax, -256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $72, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $32657, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -320(%r15)
	movq -320(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -872(%rbp)
	movq -872(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -320(%r15), %r11
	movq -192(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1088(%rbp)
	movq -1088(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -320(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -320(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1080(%rbp)
	movq -1080(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -320(%r15), %r11
	movq -112(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -320(%r15), %r11
	movq -40(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -320(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -1200(%rbp)
	movq -320(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq -320(%r15), %rax
	movq %rax, -120(%r15)
	leaq function0(%rip), %rax
	movq %rax, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -464(%rbp)
	addq $16, -464(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -480(%rbp)
	movq -464(%rbp), %rax
	cmpq %rax, -480(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1520(%rbp)
	cmpq $1, -1520(%rbp)
	je then380217
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -776(%rbp)
	jmp end380218
then380217:
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -776(%rbp)
end380218:
	movq -776(%rbp), %rax
	movq %rax, -1000(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -336(%r15)
	addq $16, free_ptr(%rip)
	movq -336(%r15), %r11
	movq $3, 0(%r11)
	movq -336(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -656(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -160(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -744(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -1384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -376(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -376(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1312(%rbp)
	cmpq $1, -1312(%rbp)
	je then380219
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -640(%rbp)
	jmp end380220
then380219:
	movq $0, -712(%rbp)
	movq -712(%rbp), %rax
	movq %rax, -640(%rbp)
end380220:
	movq -640(%rbp), %rax
	movq %rax, -1488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -1384(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -1448(%rbp)
	movq -104(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1480(%rbp)
	movq -48(%r15), %rdi
	movq -72(%rbp), %rsi
	movq $1, %rdx
	callq *-1480(%rbp)
	movq %rax, -224(%rbp)
	movq -288(%r15), %rdi
	movq -224(%rbp), %rsi
	movq -304(%r15), %rdx
	callq *-744(%rbp)
	movq %rax, -208(%r15)
	movq -208(%r15), %rax
	movq %rax, -592(%rbp)
	jmp end380200
then380199:
	movq -304(%r15), %rax
	movq %rax, -224(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -680(%rbp)
	addq $16, -680(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1464(%rbp)
	movq -680(%rbp), %rax
	cmpq %rax, -1464(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1272(%rbp)
	cmpq $1, -1272(%rbp)
	je then380221
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -584(%rbp)
	jmp end380222
then380221:
	movq $0, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -584(%rbp)
end380222:
	movq -584(%rbp), %rax
	movq %rax, -1376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%r15)
	addq $16, free_ptr(%rip)
	movq -136(%r15), %r11
	movq $131, 0(%r11)
	movq -136(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq -224(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -552(%rbp)
	movq -200(%r15), %rax
	movq %rax, -592(%rbp)
end380200:
	movq -592(%rbp), %rax

	addq $1528, %rsp
	subq $344, %r15
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
	subq $1528, %rsp
	addq $344, %r15
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

	movq %rdi, -536(%rbp)
	movq %rsi, -680(%rbp)
	movq %rdx, -288(%r15)
	movq $0, %rax
	cmpq -680(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1256(%rbp)
	cmpq $1, -1256(%rbp)
	je then380223
	movq $1, -920(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -848(%rbp)
	movq -848(%rbp), %rax
	movq %rax, -912(%rbp)
	addq $16, -912(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -912(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1312(%rbp)
	cmpq $1, -1312(%rbp)
	je then380225
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -520(%rbp)
	jmp end380226
then380225:
	movq $0, -1496(%rbp)
	movq -1496(%rbp), %rax
	movq %rax, -520(%rbp)
end380226:
	movq -520(%rbp), %rax
	movq %rax, -1376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -920(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -736(%rbp)
	movq -736(%rbp), %rax
	movq %rax, -1360(%rbp)
	movq -112(%r15), %rax
	movq %rax, -32(%r15)
	movq $2, -856(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -872(%rbp)
	addq $16, -872(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -872(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -664(%rbp)
	cmpq $1, -664(%rbp)
	je then380227
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1320(%rbp)
	jmp end380228
then380227:
	movq $0, -1456(%rbp)
	movq -1456(%rbp), %rax
	movq %rax, -1320(%rbp)
end380228:
	movq -1320(%rbp), %rax
	movq %rax, -1352(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -304(%r15)
	movq -304(%r15), %r11
	movq -856(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1464(%rbp)
	movq -1464(%rbp), %rax
	movq %rax, -720(%rbp)
	movq -304(%r15), %rax
	movq %rax, -344(%r15)
	movq $3, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -808(%rbp)
	addq $16, -808(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -960(%rbp)
	movq -808(%rbp), %rax
	cmpq %rax, -960(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -616(%rbp)
	cmpq $1, -616(%rbp)
	je then380229
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1440(%rbp)
	jmp end380230
then380229:
	movq $0, -1408(%rbp)
	movq -1408(%rbp), %rax
	movq %rax, -1440(%rbp)
end380230:
	movq -1440(%rbp), %rax
	movq %rax, -1512(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1424(%rbp)
	movq -1424(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -8(%r15), %rax
	movq %rax, -120(%r15)
	movq $4, -784(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -832(%rbp)
	addq $16, -832(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -952(%rbp)
	movq -832(%rbp), %rax
	cmpq %rax, -952(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -712(%rbp)
	cmpq $1, -712(%rbp)
	je then380231
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1448(%rbp)
	jmp end380232
then380231:
	movq $0, -1520(%rbp)
	movq -1520(%rbp), %rax
	movq %rax, -1448(%rbp)
end380232:
	movq -1448(%rbp), %rax
	movq %rax, -632(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -784(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1504(%rbp)
	movq -1504(%rbp), %rax
	movq %rax, -656(%rbp)
	movq -80(%r15), %rax
	movq %rax, -336(%r15)
	movq $5, -128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -840(%rbp)
	addq $16, -840(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -744(%rbp)
	movq -840(%rbp), %rax
	cmpq %rax, -744(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -576(%rbp)
	cmpq $1, -576(%rbp)
	je then380233
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1472(%rbp)
	jmp end380234
then380233:
	movq $0, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -1472(%rbp)
end380234:
	movq -1472(%rbp), %rax
	movq %rax, -648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -248(%r15)
	movq -248(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -696(%rbp)
	movq -248(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -864(%rbp)
	movq -864(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $48, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -936(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -936(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -704(%rbp)
	cmpq $1, -704(%rbp)
	je then380235
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -1432(%rbp)
	jmp end380236
then380235:
	movq $0, -728(%rbp)
	movq -728(%rbp), %rax
	movq %rax, -1432(%rbp)
end380236:
	movq -1432(%rbp), %rax
	movq %rax, -624(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $48, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3979, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -312(%r15)
	movq -312(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1488(%rbp)
	movq -1488(%rbp), %rax
	movq %rax, -640(%rbp)
	movq -312(%r15), %r11
	movq -336(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1392(%rbp)
	movq -1392(%rbp), %rax
	movq %rax, -608(%rbp)
	movq -312(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1480(%rbp)
	movq -1480(%rbp), %rax
	movq %rax, -672(%rbp)
	movq -312(%r15), %r11
	movq -344(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -600(%rbp)
	movq -312(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -312(%r15), %rax
	movq %rax, -168(%r15)
	movq $-1, -800(%rbp)
	movq $-1, -160(%rbp)
	movq $-1, -216(%rbp)
	movq $-1, -776(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -888(%rbp)
	movq $-1, -192(%rbp)
	movq $-1, -760(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -880(%rbp)
	movq $-1, -184(%rbp)
	movq $-1, -752(%rbp)
	movq $-1, -104(%rbp)
	movq $-1, -1160(%rbp)
	movq $-1, -512(%rbp)
	movq $-1, -288(%rbp)
	movq $-1, -352(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -1176(%rbp)
	addq $144, -1176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1016(%rbp)
	movq -1176(%rbp), %rax
	cmpq %rax, -1016(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then380237
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -968(%rbp)
	jmp end380238
then380237:
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -968(%rbp)
end380238:
	movq -968(%rbp), %rax
	movq %rax, -296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $144, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $35, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -352(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -88(%r15), %r11
	movq -288(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -984(%rbp)
	movq -984(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -88(%r15), %r11
	movq -512(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -480(%rbp)
	movq -88(%r15), %r11
	movq -1160(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -88(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1136(%rbp)
	movq -1136(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -88(%r15), %r11
	movq -752(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -88(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -416(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -1200(%rbp)
	movq -88(%r15), %r11
	movq -880(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq -88(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -88(%r15), %r11
	movq -760(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -1040(%rbp)
	movq -88(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -1232(%rbp)
	movq -88(%r15), %r11
	movq -888(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq -88(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq -88(%r15), %r11
	movq -776(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -88(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1120(%rbp)
	movq -1120(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -88(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -88(%r15), %r11
	movq -800(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1112(%rbp)
	movq -1112(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -88(%r15), %rax
	movq %rax, -24(%r15)
	movq -168(%r15), %rax
	movq %rax, -128(%r15)
	movq -24(%r15), %rax
	movq %rax, -320(%r15)
	movq -168(%r15), %rax
	movq %rax, -64(%r15)
	movq -24(%r15), %rax
	movq %rax, -40(%r15)
	movq -168(%r15), %rax
	movq %rax, -208(%r15)
	movq -24(%r15), %rax
	movq %rax, -184(%r15)
	movq -168(%r15), %rax
	movq %rax, -224(%r15)
	movq -24(%r15), %rax
	movq %rax, -240(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -1224(%rbp)
	addq $72, -1224(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1088(%rbp)
	movq -1224(%rbp), %rax
	cmpq %rax, -1088(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then380239
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -768(%rbp)
	jmp end380240
then380239:
	movq $0, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -768(%rbp)
end380240:
	movq -768(%rbp), %rax
	movq %rax, -344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%r15)
	addq $72, free_ptr(%rip)
	movq -272(%r15), %r11
	movq $32657, 0(%r11)
	movq -272(%r15), %rax
	movq %rax, -280(%r15)
	movq -280(%r15), %r11
	movq -240(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1208(%rbp)
	movq -1208(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -280(%r15), %r11
	movq -224(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -280(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -280(%r15), %r11
	movq -208(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -280(%r15), %r11
	movq -40(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -1216(%rbp)
	movq -280(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -280(%r15), %r11
	movq -320(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -280(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -1064(%rbp)
	movq -280(%r15), %rax
	movq %rax, -72(%r15)
	leaq function1(%rip), %rax
	movq %rax, -1288(%rbp)
	movq -1288(%rbp), %rax
	movq %rax, -904(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -544(%rbp)
	addq $16, -544(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -568(%rbp)
	movq -544(%rbp), %rax
	cmpq %rax, -568(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then380241
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -896(%rbp)
	jmp end380242
then380241:
	movq $0, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -896(%rbp)
end380242:
	movq -896(%rbp), %rax
	movq %rax, -1104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -328(%r15)
	movq -328(%r15), %r11
	movq -904(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1192(%rbp)
	movq -1192(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -328(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1296(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -1400(%rbp)
	movq -1400(%rbp), %rax
	movq %rax, -1368(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -560(%rbp)
	addq $16, -560(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1280(%rbp)
	movq -560(%rbp), %rax
	cmpq %rax, -1280(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -792(%rbp)
	cmpq $1, -792(%rbp)
	je then380243
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end380244
then380243:
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -56(%rbp)
end380244:
	movq -56(%rbp), %rax
	movq %rax, -496(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -296(%r15)
	addq $16, free_ptr(%rip)
	movq -296(%r15), %r11
	movq $3, 0(%r11)
	movq -296(%r15), %rax
	movq %rax, -264(%r15)
	movq -264(%r15), %r11
	movq -1368(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -264(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1528(%rbp)
	movq -160(%r15), %rdi
	movq -680(%rbp), %rsi
	movq $1, %rdx
	callq *-1528(%rbp)
	movq %rax, -1328(%rbp)
	movq -232(%r15), %rdi
	movq -1328(%rbp), %rsi
	movq -288(%r15), %rdx
	callq *-1296(%rbp)
	movq %rax, -136(%r15)
	movq -136(%r15), %rax
	movq %rax, -528(%rbp)
	jmp end380224
then380223:
	movq -288(%r15), %rax
	movq %rax, -144(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1272(%rbp)
	cmpq $1, -1272(%rbp)
	je then380245
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -552(%rbp)
	jmp end380246
then380245:
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -552(%rbp)
end380246:
	movq -552(%rbp), %rax
	movq %rax, -1416(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $131, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -144(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -1384(%rbp)
	movq -16(%r15), %rax
	movq %rax, -528(%rbp)
end380224:
	movq -528(%rbp), %rax

	addq $1528, %rsp
	subq $344, %r15
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
	subq $1528, %rsp
	addq $344, %r15
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

	movq %rdi, -600(%rbp)
	movq %rsi, -1504(%rbp)
	movq %rdx, -16(%r15)
	movq $0, %rax
	cmpq -1504(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then380247
	movq $1, -648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -360(%rbp)
	addq $16, -360(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -488(%rbp)
	movq -360(%rbp), %rax
	cmpq %rax, -488(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -824(%rbp)
	cmpq $1, -824(%rbp)
	je then380249
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -984(%rbp)
	jmp end380250
then380249:
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -984(%rbp)
end380250:
	movq -984(%rbp), %rax
	movq %rax, -384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -336(%r15)
	addq $16, free_ptr(%rip)
	movq -336(%r15), %r11
	movq $3, 0(%r11)
	movq -336(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -648(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -40(%r15), %rax
	movq %rax, -264(%r15)
	movq $2, -376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -352(%rbp)
	addq $16, -352(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -528(%rbp)
	movq -352(%rbp), %rax
	cmpq %rax, -528(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -792(%rbp)
	cmpq $1, -792(%rbp)
	je then380251
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -816(%rbp)
	jmp end380252
then380251:
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -816(%rbp)
end380252:
	movq -816(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -376(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -176(%r15), %rax
	movq %rax, -168(%r15)
	movq $3, -344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -280(%rbp)
	addq $16, -280(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -472(%rbp)
	movq -280(%rbp), %rax
	cmpq %rax, -472(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1488(%rbp)
	cmpq $1, -1488(%rbp)
	je then380253
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -800(%rbp)
	jmp end380254
then380253:
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -800(%rbp)
end380254:
	movq -800(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -320(%r15)
	movq -320(%r15), %r11
	movq -344(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -904(%rbp)
	movq -320(%r15), %rax
	movq %rax, -280(%r15)
	movq $4, -1256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -536(%rbp)
	addq $16, -536(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -400(%rbp)
	movq -536(%rbp), %rax
	cmpq %rax, -400(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1064(%rbp)
	cmpq $1, -1064(%rbp)
	je then380255
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end380256
then380255:
	movq $0, -1088(%rbp)
	movq -1088(%rbp), %rax
	movq %rax, -88(%rbp)
end380256:
	movq -88(%rbp), %rax
	movq %rax, -152(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -1256(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -880(%rbp)
	movq -88(%r15), %rax
	movq %rax, -120(%r15)
	movq $5, -1176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1136(%rbp)
	movq -1136(%rbp), %rax
	movq %rax, -448(%rbp)
	addq $16, -448(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -304(%rbp)
	movq -448(%rbp), %rax
	cmpq %rax, -304(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -808(%rbp)
	cmpq $1, -808(%rbp)
	je then380257
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1512(%rbp)
	jmp end380258
then380257:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -1512(%rbp)
end380258:
	movq -1512(%rbp), %rax
	movq %rax, -848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq -1176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -288(%r15), %rax
	movq %rax, -328(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -1232(%rbp)
	addq $48, -1232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1120(%rbp)
	movq -1232(%rbp), %rax
	cmpq %rax, -1120(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1528(%rbp)
	cmpq $1, -1528(%rbp)
	je then380259
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -784(%rbp)
	jmp end380260
then380259:
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -784(%rbp)
end380260:
	movq -784(%rbp), %rax
	movq %rax, -912(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $48, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $3979, 0(%r11)
	movq -304(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq -328(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -128(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -952(%rbp)
	movq -952(%rbp), %rax
	movq %rax, -888(%rbp)
	movq -128(%r15), %r11
	movq -280(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -832(%rbp)
	movq -832(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -128(%r15), %r11
	movq -168(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -128(%r15), %r11
	movq -264(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -1032(%rbp)
	movq -128(%r15), %rax
	movq %rax, -80(%r15)
	movq $-1, -480(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -336(%rbp)
	movq $-1, -1152(%rbp)
	movq $-1, -424(%rbp)
	movq $-1, -496(%rbp)
	movq $-1, -1096(%rbp)
	movq $-1, -368(%rbp)
	movq $-1, -1192(%rbp)
	movq $-1, -512(%rbp)
	movq $-1, -1112(%rbp)
	movq $-1, -416(%rbp)
	movq $-1, -1200(%rbp)
	movq $-1, -520(%rbp)
	movq $-1, -320(%rbp)
	movq $-1, -408(%rbp)
	movq $-1, -1184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -1208(%rbp)
	addq $144, -1208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -328(%rbp)
	movq -1208(%rbp), %rax
	cmpq %rax, -328(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then380261
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -1080(%rbp)
	jmp end380262
then380261:
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -1080(%rbp)
end380262:
	movq -1080(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $144, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $35, 0(%r11)
	movq -312(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -1184(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -872(%rbp)
	movq -872(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -72(%r15), %r11
	movq -408(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -72(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq -72(%r15), %r11
	movq -520(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -920(%rbp)
	movq -72(%r15), %r11
	movq -1200(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq -72(%r15), %r11
	movq -416(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -928(%rbp)
	movq -72(%r15), %r11
	movq -1112(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -864(%rbp)
	movq -864(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -72(%r15), %r11
	movq -512(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -72(%r15), %r11
	movq -1192(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -1040(%rbp)
	movq -72(%r15), %r11
	movq -368(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -896(%rbp)
	movq -72(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -72(%r15), %r11
	movq -496(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -1408(%rbp)
	movq -1408(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -72(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -744(%rbp)
	movq -72(%r15), %r11
	movq -1152(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -736(%rbp)
	movq -736(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -72(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -1400(%rbp)
	movq -72(%r15), %r11
	movq -1272(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1440(%rbp)
	movq -1440(%rbp), %rax
	movq %rax, -1288(%rbp)
	movq -72(%r15), %r11
	movq -480(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -672(%rbp)
	movq -72(%r15), %rax
	movq %rax, -104(%r15)
	movq -80(%r15), %rax
	movq %rax, -296(%r15)
	movq -104(%r15), %rax
	movq %rax, -152(%r15)
	movq -80(%r15), %rax
	movq %rax, -48(%r15)
	movq -104(%r15), %rax
	movq %rax, -344(%r15)
	movq -80(%r15), %rax
	movq %rax, -216(%r15)
	movq -104(%r15), %rax
	movq %rax, -272(%r15)
	movq -80(%r15), %rax
	movq %rax, -224(%r15)
	movq -104(%r15), %rax
	movq %rax, -184(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1368(%rbp)
	movq -1368(%rbp), %rax
	movq %rax, -712(%rbp)
	addq $72, -712(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -576(%rbp)
	movq -712(%rbp), %rax
	cmpq %rax, -576(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1224(%rbp)
	cmpq $1, -1224(%rbp)
	je then380263
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -544(%rbp)
	jmp end380264
then380263:
	movq $0, -1432(%rbp)
	movq -1432(%rbp), %rax
	movq %rax, -544(%rbp)
end380264:
	movq -544(%rbp), %rax
	movq %rax, -1296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $72, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $32657, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -1480(%rbp)
	movq -256(%r15), %r11
	movq -224(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -592(%rbp)
	movq -592(%rbp), %rax
	movq %rax, -1384(%rbp)
	movq -256(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -1472(%rbp)
	movq -256(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -1376(%rbp)
	movq -256(%r15), %r11
	movq -344(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1424(%rbp)
	movq -1424(%rbp), %rax
	movq %rax, -760(%rbp)
	movq -256(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1312(%rbp)
	movq -1312(%rbp), %rax
	movq %rax, -664(%rbp)
	movq -256(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -1456(%rbp)
	movq -256(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1352(%rbp)
	movq -256(%r15), %rax
	movq %rax, -240(%r15)
	leaq function2(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -504(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1416(%rbp)
	movq -1416(%rbp), %rax
	movq %rax, -752(%rbp)
	addq $16, -752(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -632(%rbp)
	movq -752(%rbp), %rax
	cmpq %rax, -632(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1240(%rbp)
	cmpq $1, -1240(%rbp)
	je then380265
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1104(%rbp)
	jmp end380266
then380265:
	movq $0, -1464(%rbp)
	movq -1464(%rbp), %rax
	movq %rax, -1104(%rbp)
end380266:
	movq -1104(%rbp), %rax
	movq %rax, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -504(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -728(%rbp)
	movq -728(%rbp), %rax
	movq %rax, -560(%rbp)
	movq -232(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1360(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -720(%rbp)
	movq -720(%rbp), %rax
	movq %rax, -856(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -1496(%rbp)
	addq $16, -1496(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1520(%rbp)
	movq -1496(%rbp), %rax
	cmpq %rax, -1520(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1128(%rbp)
	cmpq $1, -1128(%rbp)
	je then380267
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -440(%rbp)
	jmp end380268
then380267:
	movq $0, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -440(%rbp)
end380268:
	movq -440(%rbp), %rax
	movq %rax, -1448(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -248(%r15)
	movq -248(%r15), %r11
	movq -856(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -1344(%rbp)
	movq -248(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1320(%rbp)
	movq -192(%r15), %rdi
	movq -1504(%rbp), %rsi
	movq $1, %rdx
	callq *-1320(%rbp)
	movq %rax, -768(%rbp)
	movq -56(%r15), %rdi
	movq -768(%rbp), %rsi
	movq -16(%r15), %rdx
	callq *-1360(%rbp)
	movq %rax, -144(%r15)
	movq -144(%r15), %rax
	movq %rax, -936(%rbp)
	jmp end380248
then380247:
	movq -16(%r15), %rax
	movq %rax, -208(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -552(%rbp)
	addq $16, -552(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1392(%rbp)
	movq -552(%rbp), %rax
	cmpq %rax, -1392(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -960(%rbp)
	cmpq $1, -960(%rbp)
	je then380269
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end380270
then380269:
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -136(%rbp)
end380270:
	movq -136(%rbp), %rax
	movq %rax, -296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%r15)
	addq $16, free_ptr(%rip)
	movq -136(%r15), %r11
	movq $131, 0(%r11)
	movq -136(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -208(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1144(%rbp)
	movq -8(%r15), %rax
	movq %rax, -936(%rbp)
end380248:
	movq -936(%rbp), %rax

	addq $1528, %rsp
	subq $344, %r15
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
	subq $1528, %rsp
	addq $344, %r15
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

	movq %rdi, -472(%rbp)
	movq %rsi, -664(%rbp)
	movq %rdx, -56(%r15)
	movq $0, %rax
	cmpq -664(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1064(%rbp)
	cmpq $1, -1064(%rbp)
	je then380271
	movq $1, -1456(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -1480(%rbp)
	addq $16, -1480(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1384(%rbp)
	movq -1480(%rbp), %rax
	cmpq %rax, -1384(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then380273
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -384(%rbp)
	jmp end380274
then380273:
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -384(%rbp)
end380274:
	movq -384(%rbp), %rax
	movq %rax, -1280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -1456(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -168(%r15), %rax
	movq %rax, -240(%r15)
	movq $2, -1528(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -1520(%rbp)
	addq $16, -1520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1392(%rbp)
	movq -1520(%rbp), %rax
	cmpq %rax, -1392(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -936(%rbp)
	cmpq $1, -936(%rbp)
	je then380275
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -160(%rbp)
	jmp end380276
then380275:
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -160(%rbp)
end380276:
	movq -160(%rbp), %rax
	movq %rax, -1288(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -1528(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1176(%rbp)
	movq -1176(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -40(%r15), %rax
	movq %rax, -320(%r15)
	movq $3, -648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -1344(%rbp)
	addq $16, -1344(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1432(%rbp)
	movq -1344(%rbp), %rax
	cmpq %rax, -1432(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -312(%rbp)
	cmpq $1, -312(%rbp)
	je then380277
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -944(%rbp)
	jmp end380278
then380277:
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -944(%rbp)
end380278:
	movq -944(%rbp), %rax
	movq %rax, -1112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -648(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1208(%rbp)
	movq -64(%r15), %rax
	movq %rax, -296(%r15)
	movq $4, -496(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -1256(%rbp)
	addq $16, -1256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1144(%rbp)
	movq -1256(%rbp), %rax
	cmpq %rax, -1144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -792(%rbp)
	cmpq $1, -792(%rbp)
	je then380279
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -56(%rbp)
	jmp end380280
then380279:
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -56(%rbp)
end380280:
	movq -56(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -280(%r15)
	movq -280(%r15), %r11
	movq -496(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1016(%rbp)
	movq -1016(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -280(%r15), %rax
	movq %rax, -232(%r15)
	movq $5, -480(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -504(%rbp)
	addq $16, -504(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -616(%rbp)
	movq -504(%rbp), %rax
	cmpq %rax, -616(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -776(%rbp)
	cmpq $1, -776(%rbp)
	je then380281
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end380282
then380281:
	movq $0, -912(%rbp)
	movq -912(%rbp), %rax
	movq %rax, -64(%rbp)
end380282:
	movq -64(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -480(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -920(%rbp)
	movq -920(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -208(%r15), %rax
	movq %rax, -96(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -584(%rbp)
	addq $48, -584(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -448(%rbp)
	movq -584(%rbp), %rax
	cmpq %rax, -448(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then380283
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -800(%rbp)
	jmp end380284
then380283:
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -800(%rbp)
end380284:
	movq -800(%rbp), %rax
	movq %rax, -144(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%r15)
	addq $48, free_ptr(%rip)
	movq -248(%r15), %r11
	movq $3979, 0(%r11)
	movq -248(%r15), %rax
	movq %rax, -336(%r15)
	movq -336(%r15), %r11
	movq -96(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -336(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -872(%rbp)
	movq -872(%rbp), %rax
	movq %rax, -216(%rbp)
	movq -336(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -336(%r15), %r11
	movq -320(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -808(%rbp)
	movq -808(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -336(%r15), %r11
	movq -240(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -336(%r15), %rax
	movq %rax, -32(%r15)
	movq $-1, -1272(%rbp)
	movq $-1, -520(%rbp)
	movq $-1, -1160(%rbp)
	movq $-1, -600(%rbp)
	movq $-1, -1240(%rbp)
	movq $-1, -456(%rbp)
	movq $-1, -1104(%rbp)
	movq $-1, -592(%rbp)
	movq $-1, -536(%rbp)
	movq $-1, -1184(%rbp)
	movq $-1, -424(%rbp)
	movq $-1, -1312(%rbp)
	movq $-1, -560(%rbp)
	movq $-1, -1192(%rbp)
	movq $-1, -1120(%rbp)
	movq $-1, -1296(%rbp)
	movq $-1, -528(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -576(%rbp)
	addq $144, -576(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	movq -576(%rbp), %rax
	cmpq %rax, -432(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -984(%rbp)
	cmpq $1, -984(%rbp)
	je then380285
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end380286
then380285:
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -80(%rbp)
end380286:
	movq -80(%rbp), %rax
	movq %rax, -848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $144, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $35, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -528(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -72(%r15), %r11
	movq -1296(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -72(%r15), %r11
	movq -1120(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -904(%rbp)
	movq -904(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -72(%r15), %r11
	movq -1192(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -976(%rbp)
	movq -72(%r15), %r11
	movq -560(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -856(%rbp)
	movq -72(%r15), %r11
	movq -1312(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -1096(%rbp)
	movq -1096(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -72(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -72(%r15), %r11
	movq -1184(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -72(%r15), %r11
	movq -536(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -880(%rbp)
	movq -72(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq -72(%r15), %r11
	movq -1104(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -864(%rbp)
	movq -72(%r15), %r11
	movq -456(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -1080(%rbp)
	movq -1080(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -72(%r15), %r11
	movq -1240(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -72(%r15), %r11
	movq -600(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -72(%r15), %r11
	movq -1160(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -824(%rbp)
	movq -72(%r15), %r11
	movq -520(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -72(%r15), %r11
	movq -1272(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -72(%r15), %rax
	movq %rax, -128(%r15)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq -128(%r15), %rax
	movq %rax, -216(%r15)
	movq -32(%r15), %rax
	movq %rax, -288(%r15)
	movq -128(%r15), %rax
	movq %rax, -88(%r15)
	movq -32(%r15), %rax
	movq %rax, -120(%r15)
	movq -128(%r15), %rax
	movq %rax, -328(%r15)
	movq -32(%r15), %rax
	movq %rax, -256(%r15)
	movq -128(%r15), %rax
	movq %rax, -160(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -568(%rbp)
	addq $72, -568(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1128(%rbp)
	movq -568(%rbp), %rax
	cmpq %rax, -1128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -832(%rbp)
	cmpq $1, -832(%rbp)
	je then380287
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -344(%rbp)
	jmp end380288
then380287:
	movq $0, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -344(%rbp)
end380288:
	movq -344(%rbp), %rax
	movq %rax, -256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $72, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $32657, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -192(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -192(%r15), %r11
	movq -328(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -192(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1464(%rbp)
	movq -1464(%rbp), %rax
	movq %rax, -1424(%rbp)
	movq -192(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1368(%rbp)
	movq -1368(%rbp), %rax
	movq %rax, -752(%rbp)
	movq -192(%r15), %r11
	movq -288(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -744(%rbp)
	movq -744(%rbp), %rax
	movq %rax, -680(%rbp)
	movq -192(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -1448(%rbp)
	movq -192(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -736(%rbp)
	movq -736(%rbp), %rax
	movq %rax, -1352(%rbp)
	movq -192(%r15), %rax
	movq %rax, -304(%r15)
	leaq function3(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -1440(%rbp)
	addq $16, -1440(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1376(%rbp)
	movq -1440(%rbp), %rax
	cmpq %rax, -1376(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -544(%rbp)
	cmpq $1, -544(%rbp)
	je then380289
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1304(%rbp)
	jmp end380290
then380289:
	movq $0, -1488(%rbp)
	movq -1488(%rbp), %rax
	movq %rax, -1304(%rbp)
end380290:
	movq -1304(%rbp), %rax
	movq %rax, -1360(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -1136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -720(%rbp)
	movq -720(%rbp), %rax
	movq %rax, -1512(%rbp)
	movq -112(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -784(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -1408(%rbp)
	movq -1408(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1496(%rbp)
	movq -1496(%rbp), %rax
	movq %rax, -656(%rbp)
	addq $16, -656(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -704(%rbp)
	movq -656(%rbp), %rax
	cmpq %rax, -704(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -440(%rbp)
	cmpq $1, -440(%rbp)
	je then380291
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1224(%rbp)
	jmp end380292
then380291:
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -1224(%rbp)
end380292:
	movq -1224(%rbp), %rax
	movq %rax, -728(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -344(%r15)
	addq $16, free_ptr(%rip)
	movq -344(%r15), %r11
	movq $3, 0(%r11)
	movq -344(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1400(%rbp)
	movq -16(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1472(%rbp)
	movq -24(%r15), %rdi
	movq -664(%rbp), %rsi
	movq $1, %rdx
	callq *-1472(%rbp)
	movq %rax, -768(%rbp)
	movq -176(%r15), %rdi
	movq -768(%rbp), %rsi
	movq -56(%r15), %rdx
	callq *-784(%rbp)
	movq %rax, -104(%r15)
	movq -104(%r15), %rax
	movq %rax, -272(%rbp)
	jmp end380272
then380271:
	movq -56(%r15), %rax
	movq %rax, -136(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -712(%rbp)
	movq -712(%rbp), %rax
	movq %rax, -1416(%rbp)
	addq $16, -1416(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1504(%rbp)
	movq -1416(%rbp), %rax
	cmpq %rax, -1504(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -360(%rbp)
	cmpq $1, -360(%rbp)
	je then380293
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -992(%rbp)
	jmp end380294
then380293:
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -992(%rbp)
end380294:
	movq -992(%rbp), %rax
	movq %rax, -512(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%r15)
	addq $16, free_ptr(%rip)
	movq -272(%r15), %r11
	movq $131, 0(%r11)
	movq -272(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -136(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -1264(%rbp)
	movq -80(%r15), %rax
	movq %rax, -272(%rbp)
end380272:
	movq -272(%rbp), %rax

	addq $1528, %rsp
	subq $344, %r15
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
	subq $1528, %rsp
	addq $344, %r15
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

	movq %rdi, -224(%rbp)
	movq %rsi, -1512(%rbp)
	movq %rdx, -104(%r15)
	movq $0, %rax
	cmpq -1512(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -496(%rbp)
	cmpq $1, -496(%rbp)
	je then380295
	movq $1, -664(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -672(%rbp)
	addq $16, -672(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -528(%rbp)
	movq -672(%rbp), %rax
	cmpq %rax, -528(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -352(%rbp)
	cmpq $1, -352(%rbp)
	je then380297
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1176(%rbp)
	jmp end380298
then380297:
	movq $0, -1392(%rbp)
	movq -1392(%rbp), %rax
	movq %rax, -1176(%rbp)
end380298:
	movq -1176(%rbp), %rax
	movq %rax, -544(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -344(%r15)
	addq $16, free_ptr(%rip)
	movq -344(%r15), %r11
	movq $3, 0(%r11)
	movq -344(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq -664(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -712(%rbp)
	movq -712(%rbp), %rax
	movq %rax, -1528(%rbp)
	movq -296(%r15), %rax
	movq %rax, -248(%r15)
	movq $2, -832(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -816(%rbp)
	addq $16, -816(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -816(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -384(%rbp)
	cmpq $1, -384(%rbp)
	je then380299
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1056(%rbp)
	jmp end380300
then380299:
	movq $0, -720(%rbp)
	movq -720(%rbp), %rax
	movq %rax, -1056(%rbp)
end380300:
	movq -1056(%rbp), %rax
	movq %rax, -576(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -832(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -728(%rbp)
	movq -728(%rbp), %rax
	movq %rax, -1384(%rbp)
	movq -208(%r15), %rax
	movq %rax, -72(%r15)
	movq $3, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -864(%rbp)
	movq -864(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -432(%rbp)
	cmpq $1, -432(%rbp)
	je then380301
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1088(%rbp)
	jmp end380302
then380301:
	movq $0, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -1088(%rbp)
end380302:
	movq -1088(%rbp), %rax
	movq %rax, -608(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -1416(%rbp)
	movq -152(%r15), %rax
	movq %rax, -272(%r15)
	movq $4, -872(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax
	movq %rax, -856(%rbp)
	addq $16, -856(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -792(%rbp)
	movq -856(%rbp), %rax
	cmpq %rax, -792(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then380303
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1240(%rbp)
	jmp end380304
then380303:
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1240(%rbp)
end380304:
	movq -1240(%rbp), %rax
	movq %rax, -1424(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq -872(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1496(%rbp)
	movq -256(%r15), %rax
	movq %rax, -88(%r15)
	movq $5, -888(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -896(%rbp)
	addq $16, -896(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -848(%rbp)
	movq -896(%rbp), %rax
	cmpq %rax, -848(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then380305
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -936(%rbp)
	jmp end380306
then380305:
	movq $0, -632(%rbp)
	movq -632(%rbp), %rax
	movq %rax, -936(%rbp)
end380306:
	movq -936(%rbp), %rax
	movq %rax, -1504(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq -888(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1328(%rbp)
	movq -224(%r15), %rax
	movq %rax, -200(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -880(%rbp)
	addq $48, -880(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -800(%rbp)
	movq -880(%rbp), %rax
	cmpq %rax, -800(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then380307
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -504(%rbp)
	jmp end380308
then380307:
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -504(%rbp)
end380308:
	movq -504(%rbp), %rax
	movq %rax, -1432(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $48, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3979, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq -200(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -480(%rbp)
	movq -288(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -288(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq -288(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -992(%rbp)
	movq -288(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -288(%r15), %rax
	movq %rax, -112(%r15)
	movq $-1, -656(%rbp)
	movq $-1, -1320(%rbp)
	movq $-1, -760(%rbp)
	movq $-1, -1408(%rbp)
	movq $-1, -616(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -736(%rbp)
	movq $-1, -1400(%rbp)
	movq $-1, -592(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -744(%rbp)
	movq $-1, -696(%rbp)
	movq $-1, -1360(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -1520(%rbp)
	movq $-1, -704(%rbp)
	movq $-1, -1376(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1368(%rbp)
	addq $144, -1368(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1456(%rbp)
	movq -1368(%rbp), %rax
	cmpq %rax, -1456(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then380309
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -904(%rbp)
	jmp end380310
then380309:
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -904(%rbp)
end380310:
	movq -904(%rbp), %rax
	movq %rax, -1200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $144, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $35, 0(%r11)
	movq -304(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -1376(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -80(%r15), %r11
	movq -704(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -920(%rbp)
	movq -80(%r15), %r11
	movq -1520(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -1112(%rbp)
	movq -80(%r15), %r11
	movq -1272(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -80(%r15), %r11
	movq -1360(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -1120(%rbp)
	movq -80(%r15), %r11
	movq -696(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -80(%r15), %r11
	movq -744(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -1152(%rbp)
	movq -80(%r15), %r11
	movq -1264(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -80(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -408(%rbp)
	movq -80(%r15), %r11
	movq -1400(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -1224(%rbp)
	movq -1224(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -80(%r15), %r11
	movq -736(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -80(%r15), %r11
	movq -1288(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -80(%r15), %r11
	movq -616(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -80(%r15), %r11
	movq -1408(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -80(%r15), %r11
	movq -760(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -80(%r15), %r11
	movq -1320(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -984(%rbp)
	movq -80(%r15), %r11
	movq -656(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -1128(%rbp)
	movq -80(%r15), %rax
	movq %rax, -40(%r15)
	movq -112(%r15), %rax
	movq %rax, -16(%r15)
	movq -40(%r15), %rax
	movq %rax, -176(%r15)
	movq -112(%r15), %rax
	movq %rax, -320(%r15)
	movq -40(%r15), %rax
	movq %rax, -160(%r15)
	movq -112(%r15), %rax
	movq %rax, -240(%r15)
	movq -40(%r15), %rax
	movq %rax, -24(%r15)
	movq -112(%r15), %rax
	movq %rax, -232(%r15)
	movq -40(%r15), %rax
	movq %rax, -64(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -1472(%rbp)
	addq $72, -1472(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1352(%rbp)
	movq -1472(%rbp), %rax
	cmpq %rax, -1352(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then380311
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -1016(%rbp)
	jmp end380312
then380311:
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -1016(%rbp)
end380312:
	movq -1016(%rbp), %rax
	movq %rax, -1208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $72, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $32657, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -1000(%rbp)
	movq -184(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq -184(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -960(%rbp)
	movq -184(%r15), %r11
	movq -240(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -1104(%rbp)
	movq -184(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -968(%rbp)
	movq -184(%r15), %r11
	movq -320(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1184(%rbp)
	movq -1184(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -184(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -184(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1480(%rbp)
	movq -1480(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -184(%r15), %rax
	movq %rax, -144(%r15)
	leaq function4(%rip), %rax
	movq %rax, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -976(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1464(%rbp)
	movq -1464(%rbp), %rax
	movq %rax, -680(%rbp)
	addq $16, -680(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -520(%rbp)
	movq -680(%rbp), %rax
	cmpq %rax, -520(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1024(%rbp)
	cmpq $1, -1024(%rbp)
	je then380313
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -512(%rbp)
	jmp end380314
then380313:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -512(%rbp)
end380314:
	movq -512(%rbp), %rax
	movq %rax, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $16, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $3, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -136(%r15)
	movq -136(%r15), %r11
	movq -976(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -136(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1280(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -1296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -1312(%rbp)
	addq $16, -1312(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1448(%rbp)
	movq -1312(%rbp), %rax
	cmpq %rax, -1448(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -376(%rbp)
	cmpq $1, -376(%rbp)
	je then380315
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -312(%rbp)
	jmp end380316
then380315:
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -312(%rbp)
end380316:
	movq -312(%rbp), %rax
	movq %rax, -912(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -336(%r15)
	movq -336(%r15), %r11
	movq -1296(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -336(%r15), %rax
	movq %rax, -264(%r15)
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -72(%rbp)
	movq -264(%r15), %rdi
	movq -1512(%rbp), %rsi
	movq $1, %rdx
	callq *-72(%rbp)
	movq %rax, -808(%rbp)
	movq -96(%r15), %rdi
	movq -808(%rbp), %rsi
	movq -104(%r15), %rdx
	callq *-1280(%rbp)
	movq %rax, -312(%r15)
	movq -312(%r15), %rax
	movq %rax, -184(%rbp)
	jmp end380296
then380295:
	movq -104(%r15), %rax
	movq %rax, -328(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1440(%rbp)
	movq -1440(%rbp), %rax
	movq %rax, -784(%rbp)
	addq $16, -784(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -600(%rbp)
	movq -784(%rbp), %rax
	cmpq %rax, -600(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1216(%rbp)
	cmpq $1, -1216(%rbp)
	je then380317
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1008(%rbp)
	jmp end380318
then380317:
	movq $0, -752(%rbp)
	movq -752(%rbp), %rax
	movq %rax, -1008(%rbp)
end380318:
	movq -1008(%rbp), %rax
	movq %rax, -648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $131, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -328(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1488(%rbp)
	movq -1488(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq -8(%r15), %rax
	movq %rax, -184(%rbp)
end380296:
	movq -184(%rbp), %rax

	addq $1528, %rsp
	subq $344, %r15
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
	subq $1536, %rsp
	addq $328, %r15
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

	movq %rdi, -392(%rbp)
	movq %rsi, -1408(%rbp)
	movq $0, %rax
	cmpq -1408(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1416(%rbp)
	cmpq $1, -1416(%rbp)
	je then380319
	movq $1, -136(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -880(%rbp)
	addq $16, -880(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1008(%rbp)
	movq -880(%rbp), %rax
	cmpq %rax, -1008(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1312(%rbp)
	cmpq $1, -1312(%rbp)
	je then380321
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -640(%rbp)
	jmp end380322
then380321:
	movq $0, -856(%rbp)
	movq -856(%rbp), %rax
	movq %rax, -640(%rbp)
end380322:
	movq -640(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -832(%rbp)
	movq -832(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -128(%r15), %rax
	movq %rax, -256(%r15)
	movq $2, -280(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -272(%rbp)
	addq $16, -272(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1120(%rbp)
	movq -272(%rbp), %rax
	cmpq %rax, -1120(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1192(%rbp)
	cmpq $1, -1192(%rbp)
	je then380323
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -480(%rbp)
	jmp end380324
then380323:
	movq $0, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -480(%rbp)
end380324:
	movq -480(%rbp), %rax
	movq %rax, -936(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -752(%rbp)
	movq -752(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -168(%r15), %rax
	movq %rax, -8(%r15)
	movq $3, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1536(%rbp)
	cmpq $1, -1536(%rbp)
	je then380325
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -464(%rbp)
	jmp end380326
then380325:
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -464(%rbp)
end380326:
	movq -464(%rbp), %rax
	movq %rax, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -232(%r15)
	addq $16, free_ptr(%rip)
	movq -232(%r15), %r11
	movq $3, 0(%r11)
	movq -232(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -240(%r15), %rax
	movq %rax, -136(%r15)
	movq $4, -216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1112(%rbp)
	movq -1112(%rbp), %rax
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -296(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -296(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1424(%rbp)
	cmpq $1, -1424(%rbp)
	je then380327
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -720(%rbp)
	jmp end380328
then380327:
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -720(%rbp)
end380328:
	movq -720(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%r15)
	addq $16, free_ptr(%rip)
	movq -184(%r15), %r11
	movq $3, 0(%r11)
	movq -184(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -88(%r15), %rax
	movq %rax, -80(%r15)
	movq $5, -1080(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -1048(%rbp)
	addq $16, -1048(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1128(%rbp)
	movq -1048(%rbp), %rax
	cmpq %rax, -1128(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -672(%rbp)
	cmpq $1, -672(%rbp)
	je then380329
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1352(%rbp)
	jmp end380330
then380329:
	movq $0, -912(%rbp)
	movq -912(%rbp), %rax
	movq %rax, -1352(%rbp)
end380330:
	movq -1352(%rbp), %rax
	movq %rax, -760(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -328(%r15)
	movq -328(%r15), %r11
	movq -1080(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -920(%rbp)
	movq -920(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -328(%r15), %rax
	movq %rax, -216(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -1160(%rbp)
	addq $48, -1160(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1088(%rbp)
	movq -1160(%rbp), %rax
	cmpq %rax, -1088(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -488(%rbp)
	cmpq $1, -488(%rbp)
	je then380331
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -1184(%rbp)
	jmp end380332
then380331:
	movq $0, -848(%rbp)
	movq -848(%rbp), %rax
	movq %rax, -1184(%rbp)
end380332:
	movq -1184(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $48, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3979, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -248(%r15)
	movq -248(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -248(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -248(%r15), %r11
	movq -136(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -824(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -248(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -248(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -248(%r15), %rax
	movq %rax, -264(%r15)
	movq $-1, -360(%rbp)
	movq $-1, -1056(%rbp)
	movq $-1, -320(%rbp)
	movq $-1, -1136(%rbp)
	movq $-1, -384(%rbp)
	movq $-1, -1072(%rbp)
	movq $-1, -336(%rbp)
	movq $-1, -1152(%rbp)
	movq $-1, -376(%rbp)
	movq $-1, -1064(%rbp)
	movq $-1, -328(%rbp)
	movq $-1, -1144(%rbp)
	movq $-1, -368(%rbp)
	movq $-1, -288(%rbp)
	movq $-1, -1096(%rbp)
	movq $-1, -344(%rbp)
	movq $-1, -1168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -1176(%rbp)
	addq $144, -1176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1104(%rbp)
	movq -1176(%rbp), %rax
	cmpq %rax, -1104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -544(%rbp)
	cmpq $1, -544(%rbp)
	je then380333
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -1232(%rbp)
	jmp end380334
then380333:
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -1232(%rbp)
end380334:
	movq -1232(%rbp), %rax
	movq %rax, -248(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $144, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $35, 0(%r11)
	movq -304(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq -1168(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -296(%r15), %r11
	movq -344(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -1528(%rbp)
	movq -1528(%rbp), %rax
	movq %rax, -592(%rbp)
	movq -296(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -584(%rbp)
	movq -296(%r15), %r11
	movq -288(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -1360(%rbp)
	movq -1360(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -296(%r15), %r11
	movq -368(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -1288(%rbp)
	movq -296(%r15), %r11
	movq -1144(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -1456(%rbp)
	movq -296(%r15), %r11
	movq -328(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -1280(%rbp)
	movq -296(%r15), %r11
	movq -1064(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -600(%rbp)
	movq -600(%rbp), %rax
	movq %rax, -1448(%rbp)
	movq -296(%r15), %r11
	movq -376(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -296(%r15), %r11
	movq -1152(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -616(%rbp)
	movq -616(%rbp), %rax
	movq %rax, -1464(%rbp)
	movq -296(%r15), %r11
	movq -336(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -416(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -1296(%rbp)
	movq -296(%r15), %r11
	movq -1072(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -632(%rbp)
	movq -632(%rbp), %rax
	movq %rax, -1496(%rbp)
	movq -296(%r15), %r11
	movq -384(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -1224(%rbp)
	movq -1224(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -296(%r15), %r11
	movq -1136(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1392(%rbp)
	movq -1392(%rbp), %rax
	movq %rax, -712(%rbp)
	movq -296(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -296(%r15), %r11
	movq -1056(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1384(%rbp)
	movq -1384(%rbp), %rax
	movq %rax, -704(%rbp)
	movq -296(%r15), %r11
	movq -360(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1208(%rbp)
	movq -1208(%rbp), %rax
	movq %rax, -536(%rbp)
	movq -296(%r15), %rax
	movq %rax, -152(%r15)
	movq -264(%r15), %rax
	movq %rax, -176(%r15)
	movq -152(%r15), %rax
	movq %rax, -72(%r15)
	movq -264(%r15), %rax
	movq %rax, -208(%r15)
	movq -152(%r15), %rax
	movq %rax, -64(%r15)
	movq -264(%r15), %rax
	movq %rax, -40(%r15)
	movq -152(%r15), %rax
	movq %rax, -48(%r15)
	movq -264(%r15), %rax
	movq %rax, -272(%r15)
	movq -152(%r15), %rax
	movq %rax, -312(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -872(%rbp)
	addq $72, -872(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1032(%rbp)
	movq -872(%rbp), %rax
	cmpq %rax, -1032(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -528(%rbp)
	cmpq $1, -528(%rbp)
	je then380335
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -1400(%rbp)
	jmp end380336
then380335:
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -1400(%rbp)
end380336:
	movq -1400(%rbp), %rax
	movq %rax, -1512(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $72, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $32657, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -312(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -648(%rbp)
	movq -192(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1520(%rbp)
	movq -1520(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -192(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -576(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -664(%rbp)
	movq -192(%r15), %r11
	movq -40(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -736(%rbp)
	movq -736(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq -192(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1440(%rbp)
	movq -192(%r15), %r11
	movq -208(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -1240(%rbp)
	movq -192(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1432(%rbp)
	movq -192(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -744(%rbp)
	movq -744(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq -192(%r15), %rax
	movq %rax, -200(%r15)
	leaq function5(%rip), %rax
	movq %rax, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -424(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -800(%rbp)
	movq -800(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1336(%rbp)
	cmpq $1, -1336(%rbp)
	je then380337
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -448(%rbp)
	jmp end380338
then380337:
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -448(%rbp)
end380338:
	movq -448(%rbp), %rax
	movq %rax, -1488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -424(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1200(%rbp)
	movq -24(%r15), %rax
	movq %rax, -144(%r15)
	movq -144(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1368(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -904(%rbp)
	movq -904(%rbp), %rax
	movq %rax, -472(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -808(%rbp)
	addq $16, -808(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -984(%rbp)
	movq -808(%rbp), %rax
	cmpq %rax, -984(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -696(%rbp)
	cmpq $1, -696(%rbp)
	je then380339
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1376(%rbp)
	jmp end380340
then380339:
	movq $0, -1480(%rbp)
	movq -1480(%rbp), %rax
	movq %rax, -1376(%rbp)
end380340:
	movq -1376(%rbp), %rax
	movq %rax, -520(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -472(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1472(%rbp)
	movq -1472(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -104(%r15), %rax
	movq %rax, -288(%r15)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -776(%rbp)
	movq -288(%r15), %rdi
	movq -1408(%rbp), %rsi
	movq $1, %rdx
	callq *-776(%rbp)
	movq %rax, -864(%rbp)
	movq -144(%r15), %rdi
	movq -864(%rbp), %rsi
	callq *-1368(%rbp)
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -728(%rbp)
	jmp end380320
then380319:
	movq $42, -952(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -960(%rbp)
	addq $16, -960(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -792(%rbp)
	movq -960(%rbp), %rax
	cmpq %rax, -792(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -656(%rbp)
	cmpq $1, -656(%rbp)
	je then380341
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1504(%rbp)
	jmp end380342
then380341:
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -1504(%rbp)
end380342:
	movq -1504(%rbp), %rax
	movq %rax, -784(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -320(%r15)
	movq -320(%r15), %r11
	movq -952(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -320(%r15), %rax
	movq %rax, -728(%rbp)
end380320:
	movq -728(%rbp), %rax

	addq $1536, %rsp
	subq $328, %r15
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
	subq $80, %rsp
	addq $0, %r15

	movq %rdi, -48(%rbp)
	movq %rsi, -80(%rbp)
	movq %rdx, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -64(%rbp)
	movq -64(%rbp), %rax

	addq $80, %rsp
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
	subq $672, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $232, %r15
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

	leaq function0(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -624(%rbp)
	cmpq $1, -624(%rbp)
	je then380343
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -312(%rbp)
	jmp end380344
then380343:
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -312(%rbp)
end380344:
	movq -312(%rbp), %rax
	movq %rax, -304(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -176(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -48(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -464(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -408(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -408(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -368(%rbp)
	cmpq $1, -368(%rbp)
	je then380345
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -328(%rbp)
	jmp end380346
then380345:
	movq $0, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -328(%rbp)
end380346:
	movq -328(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -160(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -232(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -576(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -536(%rbp)
	addq $16, -536(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -416(%rbp)
	movq -536(%rbp), %rax
	cmpq %rax, -416(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then380347
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -360(%rbp)
	jmp end380348
then380347:
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -360(%rbp)
end380348:
	movq -360(%rbp), %rax
	movq %rax, -432(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq -576(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -16(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -120(%rbp)
	leaq function3(%rip), %rax
	movq %rax, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -568(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -280(%rbp)
	addq $16, -280(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -288(%rbp)
	movq -280(%rbp), %rax
	cmpq %rax, -288(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -384(%rbp)
	cmpq $1, -384(%rbp)
	je then380349
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end380350
then380349:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -72(%rbp)
end380350:
	movq -72(%rbp), %rax
	movq %rax, -264(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -232(%r15)
	addq $16, free_ptr(%rip)
	movq -232(%r15), %r11
	movq $3, 0(%r11)
	movq -232(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -568(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -64(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -608(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -552(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -496(%rbp)
	addq $16, -496(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -424(%rbp)
	movq -496(%rbp), %rax
	cmpq %rax, -424(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then380351
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -352(%rbp)
	jmp end380352
then380351:
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -352(%rbp)
end380352:
	movq -352(%rbp), %rax
	movq %rax, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -552(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -168(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -600(%rbp)
	leaq function5(%rip), %rax
	movq %rax, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -592(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -216(%rbp)
	addq $16, -216(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -272(%rbp)
	movq -216(%rbp), %rax
	cmpq %rax, -272(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -376(%rbp)
	cmpq $1, -376(%rbp)
	je then380353
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -88(%rbp)
	jmp end380354
then380353:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -88(%rbp)
end380354:
	movq -88(%rbp), %rax
	movq %rax, -520(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $3, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -104(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%rbp)
	movq -224(%r15), %rdi
	movq $20, %rsi
	callq *-80(%rbp)
	movq %rax, -88(%r15)
	movq -128(%r15), %rdi
	movq $20, %rsi
	movq -88(%r15), %rdx
	callq *-600(%rbp)
	movq %rax, -144(%r15)
	movq -176(%r15), %rdi
	movq $20, %rsi
	movq -144(%r15), %rdx
	callq *-608(%rbp)
	movq %rax, -40(%r15)
	movq -200(%r15), %rdi
	movq $20, %rsi
	movq -40(%r15), %rdx
	callq *-120(%rbp)
	movq %rax, -112(%r15)
	movq -32(%r15), %rdi
	movq $20, %rsi
	movq -112(%r15), %rdx
	callq *-232(%rbp)
	movq %rax, -192(%r15)
	movq -208(%r15), %rdi
	movq $20, %rsi
	movq -192(%r15), %rdx
	callq *-464(%rbp)
	movq %rax, -136(%r15)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -216(%r15)
	movq -216(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $232, %r15
	addq $672, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
