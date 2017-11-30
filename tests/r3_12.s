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

	movq $1, -1808(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -992(%rbp)
	movq -992(%rbp), %rax
	movq %rax, -1800(%rbp)
	addq $16, -1800(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -912(%rbp)
	movq -1800(%rbp), %rax
	cmpq %rax, -912(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -248(%rbp)
	cmpq $1, -248(%rbp)
	je then479842
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1400(%rbp)
	jmp end479843
then479842:
	movq $0, -384(%rbp)
	movq -384(%rbp), %rax
	movq %rax, -1400(%rbp)
end479843:
	movq -1400(%rbp), %rax
	movq %rax, -1096(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -16(%r15)
	addq $16, free_ptr(%rip)
	movq -16(%r15), %r11
	movq $3, 0(%r11)
	movq -16(%r15), %rax
	movq %rax, -112(%r15)
	movq -112(%r15), %r11
	movq -1808(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -392(%rbp)
	movq -392(%rbp), %rax
	movq %rax, -1480(%rbp)
	movq -112(%r15), %rax
	movq %rax, -88(%r15)
	movq $1, -848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1984(%rbp)
	movq -1984(%rbp), %rax
	movq %rax, -824(%rbp)
	addq $16, -824(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -928(%rbp)
	movq -824(%rbp), %rax
	cmpq %rax, -928(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1320(%rbp)
	cmpq $1, -1320(%rbp)
	je then479844
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -448(%rbp)
	jmp end479845
then479844:
	movq $0, -1920(%rbp)
	movq -1920(%rbp), %rax
	movq %rax, -448(%rbp)
end479845:
	movq -448(%rbp), %rax
	movq %rax, -104(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -496(%r15)
	addq $16, free_ptr(%rip)
	movq -496(%r15), %r11
	movq $3, 0(%r11)
	movq -496(%r15), %rax
	movq %rax, -472(%r15)
	movq -472(%r15), %r11
	movq -848(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1912(%rbp)
	movq -1912(%rbp), %rax
	movq %rax, -1016(%rbp)
	movq -472(%r15), %rax
	movq %rax, -224(%r15)
	movq $1, -1840(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1008(%rbp)
	movq -1008(%rbp), %rax
	movq %rax, -1824(%rbp)
	addq $16, -1824(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1936(%rbp)
	movq -1824(%rbp), %rax
	cmpq %rax, -1936(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then479846
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1408(%rbp)
	jmp end479847
then479846:
	movq $0, -1944(%rbp)
	movq -1944(%rbp), %rax
	movq %rax, -1408(%rbp)
end479847:
	movq -1408(%rbp), %rax
	movq %rax, -1832(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -32(%r15)
	addq $16, free_ptr(%rip)
	movq -32(%r15), %r11
	movq $3, 0(%r11)
	movq -32(%r15), %rax
	movq %rax, -104(%r15)
	movq -104(%r15), %r11
	movq -1840(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -952(%rbp)
	movq -952(%rbp), %rax
	movq %rax, -2016(%rbp)
	movq -104(%r15), %rax
	movq %rax, -136(%r15)
	movq $1, -1848(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1056(%rbp)
	movq -1056(%rbp), %rax
	movq %rax, -832(%rbp)
	addq $16, -832(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -920(%rbp)
	movq -832(%rbp), %rax
	cmpq %rax, -920(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -304(%rbp)
	cmpq $1, -304(%rbp)
	je then479848
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1440(%rbp)
	jmp end479849
then479848:
	movq $0, -936(%rbp)
	movq -936(%rbp), %rax
	movq %rax, -1440(%rbp)
end479849:
	movq -1440(%rbp), %rax
	movq %rax, -840(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -488(%r15)
	addq $16, free_ptr(%rip)
	movq -488(%r15), %r11
	movq $3, 0(%r11)
	movq -488(%r15), %rax
	movq %rax, -360(%r15)
	movq -360(%r15), %r11
	movq -1848(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -984(%rbp)
	movq -984(%rbp), %rax
	movq %rax, -2056(%rbp)
	movq -360(%r15), %rax
	movq %rax, -448(%r15)
	movq $1, -864(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -2032(%rbp)
	movq -2032(%rbp), %rax
	movq %rax, -856(%rbp)
	addq $16, -856(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1744(%rbp)
	movq -856(%rbp), %rax
	cmpq %rax, -1744(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1352(%rbp)
	cmpq $1, -1352(%rbp)
	je then479850
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -472(%rbp)
	jmp end479851
then479850:
	movq $0, -2008(%rbp)
	movq -2008(%rbp), %rax
	movq %rax, -472(%rbp)
end479851:
	movq -472(%rbp), %rax
	movq %rax, -880(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -464(%r15)
	addq $16, free_ptr(%rip)
	movq -464(%r15), %r11
	movq $3, 0(%r11)
	movq -464(%r15), %rax
	movq %rax, -264(%r15)
	movq -264(%r15), %r11
	movq -864(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -2024(%rbp)
	movq -2024(%rbp), %rax
	movq %rax, -968(%rbp)
	movq -264(%r15), %rax
	movq %rax, -176(%r15)
	movq $1, -1792(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -808(%rbp)
	movq -808(%rbp), %rax
	movq %rax, -1968(%rbp)
	addq $16, -1968(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1872(%rbp)
	movq -1968(%rbp), %rax
	cmpq %rax, -1872(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -424(%rbp)
	cmpq $1, -424(%rbp)
	je then479852
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1288(%rbp)
	jmp end479853
then479852:
	movq $0, -1024(%rbp)
	movq -1024(%rbp), %rax
	movq %rax, -1288(%rbp)
end479853:
	movq -1288(%rbp), %rax
	movq %rax, -1896(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -160(%r15)
	addq $16, free_ptr(%rip)
	movq -160(%r15), %r11
	movq $3, 0(%r11)
	movq -160(%r15), %rax
	movq %rax, -352(%r15)
	movq -352(%r15), %r11
	movq -1792(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1064(%rbp)
	movq -1064(%rbp), %rax
	movq %rax, -1952(%rbp)
	movq -352(%r15), %rax
	movq %rax, -424(%r15)
	movq $1, -2040(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1816(%rbp)
	movq -1816(%rbp), %rax
	movq %rax, -1000(%rbp)
	addq $16, -1000(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -736(%rbp)
	movq -1000(%rbp), %rax
	cmpq %rax, -736(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1368(%rbp)
	cmpq $1, -1368(%rbp)
	je then479854
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -216(%rbp)
	jmp end479855
then479854:
	movq $0, -1048(%rbp)
	movq -1048(%rbp), %rax
	movq %rax, -216(%rbp)
end479855:
	movq -216(%rbp), %rax
	movq %rax, -896(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -208(%r15)
	addq $16, free_ptr(%rip)
	movq -208(%r15), %r11
	movq $3, 0(%r11)
	movq -208(%r15), %rax
	movq %rax, -328(%r15)
	movq -328(%r15), %r11
	movq -2040(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1992(%rbp)
	movq -1992(%rbp), %rax
	movq %rax, -944(%rbp)
	movq -328(%r15), %rax
	movq %rax, -8(%r15)
	movq $1, -784(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -688(%rbp)
	movq -688(%rbp), %rax
	movq %rax, -776(%rbp)
	addq $16, -776(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1728(%rbp)
	movq -776(%rbp), %rax
	cmpq %rax, -1728(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1392(%rbp)
	cmpq $1, -1392(%rbp)
	je then479856
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -256(%rbp)
	jmp end479857
then479856:
	movq $0, -1976(%rbp)
	movq -1976(%rbp), %rax
	movq %rax, -256(%rbp)
end479857:
	movq -256(%rbp), %rax
	movq %rax, -1880(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -312(%r15)
	addq $16, free_ptr(%rip)
	movq -312(%r15), %r11
	movq $3, 0(%r11)
	movq -312(%r15), %rax
	movq %rax, -192(%r15)
	movq -192(%r15), %r11
	movq -784(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -2000(%rbp)
	movq -2000(%rbp), %rax
	movq %rax, -960(%rbp)
	movq -192(%r15), %rax
	movq %rax, -288(%r15)
	movq $1, -1784(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -704(%rbp)
	movq -704(%rbp), %rax
	movq %rax, -1776(%rbp)
	addq $16, -1776(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -728(%rbp)
	movq -1776(%rbp), %rax
	cmpq %rax, -728(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -464(%rbp)
	cmpq $1, -464(%rbp)
	je then479858
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1344(%rbp)
	jmp end479859
then479858:
	movq $0, -1032(%rbp)
	movq -1032(%rbp), %rax
	movq %rax, -1344(%rbp)
end479859:
	movq -1344(%rbp), %rax
	movq %rax, -1888(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -256(%r15)
	addq $16, free_ptr(%rip)
	movq -256(%r15), %r11
	movq $3, 0(%r11)
	movq -256(%r15), %rax
	movq %rax, -280(%r15)
	movq -280(%r15), %r11
	movq -1784(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1040(%rbp)
	movq -1040(%rbp), %rax
	movq %rax, -1928(%rbp)
	movq -280(%r15), %rax
	movq %rax, -272(%r15)
	movq $1, -792(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1712(%rbp)
	movq -1712(%rbp), %rax
	movq %rax, -800(%rbp)
	addq $16, -800(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -752(%rbp)
	movq -800(%rbp), %rax
	cmpq %rax, -752(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1448(%rbp)
	cmpq $1, -1448(%rbp)
	je then479860
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -344(%rbp)
	jmp end479861
then479860:
	movq $0, -2048(%rbp)
	movq -2048(%rbp), %rax
	movq %rax, -344(%rbp)
end479861:
	movq -344(%rbp), %rax
	movq %rax, -888(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -240(%r15)
	addq $16, free_ptr(%rip)
	movq -240(%r15), %r11
	movq $3, 0(%r11)
	movq -240(%r15), %rax
	movq %rax, -128(%r15)
	movq -128(%r15), %r11
	movq -792(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1856(%rbp)
	movq -1856(%rbp), %rax
	movq %rax, -904(%rbp)
	movq -128(%r15), %rax
	movq %rax, -344(%r15)
	movq $1, -1768(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -760(%rbp)
	movq -760(%rbp), %rax
	movq %rax, -1760(%rbp)
	addq $16, -1760(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1688(%rbp)
	movq -1760(%rbp), %rax
	cmpq %rax, -1688(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then479862
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1128(%rbp)
	jmp end479863
then479862:
	movq $0, -1864(%rbp)
	movq -1864(%rbp), %rax
	movq %rax, -1128(%rbp)
end479863:
	movq -1128(%rbp), %rax
	movq %rax, -1960(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -304(%r15)
	addq $16, free_ptr(%rip)
	movq -304(%r15), %r11
	movq $3, 0(%r11)
	movq -304(%r15), %rax
	movq %rax, -384(%r15)
	movq -384(%r15), %r11
	movq -1768(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -872(%rbp)
	movq -872(%rbp), %rax
	movq %rax, -1904(%rbp)
	movq -384(%r15), %rax
	movq %rax, -200(%r15)
	movq $1, -1752(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1720(%rbp)
	movq -1720(%rbp), %rax
	movq %rax, -768(%rbp)
	addq $16, -768(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -680(%rbp)
	movq -768(%rbp), %rax
	cmpq %rax, -680(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then479864
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1160(%rbp)
	jmp end479865
then479864:
	movq $0, -816(%rbp)
	movq -816(%rbp), %rax
	movq %rax, -1160(%rbp)
end479865:
	movq -1160(%rbp), %rax
	movq %rax, -976(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -376(%r15)
	addq $16, free_ptr(%rip)
	movq -376(%r15), %r11
	movq $3, 0(%r11)
	movq -376(%r15), %rax
	movq %rax, -64(%r15)
	movq -64(%r15), %r11
	movq -1752(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -496(%rbp)
	movq -496(%rbp), %rax
	movq %rax, -1560(%rbp)
	movq -64(%r15), %rax
	movq %rax, -80(%r15)
	movq $1, -272(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1144(%rbp)
	movq -1144(%rbp), %rax
	movq %rax, -232(%rbp)
	addq $16, -232(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1112(%rbp)
	movq -232(%rbp), %rax
	cmpq %rax, -1112(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1696(%rbp)
	cmpq $1, -1696(%rbp)
	je then479866
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -720(%rbp)
	jmp end479867
then479866:
	movq $0, -1520(%rbp)
	movq -1520(%rbp), %rax
	movq %rax, -720(%rbp)
end479867:
	movq -720(%rbp), %rax
	movq %rax, -632(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -392(%r15)
	addq $16, free_ptr(%rip)
	movq -392(%r15), %r11
	movq $3, 0(%r11)
	movq -392(%r15), %rax
	movq %rax, -72(%r15)
	movq -72(%r15), %r11
	movq -272(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1504(%rbp)
	movq -1504(%rbp), %rax
	movq %rax, -576(%rbp)
	movq -72(%r15), %rax
	movq %rax, -320(%r15)
	movq $1, -1312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -192(%rbp)
	movq -192(%rbp), %rax
	movq %rax, -1328(%rbp)
	addq $16, -1328(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1104(%rbp)
	movq -1328(%rbp), %rax
	cmpq %rax, -1104(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -696(%rbp)
	cmpq $1, -696(%rbp)
	je then479868
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1736(%rbp)
	jmp end479869
then479868:
	movq $0, -512(%rbp)
	movq -512(%rbp), %rax
	movq %rax, -1736(%rbp)
end479869:
	movq -1736(%rbp), %rax
	movq %rax, -1640(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -368(%r15)
	addq $16, free_ptr(%rip)
	movq -368(%r15), %r11
	movq $3, 0(%r11)
	movq -368(%r15), %rax
	movq %rax, -432(%r15)
	movq -432(%r15), %r11
	movq -1312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -536(%rbp)
	movq -536(%rbp), %rax
	movq %rax, -1600(%rbp)
	movq -432(%r15), %rax
	movq %rax, -48(%r15)
	movq $1, -320(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1208(%rbp)
	movq -1208(%rbp), %rax
	movq %rax, -336(%rbp)
	addq $16, -336(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -96(%rbp)
	movq -336(%rbp), %rax
	cmpq %rax, -96(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1704(%rbp)
	cmpq $1, -1704(%rbp)
	je then479870
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -744(%rbp)
	jmp end479871
then479870:
	movq $0, -528(%rbp)
	movq -528(%rbp), %rax
	movq %rax, -744(%rbp)
end479871:
	movq -744(%rbp), %rax
	movq %rax, -648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -120(%r15)
	addq $16, free_ptr(%rip)
	movq -120(%r15), %r11
	movq $3, 0(%r11)
	movq -120(%r15), %rax
	movq %rax, -456(%r15)
	movq -456(%r15), %r11
	movq -320(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1544(%rbp)
	movq -1544(%rbp), %rax
	movq %rax, -624(%rbp)
	movq -456(%r15), %rax
	movq %rax, -232(%r15)
	movq $1, -312(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -368(%rbp)
	movq -368(%rbp), %rax
	movq %rax, -1224(%rbp)
	addq $16, -1224(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1488(%rbp)
	movq -1224(%rbp), %rax
	cmpq %rax, -1488(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1608(%rbp)
	cmpq $1, -1608(%rbp)
	je then479872
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -488(%rbp)
	jmp end479873
then479872:
	movq $0, -1624(%rbp)
	movq -1624(%rbp), %rax
	movq %rax, -488(%rbp)
end479873:
	movq -488(%rbp), %rax
	movq %rax, -1648(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -336(%r15)
	addq $16, free_ptr(%rip)
	movq -336(%r15), %r11
	movq $3, 0(%r11)
	movq -336(%r15), %rax
	movq %rax, -56(%r15)
	movq -56(%r15), %r11
	movq -312(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1632(%rbp)
	movq -1632(%rbp), %rax
	movq %rax, -552(%rbp)
	movq -56(%r15), %rax
	movq %rax, -168(%r15)
	movq $1, -1216(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -224(%rbp)
	movq -224(%rbp), %rax
	movq %rax, -1136(%rbp)
	addq $16, -1136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1384(%rbp)
	movq -1136(%rbp), %rax
	cmpq %rax, -1384(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -712(%rbp)
	cmpq $1, -712(%rbp)
	je then479874
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1680(%rbp)
	jmp end479875
then479874:
	movq $0, -568(%rbp)
	movq -568(%rbp), %rax
	movq %rax, -1680(%rbp)
end479875:
	movq -1680(%rbp), %rax
	movq %rax, -1672(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -96(%r15)
	addq $16, free_ptr(%rip)
	movq -96(%r15), %r11
	movq $3, 0(%r11)
	movq -96(%r15), %rax
	movq %rax, -184(%r15)
	movq -184(%r15), %r11
	movq -1216(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -560(%rbp)
	movq -560(%rbp), %rax
	movq %rax, -1496(%rbp)
	movq -184(%r15), %rax
	movq %rax, -216(%r15)
	movq $1, -160(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1256(%rbp)
	movq -1256(%rbp), %rax
	movq %rax, -136(%rbp)
	addq $16, -136(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -432(%rbp)
	movq -136(%rbp), %rax
	cmpq %rax, -432(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1584(%rbp)
	cmpq $1, -1584(%rbp)
	je then479876
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -504(%rbp)
	jmp end479877
then479876:
	movq $0, -1568(%rbp)
	movq -1568(%rbp), %rax
	movq %rax, -504(%rbp)
end479877:
	movq -504(%rbp), %rax
	movq %rax, -656(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -144(%r15)
	addq $16, free_ptr(%rip)
	movq -144(%r15), %r11
	movq $3, 0(%r11)
	movq -144(%r15), %rax
	movq %rax, -504(%r15)
	movq -504(%r15), %r11
	movq -160(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -1576(%rbp)
	movq -1576(%rbp), %rax
	movq %rax, -520(%rbp)
	movq -504(%r15), %rax
	movq %rax, -408(%r15)
	movq $1, -1184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -296(%rbp)
	movq -296(%rbp), %rax
	movq %rax, -1192(%rbp)
	addq $16, -1192(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -1416(%rbp)
	movq -1192(%rbp), %rax
	cmpq %rax, -1416(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -600(%rbp)
	cmpq $1, -600(%rbp)
	je then479878
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1536(%rbp)
	jmp end479879
then479878:
	movq $0, -1592(%rbp)
	movq -1592(%rbp), %rax
	movq %rax, -1536(%rbp)
end479879:
	movq -1536(%rbp), %rax
	movq %rax, -1664(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -440(%r15)
	addq $16, free_ptr(%rip)
	movq -440(%r15), %r11
	movq $3, 0(%r11)
	movq -440(%r15), %rax
	movq %rax, -296(%r15)
	movq -296(%r15), %r11
	movq -1184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -584(%rbp)
	movq -584(%rbp), %rax
	movq %rax, -1512(%rbp)
	movq -296(%r15), %rax
	movq %rax, -40(%r15)
	movq $1, -1200(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1336(%rbp)
	movq -1336(%rbp), %rax
	movq %rax, -200(%rbp)
	addq $16, -200(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -456(%rbp)
	movq -200(%rbp), %rax
	cmpq %rax, -456(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -592(%rbp)
	cmpq $1, -592(%rbp)
	je then479880
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -1528(%rbp)
	jmp end479881
then479880:
	movq $0, -608(%rbp)
	movq -608(%rbp), %rax
	movq %rax, -1528(%rbp)
end479881:
	movq -1528(%rbp), %rax
	movq %rax, -664(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -480(%r15)
	addq $16, free_ptr(%rip)
	movq -480(%r15), %r11
	movq $3, 0(%r11)
	movq -480(%r15), %rax
	movq %rax, -416(%r15)
	movq -416(%r15), %r11
	movq -1200(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -616(%rbp)
	movq -616(%rbp), %rax
	movq %rax, -1552(%rbp)
	movq -416(%r15), %rax
	movq %rax, -400(%r15)
	movq $1, -184(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -1360(%rbp)
	movq -1360(%rbp), %rax
	movq %rax, -208(%rbp)
	addq $16, -208(%rbp)
	movq fromspace_end(%rip), %rax
	movq %rax, -328(%rbp)
	movq -208(%rbp), %rax
	cmpq %rax, -328(%rbp)
	sete %al
	movzbq %al, %rax
	movq %rax, -1616(%rbp)
	cmpq $1, -1616(%rbp)
	je then479882
	movq %r15, %rdi
	movq $16, %rsi
	callq collect
	movq $0, -544(%rbp)
	jmp end479883
then479882:
	movq $0, -1296(%rbp)
	movq -1296(%rbp), %rax
	movq %rax, -544(%rbp)
end479883:
	movq -544(%rbp), %rax
	movq %rax, -672(%rbp)
	movq free_ptr(%rip), %rax
	movq %rax, -248(%r15)
	addq $16, free_ptr(%rip)
	movq -248(%r15), %r11
	movq $3, 0(%r11)
	movq -248(%r15), %rax
	movq %rax, -24(%r15)
	movq -24(%r15), %r11
	movq -184(%rbp), %rax
	movq %rax, 8(%r11)
	movq $0, -640(%rbp)
	movq -640(%rbp), %rax
	movq %rax, -1656(%rbp)
	movq -24(%r15), %rax
	movq %rax, -152(%r15)
	movq -88(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1424(%rbp)
	movq -224(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1168(%rbp)
	movq -136(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1432(%rbp)
	movq -448(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1176(%rbp)
	movq -176(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -440(%rbp)
	movq -424(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -176(%rbp)
	movq -8(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -416(%rbp)
	movq -288(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -168(%rbp)
	movq -272(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -400(%rbp)
	movq -344(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -144(%rbp)
	movq -200(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -408(%rbp)
	movq -80(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -152(%rbp)
	movq -320(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1376(%rbp)
	movq -48(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1152(%rbp)
	movq -232(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1472(%rbp)
	movq -168(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1248(%rbp)
	movq -216(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1456(%rbp)
	movq -408(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1232(%rbp)
	movq -40(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1464(%rbp)
	movq -400(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -1240(%rbp)
	movq -152(%r15), %r11
	movq 8(%r11), %rax
	movq %rax, -480(%rbp)
	movq -480(%rbp), %rax
	movq %rax, -120(%rbp)
	addq $21, -120(%rbp)
	movq -1240(%rbp), %rax
	movq %rax, -360(%rbp)
	movq -120(%rbp), %rax
	addq %rax, -360(%rbp)
	movq -1464(%rbp), %rax
	movq %rax, -112(%rbp)
	movq -360(%rbp), %rax
	addq %rax, -112(%rbp)
	movq -1232(%rbp), %rax
	movq %rax, -352(%rbp)
	movq -112(%rbp), %rax
	addq %rax, -352(%rbp)
	movq -1456(%rbp), %rax
	movq %rax, -128(%rbp)
	movq -352(%rbp), %rax
	addq %rax, -128(%rbp)
	movq -1248(%rbp), %rax
	movq %rax, -376(%rbp)
	movq -128(%rbp), %rax
	addq %rax, -376(%rbp)
	movq -1472(%rbp), %rax
	movq %rax, -56(%rbp)
	movq -376(%rbp), %rax
	addq %rax, -56(%rbp)
	movq -1152(%rbp), %rax
	movq %rax, -240(%rbp)
	movq -56(%rbp), %rax
	addq %rax, -240(%rbp)
	movq -1376(%rbp), %rax
	movq %rax, -1080(%rbp)
	movq -240(%rbp), %rax
	addq %rax, -1080(%rbp)
	movq -152(%rbp), %rax
	movq %rax, -1272(%rbp)
	movq -1080(%rbp), %rax
	addq %rax, -1272(%rbp)
	movq -408(%rbp), %rax
	movq %rax, -1072(%rbp)
	movq -1272(%rbp), %rax
	addq %rax, -1072(%rbp)
	movq -144(%rbp), %rax
	movq %rax, -1264(%rbp)
	movq -1072(%rbp), %rax
	addq %rax, -1264(%rbp)
	movq -400(%rbp), %rax
	movq %rax, -1088(%rbp)
	movq -1264(%rbp), %rax
	addq %rax, -1088(%rbp)
	movq -168(%rbp), %rax
	movq %rax, -1280(%rbp)
	movq -1088(%rbp), %rax
	addq %rax, -1280(%rbp)
	movq -416(%rbp), %rax
	movq %rax, -1120(%rbp)
	movq -1280(%rbp), %rax
	addq %rax, -1120(%rbp)
	movq -176(%rbp), %rax
	movq %rax, -1304(%rbp)
	movq -1120(%rbp), %rax
	addq %rax, -1304(%rbp)
	movq -440(%rbp), %rax
	movq %rax, -80(%rbp)
	movq -1304(%rbp), %rax
	addq %rax, -80(%rbp)
	movq -1176(%rbp), %rax
	movq %rax, -288(%rbp)
	movq -80(%rbp), %rax
	addq %rax, -288(%rbp)
	movq -1432(%rbp), %rax
	movq %rax, -72(%rbp)
	movq -288(%rbp), %rax
	addq %rax, -72(%rbp)
	movq -1168(%rbp), %rax
	movq %rax, -280(%rbp)
	movq -72(%rbp), %rax
	addq %rax, -280(%rbp)
	movq -1424(%rbp), %rax
	movq %rax, -88(%rbp)
	movq -280(%rbp), %rax
	addq %rax, -88(%rbp)
	movq -88(%rbp), %rax

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
