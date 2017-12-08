	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $408, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -160(%rbp)
	andq $7, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then99702
	callq exit
	jmp end99703
then99702:
	movq %rbx, -160(%rbp)
	sarq $3, -160(%rbp)
end99703:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -208(%rbp)
	andq $7, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then99704
	callq exit
	jmp end99705
then99704:
	movq %rbx, -208(%rbp)
	sarq $3, -208(%rbp)
end99705:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -344(%rbp)
	andq $7, -344(%rbp)
	cmpq $1, -344(%rbp)
	je then99706
	callq exit
	jmp end99707
then99706:
	movq %rbx, -344(%rbp)
	sarq $3, -344(%rbp)
end99707:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -176(%rbp)
	andq $7, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then99708
	callq exit
	jmp end99709
then99708:
	movq %rbx, -176(%rbp)
	sarq $3, -176(%rbp)
end99709:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -152(%rbp)
	andq $7, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then99710
	callq exit
	jmp end99711
then99710:
	movq %rbx, -152(%rbp)
	sarq $3, -152(%rbp)
end99711:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -352(%rbp)
	andq $7, -352(%rbp)
	cmpq $1, -352(%rbp)
	je then99712
	callq exit
	jmp end99713
then99712:
	movq %rbx, -352(%rbp)
	sarq $3, -352(%rbp)
end99713:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -184(%rbp)
	andq $7, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then99714
	callq exit
	jmp end99715
then99714:
	movq %rbx, -184(%rbp)
	sarq $3, -184(%rbp)
end99715:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -168(%rbp)
	andq $7, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then99716
	callq exit
	jmp end99717
then99716:
	movq %rbx, -168(%rbp)
	sarq $3, -168(%rbp)
end99717:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -336(%rbp)
	andq $7, -336(%rbp)
	cmpq $1, -336(%rbp)
	je then99718
	callq exit
	jmp end99719
then99718:
	movq %rbx, -336(%rbp)
	sarq $3, -336(%rbp)
end99719:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -216(%rbp)
	andq $7, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then99720
	callq exit
	jmp end99721
then99720:
	movq %rbx, -216(%rbp)
	sarq $3, -216(%rbp)
end99721:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -200(%rbp)
	andq $7, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then99722
	callq exit
	jmp end99723
then99722:
	movq %rbx, -200(%rbp)
	sarq $3, -200(%rbp)
end99723:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -272(%rbp)
	andq $7, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then99724
	callq exit
	jmp end99725
then99724:
	movq %rbx, -272(%rbp)
	sarq $3, -272(%rbp)
end99725:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then99726
	callq exit
	jmp end99727
then99726:
	movq %rbx, %r12
	sarq $3, %r12
end99727:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -288(%rbp)
	andq $7, -288(%rbp)
	cmpq $1, -288(%rbp)
	je then99728
	callq exit
	jmp end99729
then99728:
	movq %rbx, -288(%rbp)
	sarq $3, -288(%rbp)
end99729:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then99730
	callq exit
	jmp end99731
then99730:
	movq %rbx, -112(%rbp)
	sarq $3, -112(%rbp)
end99731:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -232(%rbp)
	andq $7, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then99732
	callq exit
	jmp end99733
then99732:
	movq %rbx, -232(%rbp)
	sarq $3, -232(%rbp)
end99733:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -256(%rbp)
	andq $7, -256(%rbp)
	cmpq $1, -256(%rbp)
	je then99734
	callq exit
	jmp end99735
then99734:
	movq %rbx, -256(%rbp)
	sarq $3, -256(%rbp)
end99735:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -192(%rbp)
	andq $7, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then99736
	callq exit
	jmp end99737
then99736:
	movq %rbx, -192(%rbp)
	sarq $3, -192(%rbp)
end99737:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -360(%rbp)
	andq $7, -360(%rbp)
	cmpq $1, -360(%rbp)
	je then99738
	callq exit
	jmp end99739
then99738:
	movq %rbx, -360(%rbp)
	sarq $3, -360(%rbp)
end99739:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -248(%rbp)
	andq $7, -248(%rbp)
	cmpq $1, -248(%rbp)
	je then99740
	callq exit
	jmp end99741
then99740:
	movq %rbx, -248(%rbp)
	sarq $3, -248(%rbp)
end99741:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then99742
	callq exit
	jmp end99743
then99742:
	movq %rbx, -72(%rbp)
	sarq $3, -72(%rbp)
end99743:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -296(%rbp)
	andq $7, -296(%rbp)
	cmpq $1, -296(%rbp)
	je then99744
	callq exit
	jmp end99745
then99744:
	movq %rbx, -296(%rbp)
	sarq $3, -296(%rbp)
end99745:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -136(%rbp)
	andq $7, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then99746
	callq exit
	jmp end99747
then99746:
	movq %rbx, -136(%rbp)
	sarq $3, -136(%rbp)
end99747:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then99748
	callq exit
	jmp end99749
then99748:
	movq %rbx, %r14
	sarq $3, %r14
end99749:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -280(%rbp)
	andq $7, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then99750
	callq exit
	jmp end99751
then99750:
	movq %rbx, -280(%rbp)
	sarq $3, -280(%rbp)
end99751:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then99752
	callq exit
	jmp end99753
then99752:
	movq %rbx, -104(%rbp)
	sarq $3, -104(%rbp)
end99753:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -48(%rbp)
	andq $7, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then99754
	callq exit
	jmp end99755
then99754:
	movq %rbx, -48(%rbp)
	sarq $3, -48(%rbp)
end99755:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -320(%rbp)
	andq $7, -320(%rbp)
	cmpq $1, -320(%rbp)
	je then99756
	callq exit
	jmp end99757
then99756:
	movq %rbx, -320(%rbp)
	sarq $3, -320(%rbp)
end99757:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then99758
	callq exit
	jmp end99759
then99758:
	movq %rbx, -88(%rbp)
	sarq $3, -88(%rbp)
end99759:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -56(%rbp)
	andq $7, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then99760
	callq exit
	jmp end99761
then99760:
	movq %rbx, -56(%rbp)
	sarq $3, -56(%rbp)
end99761:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -240(%rbp)
	andq $7, -240(%rbp)
	cmpq $1, -240(%rbp)
	je then99762
	callq exit
	jmp end99763
then99762:
	movq %rbx, -240(%rbp)
	sarq $3, -240(%rbp)
end99763:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then99764
	callq exit
	jmp end99765
then99764:
	movq %rbx, -128(%rbp)
	sarq $3, -128(%rbp)
end99765:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then99766
	callq exit
	jmp end99767
then99766:
	movq %rbx, -96(%rbp)
	sarq $3, -96(%rbp)
end99767:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -264(%rbp)
	andq $7, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then99768
	callq exit
	jmp end99769
then99768:
	movq %rbx, -264(%rbp)
	sarq $3, -264(%rbp)
end99769:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then99770
	callq exit
	jmp end99771
then99770:
	movq %rbx, %r13
	sarq $3, %r13
end99771:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -328(%rbp)
	andq $7, -328(%rbp)
	cmpq $1, -328(%rbp)
	je then99772
	callq exit
	jmp end99773
then99772:
	movq %rbx, -328(%rbp)
	sarq $3, -328(%rbp)
end99773:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -312(%rbp)
	andq $7, -312(%rbp)
	cmpq $1, -312(%rbp)
	je then99774
	callq exit
	jmp end99775
then99774:
	movq %rbx, -312(%rbp)
	sarq $3, -312(%rbp)
end99775:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then99776
	callq exit
	jmp end99777
then99776:
	movq %rbx, -80(%rbp)
	sarq $3, -80(%rbp)
end99777:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99778
	callq exit
	jmp end99779
then99778:
	movq %rcx, %rbx
	sarq $3, %rbx
end99779:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -304(%rbp)
	andq $7, -304(%rbp)
	cmpq $1, -304(%rbp)
	je then99780
	callq exit
	jmp end99781
then99780:
	movq %rcx, -304(%rbp)
	sarq $3, -304(%rbp)
end99781:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then99782
	callq exit
	jmp end99783
then99782:
	movq %rcx, -120(%rbp)
	sarq $3, -120(%rbp)
end99783:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -64(%rbp)
	andq $7, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then99784
	callq exit
	jmp end99785
then99784:
	movq %rcx, -64(%rbp)
	sarq $3, -64(%rbp)
end99785:
	movq -120(%rbp), %rcx
	addq -64(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -224(%rbp)
	andq $7, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then99786
	callq exit
	jmp end99787
then99786:
	movq %rcx, -224(%rbp)
	sarq $3, -224(%rbp)
end99787:
	movq -304(%rbp), %rcx
	addq -224(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -144(%rbp)
	andq $7, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then99788
	callq exit
	jmp end99789
then99788:
	movq %rcx, -144(%rbp)
	sarq $3, -144(%rbp)
end99789:
	movq %rbx, %rbx
	addq -144(%rbp), %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99790
	callq exit
	jmp end99791
then99790:
	movq %rcx, %rbx
	sarq $3, %rbx
end99791:
	movq -80(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99792
	callq exit
	jmp end99793
then99792:
	movq %rcx, %rbx
	sarq $3, %rbx
end99793:
	movq -312(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99794
	callq exit
	jmp end99795
then99794:
	movq %rcx, %rbx
	sarq $3, %rbx
end99795:
	movq -328(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99796
	callq exit
	jmp end99797
then99796:
	movq %rcx, %rbx
	sarq $3, %rbx
end99797:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99798
	callq exit
	jmp end99799
then99798:
	movq %rcx, %rbx
	sarq $3, %rbx
end99799:
	movq -264(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99800
	callq exit
	jmp end99801
then99800:
	movq %rcx, %rbx
	sarq $3, %rbx
end99801:
	movq -96(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99802
	callq exit
	jmp end99803
then99802:
	movq %rcx, %rbx
	sarq $3, %rbx
end99803:
	movq -128(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99804
	callq exit
	jmp end99805
then99804:
	movq %rcx, %rbx
	sarq $3, %rbx
end99805:
	movq -240(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99806
	callq exit
	jmp end99807
then99806:
	movq %rcx, %rbx
	sarq $3, %rbx
end99807:
	movq -56(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99808
	callq exit
	jmp end99809
then99808:
	movq %rcx, %rbx
	sarq $3, %rbx
end99809:
	movq -88(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99810
	callq exit
	jmp end99811
then99810:
	movq %rcx, %rbx
	sarq $3, %rbx
end99811:
	movq -320(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99812
	callq exit
	jmp end99813
then99812:
	movq %rcx, %rbx
	sarq $3, %rbx
end99813:
	movq -48(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99814
	callq exit
	jmp end99815
then99814:
	movq %rcx, %rbx
	sarq $3, %rbx
end99815:
	movq -104(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99816
	callq exit
	jmp end99817
then99816:
	movq %rcx, %rbx
	sarq $3, %rbx
end99817:
	movq -280(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99818
	callq exit
	jmp end99819
then99818:
	movq %rcx, %rbx
	sarq $3, %rbx
end99819:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99820
	callq exit
	jmp end99821
then99820:
	movq %rcx, %rbx
	sarq $3, %rbx
end99821:
	movq -136(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99822
	callq exit
	jmp end99823
then99822:
	movq %rcx, %rbx
	sarq $3, %rbx
end99823:
	movq -296(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99824
	callq exit
	jmp end99825
then99824:
	movq %rcx, %rbx
	sarq $3, %rbx
end99825:
	movq -72(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99826
	callq exit
	jmp end99827
then99826:
	movq %rcx, %rbx
	sarq $3, %rbx
end99827:
	movq -248(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99828
	callq exit
	jmp end99829
then99828:
	movq %rcx, %rbx
	sarq $3, %rbx
end99829:
	movq -360(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99830
	callq exit
	jmp end99831
then99830:
	movq %rcx, %rbx
	sarq $3, %rbx
end99831:
	movq -192(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99832
	callq exit
	jmp end99833
then99832:
	movq %rcx, %rbx
	sarq $3, %rbx
end99833:
	movq -256(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99834
	callq exit
	jmp end99835
then99834:
	movq %rcx, %rbx
	sarq $3, %rbx
end99835:
	movq -232(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99836
	callq exit
	jmp end99837
then99836:
	movq %rcx, %rbx
	sarq $3, %rbx
end99837:
	movq -112(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99838
	callq exit
	jmp end99839
then99838:
	movq %rcx, %rbx
	sarq $3, %rbx
end99839:
	movq -288(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99840
	callq exit
	jmp end99841
then99840:
	movq %rcx, %rbx
	sarq $3, %rbx
end99841:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99842
	callq exit
	jmp end99843
then99842:
	movq %rcx, %rbx
	sarq $3, %rbx
end99843:
	movq -272(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99844
	callq exit
	jmp end99845
then99844:
	movq %rcx, %rbx
	sarq $3, %rbx
end99845:
	movq -200(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99846
	callq exit
	jmp end99847
then99846:
	movq %rcx, %rbx
	sarq $3, %rbx
end99847:
	movq -216(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99848
	callq exit
	jmp end99849
then99848:
	movq %rcx, %rbx
	sarq $3, %rbx
end99849:
	movq -336(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99850
	callq exit
	jmp end99851
then99850:
	movq %rcx, %rbx
	sarq $3, %rbx
end99851:
	movq -168(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99852
	callq exit
	jmp end99853
then99852:
	movq %rcx, %rbx
	sarq $3, %rbx
end99853:
	movq -184(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99854
	callq exit
	jmp end99855
then99854:
	movq %rcx, %rbx
	sarq $3, %rbx
end99855:
	movq -352(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99856
	callq exit
	jmp end99857
then99856:
	movq %rcx, %rbx
	sarq $3, %rbx
end99857:
	movq -152(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99858
	callq exit
	jmp end99859
then99858:
	movq %rcx, %rbx
	sarq $3, %rbx
end99859:
	movq -176(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99860
	callq exit
	jmp end99861
then99860:
	movq %rcx, %rbx
	sarq $3, %rbx
end99861:
	movq -344(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99862
	callq exit
	jmp end99863
then99862:
	movq %rcx, %rbx
	sarq $3, %rbx
end99863:
	movq -208(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then99864
	callq exit
	jmp end99865
then99864:
	movq %rcx, %rbx
	sarq $3, %rbx
end99865:
	movq -160(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $408, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
