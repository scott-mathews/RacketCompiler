	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $2360, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $936, %r15
	movq $0, -936(%r15)
	movq $0, -928(%r15)
	movq $0, -920(%r15)
	movq $0, -912(%r15)
	movq $0, -904(%r15)
	movq $0, -896(%r15)
	movq $0, -888(%r15)
	movq $0, -880(%r15)
	movq $0, -872(%r15)
	movq $0, -864(%r15)
	movq $0, -856(%r15)
	movq $0, -848(%r15)
	movq $0, -840(%r15)
	movq $0, -832(%r15)
	movq $0, -824(%r15)
	movq $0, -816(%r15)
	movq $0, -808(%r15)
	movq $0, -800(%r15)
	movq $0, -792(%r15)
	movq $0, -784(%r15)
	movq $0, -776(%r15)
	movq $0, -768(%r15)
	movq $0, -760(%r15)
	movq $0, -752(%r15)
	movq $0, -744(%r15)
	movq $0, -736(%r15)
	movq $0, -728(%r15)
	movq $0, -720(%r15)
	movq $0, -712(%r15)
	movq $0, -704(%r15)
	movq $0, -696(%r15)
	movq $0, -688(%r15)
	movq $0, -680(%r15)
	movq $0, -672(%r15)
	movq $0, -664(%r15)
	movq $0, -656(%r15)
	movq $0, -648(%r15)
	movq $0, -640(%r15)
	movq $0, -632(%r15)
	movq $0, -624(%r15)
	movq $0, -616(%r15)
	movq $0, -608(%r15)
	movq $0, -600(%r15)
	movq $0, -592(%r15)
	movq $0, -584(%r15)
	movq $0, -576(%r15)
	movq $0, -568(%r15)
	movq $0, -560(%r15)
	movq $0, -552(%r15)
	movq $0, -544(%r15)
	movq $0, -536(%r15)
	movq $0, -528(%r15)
	movq $0, -520(%r15)
	movq $0, -512(%r15)
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

	movq free_ptr(%rip), %rax
	movq %rax, -648(%rbp)
	movq -648(%rbp), %rax
	movq %rax, -720(%rbp)
	addq $8, -720(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1704(%rbp)
	movq -720(%rbp), %rax
	cmpq %rax, -1704(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -2040(%rbp)
	cmpq $1, -2040(%rbp)
	je then481900
	movq %r15, %rdi
	movq $8, %rsi
	callq collect
	movq $0, -1080(%rbp)
	jmp end481901
then481900:
	movq $0, -600(%rbp)
	movq -600(%rbp), %rax
	movq %rax, -1080(%rbp)
end481901:
	movq -1080(%rbp), %rax
	movq %rax, -1848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -360(%r15)
	addq $8, free_ptr(%rip)
	movq -360(%r15), %r11
	movq $1, 0(%r11)
	movq -360(%r15), %rax
	movq %rax, -752(%r15)
	movq -752(%r15), %rax
	movq %rax, -208(%r15)
	movq $42, -1696(%rbp)
	movq -208(%r15), %rax
	movq %rax, -400(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -1608(%rbp)
	addq $24, -1608(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1752(%rbp)
	movq -1608(%rbp), %rax
	cmpq %rax, -1752(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1048(%rbp)
	cmpq $1, -1048(%rbp)
	je then481902
	movq %r15, %rdi
	movq $24, %rsi
	callq collect
	movq $0, -2240(%rbp)
	jmp end481903
then481902:
	movq $0, -1768(%rbp)
	movq -1768(%rbp), %rax
	movq %rax, -2240(%rbp)
end481903:
	movq -2240(%rbp), %rax
	movq %rax, -528(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -784(%r15)
	addq $24, free_ptr(%rip)
	movq -784(%r15), %r11
	movq $261, 0(%r11)
	movq -784(%r15), %rax
	movq %rax, -240(%r15)
	movq -240(%r15), %r11
	movq -400(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -632(%rbp)
	movq -632(%rbp), %rax
	movq %rax, -1832(%rbp)
	movq -240(%r15), %r11
	movq -1696(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -520(%rbp)
	movq -520(%rbp), %rax
	movq %rax, -1664(%rbp)
	movq -240(%r15), %rax
	movq %rax, -472(%r15)
	movq -472(%r15), %rax
	movq %rax, -392(%r15)
	movq $42, -584(%rbp)
	movq -208(%r15), %rax
	movq %rax, -48(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1616(%rbp)
	movq -1616(%rbp), %rax
	movq %rax, -696(%rbp)
	addq $32, -696(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -592(%rbp)
	movq -696(%rbp), %rax
	cmpq %rax, -592(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -2208(%rbp)
	cmpq $1, -2208(%rbp)
	je then481904
	movq %r15, %rdi
	movq $32, %rsi
	callq collect
	movq $0, -1016(%rbp)
	jmp end481905
then481904:
	movq $0, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -1016(%rbp)
end481905:
	movq -1016(%rbp), %rax
	movq %rax, -1648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%r15)
	addq $32, free_ptr(%rip)
	movq -776(%r15), %r11
	movq $647, 0(%r11)
	movq -776(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -48(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1872(%rbp)
	movq -1872(%rbp), %rax
	movq %rax, -688(%rbp)
	movq -192(%r15), %r11
	movq -584(%rbp), %rax
	movq %rax, 16(%r11)
	movq $0, -1744(%rbp)
	movq -1744(%rbp), %rax
	movq %rax, -568(%rbp)
	movq -192(%r15), %r11
	movq -392(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -744(%rbp)
	movq -744(%rbp), %rax
	movq %rax, -1816(%rbp)
	movq -192(%r15), %rax
	movq %rax, -336(%r15)
	movq -336(%r15), %rax
	movq %rax, -536(%r15)
	movq -472(%r15), %rax
	movq %rax, -216(%r15)
	movq $42, -1720(%rbp)
	movq -208(%r15), %rax
	movq %rax, -464(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -488(%rbp)
	movq -488(%rbp), %rax
	movq %rax, -448(%rbp)
	addq $40, -448(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -392(%rbp)
	movq -448(%rbp), %rax
	cmpq %rax, -392(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1104(%rbp)
	cmpq $1, -1104(%rbp)
	je then481906
	movq %r15, %rdi
	movq $40, %rsi
	callq collect
	movq $0, -992(%rbp)
	jmp end481907
then481906:
	movq $0, -1792(%rbp)
	movq -1792(%rbp), %rax
	movq %rax, -992(%rbp)
end481907:
	movq -992(%rbp), %rax
	movq %rax, -560(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -328(%r15)
	addq $40, free_ptr(%rip)
	movq -328(%r15), %r11
	movq $1417, 0(%r11)
	movq -328(%r15), %rax
	movq %rax, -920(%r15)
	movq -920(%r15), %r11
	movq -464(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -664(%rbp)
	movq -664(%rbp), %rax
	movq %rax, -608(%rbp)
	movq -920(%r15), %r11
	movq -1720(%rbp), %rax
	movq %rax, 24(%r11)
	movq $0, -544(%rbp)
	movq -544(%rbp), %rax
	movq %rax, -1840(%rbp)
	movq -920(%r15), %r11
	movq -216(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1776(%rbp)
	movq -1776(%rbp), %rax
	movq %rax, -1712(%rbp)
	movq -920(%r15), %r11
	movq -536(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1640(%rbp)
	movq -1640(%rbp), %rax
	movq %rax, -728(%rbp)
	movq -920(%r15), %rax
	movq %rax, -96(%r15)
	movq -96(%r15), %rax
	movq %rax, -808(%r15)
	movq -336(%r15), %rax
	movq %rax, -160(%r15)
	movq -472(%r15), %rax
	movq %rax, -744(%r15)
	movq $42, -1600(%rbp)
	movq -208(%r15), %rax
	movq %rax, -8(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -424(%rbp)
	movq -424(%rbp), %rax
	movq %rax, -1520(%rbp)
	addq $48, -1520(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1568(%rbp)
	movq -1520(%rbp), %rax
	cmpq %rax, -1568(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -840(%rbp)
	cmpq $1, -840(%rbp)
	je then481908
	movq %r15, %rdi
	movq $48, %rsi
	callq collect
	movq $0, -2280(%rbp)
	jmp end481909
then481908:
	movq $0, -1632(%rbp)
	movq -1632(%rbp), %rax
	movq %rax, -2280(%rbp)
end481909:
	movq -2280(%rbp), %rax
	movq %rax, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $48, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $2955, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -384(%r15)
	movq -384(%r15), %r11
	movq -8(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -504(%rbp)
	movq -504(%rbp), %rax
	movq %rax, -1824(%rbp)
	movq -384(%r15), %r11
	movq -1600(%rbp), %rax
	movq %rax, 32(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1680(%rbp)
	movq -384(%r15), %r11
	movq -744(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1880(%rbp)
	movq -384(%r15), %r11
	movq -160(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1760(%rbp)
	movq -1760(%rbp), %rax
	movq %rax, -1688(%rbp)
	movq -384(%r15), %r11
	movq -808(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1624(%rbp)
	movq -1624(%rbp), %rax
	movq %rax, -712(%rbp)
	movq -384(%r15), %rax
	movq %rax, -264(%r15)
	movq -264(%r15), %rax
	movq %rax, -176(%r15)
	movq -96(%r15), %rax
	movq %rax, -544(%r15)
	movq -336(%r15), %rax
	movq %rax, -456(%r15)
	movq -472(%r15), %rax
	movq %rax, -520(%r15)
	movq $42, -408(%rbp)
	movq -208(%r15), %rax
	movq %rax, -712(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -360(%rbp)
	addq $56, -360(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -456(%rbp)
	movq -360(%rbp), %rax
	cmpq %rax, -456(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -2088(%rbp)
	cmpq $1, -2088(%rbp)
	je then481910
	movq %r15, %rdi
	movq $56, %rsi
	callq collect
	movq $0, -1176(%rbp)
	jmp end481911
then481910:
	movq $0, -672(%rbp)
	movq -672(%rbp), %rax
	movq %rax, -1176(%rbp)
end481911:
	movq -1176(%rbp), %rax
	movq %rax, -536(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -632(%r15)
	addq $56, free_ptr(%rip)
	movq -632(%r15), %r11
	movq $6029, 0(%r11)
	movq -632(%r15), %rax
	movq %rax, -256(%r15)
	movq -256(%r15), %r11
	movq -712(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1784(%rbp)
	movq -1784(%rbp), %rax
	movq %rax, -736(%rbp)
	movq -256(%r15), %r11
	movq -408(%rbp), %rax
	movq %rax, 40(%r11)
	movq $0, -576(%rbp)
	movq -576(%rbp), %rax
	movq %rax, -1736(%rbp)
	movq -256(%r15), %r11
	movq -520(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -680(%rbp)
	movq -680(%rbp), %rax
	movq %rax, -1864(%rbp)
	movq -256(%r15), %r11
	movq -456(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1656(%rbp)
	movq -1656(%rbp), %rax
	movq %rax, -616(%rbp)
	movq -256(%r15), %r11
	movq -544(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1800(%rbp)
	movq -1800(%rbp), %rax
	movq %rax, -752(%rbp)
	movq -256(%r15), %r11
	movq -176(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1248(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -256(%r15), %rax
	movq %rax, -656(%r15)
	movq -656(%r15), %rax
	movq %rax, -232(%r15)
	movq -264(%r15), %rax
	movq %rax, -56(%r15)
	movq -96(%r15), %rax
	movq %rax, -624(%r15)
	movq -336(%r15), %rax
	movq %rax, -592(%r15)
	movq -472(%r15), %rax
	movq %rax, -832(%r15)
	movq $42, -936(%rbp)
	movq -208(%r15), %rax
	movq %rax, -824(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -2272(%rbp)
	movq -2272(%rbp), %rax
	movq %rax, -848(%rbp)
	addq $64, -848(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1072(%rbp)
	movq -848(%rbp), %rax
	cmpq %rax, -1072(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -256(%rbp)
	cmpq $1, -256(%rbp)
	je then481912
	movq %r15, %rdi
	movq $64, %rsi
	callq collect
	movq $0, -1488(%rbp)
	jmp end481913
then481912:
	movq $0, -240(%rbp)
	movq -240(%rbp), %rax
	movq %rax, -1488(%rbp)
end481913:
	movq -1488(%rbp), %rax
	movq %rax, -1256(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -352(%r15)
	addq $64, free_ptr(%rip)
	movq -352(%r15), %r11
	movq $12175, 0(%r11)
	movq -352(%r15), %rax
	movq %rax, -664(%r15)
	movq -664(%r15), %r11
	movq -824(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -200(%rbp)
	movq -200(%rbp), %rax
	movq %rax, -1448(%rbp)
	movq -664(%r15), %r11
	movq -936(%rbp), %rax
	movq %rax, 48(%r11)
	movq $0, -1216(%rbp)
	movq -1216(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -664(%r15), %r11
	movq -832(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1368(%rbp)
	movq -1368(%rbp), %rax
	movq %rax, -264(%rbp)
	movq -664(%r15), %r11
	movq -592(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -56(%rbp)
	movq -56(%rbp), %rax
	movq %rax, -1312(%rbp)
	movq -664(%r15), %r11
	movq -624(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -216(%rbp)
	movq -216(%rbp), %rax
	movq %rax, -1464(%rbp)
	movq -664(%r15), %r11
	movq -56(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1240(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -664(%r15), %r11
	movq -232(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1376(%rbp)
	movq -1376(%rbp), %rax
	movq %rax, -296(%rbp)
	movq -664(%r15), %rax
	movq %rax, -168(%r15)
	movq -168(%r15), %rax
	movq %rax, -440(%r15)
	movq -656(%r15), %rax
	movq %rax, -616(%r15)
	movq -264(%r15), %rax
	movq %rax, -704(%r15)
	movq -96(%r15), %rax
	movq %rax, -88(%r15)
	movq -336(%r15), %rax
	movq %rax, -104(%r15)
	movq -472(%r15), %rax
	movq %rax, -648(%r15)
	movq $42, -2192(%rbp)
	movq -208(%r15), %rax
	movq %rax, -688(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1152(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -912(%rbp)
	addq $72, -912(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1928(%rbp)
	movq -912(%rbp), %rax
	cmpq %rax, -1928(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1472(%rbp)
	cmpq $1, -1472(%rbp)
	je then481914
	movq %r15, %rdi
	movq $72, %rsi
	callq collect
	movq $0, -72(%rbp)
	jmp end481915
then481914:
	movq $0, -1352(%rbp)
	movq -1352(%rbp), %rax
	movq %rax, -72(%rbp)
end481915:
	movq -72(%rbp), %rax
	movq %rax, -168(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -760(%r15)
	addq $72, free_ptr(%rip)
	movq -760(%r15), %r11
	movq $24465, 0(%r11)
	movq -760(%r15), %rax
	movq %rax, -416(%r15)
	movq -416(%r15), %r11
	movq -688(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1400(%rbp)
	movq -1400(%rbp), %rax
	movq %rax, -144(%rbp)
	movq -416(%r15), %r11
	movq -2192(%rbp), %rax
	movq %rax, 56(%r11)
	movq $0, -88(%rbp)
	movq -88(%rbp), %rax
	movq %rax, -312(%rbp)
	movq -416(%r15), %r11
	movq -648(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -232(%rbp)
	movq -232(%rbp), %rax
	movq %rax, -1328(%rbp)
	movq -416(%r15), %r11
	movq -104(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1272(%rbp)
	movq -1272(%rbp), %rax
	movq %rax, -1480(%rbp)
	movq -416(%r15), %r11
	movq -88(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1416(%rbp)
	movq -1416(%rbp), %rax
	movq %rax, -160(%rbp)
	movq -416(%r15), %r11
	movq -704(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -104(%rbp)
	movq -104(%rbp), %rax
	movq %rax, -328(%rbp)
	movq -416(%r15), %r11
	movq -616(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1088(%rbp)
	movq -1088(%rbp), %rax
	movq %rax, -2056(%rbp)
	movq -416(%r15), %r11
	movq -440(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -864(%rbp)
	movq -864(%rbp), %rax
	movq %rax, -2304(%rbp)
	movq -416(%r15), %rax
	movq %rax, -512(%r15)
	movq -512(%r15), %rax
	movq %rax, -568(%r15)
	movq -168(%r15), %rax
	movq %rax, -136(%r15)
	movq -656(%r15), %rax
	movq %rax, -816(%r15)
	movq -264(%r15), %rax
	movq %rax, -272(%r15)
	movq -96(%r15), %rax
	movq %rax, -280(%r15)
	movq -336(%r15), %rax
	movq %rax, -64(%r15)
	movq -472(%r15), %rax
	movq %rax, -720(%r15)
	movq $42, -2264(%rbp)
	movq -208(%r15), %rax
	movq %rax, -936(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -968(%rbp)
	movq -968(%rbp), %rax
	movq %rax, -1968(%rbp)
	addq $80, -1968(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -2160(%rbp)
	movq -1968(%rbp), %rax
	cmpq %rax, -2160(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -400(%rbp)
	cmpq $1, -400(%rbp)
	je then481916
	movq %r15, %rdi
	movq $80, %rsi
	callq collect
	movq $0, -480(%rbp)
	jmp end481917
then481916:
	movq $0, -1264(%rbp)
	movq -1264(%rbp), %rax
	movq %rax, -480(%rbp)
end481917:
	movq -480(%rbp), %rax
	movq %rax, -224(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -928(%r15)
	addq $80, free_ptr(%rip)
	movq -928(%r15), %r11
	movq $49043, 0(%r11)
	movq -928(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -936(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, -48(%rbp)
	movq -48(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -112(%r15), %r11
	movq -2264(%rbp), %rax
	movq %rax, 64(%r11)
	movq $0, -184(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -1304(%rbp)
	movq -112(%r15), %r11
	movq -720(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1224(%rbp)
	movq -1224(%rbp), %rax
	movq %rax, -1440(%rbp)
	movq -112(%r15), %r11
	movq -64(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1360(%rbp)
	movq -1360(%rbp), %rax
	movq %rax, -120(%rbp)
	movq -112(%r15), %r11
	movq -280(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -64(%rbp)
	movq -64(%rbp), %rax
	movq %rax, -304(%rbp)
	movq -112(%r15), %r11
	movq -272(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -208(%rbp)
	movq -208(%rbp), %rax
	movq %rax, -1320(%rbp)
	movq -112(%r15), %r11
	movq -816(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -80(%rbp)
	movq -80(%rbp), %rax
	movq %rax, -1456(%rbp)
	movq -112(%r15), %r11
	movq -136(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -248(%rbp)
	movq -248(%rbp), %rax
	movq %rax, -1344(%rbp)
	movq -112(%r15), %r11
	movq -568(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1288(%rbp)
	movq -1288(%rbp), %rax
	movq %rax, -1496(%rbp)
	movq -112(%r15), %rax
	movq %rax, -32(%r15)
	movq -32(%r15), %rax
	movq %rax, -448(%r15)
	movq -512(%r15), %rax
	movq %rax, -728(%r15)
	movq -168(%r15), %rax
	movq %rax, -640(%r15)
	movq -656(%r15), %rax
	movq %rax, -152(%r15)
	movq -264(%r15), %rax
	movq %rax, -880(%r15)
	movq -96(%r15), %rax
	movq %rax, -904(%r15)
	movq -336(%r15), %rax
	movq %rax, -80(%r15)
	movq -472(%r15), %rax
	movq %rax, -896(%r15)
	movq $42, -2048(%rbp)
	movq -208(%r15), %rax
	movq %rax, -856(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -2200(%rbp)
	movq -2200(%rbp), %rax
	movq %rax, -784(%rbp)
	addq $88, -784(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1008(%rbp)
	movq -784(%rbp), %rax
	cmpq %rax, -1008(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1384(%rbp)
	cmpq $1, -1384(%rbp)
	je then481918
	movq %r15, %rdi
	movq $88, %rsi
	callq collect
	movq $0, -352(%rbp)
	jmp end481919
then481918:
	movq $0, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -352(%rbp)
end481919:
	movq -352(%rbp), %rax
	movq %rax, -96(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%r15)
	addq $88, free_ptr(%rip)
	movq -224(%r15), %r11
	movq $98197, 0(%r11)
	movq -224(%r15), %rax
	movq %rax, -432(%r15)
	movq -432(%r15), %r11
	movq -856(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, -1432(%rbp)
	movq -1432(%rbp), %rax
	movq %rax, -272(%rbp)
	movq -432(%r15), %r11
	movq -2048(%rbp), %rax
	movq %rax, 72(%r11)
	movq $0, -1280(%rbp)
	movq -1280(%rbp), %rax
	movq %rax, -152(%rbp)
	movq -432(%r15), %r11
	movq -896(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1424(%rbp)
	movq -1424(%rbp), %rax
	movq %rax, -320(%rbp)
	movq -432(%r15), %r11
	movq -80(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1296(%rbp)
	movq -1296(%rbp), %rax
	movq %rax, -176(%rbp)
	movq -432(%r15), %r11
	movq -904(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -2112(%rbp)
	movq -2112(%rbp), %rax
	movq %rax, -344(%rbp)
	movq -432(%r15), %r11
	movq -880(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1936(%rbp)
	movq -1936(%rbp), %rax
	movq %rax, -928(%rbp)
	movq -432(%r15), %r11
	movq -152(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -2104(%rbp)
	movq -2104(%rbp), %rax
	movq %rax, -1160(%rbp)
	movq -432(%r15), %r11
	movq -640(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1912(%rbp)
	movq -1912(%rbp), %rax
	movq %rax, -920(%rbp)
	movq -432(%r15), %r11
	movq -728(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1000(%rbp)
	movq -1000(%rbp), %rax
	movq %rax, -2224(%rbp)
	movq -432(%r15), %r11
	movq -448(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -768(%rbp)
	movq -768(%rbp), %rax
	movq %rax, -1992(%rbp)
	movq -432(%r15), %rax
	movq %rax, -848(%r15)
	movq -848(%r15), %rax
	movq %rax, -128(%r15)
	movq -32(%r15), %rax
	movq %rax, -600(%r15)
	movq -512(%r15), %rax
	movq %rax, -736(%r15)
	movq -168(%r15), %rax
	movq %rax, -864(%r15)
	movq -656(%r15), %rax
	movq %rax, -576(%r15)
	movq -264(%r15), %rax
	movq %rax, -248(%r15)
	movq -96(%r15), %rax
	movq %rax, -368(%r15)
	movq -336(%r15), %rax
	movq %rax, -792(%r15)
	movq -472(%r15), %rax
	movq %rax, -304(%r15)
	movq $42, -1728(%rbp)
	movq -208(%r15), %rax
	movq %rax, -528(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -1856(%rbp)
	movq -1856(%rbp), %rax
	movq %rax, -552(%rbp)
	addq $96, -552(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1808(%rbp)
	movq -552(%rbp), %rax
	cmpq %rax, -1808(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1408(%rbp)
	cmpq $1, -1408(%rbp)
	je then481920
	movq %r15, %rdi
	movq $96, %rsi
	callq collect
	movq $0, -336(%rbp)
	jmp end481921
then481920:
	movq $0, -2120(%rbp)
	movq -2120(%rbp), %rax
	movq %rax, -336(%rbp)
end481921:
	movq -336(%rbp), %rax
	movq %rax, -832(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -552(%r15)
	addq $96, free_ptr(%rip)
	movq -552(%r15), %r11
	movq $196503, 0(%r11)
	movq -552(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -528(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, -2168(%rbp)
	movq -2168(%rbp), %rax
	movq %rax, -1168(%rbp)
	movq -72(%r15), %r11
	movq -1728(%rbp), %rax
	movq %rax, 80(%r11)
	movq $0, -1984(%rbp)
	movq -1984(%rbp), %rax
	movq %rax, -984(%rbp)
	movq -72(%r15), %r11
	movq -304(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, -2144(%rbp)
	movq -2144(%rbp), %rax
	movq %rax, -1208(%rbp)
	movq -72(%r15), %r11
	movq -792(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -1976(%rbp)
	movq -1976(%rbp), %rax
	movq %rax, -976(%rbp)
	movq -72(%r15), %r11
	movq -368(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -2296(%rbp)
	movq -72(%r15), %r11
	movq -248(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -824(%rbp)
	movq -824(%rbp), %rax
	movq %rax, -2024(%rbp)
	movq -72(%r15), %r11
	movq -576(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1200(%rbp)
	movq -1200(%rbp), %rax
	movq %rax, -2136(%rbp)
	movq -72(%r15), %r11
	movq -864(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -944(%rbp)
	movq -944(%rbp), %rax
	movq %rax, -1952(%rbp)
	movq -72(%r15), %r11
	movq -736(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1136(%rbp)
	movq -1136(%rbp), %rax
	movq %rax, -2152(%rbp)
	movq -72(%r15), %r11
	movq -600(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -896(%rbp)
	movq -896(%rbp), %rax
	movq %rax, -1888(%rbp)
	movq -72(%r15), %r11
	movq -128(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1128(%rbp)
	movq -1128(%rbp), %rax
	movq %rax, -2176(%rbp)
	movq -72(%r15), %rax
	movq %rax, -496(%r15)
	movq -496(%r15), %rax
	movq %rax, -200(%r15)
	movq -848(%r15), %rax
	movq %rax, -344(%r15)
	movq -32(%r15), %rax
	movq %rax, -696(%r15)
	movq -512(%r15), %rax
	movq %rax, -376(%r15)
	movq -168(%r15), %rax
	movq %rax, -800(%r15)
	movq -656(%r15), %rax
	movq %rax, -488(%r15)
	movq -264(%r15), %rax
	movq %rax, -888(%r15)
	movq -96(%r15), %rax
	movq %rax, -320(%r15)
	movq -336(%r15), %rax
	movq %rax, -608(%r15)
	movq -472(%r15), %rax
	movq %rax, -504(%r15)
	movq $42, -1672(%rbp)
	movq -208(%r15), %rax
	movq %rax, -288(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -2248(%rbp)
	movq -2248(%rbp), %rax
	movq %rax, -1040(%rbp)
	addq $104, -1040(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -816(%rbp)
	movq -1040(%rbp), %rax
	cmpq %rax, -816(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1392(%rbp)
	cmpq $1, -1392(%rbp)
	je then481922
	movq %r15, %rdi
	movq $104, %rsi
	callq collect
	movq $0, -136(%rbp)
	jmp end481923
then481922:
	movq $0, -2096(%rbp)
	movq -2096(%rbp), %rax
	movq %rax, -136(%rbp)
end481923:
	movq -136(%rbp), %rax
	movq %rax, -808(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -424(%r15)
	addq $104, free_ptr(%rip)
	movq -424(%r15), %r11
	movq $393113, 0(%r11)
	movq -424(%r15), %rax
	movq %rax, -40(%r15)
	movq -40(%r15), %r11
	movq -288(%r15), %rax
	movq %rax, 96(%r11)
	movq $0, -2072(%rbp)
	movq -2072(%rbp), %rax
	movq %rax, -872(%rbp)
	movq -40(%r15), %r11
	movq -1672(%rbp), %rax
	movq %rax, 88(%r11)
	movq $0, -1920(%rbp)
	movq -1920(%rbp), %rax
	movq %rax, -1112(%rbp)
	movq -40(%r15), %r11
	movq -504(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, -2080(%rbp)
	movq -2080(%rbp), %rax
	movq %rax, -904(%rbp)
	movq -40(%r15), %r11
	movq -608(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, -1944(%rbp)
	movq -1944(%rbp), %rax
	movq %rax, -1192(%rbp)
	movq -40(%r15), %r11
	movq -320(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -2128(%rbp)
	movq -2128(%rbp), %rax
	movq %rax, -960(%rbp)
	movq -40(%r15), %r11
	movq -888(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -1960(%rbp)
	movq -1960(%rbp), %rax
	movq %rax, -1184(%rbp)
	movq -40(%r15), %r11
	movq -488(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -952(%rbp)
	movq -40(%r15), %r11
	movq -800(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -792(%rbp)
	movq -792(%rbp), %rax
	movq %rax, -2216(%rbp)
	movq -40(%r15), %r11
	movq -376(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -2016(%rbp)
	movq -40(%r15), %r11
	movq -696(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -800(%rbp)
	movq -800(%rbp), %rax
	movq %rax, -2232(%rbp)
	movq -40(%r15), %r11
	movq -344(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -2008(%rbp)
	movq -40(%r15), %r11
	movq -200(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -856(%rbp)
	movq -856(%rbp), %rax
	movq %rax, -2256(%rbp)
	movq -40(%r15), %rax
	movq %rax, -872(%r15)
	movq -872(%r15), %rax
	movq %rax, -184(%r15)
	movq -496(%r15), %rax
	movq %rax, -840(%r15)
	movq -848(%r15), %rax
	movq %rax, -16(%r15)
	movq -32(%r15), %rax
	movq %rax, -312(%r15)
	movq -512(%r15), %rax
	movq %rax, -408(%r15)
	movq -168(%r15), %rax
	movq %rax, -672(%r15)
	movq -656(%r15), %rax
	movq %rax, -912(%r15)
	movq -264(%r15), %rax
	movq %rax, -296(%r15)
	movq -96(%r15), %rax
	movq %rax, -680(%r15)
	movq -336(%r15), %rax
	movq %rax, -480(%r15)
	movq -472(%r15), %rax
	movq %rax, -560(%r15)
	movq $42, -1096(%rbp)
	movq -208(%r15), %rax
	movq %rax, -584(%r15)
	movq free_ptr(%rip), %rax
	movq %rax, -776(%rbp)
	movq -776(%rbp), %rax
	movq %rax, -2000(%rbp)
	addq $112, -2000(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -2312(%rbp)
	movq -2000(%rbp), %rax
	cmpq %rax, -2312(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then481924
	movq %r15, %rdi
	movq $112, %rsi
	callq collect
	movq $0, -1232(%rbp)
	jmp end481925
then481924:
	movq $0, -2288(%rbp)
	movq -2288(%rbp), %rax
	movq %rax, -1232(%rbp)
end481925:
	movq -1232(%rbp), %rax
	movq %rax, -2032(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -24(%r15)
	addq $112, free_ptr(%rip)
	movq -24(%r15), %r11
	movq $786331, 0(%r11)
	movq -24(%r15), %rax
	movq %rax, -768(%r15)
	movq -768(%r15), %r11
	movq -584(%r15), %rax
	movq %rax, 104(%r11)
	movq $0, -1120(%rbp)
	movq -1120(%rbp), %rax
	movq %rax, -1904(%rbp)
	movq -768(%r15), %r11
	movq -1096(%rbp), %rax
	movq %rax, 96(%r11)
	movq $0, -888(%rbp)
	movq -888(%rbp), %rax
	movq %rax, -2064(%rbp)
	movq -768(%r15), %r11
	movq -560(%r15), %rax
	movq %rax, 88(%r11)
	movq $0, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -1896(%rbp)
	movq -768(%r15), %r11
	movq -480(%r15), %rax
	movq %rax, 80(%r11)
	movq $0, -880(%rbp)
	movq -880(%rbp), %rax
	movq %rax, -2184(%rbp)
	movq -768(%r15), %r11
	movq -680(%r15), %rax
	movq %rax, 72(%r11)
	movq $0, -464(%rbp)
	movq -464(%rbp), %rax
	movq %rax, -1504(%rbp)
	movq -768(%r15), %r11
	movq -296(%r15), %rax
	movq %rax, 64(%r11)
	movq $0, -416(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -1552(%rbp)
	movq -768(%r15), %r11
	movq -912(%r15), %rax
	movq %rax, 56(%r11)
	movq $0, -472(%rbp)
	movq -472(%rbp), %rax
	movq %rax, -1512(%rbp)
	movq -768(%r15), %r11
	movq -672(%r15), %rax
	movq %rax, 48(%r11)
	movq $0, -1528(%rbp)
	movq -1528(%rbp), %rax
	movq %rax, -1560(%rbp)
	movq -768(%r15), %r11
	movq -408(%r15), %rax
	movq %rax, 40(%r11)
	movq $0, -1592(%rbp)
	movq -1592(%rbp), %rax
	movq %rax, -384(%rbp)
	movq -768(%r15), %r11
	movq -312(%r15), %rax
	movq %rax, 32(%r11)
	movq $0, -1544(%rbp)
	movq -1544(%rbp), %rax
	movq %rax, -432(%rbp)
	movq -768(%r15), %r11
	movq -16(%r15), %rax
	movq %rax, 24(%r11)
	movq $0, -1576(%rbp)
	movq -1576(%rbp), %rax
	movq %rax, -368(%rbp)
	movq -768(%r15), %r11
	movq -840(%r15), %rax
	movq %rax, 16(%r11)
	movq $0, -1536(%rbp)
	movq -1536(%rbp), %rax
	movq %rax, -440(%rbp)
	movq -768(%r15), %r11
	movq -184(%r15), %rax
	movq %rax, 8(%r11)
	movq $0, -1584(%rbp)
	movq -1584(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -768(%r15), %rax
	movq %rax, -120(%r15)
	movq -120(%r15), %r11
	movq 96(%r11), %rax
	movq %rax, -1336(%rbp)
	movq -1336(%rbp), %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_int
	subq $936, %r15
	addq $2360, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
