	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $200, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $10, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then100844
	callq exit
	jmp end100845
then100844:
	movq %rbx, %r14
	sarq $3, %r14
end100845:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100846
	callq exit
	jmp end100847
then100846:
	movq %rbx, %r12
	sarq $3, %r12
end100847:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100848
	callq exit
	jmp end100849
then100848:
	movq %rcx, %rbx
	sarq $3, %rbx
end100849:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100850
	callq exit
	jmp end100851
then100850:
	movq %rcx, %rbx
	sarq $3, %rbx
end100851:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100852
	callq exit
	jmp end100853
then100852:
	movq %rcx, %r12
	sarq $3, %r12
end100853:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100854
	callq exit
	jmp end100855
then100854:
	movq %rcx, %r13
	sarq $3, %r13
end100855:
	movq %r12, %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100856
	callq exit
	jmp end100857
then100856:
	movq %rcx, %r12
	sarq $3, %r12
end100857:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then100858
	callq exit
	jmp end100859
then100858:
	movq %rbx, -88(%rbp)
	sarq $3, -88(%rbp)
end100859:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100860
	callq exit
	jmp end100861
then100860:
	movq %rbx, %r12
	sarq $3, %r12
end100861:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100862
	callq exit
	jmp end100863
then100862:
	movq %rcx, %rbx
	sarq $3, %rbx
end100863:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100864
	callq exit
	jmp end100865
then100864:
	movq %rcx, %rbx
	sarq $3, %rbx
end100865:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100866
	callq exit
	jmp end100867
then100866:
	movq %rcx, %r12
	sarq $3, %r12
end100867:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100868
	callq exit
	jmp end100869
then100868:
	movq %rcx, %r13
	sarq $3, %r13
end100869:
	movq %r12, %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100870
	callq exit
	jmp end100871
then100870:
	movq %rcx, %r12
	sarq $3, %r12
end100871:
	movq %rbx, %rbx
	addq %r12, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100872
	callq exit
	jmp end100873
then100872:
	movq %rcx, %rbx
	sarq $3, %rbx
end100873:
	movq -88(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100874
	callq exit
	jmp end100875
then100874:
	movq %rbx, %r12
	sarq $3, %r12
end100875:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100876
	callq exit
	jmp end100877
then100876:
	movq %rbx, %r13
	sarq $3, %r13
end100877:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100878
	callq exit
	jmp end100879
then100878:
	movq %rcx, %rbx
	sarq $3, %rbx
end100879:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then100880
	callq exit
	jmp end100881
then100880:
	movq %rbx, -72(%rbp)
	sarq $3, -72(%rbp)
end100881:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100882
	callq exit
	jmp end100883
then100882:
	movq %rbx, %r13
	sarq $3, %r13
end100883:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100884
	callq exit
	jmp end100885
then100884:
	movq %rcx, %rbx
	sarq $3, %rbx
end100885:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100886
	callq exit
	jmp end100887
then100886:
	movq %rcx, %rbx
	sarq $3, %rbx
end100887:
	movq -72(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100888
	callq exit
	jmp end100889
then100888:
	movq %rcx, %rbx
	sarq $3, %rbx
end100889:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then100890
	callq exit
	jmp end100891
then100890:
	movq %rcx, -80(%rbp)
	sarq $3, -80(%rbp)
end100891:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100892
	callq exit
	jmp end100893
then100892:
	movq %rcx, %r13
	sarq $3, %r13
end100893:
	movq -80(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then100894
	callq exit
	jmp end100895
then100894:
	movq %rcx, -96(%rbp)
	sarq $3, -96(%rbp)
end100895:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -48(%rbp)
	andq $7, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then100896
	callq exit
	jmp end100897
then100896:
	movq %rcx, -48(%rbp)
	sarq $3, -48(%rbp)
end100897:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100898
	callq exit
	jmp end100899
then100898:
	movq %rcx, %r13
	sarq $3, %r13
end100899:
	movq -48(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100900
	callq exit
	jmp end100901
then100900:
	movq %rcx, %r13
	sarq $3, %r13
end100901:
	movq -96(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100902
	callq exit
	jmp end100903
then100902:
	movq %rcx, %r13
	sarq $3, %r13
end100903:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100904
	callq exit
	jmp end100905
then100904:
	movq %rcx, %rbx
	sarq $3, %rbx
end100905:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100906
	callq exit
	jmp end100907
then100906:
	movq %rbx, %r12
	sarq $3, %r12
end100907:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100908
	callq exit
	jmp end100909
then100908:
	movq %rbx, %r13
	sarq $3, %r13
end100909:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100910
	callq exit
	jmp end100911
then100910:
	movq %rcx, %rbx
	sarq $3, %rbx
end100911:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100912
	callq exit
	jmp end100913
then100912:
	movq %rcx, %rbx
	sarq $3, %rbx
end100913:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100914
	callq exit
	jmp end100915
then100914:
	movq %rcx, %r13
	sarq $3, %r13
end100915:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then100916
	callq exit
	jmp end100917
then100916:
	movq %rcx, -128(%rbp)
	sarq $3, -128(%rbp)
end100917:
	movq %r13, %rcx
	addq -128(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100918
	callq exit
	jmp end100919
then100918:
	movq %rcx, %r13
	sarq $3, %r13
end100919:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100920
	callq exit
	jmp end100921
then100920:
	movq %rcx, %rbx
	sarq $3, %rbx
end100921:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -152(%rbp)
	andq $7, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then100922
	callq exit
	jmp end100923
then100922:
	movq %rcx, -152(%rbp)
	sarq $3, -152(%rbp)
end100923:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100924
	callq exit
	jmp end100925
then100924:
	movq %rcx, %r13
	sarq $3, %r13
end100925:
	movq -152(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -56(%rbp)
	andq $7, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then100926
	callq exit
	jmp end100927
then100926:
	movq %rcx, -56(%rbp)
	sarq $3, -56(%rbp)
end100927:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then100928
	callq exit
	jmp end100929
then100928:
	movq %rcx, -112(%rbp)
	sarq $3, -112(%rbp)
end100929:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100930
	callq exit
	jmp end100931
then100930:
	movq %rcx, %r13
	sarq $3, %r13
end100931:
	movq -112(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100932
	callq exit
	jmp end100933
then100932:
	movq %rcx, %r13
	sarq $3, %r13
end100933:
	movq -56(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100934
	callq exit
	jmp end100935
then100934:
	movq %rcx, %r13
	sarq $3, %r13
end100935:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then100936
	callq exit
	jmp end100937
then100936:
	movq %rbx, -104(%rbp)
	sarq $3, -104(%rbp)
end100937:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100938
	callq exit
	jmp end100939
then100938:
	movq %rbx, %r13
	sarq $3, %r13
end100939:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100940
	callq exit
	jmp end100941
then100940:
	movq %rcx, %rbx
	sarq $3, %rbx
end100941:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -144(%rbp)
	andq $7, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then100942
	callq exit
	jmp end100943
then100942:
	movq %rbx, -144(%rbp)
	sarq $3, -144(%rbp)
end100943:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100944
	callq exit
	jmp end100945
then100944:
	movq %rcx, %rbx
	sarq $3, %rbx
end100945:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100946
	callq exit
	jmp end100947
then100946:
	movq %rcx, %r13
	sarq $3, %r13
end100947:
	movq %rbx, %rbx
	addq %r13, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100948
	callq exit
	jmp end100949
then100948:
	movq %rcx, %rbx
	sarq $3, %rbx
end100949:
	movq -144(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100950
	callq exit
	jmp end100951
then100950:
	movq %rbx, %r13
	sarq $3, %r13
end100951:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100952
	callq exit
	jmp end100953
then100952:
	movq %rcx, %rbx
	sarq $3, %rbx
end100953:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then100954
	callq exit
	jmp end100955
then100954:
	movq %rcx, -120(%rbp)
	sarq $3, -120(%rbp)
end100955:
	movq %rbx, %rbx
	addq -120(%rbp), %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -136(%rbp)
	andq $7, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then100956
	callq exit
	jmp end100957
then100956:
	movq %rbx, -136(%rbp)
	sarq $3, -136(%rbp)
end100957:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -64(%rbp)
	andq $7, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then100958
	callq exit
	jmp end100959
then100958:
	movq %rbx, -64(%rbp)
	sarq $3, -64(%rbp)
end100959:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100960
	callq exit
	jmp end100961
then100960:
	movq %rcx, %rbx
	sarq $3, %rbx
end100961:
	movq -64(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100962
	callq exit
	jmp end100963
then100962:
	movq %rcx, %rbx
	sarq $3, %rbx
end100963:
	movq -136(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100964
	callq exit
	jmp end100965
then100964:
	movq %rcx, %rbx
	sarq $3, %rbx
end100965:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100966
	callq exit
	jmp end100967
then100966:
	movq %rcx, %rbx
	sarq $3, %rbx
end100967:
	movq -104(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100968
	callq exit
	jmp end100969
then100968:
	movq %rcx, %rbx
	sarq $3, %rbx
end100969:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100970
	callq exit
	jmp end100971
then100970:
	movq %rcx, %rbx
	sarq $3, %rbx
end100971:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $200, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
