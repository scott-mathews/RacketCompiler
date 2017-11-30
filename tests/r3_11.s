	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $2104, %rsp
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

	movq $1, -472(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -464(%rbp)
	addq $16, -464(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -288(%rbp)
	movq -464(%rbp), %rax
	cmpq %rax, -288(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1928(%rbp)
	cmpq $1, -1928(%rbp)
	je then479459
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -808(%rbp)
	jmp end479460
then479459:
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -808(%rbp)
end479460:
	movq -808(%rbp), %rax
	movq %rax, -1688(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -280(%r15)
	addq $16, free_ptr(%rip)
	movq -280(%r15), %r11
	movq $3, 0(%r11)
	movq -280(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq -472(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -1864(%rbp)
	movq -296(%r15), %rax
	movq %rax, -488(%r15)
	movq $1, -1488(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -168(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -1480(%rbp)
	addq $16, -1480(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1312(%rbp)
	movq -1480(%rbp), %rax
	cmpq %rax, -1312(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -872(%rbp)
	cmpq $1, -872(%rbp)
	je then479461
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1792(%rbp)
	jmp end479462
then479461:
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -1792(%rbp)
end479462:
	movq -1792(%rbp), %rax
	movq %rax, -760(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -64(%r15)
	addq $16, free_ptr(%rip)
	movq -64(%r15), %r11
	movq $3, 0(%r11)
	movq -64(%r15), %rax
	movq %rax, -408(%r15)
	movq -408(%r15), %r11
	movq -1488(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1888(%rbp)
	movq -1888(%rbp), %rax
	movq %rax, -784(%rbp)
	movq -408(%r15), %rax
	movq %rax, -464(%r15)
	movq $1, -1512(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -512(%rbp)
	addq $16, -512(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1368(%rbp)
	movq -512(%rbp), %rax
	cmpq %rax, -1368(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -976(%rbp)
	cmpq $1, -976(%rbp)
	je then479463
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1856(%rbp)
	jmp end479464
then479463:
	movq $0, -1952(%rbp)
	movq -1952(%rbp), %rax
	movq %rax, -1856(%rbp)
end479464:
	movq -1856(%rbp), %rax
	movq %rax, -1720(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -48(%r15)
	addq $16, free_ptr(%rip)
	movq -48(%r15), %r11
	movq $3, 0(%r11)
	movq -48(%r15), %rax
	movq %rax, -448(%r15)
	movq -448(%r15), %r11
	movq -1512(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1976(%rbp)
	movq -1976(%rbp), %rax
	movq %rax, -848(%rbp)
	movq -448(%r15), %rax
	movq %rax, -16(%r15)
	movq $1, -504(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -456(%rbp)
	addq $16, -456(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -296(%rbp)
	movq -456(%rbp), %rax
	cmpq %rax, -296(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1896(%rbp)
	cmpq $1, -1896(%rbp)
	je then479465
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -776(%rbp)
	jmp end479466
then479465:
	movq $0, -904(%rbp)
	movq -904(%rbp), %rax
	movq %rax, -776(%rbp)
end479466:
	movq -776(%rbp), %rax
	movq %rax, -744(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%r15)
	addq $16, free_ptr(%rip)
	movq -112(%r15), %r11
	movq $3, 0(%r11)
	movq -112(%r15), %rax
	movq %rax, -456(%r15)
	movq -456(%r15), %r11
	movq -504(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -912(%rbp)
	movq -912(%rbp), %rax
	movq %rax, -1800(%rbp)
	movq -456(%r15), %rax
	movq %rax, -368(%r15)
	movq $1, -1408(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -264(%rbp)
	movq -264(%rbp), %rax
	movq %rax, -1400(%rbp)
	addq $16, -1400(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1216(%rbp)
	movq -1400(%rbp), %rax
	cmpq %rax, -1216(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -576(%rbp)
	cmpq $1, -576(%rbp)
	je then479467
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1696(%rbp)
	jmp end479468
then479467:
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1696(%rbp)
end479468:
	movq -1696(%rbp), %rax
	movq %rax, -1784(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -136(%r15)
	addq $16, free_ptr(%rip)
	movq -136(%r15), %r11
	movq $3, 0(%r11)
	movq -136(%r15), %rax
	movq %rax, -480(%r15)
	movq -480(%r15), %r11
	movq -1408(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1624(%rbp)
	movq -1624(%rbp), %rax
	movq %rax, -712(%rbp)
	movq -480(%r15), %rax
	movq %rax, -264(%r15)
	movq $1, -1448(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1344(%rbp)
	movq -1344(%rbp), %rax
	movq %rax, -400(%rbp)
	addq $16, -400(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -200(%rbp)
	movq -400(%rbp), %rax
	cmpq %rax, -200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -616(%rbp)
	cmpq $1, -616(%rbp)
	je then479469
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1736(%rbp)
	jmp end479470
then479469:
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1736(%rbp)
end479470:
	movq -1736(%rbp), %rax
	movq %rax, -1464(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -40(%r15)
	addq $16, free_ptr(%rip)
	movq -40(%r15), %r11
	movq $3, 0(%r11)
	movq -40(%r15), %rax
	movq %rax, -160(%r15)
	movq -160(%r15), %r11
	movq -1448(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1576(%rbp)
	movq -1576(%rbp), %rax
	movq %rax, -680(%rbp)
	movq -160(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, -432(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1376(%rbp)
	movq -1376(%rbp), %rax
	movq %rax, -424(%rbp)
	addq $16, -424(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -224(%rbp)
	movq -424(%rbp), %rax
	cmpq %rax, -224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -544(%rbp)
	cmpq $1, -544(%rbp)
	je then479471
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1672(%rbp)
	jmp end479472
then479471:
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -1672(%rbp)
end479472:
	movq -1672(%rbp), %rax
	movq %rax, -448(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $16, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $3, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -432(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -336(%rbp)
	movq -72(%r15), %rax
	movq %rax, -328(%r15)
	movq $1, -1440(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%rbp)
	movq -256(%rbp), %rax
	movq %rax, -1392(%rbp)
	addq $16, -1392(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1224(%rbp)
	movq -1392(%rbp), %rax
	cmpq %rax, -1224(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -648(%rbp)
	cmpq $1, -648(%rbp)
	je then479473
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1768(%rbp)
	jmp end479474
then479473:
	movq $0, -1232(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -1768(%rbp)
end479474:
	movq -1768(%rbp), %rax
	movq %rax, -408(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -8(%r15)
	movq -8(%r15), %r11
	movq -1440(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -8(%r15), %rax
	movq %rax, -184(%r15)
	movq $1, -368(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1360(%rbp)
	movq -1360(%rbp), %rax
	movq %rax, -416(%rbp)
	addq $16, -416(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -232(%rbp)
	movq -416(%rbp), %rax
	cmpq %rax, -232(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1560(%rbp)
	cmpq $1, -1560(%rbp)
	je then479475
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -664(%rbp)
	jmp end479476
then479475:
	movq $0, -1288(%rbp)
	movq -1288(%rbp), %rax
	movq %rax, -664(%rbp)
end479476:
	movq -664(%rbp), %rax
	movq %rax, -440(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%r15)
	addq $16, free_ptr(%rip)
	movq -192(%r15), %r11
	movq $3, 0(%r11)
	movq -192(%r15), %rax
	movq %rax, -88(%r15)
	movq -88(%r15), %r11
	movq -368(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -1336(%rbp)
	movq -88(%r15), %rax
	movq %rax, -432(%r15)
	movq $1, -384(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -376(%rbp)
	movq -376(%rbp), %rax
	movq %rax, -1304(%rbp)
	addq $16, -1304(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1472(%rbp)
	movq -1304(%rbp), %rax
	cmpq %rax, -1472(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1616(%rbp)
	cmpq $1, -1616(%rbp)
	je then479477
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -720(%rbp)
	jmp end479478
then479477:
	movq $0, -1328(%rbp)
	movq -1328(%rbp), %rax
	movq %rax, -720(%rbp)
end479478:
	movq -720(%rbp), %rax
	movq %rax, -392(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -344(%r15)
	addq $16, free_ptr(%rip)
	movq -344(%r15), %r11
	movq $3, 0(%r11)
	movq -344(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq -384(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -272(%rbp)
	movq -272(%rbp), %rax
	movq %rax, -1240(%rbp)
	movq -256(%r15), %rax
	movq %rax, -152(%r15)
	movq $1, -1096(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -1088(%rbp)
	addq $16, -1088(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1176(%rbp)
	movq -1088(%rbp), %rax
	cmpq %rax, -1176(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1712(%rbp)
	cmpq $1, -1712(%rbp)
	je then479479
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -600(%rbp)
	jmp end479480
then479479:
	movq $0, -1352(%rbp)
	movq -1352(%rbp), %rax
	movq %rax, -600(%rbp)
end479480:
	movq -600(%rbp), %rax
	movq %rax, -1520(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -320(%r15)
	addq $16, free_ptr(%rip)
	movq -320(%r15), %r11
	movq $3, 0(%r11)
	movq -320(%r15), %rax
	movq %rax, -176(%r15)
	movq -176(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -304(%rbp)
	movq -304(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -176(%r15), %rax
	movq %rax, -384(%r15)
	movq $1, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1168(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -88(%rbp)
	addq $16, -88(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1208(%rbp)
	movq -88(%rbp), %rax
	cmpq %rax, -1208(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1728(%rbp)
	cmpq $1, -1728(%rbp)
	je then479481
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -608(%rbp)
	jmp end479482
then479481:
	movq $0, -344(%rbp)
	movq -344(%rbp), %rax
	movq %rax, -608(%rbp)
end479482:
	movq -608(%rbp), %rax
	movq %rax, -1504(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %rax
	movq %rax, -232(%r15)
	movq -232(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -352(%rbp)
	movq -352(%rbp), %rax
	movq %rax, -1296(%rbp)
	movq -232(%r15), %rax
	movq %rax, -272(%r15)
	movq $1, -1080(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -112(%rbp)
	movq -112(%rbp), %rax
	movq %rax, -1104(%rbp)
	addq $16, -1104(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1200(%rbp)
	movq -1104(%rbp), %rax
	cmpq %rax, -1200(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -752(%rbp)
	cmpq $1, -752(%rbp)
	je then479483
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1656(%rbp)
	jmp end479484
then479483:
	movq $0, -328(%rbp)
	movq -328(%rbp), %rax
	movq %rax, -1656(%rbp)
end479484:
	movq -1656(%rbp), %rax
	movq %rax, -1528(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -440(%r15)
	addq $16, free_ptr(%rip)
	movq -440(%r15), %r11
	movq $3, 0(%r11)
	movq -440(%r15), %rax
	movq %rax, -360(%r15)
	movq -360(%r15), %r11
	movq -1080(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1320(%rbp)
	movq -1320(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -360(%r15), %rax
	movq %rax, -32(%r15)
	movq $1, -1072(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1160(%rbp)
	movq -1160(%rbp), %rax
	movq %rax, -80(%rbp)
	addq $16, -80(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -160(%rbp)
	movq -80(%rbp), %rax
	cmpq %rax, -160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -672(%rbp)
	cmpq $1, -672(%rbp)
	je then479485
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1568(%rbp)
	jmp end479486
then479485:
	movq $0, -360(%rbp)
	movq -360(%rbp), %rax
	movq %rax, -1568(%rbp)
end479486:
	movq -1568(%rbp), %rax
	movq %rax, -1496(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %rax
	movq %rax, -336(%r15)
	movq -336(%r15), %r11
	movq -1072(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1384(%rbp)
	movq -1384(%rbp), %rax
	movq %rax, -248(%rbp)
	movq -336(%r15), %rax
	movq %rax, -376(%r15)
	movq $1, -72(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1136(%rbp)
	movq -1136(%rbp), %rax
	movq %rax, -64(%rbp)
	addq $16, -64(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -144(%rbp)
	movq -64(%rbp), %rax
	cmpq %rax, -144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -728(%rbp)
	cmpq $1, -728(%rbp)
	je then479487
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1584(%rbp)
	jmp end479488
then479487:
	movq $0, -312(%rbp)
	movq -312(%rbp), %rax
	movq %rax, -1584(%rbp)
end479488:
	movq -1584(%rbp), %rax
	movq %rax, -480(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -288(%r15)
	addq $16, free_ptr(%rip)
	movq -288(%r15), %r11
	movq $3, 0(%r11)
	movq -288(%r15), %rax
	movq %rax, -400(%r15)
	movq -400(%r15), %r11
	movq -72(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1424(%rbp)
	movq -1424(%rbp), %rax
	movq %rax, -488(%rbp)
	movq -400(%r15), %rax
	movq %rax, -24(%r15)
	movq $1, -1056(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1184(%rbp)
	movq -1184(%rbp), %rax
	movq %rax, -1064(%rbp)
	addq $16, -1064(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1144(%rbp)
	movq -1064(%rbp), %rax
	cmpq %rax, -1144(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -800(%rbp)
	cmpq $1, -800(%rbp)
	je then479489
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1920(%rbp)
	jmp end479490
then479489:
	movq $0, -1416(%rbp)
	movq -1416(%rbp), %rax
	movq %rax, -1920(%rbp)
end479490:
	movq -1920(%rbp), %rax
	movq %rax, -192(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%r15)
	addq $16, free_ptr(%rip)
	movq -248(%r15), %r11
	movq $3, 0(%r11)
	movq -248(%r15), %rax
	movq %rax, -144(%r15)
	movq -144(%r15), %r11
	movq -1056(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1432(%rbp)
	movq -1432(%rbp), %rax
	movq %rax, -496(%rbp)
	movq -144(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, -56(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1192(%rbp)
	movq -1192(%rbp), %rax
	movq %rax, -48(%rbp)
	addq $16, -48(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -48(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1872(%rbp)
	cmpq $1, -1872(%rbp)
	je then479491
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -984(%rbp)
	jmp end479492
then479491:
	movq $0, -1456(%rbp)
	movq -1456(%rbp), %rax
	movq %rax, -984(%rbp)
end479492:
	movq -984(%rbp), %rax
	movq %rax, -208(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -200(%r15)
	addq $16, free_ptr(%rip)
	movq -200(%r15), %r11
	movq $3, 0(%r11)
	movq -200(%r15), %rax
	movq %rax, -424(%r15)
	movq -424(%r15), %r11
	movq -56(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -2048(%rbp)
	movq -424(%r15), %rax
	movq %rax, -128(%r15)
	movq $1, -592(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -1632(%rbp)
	addq $16, -1632(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1840(%rbp)
	movq -1632(%rbp), %rax
	cmpq %rax, -1840(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1152(%rbp)
	cmpq $1, -1152(%rbp)
	je then479493
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -152(%rbp)
	jmp end479494
then479493:
	movq $0, -2016(%rbp)
	movq -2016(%rbp), %rax
	movq %rax, -152(%rbp)
end479494:
	movq -152(%rbp), %rax
	movq %rax, -992(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $16, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $3, 0(%r11)
	movq -304(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -592(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -2056(%rbp)
	movq -56(%r15), %rax
	movq %rax, -392(%r15)
	movq $1, -1552(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -952(%rbp)
	movq -952(%rbp), %rax
	movq %rax, -1640(%rbp)
	addq $16, -1640(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1848(%rbp)
	movq -1640(%rbp), %rax
	cmpq %rax, -1848(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1112(%rbp)
	cmpq $1, -1112(%rbp)
	je then479495
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -120(%rbp)
	jmp end479496
then479495:
	movq $0, -2008(%rbp)
	movq -2008(%rbp), %rax
	movq %rax, -120(%rbp)
end479496:
	movq -120(%rbp), %rax
	movq %rax, -1992(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -496(%r15)
	addq $16, free_ptr(%rip)
	movq -496(%r15), %r11
	movq $3, 0(%r11)
	movq -496(%r15), %rax
	movq %rax, -504(%r15)
	movq -504(%r15), %r11
	movq -1552(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -2032(%rbp)
	movq -504(%r15), %rax
	movq %rax, -104(%r15)
	movq $1, -528(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -552(%rbp)
	addq $16, -552(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -792(%rbp)
	movq -552(%rbp), %rax
	cmpq %rax, -792(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1120(%rbp)
	cmpq $1, -1120(%rbp)
	je then479497
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -128(%rbp)
	jmp end479498
then479497:
	movq $0, -1016(%rbp)
	movq -1016(%rbp), %rax
	movq %rax, -128(%rbp)
end479498:
	movq -128(%rbp), %rax
	movq %rax, -1984(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -352(%r15)
	movq -352(%r15), %r11
	movq -528(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -2024(%rbp)
	movq -352(%r15), %rax
	movq %rax, -416(%r15)
	movq $1, -1904(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -1912(%rbp)
	addq $16, -1912(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1680(%rbp)
	movq -1912(%rbp), %rax
	cmpq %rax, -1680(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then479499
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1128(%rbp)
	jmp end479500
then479499:
	movq $0, -1048(%rbp)
	movq -1048(%rbp), %rax
	movq %rax, -1128(%rbp)
end479500:
	movq -1128(%rbp), %rax
	movq %rax, -2000(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -472(%r15)
	addq $16, free_ptr(%rip)
	movq -472(%r15), %r11
	movq $3, 0(%r11)
	movq -472(%r15), %rax
	movq %rax, -208(%r15)
	movq -208(%r15), %r11
	movq -1904(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -2040(%rbp)
	movq -2040(%rbp), %rax
	movq %rax, -1024(%rbp)
	movq -208(%r15), %rax
	movq %rax, -216(%r15)
	movq -488(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -584(%rbp)
	movq -464(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -816(%rbp)
	movq -16(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1592(%rbp)
	movq -368(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1808(%rbp)
	movq -264(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1600(%rbp)
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1816(%rbp)
	movq -328(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1608(%rbp)
	movq -184(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1824(%rbp)
	movq -432(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1648(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1832(%rbp)
	movq -384(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -624(%rbp)
	movq -272(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -824(%rbp)
	movq -32(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -632(%rbp)
	movq -376(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -832(%rbp)
	movq -24(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -640(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -840(%rbp)
	movq -128(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -520(%rbp)
	movq -392(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -768(%rbp)
	movq -104(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1536(%rbp)
	movq -416(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1776(%rbp)
	movq -216(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1544(%rbp)
	movq -1544(%rbp), %rax
	movq %rax, -864(%rbp)
	addq $21, -864(%rbp)
	movq -1776(%rbp), %rax
	movq %rax, -656(%rbp)
	movq -864(%rbp), %rax
	addq %rax, -656(%rbp)
	movq -1536(%rbp), %rax
	movq %rax, -856(%rbp)
	movq -656(%rbp), %rax
	addq %rax, -856(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -1664(%rbp)
	movq -856(%rbp), %rax
	addq %rax, -1664(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -1880(%rbp)
	movq -1664(%rbp), %rax
	addq %rax, -1880(%rbp)
	movq -840(%rbp), %rax
	movq %rax, -1760(%rbp)
	movq -1880(%rbp), %rax
	addq %rax, -1760(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -1760(%rbp), %rax
	addq %rax, -944(%rbp)
	movq -832(%rbp), %rax
	movq %rax, -1752(%rbp)
	movq -944(%rbp), %rax
	addq %rax, -1752(%rbp)
	movq -632(%rbp), %rax
	movq %rax, -1968(%rbp)
	movq -1752(%rbp), %rax
	addq %rax, -1968(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -1744(%rbp)
	movq -1968(%rbp), %rax
	addq %rax, -1744(%rbp)
	movq -624(%rbp), %rax
	movq %rax, -1960(%rbp)
	movq -1744(%rbp), %rax
	addq %rax, -1960(%rbp)
	movq -1832(%rbp), %rax
	movq %rax, -736(%rbp)
	movq -1960(%rbp), %rax
	addq %rax, -736(%rbp)
	movq -1648(%rbp), %rax
	movq %rax, -960(%rbp)
	movq -736(%rbp), %rax
	addq %rax, -960(%rbp)
	movq -1824(%rbp), %rax
	movq %rax, -704(%rbp)
	movq -960(%rbp), %rax
	addq %rax, -704(%rbp)
	movq -1608(%rbp), %rax
	movq %rax, -1936(%rbp)
	movq -704(%rbp), %rax
	addq %rax, -1936(%rbp)
	movq -1816(%rbp), %rax
	movq %rax, -696(%rbp)
	movq -1936(%rbp), %rax
	addq %rax, -696(%rbp)
	movq -1600(%rbp), %rax
	movq %rax, -928(%rbp)
	movq -696(%rbp), %rax
	addq %rax, -928(%rbp)
	movq -1808(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -928(%rbp), %rax
	addq %rax, -688(%rbp)
	movq -1592(%rbp), %rax
	movq %rax, -920(%rbp)
	movq -688(%rbp), %rax
	addq %rax, -920(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -1704(%rbp)
	movq -920(%rbp), %rax
	addq %rax, -1704(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -1944(%rbp)
	movq -1704(%rbp), %rax
	addq %rax, -1944(%rbp)
	movq -1944(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $504, %r15
	addq $2104, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
