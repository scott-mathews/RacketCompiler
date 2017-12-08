	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $320, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -184(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -152(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -56(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -200(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r13
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -160(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -176(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -64(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -136(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r14
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -48(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, -192(%rbp)
	callq read_int
	movq %rax, %rbx
	movq %rbx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -144(%rbp)
	callq read_int
	movq %rax, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -168(%rbp)
	movq -184(%rbp), %rax
	movq %rax, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then101144
	callq exit
	jmp end101145
then101144:
	movq -184(%rbp), %rax
	movq %rax, -104(%rbp)
	sarq $3, -104(%rbp)
end101145:
	movq %r12, -248(%rbp)
	andq $7, -248(%rbp)
	cmpq $1, -248(%rbp)
	je then101146
	callq exit
	jmp end101147
then101146:
	movq %r12, -248(%rbp)
	sarq $3, -248(%rbp)
end101147:
	movq -248(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101148
	callq exit
	jmp end101149
then101148:
	movq %rcx, %r12
	sarq $3, %r12
end101149:
	movq -104(%rbp), %rcx
	addq %r12, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101150
	callq exit
	jmp end101151
then101150:
	movq %rcx, %r12
	sarq $3, %r12
end101151:
	movq -152(%rbp), %rax
	movq %rax, -240(%rbp)
	andq $7, -240(%rbp)
	cmpq $1, -240(%rbp)
	je then101152
	callq exit
	jmp end101153
then101152:
	movq -152(%rbp), %rax
	movq %rax, -240(%rbp)
	sarq $3, -240(%rbp)
end101153:
	movq -56(%rbp), %rax
	movq %rax, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then101154
	callq exit
	jmp end101155
then101154:
	movq -56(%rbp), %rax
	movq %rax, -112(%rbp)
	sarq $3, -112(%rbp)
end101155:
	movq -112(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -208(%rbp)
	andq $7, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then101156
	callq exit
	jmp end101157
then101156:
	movq %rcx, -208(%rbp)
	sarq $3, -208(%rbp)
end101157:
	movq -240(%rbp), %rcx
	addq -208(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then101158
	callq exit
	jmp end101159
then101158:
	movq %rcx, -72(%rbp)
	sarq $3, -72(%rbp)
end101159:
	movq %r12, %rcx
	addq -72(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101160
	callq exit
	jmp end101161
then101160:
	movq %rcx, %r12
	sarq $3, %r12
end101161:
	movq -200(%rbp), %rax
	movq %rax, -272(%rbp)
	andq $7, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then101162
	callq exit
	jmp end101163
then101162:
	movq -200(%rbp), %rax
	movq %rax, -272(%rbp)
	sarq $3, -272(%rbp)
end101163:
	movq %r13, -264(%rbp)
	andq $7, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then101164
	callq exit
	jmp end101165
then101164:
	movq %r13, -264(%rbp)
	sarq $3, -264(%rbp)
end101165:
	movq -264(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101166
	callq exit
	jmp end101167
then101166:
	movq %rcx, %r13
	sarq $3, %r13
end101167:
	movq -272(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -216(%rbp)
	andq $7, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then101168
	callq exit
	jmp end101169
then101168:
	movq %rcx, -216(%rbp)
	sarq $3, -216(%rbp)
end101169:
	movq -160(%rbp), %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101170
	callq exit
	jmp end101171
then101170:
	movq -160(%rbp), %r13
	sarq $3, %r13
end101171:
	movq -176(%rbp), %rax
	movq %rax, -256(%rbp)
	andq $7, -256(%rbp)
	cmpq $1, -256(%rbp)
	je then101172
	callq exit
	jmp end101173
then101172:
	movq -176(%rbp), %rax
	movq %rax, -256(%rbp)
	sarq $3, -256(%rbp)
end101173:
	movq -256(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then101174
	callq exit
	jmp end101175
then101174:
	movq %rcx, -88(%rbp)
	sarq $3, -88(%rbp)
end101175:
	movq %r13, %rcx
	addq -88(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101176
	callq exit
	jmp end101177
then101176:
	movq %rcx, %r13
	sarq $3, %r13
end101177:
	movq -216(%rbp), %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101178
	callq exit
	jmp end101179
then101178:
	movq %rcx, %r13
	sarq $3, %r13
end101179:
	movq %r12, %rcx
	addq %r13, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then101180
	callq exit
	jmp end101181
then101180:
	movq %rcx, %r13
	sarq $3, %r13
end101181:
	movq -64(%rbp), %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101182
	callq exit
	jmp end101183
then101182:
	movq -64(%rbp), %r12
	sarq $3, %r12
end101183:
	movq -136(%rbp), %rax
	movq %rax, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then101184
	callq exit
	jmp end101185
then101184:
	movq -136(%rbp), %rax
	movq %rax, -96(%rbp)
	sarq $3, -96(%rbp)
end101185:
	movq -96(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -224(%rbp)
	andq $7, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then101186
	callq exit
	jmp end101187
then101186:
	movq %rcx, -224(%rbp)
	sarq $3, -224(%rbp)
end101187:
	movq %r12, %rcx
	addq -224(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101188
	callq exit
	jmp end101189
then101188:
	movq %rcx, %r12
	sarq $3, %r12
end101189:
	movq %r14, -232(%rbp)
	andq $7, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then101190
	callq exit
	jmp end101191
then101190:
	movq %r14, -232(%rbp)
	sarq $3, -232(%rbp)
end101191:
	movq -48(%rbp), %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101192
	callq exit
	jmp end101193
then101192:
	movq -48(%rbp), %r14
	sarq $3, %r14
end101193:
	movq %r14, %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101194
	callq exit
	jmp end101195
then101194:
	movq %rcx, %r14
	sarq $3, %r14
end101195:
	movq -232(%rbp), %rcx
	addq %r14, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101196
	callq exit
	jmp end101197
then101196:
	movq %rcx, %r14
	sarq $3, %r14
end101197:
	movq %r12, %rcx
	addq %r14, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101198
	callq exit
	jmp end101199
then101198:
	movq %rcx, %r12
	sarq $3, %r12
end101199:
	movq -192(%rbp), %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101200
	callq exit
	jmp end101201
then101200:
	movq -192(%rbp), %r14
	sarq $3, %r14
end101201:
	movq %rbx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then101202
	callq exit
	jmp end101203
then101202:
	movq %rbx, -120(%rbp)
	sarq $3, -120(%rbp)
end101203:
	movq -120(%rbp), %rbx
	negq %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101204
	callq exit
	jmp end101205
then101204:
	movq %rcx, %rbx
	sarq $3, %rbx
end101205:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101206
	callq exit
	jmp end101207
then101206:
	movq %rcx, %rbx
	sarq $3, %rbx
end101207:
	movq -144(%rbp), %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101208
	callq exit
	jmp end101209
then101208:
	movq -144(%rbp), %r14
	sarq $3, %r14
end101209:
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then101210
	callq exit
	jmp end101211
then101210:
	movq -168(%rbp), %rax
	movq %rax, -128(%rbp)
	sarq $3, -128(%rbp)
end101211:
	movq -128(%rbp), %rcx
	negq %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then101212
	callq exit
	jmp end101213
then101212:
	movq %rcx, -80(%rbp)
	sarq $3, -80(%rbp)
end101213:
	movq %r14, %rcx
	addq -80(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then101214
	callq exit
	jmp end101215
then101214:
	movq %rcx, %r14
	sarq $3, %r14
end101215:
	movq %rbx, %rbx
	addq %r14, %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101216
	callq exit
	jmp end101217
then101216:
	movq %rcx, %rbx
	sarq $3, %rbx
end101217:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101218
	callq exit
	jmp end101219
then101218:
	movq %rcx, %rbx
	sarq $3, %rbx
end101219:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then101220
	callq exit
	jmp end101221
then101220:
	movq %rbx, %r12
	sarq $3, %r12
end101221:
	movq $42, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then101222
	callq exit
	jmp end101223
then101222:
	movq %rcx, %rbx
	sarq $3, %rbx
end101223:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $320, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
