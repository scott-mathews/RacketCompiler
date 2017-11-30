	.globl function0
function0:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $1344, %rsp
	addq $296, %r15
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

	movq %rdi, -128(%rbp)
	movq %rsi, -8(%r15)
	movq $0, %rax
	cmpq -128(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -440(%rbp)
	cmpq $1, -440(%rbp)
	je then485177
	movq $1, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -96(%rbp)
	addq $16, -96(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -96(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -448(%rbp)
	cmpq $1, -448(%rbp)
	je then485179
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -984(%rbp)
	jmp end485180
then485179:
	movq $0, -856(%rbp)
	movq -856(%rbp), %rax
	movq %rax, -984(%rbp)
end485180:
	movq -984(%rbp), %rax
	movq %rax, -328(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -816(%rbp)
	movq -240(%r15), %rax
	movq %rax, -104(%r15)
	movq $2, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -112(%rbp)
	addq $16, -112(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -72(%rbp)
	movq -112(%rbp), %rax
	cmpq %rax, -72(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -624(%rbp)
	cmpq $1, -624(%rbp)
	je then485181
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -528(%rbp)
	jmp end485182
then485181:
	movq $0, -912(%rbp)
	movq -912(%rbp), %rax
	movq %rax, -528(%rbp)
end485182:
	movq -528(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $16, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $3, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -104(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -200(%rbp)
	movq -152(%r15), %rax
	movq %rax, -280(%r15)
	movq $3, -960(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -808(%rbp)
	movq -808(%rbp), %rax
	movq %rax, -304(%rbp)
	addq $16, -304(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -208(%rbp)
	movq -304(%rbp), %rax
	cmpq %rax, -208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1312(%rbp)
	cmpq $1, -1312(%rbp)
	je then485183
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -616(%rbp)
	jmp end485184
then485183:
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -616(%rbp)
end485184:
	movq -616(%rbp), %rax
	movq %rax, -840(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%r15)
	addq $16, free_ptr(%rip)
	movq -216(%r15), %r11
	movq $3, 0(%r11)
	movq -216(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq -960(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -920(%rbp)
	movq -920(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -224(%r15), %rax
	movq %rax, -288(%r15)
	movq $4, -792(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -848(%rbp)
	movq -848(%rbp), %rax
	movq %rax, -800(%rbp)
	addq $16, -800(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -248(%rbp)
	movq -800(%rbp), %rax
	cmpq %rax, -248(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -376(%rbp)
	cmpq $1, -376(%rbp)
	je then485185
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1304(%rbp)
	jmp end485186
then485185:
	movq $0, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -1304(%rbp)
end485186:
	movq -1304(%rbp), %rax
	movq %rax, -904(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -136(%r15)
	movq -136(%r15), %r11
	movq -792(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -160(%rbp)
	movq -160(%rbp), %rax
	movq %rax, -936(%rbp)
	movq -136(%r15), %rax
	movq %rax, -88(%r15)
	movq $5, -832(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -896(%rbp)
	addq $16, -896(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -944(%rbp)
	movq -896(%rbp), %rax
	cmpq %rax, -944(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -432(%rbp)
	cmpq $1, -432(%rbp)
	je then485187
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -992(%rbp)
	jmp end485188
then485187:
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -992(%rbp)
end485188:
	movq -992(%rbp), %rax
	movq %rax, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $16, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq -832(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -280(%rbp)
	movq -280(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -296(%r15), %rax
	movq %rax, -72(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -880(%rbp)
	addq $48, -880(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -976(%rbp)
	movq -880(%rbp), %rax
	cmpq %rax, -976(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1328(%rbp)
	cmpq $1, -1328(%rbp)
	je then485189
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -416(%rbp)
	jmp end485190
then485189:
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -416(%rbp)
end485190:
	movq -416(%rbp), %rax
	movq %rax, -872(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $48, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3979, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -192(%rbp)
	movq -32(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -32(%r15), %r11
	movq -288(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -1040(%rbp)
	movq -32(%r15), %r11
	movq -280(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq -32(%r15), %r11
	movq -104(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -1032(%rbp)
	movq -32(%r15), %rax
	movq %rax, -48(%r15)
	movq $-1, -488(%rbp)
	movq $-1, -1016(%rbp)
	movq $-1, -704(%rbp)
	movq $-1, -1216(%rbp)
	movq $-1, -520(%rbp)
	movq $-1, -1048(%rbp)
	movq $-1, -696(%rbp)
	movq $-1, -1208(%rbp)
	movq $-1, -512(%rbp)
	movq $-1, -400(%rbp)
	movq $-1, -1288(%rbp)
	movq $-1, -592(%rbp)
	movq $-1, -1112(%rbp)
	movq $-1, -368(%rbp)
	movq $-1, -648(%rbp)
	movq $-1, -568(%rbp)
	movq $-1, -1096(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -1120(%rbp)
	addq $144, -1120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1296(%rbp)
	movq -1120(%rbp), %rax
	cmpq %rax, -1296(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then485191
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -768(%rbp)
	jmp end485192
then485191:
	movq $0, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -768(%rbp)
end485192:
	movq -768(%rbp), %rax
	movq %rax, -480(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $144, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $35, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -744(%rbp)
	movq -744(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -40(%r15), %r11
	movq -568(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq -40(%r15), %r11
	movq -648(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -736(%rbp)
	movq -736(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq -40(%r15), %r11
	movq -368(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq -40(%r15), %r11
	movq -1112(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1272(%rbp)
	movq -1272(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -40(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -584(%rbp)
	movq -40(%r15), %r11
	movq -1288(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -656(%rbp)
	movq -656(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -40(%r15), %r11
	movq -400(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -1176(%rbp)
	movq -40(%r15), %r11
	movq -512(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -544(%rbp)
	movq -40(%r15), %r11
	movq -1208(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -728(%rbp)
	movq -40(%r15), %r11
	movq -696(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -1224(%rbp)
	movq -1224(%rbp), %rax
	movq %rax, -536(%rbp)
	movq -40(%r15), %r11
	movq -1048(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -720(%rbp)
	movq -40(%r15), %r11
	movq -520(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1144(%rbp)
	movq -40(%r15), %r11
	movq -1216(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -1336(%rbp)
	movq -40(%r15), %r11
	movq -704(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -560(%rbp)
	movq -40(%r15), %r11
	movq -1016(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -752(%rbp)
	movq -40(%r15), %r11
	movq -488(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -40(%r15), %rax
	movq %rax, -120(%r15)
	movq -48(%r15), %rax
	movq %rax, -112(%r15)
	movq -120(%r15), %rax
	movq %rax, -56(%r15)
	movq -48(%r15), %rax
	movq %rax, -128(%r15)
	movq -120(%r15), %rax
	movq %rax, -64(%r15)
	movq -48(%r15), %rax
	movq %rax, -248(%r15)
	movq -120(%r15), %rax
	movq %rax, -96(%r15)
	movq -48(%r15), %rax
	movq %rax, -160(%r15)
	movq -120(%r15), %rax
	movq %rax, -232(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -864(%rbp)
	addq $72, -864(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -312(%rbp)
	movq -864(%rbp), %rax
	cmpq %rax, -312(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then485193
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -760(%rbp)
	jmp end485194
then485193:
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -760(%rbp)
end485194:
	movq -760(%rbp), %rax
	movq %rax, -712(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $72, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $32657, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1000(%rbp)
	movq -176(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -664(%rbp)
	movq -664(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -176(%r15), %r11
	movq -96(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -176(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -600(%rbp)
	movq -176(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -176(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -1200(%rbp)
	movq -176(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -176(%r15), %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -176(%r15), %rax
	movq %rax, -184(%r15)
	leaq function0(%rip), %rax
	movq %rax, -56(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -1240(%rbp)
	movq -128(%rbp), %rdi
	movq $1, %rsi
	callq *-1240(%rbp)
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rdi
	movq -8(%r15), %rsi
	callq *-56(%rbp)
	movq %rax, -272(%r15)
	movq -272(%r15), %rax
	movq %rax, -1168(%rbp)
	jmp end485178
then485177:
	movq -8(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $16, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -80(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -80(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1104(%rbp)
	cmpq $1, -1104(%rbp)
	je then485195
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -576(%rbp)
	jmp end485196
then485195:
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -576(%rbp)
end485196:
	movq -576(%rbp), %rax
	movq %rax, -928(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $131, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -824(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -208(%r15), %rax
	movq %rax, -1168(%rbp)
end485178:
	movq -1168(%rbp), %rax

	addq $1344, %rsp
	subq $296, %r15
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
	subq $1344, %rsp
	addq $296, %r15
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

	movq %rdi, -1104(%rbp)
	movq %rsi, -136(%r15)
	movq $0, %rax
	cmpq -1104(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then485197
	movq $1, -1128(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -1136(%rbp)
	addq $16, -1136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1120(%rbp)
	movq -1136(%rbp), %rax
	cmpq %rax, -1120(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then485199
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -872(%rbp)
	jmp end485200
then485199:
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -872(%rbp)
end485200:
	movq -872(%rbp), %rax
	movq %rax, -1344(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %r11
	movq -1128(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -896(%rbp)
	movq -168(%r15), %rax
	movq %rax, -24(%r15)
	movq $2, -1256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -1248(%rbp)
	addq $16, -1248(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1152(%rbp)
	movq -1248(%rbp), %rax
	cmpq %rax, -1152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then485201
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1088(%rbp)
	jmp end485202
then485201:
	movq $0, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -1088(%rbp)
end485202:
	movq -1088(%rbp), %rax
	movq %rax, -888(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -1256(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -776(%rbp)
	movq -72(%r15), %rax
	movq %rax, -280(%r15)
	movq $3, -1216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1208(%rbp)
	addq $16, -1208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1320(%rbp)
	movq -1208(%rbp), %rax
	cmpq %rax, -1320(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -456(%rbp)
	cmpq $1, -456(%rbp)
	je then485203
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -424(%rbp)
	jmp end485204
then485203:
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -424(%rbp)
end485204:
	movq -424(%rbp), %rax
	movq %rax, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -1216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -64(%rbp)
	movq -88(%r15), %rax
	movq %rax, -184(%r15)
	movq $4, -504(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -1184(%rbp)
	addq $16, -1184(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1288(%rbp)
	movq -1184(%rbp), %rax
	cmpq %rax, -1288(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1096(%rbp)
	cmpq $1, -1096(%rbp)
	je then485205
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -448(%rbp)
	jmp end485206
then485205:
	movq $0, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -448(%rbp)
end485206:
	movq -448(%rbp), %rax
	movq %rax, -720(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -504(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -408(%rbp)
	movq -104(%r15), %rax
	movq %rax, -296(%r15)
	movq $5, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -640(%rbp)
	addq $16, -640(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1232(%rbp)
	movq -640(%rbp), %rax
	cmpq %rax, -1232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -864(%rbp)
	cmpq $1, -864(%rbp)
	je then485207
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -336(%rbp)
	jmp end485208
then485207:
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -336(%rbp)
end485208:
	movq -336(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq -656(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -224(%r15), %rax
	movq %rax, -56(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1192(%rbp)
	movq -1192(%rbp), %rax
	movq %rax, -648(%rbp)
	addq $48, -648(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -560(%rbp)
	movq -648(%rbp), %rax
	cmpq %rax, -560(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -960(%rbp)
	cmpq $1, -960(%rbp)
	je then485209
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end485210
then485209:
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -264(%rbp)
end485210:
	movq -264(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $48, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3979, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -32(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -32(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -32(%r15), %r11
	movq -280(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -800(%rbp)
	movq -800(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -952(%rbp)
	movq -952(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -32(%r15), %rax
	movq %rax, -96(%r15)
	movq $-1, -1296(%rbp)
	movq $-1, -488(%rbp)
	movq $-1, -1200(%rbp)
	movq $-1, -592(%rbp)
	movq $-1, -1312(%rbp)
	movq $-1, -496(%rbp)
	movq $-1, -520(%rbp)
	movq $-1, -1280(%rbp)
	movq $-1, -1328(%rbp)
	movq $-1, -1168(%rbp)
	movq $-1, -544(%rbp)
	movq $-1, -1272(%rbp)
	movq $-1, -624(%rbp)
	movq $-1, -1160(%rbp)
	movq $-1, -536(%rbp)
	movq $-1, -1264(%rbp)
	movq $-1, -616(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1176(%rbp)
	movq -1176(%rbp), %rax
	movq %rax, -632(%rbp)
	addq $144, -632(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1224(%rbp)
	movq -632(%rbp), %rax
	cmpq %rax, -1224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1040(%rbp)
	cmpq $1, -1040(%rbp)
	je then485211
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end485212
then485211:
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -280(%rbp)
end485212:
	movq -280(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%r15)
	addq $144, free_ptr(%rip)
	movq -248(%r15), %r11
	movq $35, 0(%r11)
	movq -248(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -616(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -232(%r15), %r11
	movq -1264(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -104(%rbp)
	movq -232(%r15), %r11
	movq -536(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1016(%rbp)
	movq -1016(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -232(%r15), %r11
	movq -1160(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -232(%r15), %r11
	movq -624(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -400(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -912(%rbp)
	movq -232(%r15), %r11
	movq -1272(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -744(%rbp)
	movq -232(%r15), %r11
	movq -544(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -120(%rbp)
	movq -120(%rbp), %rax
	movq %rax, -832(%rbp)
	movq -232(%r15), %r11
	movq -1168(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq -232(%r15), %r11
	movq -1328(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -856(%rbp)
	movq -232(%r15), %r11
	movq -1280(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -232(%r15), %r11
	movq -520(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -848(%rbp)
	movq -232(%r15), %r11
	movq -496(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -232(%r15), %r11
	movq -1312(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -136(%rbp)
	movq -232(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -608(%rbp)
	movq -232(%r15), %r11
	movq -1200(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -664(%rbp)
	movq -664(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -232(%r15), %r11
	movq -488(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -232(%r15), %r11
	movq -1296(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -232(%r15), %rax
	movq %rax, -8(%r15)
	movq -96(%r15), %rax
	movq %rax, -256(%r15)
	movq -8(%r15), %rax
	movq %rax, -200(%r15)
	movq -96(%r15), %rax
	movq %rax, -160(%r15)
	movq -8(%r15), %rax
	movq %rax, -192(%r15)
	movq -96(%r15), %rax
	movq %rax, -176(%r15)
	movq -8(%r15), %rax
	movq %rax, -120(%r15)
	movq -96(%r15), %rax
	movq %rax, -128(%r15)
	movq -8(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -368(%rbp)
	addq $72, -368(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -808(%rbp)
	movq -368(%rbp), %rax
	cmpq %rax, -808(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1080(%rbp)
	cmpq $1, -1080(%rbp)
	je then485213
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -440(%rbp)
	jmp end485214
then485213:
	movq $0, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -440(%rbp)
end485214:
	movq -440(%rbp), %rax
	movq %rax, -984(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -288(%r15)
	addq $72, free_ptr(%rip)
	movq -288(%r15), %r11
	movq $32657, 0(%r11)
	movq -288(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -792(%rbp)
	movq -792(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -208(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -208(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -208(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -736(%rbp)
	movq -208(%r15), %r11
	movq -192(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -920(%rbp)
	movq -208(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -752(%rbp)
	movq -208(%r15), %r11
	movq -200(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -904(%rbp)
	movq -208(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -760(%rbp)
	movq -208(%r15), %rax
	movq %rax, -144(%r15)
	leaq function1(%rip), %rax
	movq %rax, -992(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -432(%rbp)
	movq -1104(%rbp), %rdi
	movq $1, %rsi
	callq *-432(%rbp)
	movq %rax, -728(%rbp)
	movq -728(%rbp), %rdi
	movq -136(%r15), %rsi
	callq *-992(%rbp)
	movq %rax, -240(%r15)
	movq -240(%r15), %rax
	movq %rax, -696(%rbp)
	jmp end485198
then485197:
	movq -136(%r15), %rax
	movq %rax, -272(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -1112(%rbp)
	addq $16, -1112(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -480(%rbp)
	movq -1112(%rbp), %rax
	cmpq %rax, -480(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then485215
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -712(%rbp)
	jmp end485216
then485215:
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -712(%rbp)
end485216:
	movq -712(%rbp), %rax
	movq %rax, -600(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $131, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -216(%r15)
	movq -216(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -576(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -1304(%rbp)
	movq -216(%r15), %rax
	movq %rax, -696(%rbp)
end485198:
	movq -696(%rbp), %rax

	addq $1344, %rsp
	subq $296, %r15
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
	subq $1344, %rsp
	addq $296, %r15
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

	movq %rdi, -384(%rbp)
	movq %rsi, -280(%r15)
	movq $0, %rax
	cmpq -384(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1000(%rbp)
	cmpq $1, -1000(%rbp)
	je then485217
	movq $1, -624(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -640(%rbp)
	addq $16, -640(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -680(%rbp)
	movq -640(%rbp), %rax
	cmpq %rax, -680(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1032(%rbp)
	cmpq $1, -1032(%rbp)
	je then485219
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -280(%rbp)
	jmp end485220
then485219:
	movq $0, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -280(%rbp)
end485220:
	movq -280(%rbp), %rax
	movq %rax, -176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -624(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -48(%rbp)
	movq -208(%r15), %rax
	movq %rax, -176(%r15)
	movq $2, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -664(%rbp)
	addq $16, -664(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -600(%rbp)
	movq -664(%rbp), %rax
	cmpq %rax, -600(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1128(%rbp)
	cmpq $1, -1128(%rbp)
	je then485221
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -392(%rbp)
	jmp end485222
then485221:
	movq $0, -832(%rbp)
	movq -832(%rbp), %rax
	movq %rax, -392(%rbp)
end485222:
	movq -392(%rbp), %rax
	movq %rax, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -248(%r15)
	movq -248(%r15), %r11
	movq -656(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -96(%rbp)
	movq -248(%r15), %rax
	movq %rax, -8(%r15)
	movq $3, -696(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1296(%rbp)
	movq -1296(%rbp), %rax
	movq %rax, -704(%rbp)
	addq $16, -704(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -648(%rbp)
	movq -704(%rbp), %rax
	cmpq %rax, -648(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1224(%rbp)
	cmpq $1, -1224(%rbp)
	je then485223
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -512(%rbp)
	jmp end485224
then485223:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -512(%rbp)
end485224:
	movq -512(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $16, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -696(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -232(%r15), %rax
	movq %rax, -184(%r15)
	movq $4, -608(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -616(%rbp)
	addq $16, -616(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -672(%rbp)
	movq -616(%rbp), %rax
	cmpq %rax, -672(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -984(%rbp)
	cmpq $1, -984(%rbp)
	je then485225
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1264(%rbp)
	jmp end485226
then485225:
	movq $0, -72(%rbp)
	movq -72(%rbp), %rax
	movq %rax, -1264(%rbp)
end485226:
	movq -1264(%rbp), %rax
	movq %rax, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%r15)
	addq $16, free_ptr(%rip)
	movq -152(%r15), %r11
	movq $3, 0(%r11)
	movq -152(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq -608(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -928(%rbp)
	movq -96(%r15), %rax
	movq %rax, -144(%r15)
	movq $5, -1312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -1288(%rbp)
	addq $16, -1288(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1328(%rbp)
	movq -1288(%rbp), %rax
	cmpq %rax, -1328(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -504(%rbp)
	cmpq $1, -504(%rbp)
	je then485227
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1232(%rbp)
	jmp end485228
then485227:
	movq $0, -824(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -1232(%rbp)
end485228:
	movq -1232(%rbp), %rax
	movq %rax, -240(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -1312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -184(%rbp)
	movq -104(%r15), %rax
	movq %rax, -88(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -632(%rbp)
	addq $48, -632(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1336(%rbp)
	movq -632(%rbp), %rax
	cmpq %rax, -1336(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -544(%rbp)
	cmpq $1, -544(%rbp)
	je then485229
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -312(%rbp)
	jmp end485230
then485229:
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -312(%rbp)
end485230:
	movq -312(%rbp), %rax
	movq %rax, -88(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%r15)
	addq $48, free_ptr(%rip)
	movq -128(%r15), %r11
	movq $3979, 0(%r11)
	movq -128(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -40(%r15), %r11
	movq -144(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1088(%rbp)
	movq -1088(%rbp), %rax
	movq %rax, -448(%rbp)
	movq -40(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -40(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1096(%rbp)
	movq -1096(%rbp), %rax
	movq %rax, -520(%rbp)
	movq -40(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -40(%r15), %rax
	movq %rax, -192(%r15)
	movq $-1, -808(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -200(%rbp)
	movq $-1, -864(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -728(%rbp)
	movq $-1, -208(%rbp)
	movq $-1, -872(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -736(%rbp)
	movq $-1, -216(%rbp)
	movq $-1, -880(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -744(%rbp)
	movq $-1, -224(%rbp)
	movq $-1, -848(%rbp)
	movq $-1, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -792(%rbp)
	addq $144, -792(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -888(%rbp)
	movq -792(%rbp), %rax
	cmpq %rax, -888(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -592(%rbp)
	cmpq $1, -592(%rbp)
	je then485231
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -1272(%rbp)
	jmp end485232
then485231:
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -1272(%rbp)
end485232:
	movq -1272(%rbp), %rax
	movq %rax, -400(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $144, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $35, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -1208(%rbp)
	movq -1208(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -160(%r15), %r11
	movq -848(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -160(%r15), %r11
	movq -224(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1192(%rbp)
	movq -1192(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -160(%r15), %r11
	movq -744(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -160(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1112(%rbp)
	movq -1112(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -160(%r15), %r11
	movq -880(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -560(%rbp)
	movq -160(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -160(%r15), %r11
	movq -736(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -160(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -160(%r15), %r11
	movq -872(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -1168(%rbp)
	movq -160(%r15), %r11
	movq -208(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -160(%r15), %r11
	movq -728(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -1152(%rbp)
	movq -160(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq -160(%r15), %r11
	movq -864(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -1176(%rbp)
	movq -160(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1104(%rbp)
	movq -1104(%rbp), %rax
	movq %rax, -992(%rbp)
	movq -160(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -536(%rbp)
	movq -160(%r15), %r11
	movq -808(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -160(%r15), %rax
	movq %rax, -240(%r15)
	movq -192(%r15), %rax
	movq %rax, -272(%r15)
	movq -240(%r15), %rax
	movq %rax, -256(%r15)
	movq -192(%r15), %rax
	movq %rax, -296(%r15)
	movq -240(%r15), %rax
	movq %rax, -24(%r15)
	movq -192(%r15), %rax
	movq %rax, -72(%r15)
	movq -240(%r15), %rax
	movq %rax, -288(%r15)
	movq -192(%r15), %rax
	movq %rax, -64(%r15)
	movq -240(%r15), %rax
	movq %rax, -16(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -800(%rbp)
	addq $72, -800(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -912(%rbp)
	movq -800(%rbp), %rax
	cmpq %rax, -912(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -360(%rbp)
	cmpq $1, -360(%rbp)
	je then485233
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -952(%rbp)
	jmp end485234
then485233:
	movq $0, -1080(%rbp)
	movq -1080(%rbp), %rax
	movq %rax, -952(%rbp)
end485234:
	movq -952(%rbp), %rax
	movq %rax, -576(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%r15)
	addq $72, free_ptr(%rip)
	movq -168(%r15), %r11
	movq $32657, 0(%r11)
	movq -168(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -32(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -32(%r15), %r11
	movq -288(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -32(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -32(%r15), %r11
	movq -24(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -32(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -32(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -408(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -976(%rbp)
	movq -32(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1120(%rbp)
	movq -32(%r15), %rax
	movq %rax, -216(%r15)
	leaq function2(%rip), %rax
	movq %rax, -584(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -904(%rbp)
	movq -384(%rbp), %rdi
	movq $1, %rsi
	callq *-904(%rbp)
	movq %rax, -712(%rbp)
	movq -712(%rbp), %rdi
	movq -280(%r15), %rsi
	callq *-584(%rbp)
	movq %rax, -136(%r15)
	movq -136(%r15), %rax
	movq %rax, -416(%rbp)
	jmp end485218
then485217:
	movq -280(%r15), %rax
	movq %rax, -112(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -720(%rbp)
	addq $16, -720(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -856(%rbp)
	movq -720(%rbp), %rax
	cmpq %rax, -856(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -936(%rbp)
	cmpq $1, -936(%rbp)
	je then485235
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -424(%rbp)
	jmp end485236
then485235:
	movq $0, -752(%rbp)
	movq -752(%rbp), %rax
	movq %rax, -424(%rbp)
end485236:
	movq -424(%rbp), %rax
	movq %rax, -920(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%r15)
	addq $16, free_ptr(%rip)
	movq -56(%r15), %r11
	movq $131, 0(%r11)
	movq -56(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq -112(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -232(%rbp)
	movq -224(%r15), %rax
	movq %rax, -416(%rbp)
end485218:
	movq -416(%rbp), %rax

	addq $1344, %rsp
	subq $296, %r15
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
	subq $1344, %rsp
	addq $296, %r15
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

	movq %rdi, -248(%rbp)
	movq %rsi, -112(%r15)
	movq $0, %rax
	cmpq -248(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -344(%rbp)
	cmpq $1, -344(%rbp)
	je then485237
	movq $1, -824(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -1104(%rbp)
	addq $16, -1104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -960(%rbp)
	movq -1104(%rbp), %rax
	cmpq %rax, -960(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -616(%rbp)
	cmpq $1, -616(%rbp)
	je then485239
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1048(%rbp)
	jmp end485240
then485239:
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -1048(%rbp)
end485240:
	movq -1048(%rbp), %rax
	movq %rax, -488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -152(%r15)
	movq -152(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -152(%r15), %rax
	movq %rax, -248(%r15)
	movq $2, -384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -952(%rbp)
	movq -952(%rbp), %rax
	movq %rax, -376(%rbp)
	addq $16, -376(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -944(%rbp)
	movq -376(%rbp), %rax
	cmpq %rax, -944(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -584(%rbp)
	cmpq $1, -584(%rbp)
	je then485241
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1208(%rbp)
	jmp end485242
then485241:
	movq $0, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -1208(%rbp)
end485242:
	movq -1208(%rbp), %rax
	movq %rax, -400(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -384(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -48(%r15), %rax
	movq %rax, -104(%r15)
	movq $3, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -360(%rbp)
	addq $16, -360(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1152(%rbp)
	movq -360(%rbp), %rax
	cmpq %rax, -1152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1280(%rbp)
	cmpq $1, -1280(%rbp)
	je then485243
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -576(%rbp)
	jmp end485244
then485243:
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -576(%rbp)
end485244:
	movq -576(%rbp), %rax
	movq %rax, -368(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%r15)
	addq $16, free_ptr(%rip)
	movq -176(%r15), %r11
	movq $3, 0(%r11)
	movq -176(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -872(%rbp)
	movq -24(%r15), %rax
	movq %rax, -144(%r15)
	movq $4, -216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -256(%rbp)
	addq $16, -256(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -416(%rbp)
	movq -256(%rbp), %rax
	cmpq %rax, -416(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1248(%rbp)
	cmpq $1, -1248(%rbp)
	je then485245
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -720(%rbp)
	jmp end485246
then485245:
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -720(%rbp)
end485246:
	movq -720(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $16, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $3, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -160(%r15), %rax
	movq %rax, -64(%r15)
	movq $5, -48(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -56(%rbp)
	addq $16, -56(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -112(%rbp)
	movq -56(%rbp), %rax
	cmpq %rax, -112(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1168(%rbp)
	cmpq $1, -1168(%rbp)
	je then485247
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -712(%rbp)
	jmp end485248
then485247:
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -712(%rbp)
end485248:
	movq -712(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq -48(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -1112(%rbp)
	movq -240(%r15), %rax
	movq %rax, -72(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -192(%rbp)
	addq $48, -192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -104(%rbp)
	movq -192(%rbp), %rax
	cmpq %rax, -104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1320(%rbp)
	cmpq $1, -1320(%rbp)
	je then485249
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -680(%rbp)
	jmp end485250
then485249:
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -680(%rbp)
end485250:
	movq -680(%rbp), %rax
	movq %rax, -984(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -288(%r15)
	addq $48, free_ptr(%rip)
	movq -288(%r15), %r11
	movq $3979, 0(%r11)
	movq -288(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -72(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq -184(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -864(%rbp)
	movq -184(%r15), %r11
	movq -144(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -184(%r15), %r11
	movq -104(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -288(%rbp)
	movq -288(%rbp), %rax
	movq %rax, -856(%rbp)
	movq -184(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -184(%r15), %rax
	movq %rax, -200(%r15)
	movq $-1, -832(%rbp)
	movq $-1, -64(%rbp)
	movq $-1, -776(%rbp)
	movq $-1, -120(%rbp)
	movq $-1, -848(%rbp)
	movq $-1, -88(%rbp)
	movq $-1, -800(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -840(%rbp)
	movq $-1, -80(%rbp)
	movq $-1, -792(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -184(%rbp)
	movq $-1, -72(%rbp)
	movq $-1, -784(%rbp)
	movq $-1, -128(%rbp)
	movq $-1, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -752(%rbp)
	movq -752(%rbp), %rax
	movq %rax, -176(%rbp)
	addq $144, -176(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -176(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1312(%rbp)
	cmpq $1, -1312(%rbp)
	je then485251
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -672(%rbp)
	jmp end485252
then485251:
	movq $0, -520(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -672(%rbp)
end485252:
	movq -672(%rbp), %rax
	movq %rax, -976(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $144, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $35, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -192(%r15), %r11
	movq -128(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -912(%rbp)
	movq -192(%r15), %r11
	movq -784(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq -192(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -528(%rbp)
	movq -192(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -904(%rbp)
	movq -904(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -192(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -1144(%rbp)
	movq -192(%r15), %r11
	movq -792(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -992(%rbp)
	movq -192(%r15), %r11
	movq -80(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -512(%rbp)
	movq -192(%r15), %r11
	movq -840(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -192(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -504(%rbp)
	movq -192(%r15), %r11
	movq -800(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -192(%r15), %r11
	movq -88(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -1336(%rbp)
	movq -192(%r15), %r11
	movq -848(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -1232(%rbp)
	movq -192(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -728(%rbp)
	movq -192(%r15), %r11
	movq -776(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1192(%rbp)
	movq -1192(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -192(%r15), %r11
	movq -64(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -1328(%rbp)
	movq -192(%r15), %r11
	movq -832(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -600(%rbp)
	movq -600(%rbp), %rax
	movq %rax, -1224(%rbp)
	movq -192(%r15), %rax
	movq %rax, -168(%r15)
	movq -200(%r15), %rax
	movq %rax, -136(%r15)
	movq -168(%r15), %rax
	movq %rax, -216(%r15)
	movq -200(%r15), %rax
	movq %rax, -272(%r15)
	movq -168(%r15), %rax
	movq %rax, -56(%r15)
	movq -200(%r15), %rax
	movq %rax, -128(%r15)
	movq -168(%r15), %rax
	movq %rax, -16(%r15)
	movq -200(%r15), %rax
	movq %rax, -32(%r15)
	movq -168(%r15), %rax
	movq %rax, -208(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -464(%rbp)
	addq $72, -464(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -280(%rbp)
	movq -464(%rbp), %rax
	cmpq %rax, -280(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1344(%rbp)
	cmpq $1, -1344(%rbp)
	je then485253
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -736(%rbp)
	jmp end485254
then485253:
	movq $0, -648(%rbp)
	movq -648(%rbp), %rax
	movq %rax, -736(%rbp)
end485254:
	movq -736(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -296(%r15)
	addq $72, free_ptr(%rip)
	movq -296(%r15), %r11
	movq $32657, 0(%r11)
	movq -296(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -208(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq -232(%r15), %r11
	movq -32(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1304(%rbp)
	movq -1304(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -232(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -664(%rbp)
	movq -232(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -592(%rbp)
	movq -232(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -1240(%rbp)
	movq -232(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1296(%rbp)
	movq -1296(%rbp), %rax
	movq %rax, -1176(%rbp)
	movq -232(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -656(%rbp)
	movq -232(%r15), %r11
	movq -136(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1288(%rbp)
	movq -1288(%rbp), %rax
	movq %rax, -568(%rbp)
	movq -232(%r15), %rax
	movq %rax, -224(%r15)
	leaq function3(%rip), %rax
	movq %rax, -896(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -448(%rbp)
	movq -248(%rbp), %rdi
	movq $1, %rsi
	callq *-448(%rbp)
	movq %rax, -200(%rbp)
	movq -200(%rbp), %rdi
	movq -112(%r15), %rsi
	callq *-896(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %rax
	movq %rax, -920(%rbp)
	jmp end485238
then485237:
	movq -112(%r15), %rax
	movq %rax, -120(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -152(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -744(%rbp)
	addq $16, -744(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -808(%rbp)
	movq -744(%rbp), %rax
	cmpq %rax, -808(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -408(%rbp)
	cmpq $1, -408(%rbp)
	je then485255
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1120(%rbp)
	jmp end485256
then485255:
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -1120(%rbp)
end485256:
	movq -1120(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $131, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -120(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -88(%r15), %rax
	movq %rax, -920(%rbp)
end485238:
	movq -920(%rbp), %rax

	addq $1344, %rsp
	subq $296, %r15
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
	subq $1344, %rsp
	addq $296, %r15
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

	movq %rdi, -144(%rbp)
	movq %rsi, -136(%r15)
	movq $0, %rax
	cmpq -144(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -896(%rbp)
	cmpq $1, -896(%rbp)
	je then485257
	movq $1, -112(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -104(%rbp)
	addq $16, -104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -152(%rbp)
	movq -104(%rbp), %rax
	cmpq %rax, -152(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1056(%rbp)
	cmpq $1, -1056(%rbp)
	je then485259
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -264(%rbp)
	jmp end485260
then485259:
	movq $0, -1048(%rbp)
	movq -1048(%rbp), %rax
	movq %rax, -264(%rbp)
end485260:
	movq -264(%rbp), %rax
	movq %rax, -640(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%r15)
	addq $16, free_ptr(%rip)
	movq -104(%r15), %r11
	movq $3, 0(%r11)
	movq -104(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -904(%rbp)
	movq -112(%r15), %rax
	movq %rax, -144(%r15)
	movq $2, -752(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $16, -120(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -48(%rbp)
	movq -120(%rbp), %rax
	cmpq %rax, -48(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1104(%rbp)
	cmpq $1, -1104(%rbp)
	je then485261
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1064(%rbp)
	jmp end485262
then485261:
	movq $0, -1088(%rbp)
	movq -1088(%rbp), %rax
	movq %rax, -1064(%rbp)
end485262:
	movq -1064(%rbp), %rax
	movq %rax, -888(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -272(%r15)
	movq -272(%r15), %r11
	movq -752(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -272(%r15), %rax
	movq %rax, -192(%r15)
	movq $3, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -776(%rbp)
	addq $16, -776(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -88(%rbp)
	movq -776(%rbp), %rax
	cmpq %rax, -88(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -504(%rbp)
	cmpq $1, -504(%rbp)
	je then485263
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1112(%rbp)
	jmp end485264
then485263:
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1112(%rbp)
end485264:
	movq -1112(%rbp), %rax
	movq %rax, -1032(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -416(%rbp)
	movq -200(%r15), %rax
	movq %rax, -296(%r15)
	movq $4, -704(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -688(%rbp)
	addq $16, -688(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -736(%rbp)
	movq -688(%rbp), %rax
	cmpq %rax, -736(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -872(%rbp)
	cmpq $1, -872(%rbp)
	je then485265
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -568(%rbp)
	jmp end485266
then485265:
	movq $0, -824(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -568(%rbp)
end485266:
	movq -568(%rbp), %rax
	movq %rax, -1120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq -704(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -848(%rbp)
	movq -96(%r15), %rax
	movq %rax, -184(%r15)
	movq $5, -696(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -800(%rbp)
	movq -800(%rbp), %rax
	movq %rax, -712(%rbp)
	addq $16, -712(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -744(%rbp)
	movq -712(%rbp), %rax
	cmpq %rax, -744(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -464(%rbp)
	cmpq $1, -464(%rbp)
	je then485267
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1296(%rbp)
	jmp end485268
then485267:
	movq $0, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -1296(%rbp)
end485268:
	movq -1296(%rbp), %rax
	movq %rax, -64(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -88(%r15)
	addq $16, free_ptr(%rip)
	movq -88(%r15), %r11
	movq $3, 0(%r11)
	movq -88(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -696(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -584(%rbp)
	movq -176(%r15), %rax
	movq %rax, -208(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -1024(%rbp)
	addq $48, -1024(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1280(%rbp)
	movq -1024(%rbp), %rax
	cmpq %rax, -1280(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -680(%rbp)
	cmpq $1, -680(%rbp)
	je then485269
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -1336(%rbp)
	jmp end485270
then485269:
	movq $0, -576(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -1336(%rbp)
end485270:
	movq -1336(%rbp), %rax
	movq %rax, -1008(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $48, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $3979, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %r11
	movq -208(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -256(%rbp)
	movq -32(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -32(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1312(%rbp)
	movq -1312(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -32(%r15), %r11
	movq -192(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -32(%r15), %r11
	movq -144(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -648(%rbp)
	movq -648(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -32(%r15), %rax
	movq %rax, -128(%r15)
	movq $-1, -296(%rbp)
	movq $-1, -912(%rbp)
	movq $-1, -600(%rbp)
	movq $-1, -1192(%rbp)
	movq $-1, -368(%rbp)
	movq $-1, -808(%rbp)
	movq $-1, -1208(%rbp)
	movq $-1, -1072(%rbp)
	movq $-1, -280(%rbp)
	movq $-1, -816(%rbp)
	movq $-1, -496(%rbp)
	movq $-1, -1080(%rbp)
	movq $-1, -288(%rbp)
	movq $-1, -184(%rbp)
	movq $-1, -1224(%rbp)
	movq $-1, -408(%rbp)
	movq $-1, -976(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -176(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -952(%rbp)
	addq $144, -952(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -520(%rbp)
	movq -952(%rbp), %rax
	cmpq %rax, -520(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -672(%rbp)
	cmpq $1, -672(%rbp)
	je then485271
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -1328(%rbp)
	jmp end485272
then485271:
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -1328(%rbp)
end485272:
	movq -1328(%rbp), %rax
	movq %rax, -304(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%r15)
	addq $144, free_ptr(%rip)
	movq -264(%r15), %r11
	movq $35, 0(%r11)
	movq -264(%r15), %rax
	movq %rax, -224(%r15)
	movq -224(%r15), %r11
	movq -976(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -208(%rbp)
	movq -224(%r15), %r11
	movq -408(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -432(%rbp)
	movq -224(%r15), %r11
	movq -1224(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -984(%rbp)
	movq -224(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -856(%rbp)
	movq -856(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -224(%r15), %r11
	movq -288(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -224(%r15), %r11
	movq -1080(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -528(%rbp)
	movq -224(%r15), %r11
	movq -496(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -448(%rbp)
	movq -448(%rbp), %rax
	movq %rax, -992(%rbp)
	movq -224(%r15), %r11
	movq -816(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -1264(%rbp)
	movq -224(%r15), %r11
	movq -280(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -456(%rbp)
	movq -456(%rbp), %rax
	movq %rax, -1000(%rbp)
	movq -224(%r15), %r11
	movq -1072(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -1304(%rbp)
	movq -224(%r15), %r11
	movq -1208(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -1184(%rbp)
	movq -1184(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -224(%r15), %r11
	movq -808(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -592(%rbp)
	movq -224(%r15), %r11
	movq -368(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -224(%r15), %r11
	movq -1192(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -920(%rbp)
	movq -920(%rbp), %rax
	movq %rax, -1288(%rbp)
	movq -224(%r15), %r11
	movq -600(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -224(%r15), %r11
	movq -912(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -928(%rbp)
	movq -928(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -224(%r15), %r11
	movq -296(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -392(%rbp)
	movq -224(%r15), %rax
	movq %rax, -216(%r15)
	movq -128(%r15), %rax
	movq %rax, -232(%r15)
	movq -216(%r15), %rax
	movq %rax, -16(%r15)
	movq -128(%r15), %rax
	movq %rax, -288(%r15)
	movq -216(%r15), %rax
	movq %rax, -56(%r15)
	movq -128(%r15), %rax
	movq %rax, -152(%r15)
	movq -216(%r15), %rax
	movq %rax, -240(%r15)
	movq -128(%r15), %rax
	movq %rax, -256(%r15)
	movq -216(%r15), %rax
	movq %rax, -168(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -720(%rbp)
	addq $72, -720(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -768(%rbp)
	movq -720(%rbp), %rax
	cmpq %rax, -768(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1344(%rbp)
	cmpq $1, -1344(%rbp)
	je then485273
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -664(%rbp)
	jmp end485274
then485273:
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -664(%rbp)
end485274:
	movq -664(%rbp), %rax
	movq %rax, -632(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $72, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $32657, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -48(%r15)
	movq -48(%r15), %r11
	movq -168(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -840(%rbp)
	movq -48(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq -48(%r15), %r11
	movq -240(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -168(%rbp)
	movq -48(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -48(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -832(%rbp)
	movq -48(%r15), %r11
	movq -288(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -48(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -864(%rbp)
	movq -48(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -1144(%rbp)
	movq -48(%r15), %rax
	movq %rax, -8(%r15)
	leaq function4(%rip), %rax
	movq %rax, -792(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -656(%rbp)
	movq -144(%rbp), %rdi
	movq $1, %rsi
	callq *-656(%rbp)
	movq %rax, -96(%rbp)
	movq -96(%rbp), %rdi
	movq -136(%r15), %rsi
	callq *-792(%rbp)
	movq %rax, -64(%r15)
	movq -64(%r15), %rax
	movq %rax, -608(%rbp)
	jmp end485258
then485257:
	movq -136(%r15), %rax
	movq %rax, -248(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -728(%rbp)
	movq -728(%rbp), %rax
	movq %rax, -72(%rbp)
	addq $16, -72(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -136(%rbp)
	movq -72(%rbp), %rax
	cmpq %rax, -136(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -936(%rbp)
	cmpq $1, -936(%rbp)
	je then485275
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -624(%rbp)
	jmp end485276
then485275:
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -624(%rbp)
end485276:
	movq -624(%rbp), %rax
	movq %rax, -1176(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $131, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -1240(%rbp)
	movq -80(%r15), %rax
	movq %rax, -608(%rbp)
end485258:
	movq -608(%rbp), %rax

	addq $1344, %rsp
	subq $296, %r15
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
	subq $1352, %rsp
	addq $280, %r15
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

	movq %rdi, -96(%rbp)
	movq $0, %rax
	cmpq -96(%rbp), %rax
	sete %al
	movzbq %al, %rax
	movq %rax, -1216(%rbp)
	cmpq $1, -1216(%rbp)
	je then485277
	movq $1, -944(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -280(%rbp)
	addq $16, -280(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -832(%rbp)
	movq -280(%rbp), %rax
	cmpq %rax, -832(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -720(%rbp)
	cmpq $1, -720(%rbp)
	je then485279
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end485280
then485279:
	movq $0, -432(%rbp)
	movq -432(%rbp), %rax
	movq %rax, -72(%rbp)
end485280:
	movq -72(%rbp), %rax
	movq %rax, -1296(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -944(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1080(%rbp)
	movq -1080(%rbp), %rax
	movq %rax, -528(%rbp)
	movq -40(%r15), %rax
	movq %rax, -176(%r15)
	movq $2, -872(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -880(%rbp)
	addq $16, -880(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -768(%rbp)
	movq -880(%rbp), %rax
	cmpq %rax, -768(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then485281
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -712(%rbp)
	jmp end485282
then485281:
	movq $0, -984(%rbp)
	movq -984(%rbp), %rax
	movq %rax, -712(%rbp)
end485282:
	movq -712(%rbp), %rax
	movq %rax, -1160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -72(%r15)
	addq $16, free_ptr(%rip)
	movq -72(%r15), %r11
	movq $3, 0(%r11)
	movq -72(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -872(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -320(%rbp)
	movq -320(%rbp), %rax
	movq %rax, -1048(%rbp)
	movq -184(%r15), %rax
	movq %rax, -248(%r15)
	movq $3, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -128(%rbp)
	movq -128(%rbp), %rax
	movq %rax, -816(%rbp)
	addq $16, -816(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -928(%rbp)
	movq -816(%rbp), %rax
	cmpq %rax, -928(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then485283
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -48(%rbp)
	jmp end485284
then485283:
	movq $0, -1352(%rbp)
	movq -1352(%rbp), %rax
	movq %rax, -48(%rbp)
end485284:
	movq -48(%rbp), %rax
	movq %rax, -416(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -8(%r15)
	addq $16, free_ptr(%rip)
	movq -8(%r15), %r11
	movq $3, 0(%r11)
	movq -8(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -24(%r15), %rax
	movq %rax, -168(%r15)
	movq $4, -120(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -960(%rbp)
	movq -960(%rbp), %rax
	movq %rax, -168(%rbp)
	addq $16, -168(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -848(%rbp)
	movq -168(%rbp), %rax
	cmpq %rax, -848(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -728(%rbp)
	cmpq $1, -728(%rbp)
	je then485285
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -80(%rbp)
	jmp end485286
then485285:
	movq $0, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -80(%rbp)
end485286:
	movq -80(%rbp), %rax
	movq %rax, -1032(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -120(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1312(%rbp)
	movq -1312(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -104(%r15), %rax
	movq %rax, -152(%r15)
	movq $5, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -840(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -152(%rbp)
	addq $16, -152(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -256(%rbp)
	movq -152(%rbp), %rax
	cmpq %rax, -256(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1040(%rbp)
	cmpq $1, -1040(%rbp)
	je then485287
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -680(%rbp)
	jmp end485288
then485287:
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -680(%rbp)
end485288:
	movq -680(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -272(%r15)
	addq $16, free_ptr(%rip)
	movq -272(%r15), %r11
	movq $3, 0(%r11)
	movq -272(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -648(%rbp)
	movq -88(%r15), %rax
	movq %rax, -256(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -952(%rbp)
	addq $48, -952(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -216(%rbp)
	movq -952(%rbp), %rax
	cmpq %rax, -216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -664(%rbp)
	cmpq $1, -664(%rbp)
	je then485289
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -1208(%rbp)
	jmp end485290
then485289:
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -1208(%rbp)
end485290:
	movq -1208(%rbp), %rax
	movq %rax, -448(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -80(%r15)
	addq $48, free_ptr(%rip)
	movq -80(%r15), %r11
	movq $3979, 0(%r11)
	movq -80(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -256(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -624(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -1152(%rbp)
	movq -112(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -440(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -992(%rbp)
	movq -112(%r15), %r11
	movq -168(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -520(%rbp)
	movq -112(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1072(%rbp)
	movq -1072(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -112(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -112(%r15), %rax
	movq %rax, -128(%r15)
	movq $-1, -272(%rbp)
	movq $-1, -144(%rbp)
	movq $-1, -808(%rbp)
	movq $-1, -232(%rbp)
	movq $-1, -920(%rbp)
	movq $-1, -112(%rbp)
	movq $-1, -824(%rbp)
	movq $-1, -240(%rbp)
	movq $-1, -936(%rbp)
	movq $-1, -136(%rbp)
	movq $-1, -192(%rbp)
	movq $-1, -856(%rbp)
	movq $-1, -264(%rbp)
	movq $-1, -760(%rbp)
	movq $-1, -200(%rbp)
	movq $-1, -864(%rbp)
	movq $-1, -912(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -800(%rbp)
	movq -800(%rbp), %rax
	movq %rax, -296(%rbp)
	addq $144, -296(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -176(%rbp)
	movq -296(%rbp), %rax
	cmpq %rax, -176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1232(%rbp)
	cmpq $1, -1232(%rbp)
	je then485291
	movq %r15, %rdi
	movq $144, %rsi
	callq collect
	movq $0, -480(%rbp)
	jmp end485292
then485291:
	movq $0, -696(%rbp)
	movq -696(%rbp), %rax
	movq %rax, -480(%rbp)
end485292:
	movq -480(%rbp), %rax
	movq %rax, -408(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $144, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $35, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %r11
	movq -912(%rbp), %rax
	movq %rax, 136(%r11)
	movq $0, -784(%rbp)
	movq -784(%rbp), %rax
	movq %rax, -224(%rbp)
	movq -96(%r15), %r11
	movq -864(%rbp), %rax
	movq %rax, 128(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -96(%r15), %r11
	movq -200(%rbp), %rax
	movq %rax, 120(%r11)
	movq $0, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -464(%rbp)
	movq -96(%r15), %r11
	movq -760(%rbp), %rax
	movq %rax, 112(%r11)
	movq $0, -1184(%rbp)
	movq -1184(%rbp), %rax
	movq %rax, -640(%rbp)
	movq -96(%r15), %r11
	movq -264(%rbp), %rax
	movq %rax, 104(%r11)
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -1104(%rbp)
	movq -96(%r15), %r11
	movq -856(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -1320(%rbp)
	movq -96(%r15), %r11
	movq -192(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -472(%rbp)
	movq -96(%r15), %r11
	movq -136(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -96(%r15), %r11
	movq -936(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -336(%rbp)
	movq -336(%rbp), %rax
	movq %rax, -1064(%rbp)
	movq -96(%r15), %r11
	movq -240(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1280(%rbp)
	movq -96(%r15), %r11
	movq -824(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -1056(%rbp)
	movq -96(%r15), %r11
	movq -112(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -96(%r15), %r11
	movq -920(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -1016(%rbp)
	movq -1016(%rbp), %rax
	movq %rax, -456(%rbp)
	movq -96(%r15), %r11
	movq -232(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -1176(%rbp)
	movq -1176(%rbp), %rax
	movq %rax, -632(%rbp)
	movq -96(%r15), %r11
	movq -808(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq -96(%r15), %r11
	movq -144(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -1288(%rbp)
	movq -96(%r15), %r11
	movq -272(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -976(%rbp)
	movq -976(%rbp), %rax
	movq %rax, -400(%rbp)
	movq -96(%r15), %rax
	movq %rax, -56(%r15)
	movq -128(%r15), %rax
	movq %rax, -216(%r15)
	movq -56(%r15), %rax
	movq %rax, -48(%r15)
	movq -128(%r15), %rax
	movq %rax, -192(%r15)
	movq -56(%r15), %rax
	movq %rax, -280(%r15)
	movq -128(%r15), %rax
	movq %rax, -264(%r15)
	movq -56(%r15), %rax
	movq %rax, -224(%r15)
	movq -128(%r15), %rax
	movq %rax, -136(%r15)
	movq -56(%r15), %rax
	movq %rax, -232(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -616(%rbp)
	addq $72, -616(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -424(%rbp)
	movq -616(%rbp), %rax
	cmpq %rax, -424(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -704(%rbp)
	cmpq $1, -704(%rbp)
	je then485293
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -64(%rbp)
	jmp end485294
then485293:
	movq $0, -1120(%rbp)
	movq -1120(%rbp), %rax
	movq %rax, -64(%rbp)
end485294:
	movq -64(%rbp), %rax
	movq %rax, -1248(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $72, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $32657, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1112(%rbp)
	movq -1112(%rbp), %rax
	movq %rax, -592(%rbp)
	movq -208(%r15), %r11
	movq -136(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -208(%r15), %r11
	movq -224(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -584(%rbp)
	movq -208(%r15), %r11
	movq -264(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -968(%rbp)
	movq -208(%r15), %r11
	movq -280(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -1136(%rbp)
	movq -208(%r15), %r11
	movq -192(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1224(%rbp)
	movq -1224(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -208(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -208(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -208(%r15), %rax
	movq %rax, -144(%r15)
	leaq function5(%rip), %rax
	movq %rax, -1168(%rbp)
	leaq function6(%rip), %rax
	movq %rax, -904(%rbp)
	movq -96(%rbp), %rdi
	movq $1, %rsi
	callq *-904(%rbp)
	movq %rax, -656(%rbp)
	movq -656(%rbp), %rdi
	callq *-1168(%rbp)
	movq %rax, -120(%r15)
	movq -120(%r15), %rax
	movq %rax, -600(%rbp)
	jmp end485278
then485277:
	movq $42, -744(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -736(%rbp)
	addq $16, -736(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -752(%rbp)
	movq -736(%rbp), %rax
	cmpq %rax, -752(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -568(%rbp)
	cmpq $1, -568(%rbp)
	je then485295
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1336(%rbp)
	jmp end485296
then485295:
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -1336(%rbp)
end485296:
	movq -1336(%rbp), %rax
	movq %rax, -792(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -200(%r15)
	movq -200(%r15), %r11
	movq -744(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -552(%rbp)
	movq -552(%rbp), %rax
	movq %rax, -1304(%rbp)
	movq -200(%r15), %rax
	movq %rax, -600(%rbp)
end485278:
	movq -600(%rbp), %rax

	addq $1352, %rsp
	subq $280, %r15
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
	subq $72, %rsp
	addq $0, %r15

	movq %rdi, -64(%rbp)
	movq %rsi, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -72(%rbp)
	negq -72(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -56(%rbp), %rax

	addq $72, %rsp
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
	subq $144, %rsp
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
	movq %rax, -80(%rbp)
	leaq function1(%rip), %rax
	movq %rax, -64(%rbp)
	leaq function2(%rip), %rax
	movq %rax, -72(%rbp)
	leaq function3(%rip), %rax
	movq %rax, -48(%rbp)
	leaq function4(%rip), %rax
	movq %rax, -88(%rbp)
	leaq function5(%rip), %rax
	movq %rax, -96(%rbp)
	movq $20, %rdi
	callq *-96(%rbp)
	movq %rax, -8(%r15)
	movq $20, %rdi
	movq -8(%r15), %rsi
	callq *-88(%rbp)
	movq %rax, -48(%r15)
	movq $20, %rdi
	movq -48(%r15), %rsi
	callq *-48(%rbp)
	movq %rax, -32(%r15)
	movq $20, %rdi
	movq -32(%r15), %rsi
	callq *-72(%rbp)
	movq %rax, -72(%r15)
	movq $20, %rdi
	movq -72(%r15), %rsi
	callq *-64(%rbp)
	movq %rax, -40(%r15)
	movq $20, %rdi
	movq -40(%r15), %rsi
	callq *-80(%rbp)
	movq %rax, -80(%r15)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -16(%r15)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -56(%rbp)
	movq -56(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $88, %r15
	addq $144, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
