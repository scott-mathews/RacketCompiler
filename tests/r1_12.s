	.globl main
main:
	pushq %rbp
	movq %rsp, %rbp
	pushq %r14
	pushq %r13
	pushq %r12
	pushq %rbx
	subq $576, %rsp
	movq $16384, %rdi 
	movq $16, %rsi 
	callq initialize 
	movq rootstack_begin(%rip), %r15
	addq $0, %r15

	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -344(%rbp)
	andq $7, -344(%rbp)
	cmpq $1, -344(%rbp)
	je then100119
	callq exit
	jmp end100120
then100119:
	movq %rbx, -344(%rbp)
	sarq $3, -344(%rbp)
end100120:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -296(%rbp)
	andq $7, -296(%rbp)
	cmpq $1, -296(%rbp)
	je then100121
	callq exit
	jmp end100122
then100121:
	movq %rbx, -296(%rbp)
	sarq $3, -296(%rbp)
end100122:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -304(%rbp)
	andq $7, -304(%rbp)
	cmpq $1, -304(%rbp)
	je then100123
	callq exit
	jmp end100124
then100123:
	movq %rbx, -304(%rbp)
	sarq $3, -304(%rbp)
end100124:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -320(%rbp)
	andq $7, -320(%rbp)
	cmpq $1, -320(%rbp)
	je then100125
	callq exit
	jmp end100126
then100125:
	movq %rbx, -320(%rbp)
	sarq $3, -320(%rbp)
end100126:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -264(%rbp)
	andq $7, -264(%rbp)
	cmpq $1, -264(%rbp)
	je then100127
	callq exit
	jmp end100128
then100127:
	movq %rbx, -264(%rbp)
	sarq $3, -264(%rbp)
end100128:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -280(%rbp)
	andq $7, -280(%rbp)
	cmpq $1, -280(%rbp)
	je then100129
	callq exit
	jmp end100130
then100129:
	movq %rbx, -280(%rbp)
	sarq $3, -280(%rbp)
end100130:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -312(%rbp)
	andq $7, -312(%rbp)
	cmpq $1, -312(%rbp)
	je then100131
	callq exit
	jmp end100132
then100131:
	movq %rbx, -312(%rbp)
	sarq $3, -312(%rbp)
end100132:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -72(%rbp)
	andq $7, -72(%rbp)
	cmpq $1, -72(%rbp)
	je then100133
	callq exit
	jmp end100134
then100133:
	movq %rbx, -72(%rbp)
	sarq $3, -72(%rbp)
end100134:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -272(%rbp)
	andq $7, -272(%rbp)
	cmpq $1, -272(%rbp)
	je then100135
	callq exit
	jmp end100136
then100135:
	movq %rbx, -272(%rbp)
	sarq $3, -272(%rbp)
end100136:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -288(%rbp)
	andq $7, -288(%rbp)
	cmpq $1, -288(%rbp)
	je then100137
	callq exit
	jmp end100138
then100137:
	movq %rbx, -288(%rbp)
	sarq $3, -288(%rbp)
end100138:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -56(%rbp)
	andq $7, -56(%rbp)
	cmpq $1, -56(%rbp)
	je then100139
	callq exit
	jmp end100140
then100139:
	movq %rbx, -56(%rbp)
	sarq $3, -56(%rbp)
end100140:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -80(%rbp)
	andq $7, -80(%rbp)
	cmpq $1, -80(%rbp)
	je then100141
	callq exit
	jmp end100142
then100141:
	movq %rbx, -80(%rbp)
	sarq $3, -80(%rbp)
end100142:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -456(%rbp)
	andq $7, -456(%rbp)
	cmpq $1, -456(%rbp)
	je then100143
	callq exit
	jmp end100144
then100143:
	movq %rbx, -456(%rbp)
	sarq $3, -456(%rbp)
end100144:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, %r13
	andq $7, %r13
	cmpq $1, %r13
	je then100145
	callq exit
	jmp end100146
then100145:
	movq %rbx, %r13
	sarq $3, %r13
end100146:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, -88(%rbp)
	andq $7, -88(%rbp)
	cmpq $1, -88(%rbp)
	je then100147
	callq exit
	jmp end100148
then100147:
	movq %rbx, -88(%rbp)
	sarq $3, -88(%rbp)
end100148:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, %r14
	andq $7, %r14
	cmpq $1, %r14
	je then100149
	callq exit
	jmp end100150
then100149:
	movq %rbx, %r14
	sarq $3, %r14
end100150:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rbx
	movq %rbx, %r12
	andq $7, %r12
	cmpq $1, %r12
	je then100151
	callq exit
	jmp end100152
then100151:
	movq %rbx, %r12
	sarq $3, %r12
end100152:
	movq $1, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100153
	callq exit
	jmp end100154
then100153:
	movq %rcx, %rbx
	sarq $3, %rbx
end100154:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -256(%rbp)
	andq $7, -256(%rbp)
	cmpq $1, -256(%rbp)
	je then100155
	callq exit
	jmp end100156
then100155:
	movq %rcx, -256(%rbp)
	sarq $3, -256(%rbp)
end100156:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -240(%rbp)
	andq $7, -240(%rbp)
	cmpq $1, -240(%rbp)
	je then100157
	callq exit
	jmp end100158
then100157:
	movq %rcx, -240(%rbp)
	sarq $3, -240(%rbp)
end100158:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -216(%rbp)
	andq $7, -216(%rbp)
	cmpq $1, -216(%rbp)
	je then100159
	callq exit
	jmp end100160
then100159:
	movq %rcx, -216(%rbp)
	sarq $3, -216(%rbp)
end100160:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -200(%rbp)
	andq $7, -200(%rbp)
	cmpq $1, -200(%rbp)
	je then100161
	callq exit
	jmp end100162
then100161:
	movq %rcx, -200(%rbp)
	sarq $3, -200(%rbp)
end100162:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -248(%rbp)
	andq $7, -248(%rbp)
	cmpq $1, -248(%rbp)
	je then100163
	callq exit
	jmp end100164
then100163:
	movq %rcx, -248(%rbp)
	sarq $3, -248(%rbp)
end100164:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -504(%rbp)
	andq $7, -504(%rbp)
	cmpq $1, -504(%rbp)
	je then100165
	callq exit
	jmp end100166
then100165:
	movq %rcx, -504(%rbp)
	sarq $3, -504(%rbp)
end100166:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -224(%rbp)
	andq $7, -224(%rbp)
	cmpq $1, -224(%rbp)
	je then100167
	callq exit
	jmp end100168
then100167:
	movq %rcx, -224(%rbp)
	sarq $3, -224(%rbp)
end100168:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -208(%rbp)
	andq $7, -208(%rbp)
	cmpq $1, -208(%rbp)
	je then100169
	callq exit
	jmp end100170
then100169:
	movq %rcx, -208(%rbp)
	sarq $3, -208(%rbp)
end100170:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -520(%rbp)
	andq $7, -520(%rbp)
	cmpq $1, -520(%rbp)
	je then100171
	callq exit
	jmp end100172
then100171:
	movq %rcx, -520(%rbp)
	sarq $3, -520(%rbp)
end100172:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -480(%rbp)
	andq $7, -480(%rbp)
	cmpq $1, -480(%rbp)
	je then100173
	callq exit
	jmp end100174
then100173:
	movq %rcx, -480(%rbp)
	sarq $3, -480(%rbp)
end100174:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -232(%rbp)
	andq $7, -232(%rbp)
	cmpq $1, -232(%rbp)
	je then100175
	callq exit
	jmp end100176
then100175:
	movq %rcx, -232(%rbp)
	sarq $3, -232(%rbp)
end100176:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -528(%rbp)
	andq $7, -528(%rbp)
	cmpq $1, -528(%rbp)
	je then100177
	callq exit
	jmp end100178
then100177:
	movq %rcx, -528(%rbp)
	sarq $3, -528(%rbp)
end100178:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -440(%rbp)
	andq $7, -440(%rbp)
	cmpq $1, -440(%rbp)
	je then100179
	callq exit
	jmp end100180
then100179:
	movq %rcx, -440(%rbp)
	sarq $3, -440(%rbp)
end100180:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -464(%rbp)
	andq $7, -464(%rbp)
	cmpq $1, -464(%rbp)
	je then100181
	callq exit
	jmp end100182
then100181:
	movq %rcx, -464(%rbp)
	sarq $3, -464(%rbp)
end100182:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -488(%rbp)
	andq $7, -488(%rbp)
	cmpq $1, -488(%rbp)
	je then100183
	callq exit
	jmp end100184
then100183:
	movq %rcx, -488(%rbp)
	sarq $3, -488(%rbp)
end100184:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -512(%rbp)
	andq $7, -512(%rbp)
	cmpq $1, -512(%rbp)
	je then100185
	callq exit
	jmp end100186
then100185:
	movq %rcx, -512(%rbp)
	sarq $3, -512(%rbp)
end100186:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -448(%rbp)
	andq $7, -448(%rbp)
	cmpq $1, -448(%rbp)
	je then100187
	callq exit
	jmp end100188
then100187:
	movq %rcx, -448(%rbp)
	sarq $3, -448(%rbp)
end100188:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -472(%rbp)
	andq $7, -472(%rbp)
	cmpq $1, -472(%rbp)
	je then100189
	callq exit
	jmp end100190
then100189:
	movq %rcx, -472(%rbp)
	sarq $3, -472(%rbp)
end100190:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -496(%rbp)
	andq $7, -496(%rbp)
	cmpq $1, -496(%rbp)
	je then100191
	callq exit
	jmp end100192
then100191:
	movq %rcx, -496(%rbp)
	sarq $3, -496(%rbp)
end100192:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -368(%rbp)
	andq $7, -368(%rbp)
	cmpq $1, -368(%rbp)
	je then100193
	callq exit
	jmp end100194
then100193:
	movq %rcx, -368(%rbp)
	sarq $3, -368(%rbp)
end100194:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -352(%rbp)
	andq $7, -352(%rbp)
	cmpq $1, -352(%rbp)
	je then100195
	callq exit
	jmp end100196
then100195:
	movq %rcx, -352(%rbp)
	sarq $3, -352(%rbp)
end100196:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -96(%rbp)
	andq $7, -96(%rbp)
	cmpq $1, -96(%rbp)
	je then100197
	callq exit
	jmp end100198
then100197:
	movq %rcx, -96(%rbp)
	sarq $3, -96(%rbp)
end100198:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rcx
	movq %rcx, -360(%rbp)
	andq $7, -360(%rbp)
	cmpq $1, -360(%rbp)
	je then100199
	callq exit
	jmp end100200
then100199:
	movq %rcx, -360(%rbp)
	sarq $3, -360(%rbp)
end100200:
	movq $1, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -64(%rbp)
	andq $7, -64(%rbp)
	cmpq $1, -64(%rbp)
	je then100201
	callq exit
	jmp end100202
then100201:
	movq %rcx, -64(%rbp)
	sarq $3, -64(%rbp)
end100202:
	movq -360(%rbp), %rcx
	addq -64(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -328(%rbp)
	andq $7, -328(%rbp)
	cmpq $1, -328(%rbp)
	je then100203
	callq exit
	jmp end100204
then100203:
	movq %rcx, -328(%rbp)
	sarq $3, -328(%rbp)
end100204:
	movq -96(%rbp), %rcx
	addq -328(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -336(%rbp)
	andq $7, -336(%rbp)
	cmpq $1, -336(%rbp)
	je then100205
	callq exit
	jmp end100206
then100205:
	movq %rcx, -336(%rbp)
	sarq $3, -336(%rbp)
end100206:
	movq -352(%rbp), %rcx
	addq -336(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -48(%rbp)
	andq $7, -48(%rbp)
	cmpq $1, -48(%rbp)
	je then100207
	callq exit
	jmp end100208
then100207:
	movq %rcx, -48(%rbp)
	sarq $3, -48(%rbp)
end100208:
	movq -368(%rbp), %rcx
	addq -48(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -384(%rbp)
	andq $7, -384(%rbp)
	cmpq $1, -384(%rbp)
	je then100209
	callq exit
	jmp end100210
then100209:
	movq %rcx, -384(%rbp)
	sarq $3, -384(%rbp)
end100210:
	movq -496(%rbp), %rcx
	addq -384(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -376(%rbp)
	andq $7, -376(%rbp)
	cmpq $1, -376(%rbp)
	je then100211
	callq exit
	jmp end100212
then100211:
	movq %rcx, -376(%rbp)
	sarq $3, -376(%rbp)
end100212:
	movq -472(%rbp), %rcx
	addq -376(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -184(%rbp)
	andq $7, -184(%rbp)
	cmpq $1, -184(%rbp)
	je then100213
	callq exit
	jmp end100214
then100213:
	movq %rcx, -184(%rbp)
	sarq $3, -184(%rbp)
end100214:
	movq -448(%rbp), %rcx
	addq -184(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -416(%rbp)
	andq $7, -416(%rbp)
	cmpq $1, -416(%rbp)
	je then100215
	callq exit
	jmp end100216
then100215:
	movq %rcx, -416(%rbp)
	sarq $3, -416(%rbp)
end100216:
	movq -512(%rbp), %rcx
	addq -416(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -392(%rbp)
	andq $7, -392(%rbp)
	cmpq $1, -392(%rbp)
	je then100217
	callq exit
	jmp end100218
then100217:
	movq %rcx, -392(%rbp)
	sarq $3, -392(%rbp)
end100218:
	movq -488(%rbp), %rcx
	addq -392(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -104(%rbp)
	andq $7, -104(%rbp)
	cmpq $1, -104(%rbp)
	je then100219
	callq exit
	jmp end100220
then100219:
	movq %rcx, -104(%rbp)
	sarq $3, -104(%rbp)
end100220:
	movq -464(%rbp), %rcx
	addq -104(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -432(%rbp)
	andq $7, -432(%rbp)
	cmpq $1, -432(%rbp)
	je then100221
	callq exit
	jmp end100222
then100221:
	movq %rcx, -432(%rbp)
	sarq $3, -432(%rbp)
end100222:
	movq -440(%rbp), %rcx
	addq -432(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -400(%rbp)
	andq $7, -400(%rbp)
	cmpq $1, -400(%rbp)
	je then100223
	callq exit
	jmp end100224
then100223:
	movq %rcx, -400(%rbp)
	sarq $3, -400(%rbp)
end100224:
	movq -528(%rbp), %rcx
	addq -400(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -152(%rbp)
	andq $7, -152(%rbp)
	cmpq $1, -152(%rbp)
	je then100225
	callq exit
	jmp end100226
then100225:
	movq %rcx, -152(%rbp)
	sarq $3, -152(%rbp)
end100226:
	movq -232(%rbp), %rcx
	addq -152(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -120(%rbp)
	andq $7, -120(%rbp)
	cmpq $1, -120(%rbp)
	je then100227
	callq exit
	jmp end100228
then100227:
	movq %rcx, -120(%rbp)
	sarq $3, -120(%rbp)
end100228:
	movq -480(%rbp), %rcx
	addq -120(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -168(%rbp)
	andq $7, -168(%rbp)
	cmpq $1, -168(%rbp)
	je then100229
	callq exit
	jmp end100230
then100229:
	movq %rcx, -168(%rbp)
	sarq $3, -168(%rbp)
end100230:
	movq -520(%rbp), %rcx
	addq -168(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -176(%rbp)
	andq $7, -176(%rbp)
	cmpq $1, -176(%rbp)
	je then100231
	callq exit
	jmp end100232
then100231:
	movq %rcx, -176(%rbp)
	sarq $3, -176(%rbp)
end100232:
	movq -208(%rbp), %rcx
	addq -176(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -112(%rbp)
	andq $7, -112(%rbp)
	cmpq $1, -112(%rbp)
	je then100233
	callq exit
	jmp end100234
then100233:
	movq %rcx, -112(%rbp)
	sarq $3, -112(%rbp)
end100234:
	movq -224(%rbp), %rcx
	addq -112(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -144(%rbp)
	andq $7, -144(%rbp)
	cmpq $1, -144(%rbp)
	je then100235
	callq exit
	jmp end100236
then100235:
	movq %rcx, -144(%rbp)
	sarq $3, -144(%rbp)
end100236:
	movq -504(%rbp), %rcx
	addq -144(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -160(%rbp)
	andq $7, -160(%rbp)
	cmpq $1, -160(%rbp)
	je then100237
	callq exit
	jmp end100238
then100237:
	movq %rcx, -160(%rbp)
	sarq $3, -160(%rbp)
end100238:
	movq -248(%rbp), %rcx
	addq -160(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -424(%rbp)
	andq $7, -424(%rbp)
	cmpq $1, -424(%rbp)
	je then100239
	callq exit
	jmp end100240
then100239:
	movq %rcx, -424(%rbp)
	sarq $3, -424(%rbp)
end100240:
	movq -200(%rbp), %rcx
	addq -424(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -128(%rbp)
	andq $7, -128(%rbp)
	cmpq $1, -128(%rbp)
	je then100241
	callq exit
	jmp end100242
then100241:
	movq %rcx, -128(%rbp)
	sarq $3, -128(%rbp)
end100242:
	movq -216(%rbp), %rcx
	addq -128(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -136(%rbp)
	andq $7, -136(%rbp)
	cmpq $1, -136(%rbp)
	je then100243
	callq exit
	jmp end100244
then100243:
	movq %rcx, -136(%rbp)
	sarq $3, -136(%rbp)
end100244:
	movq -240(%rbp), %rcx
	addq -136(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -408(%rbp)
	andq $7, -408(%rbp)
	cmpq $1, -408(%rbp)
	je then100245
	callq exit
	jmp end100246
then100245:
	movq %rcx, -408(%rbp)
	sarq $3, -408(%rbp)
end100246:
	movq -256(%rbp), %rcx
	addq -408(%rbp), %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, -192(%rbp)
	andq $7, -192(%rbp)
	cmpq $1, -192(%rbp)
	je then100247
	callq exit
	jmp end100248
then100247:
	movq %rcx, -192(%rbp)
	sarq $3, -192(%rbp)
end100248:
	movq %rbx, %rbx
	addq -192(%rbp), %rbx
	movq %rbx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100249
	callq exit
	jmp end100250
then100249:
	movq %rcx, %rbx
	sarq $3, %rbx
end100250:
	movq %r12, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100251
	callq exit
	jmp end100252
then100251:
	movq %rcx, %rbx
	sarq $3, %rbx
end100252:
	movq %r14, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100253
	callq exit
	jmp end100254
then100253:
	movq %rcx, %rbx
	sarq $3, %rbx
end100254:
	movq -88(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100255
	callq exit
	jmp end100256
then100255:
	movq %rcx, %rbx
	sarq $3, %rbx
end100256:
	movq %r13, %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100257
	callq exit
	jmp end100258
then100257:
	movq %rcx, %rbx
	sarq $3, %rbx
end100258:
	movq -456(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100259
	callq exit
	jmp end100260
then100259:
	movq %rcx, %rbx
	sarq $3, %rbx
end100260:
	movq -80(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100261
	callq exit
	jmp end100262
then100261:
	movq %rcx, %rbx
	sarq $3, %rbx
end100262:
	movq -56(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100263
	callq exit
	jmp end100264
then100263:
	movq %rcx, %rbx
	sarq $3, %rbx
end100264:
	movq -288(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100265
	callq exit
	jmp end100266
then100265:
	movq %rcx, %rbx
	sarq $3, %rbx
end100266:
	movq -272(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100267
	callq exit
	jmp end100268
then100267:
	movq %rcx, %rbx
	sarq $3, %rbx
end100268:
	movq -72(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100269
	callq exit
	jmp end100270
then100269:
	movq %rcx, %rbx
	sarq $3, %rbx
end100270:
	movq -312(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100271
	callq exit
	jmp end100272
then100271:
	movq %rcx, %rbx
	sarq $3, %rbx
end100272:
	movq -280(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100273
	callq exit
	jmp end100274
then100273:
	movq %rcx, %rbx
	sarq $3, %rbx
end100274:
	movq -264(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100275
	callq exit
	jmp end100276
then100275:
	movq %rcx, %rbx
	sarq $3, %rbx
end100276:
	movq -320(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100277
	callq exit
	jmp end100278
then100277:
	movq %rcx, %rbx
	sarq $3, %rbx
end100278:
	movq -304(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100279
	callq exit
	jmp end100280
then100279:
	movq %rcx, %rbx
	sarq $3, %rbx
end100280:
	movq -296(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rcx
	salq $3, %rcx
	orq $1, %rcx
	movq %rcx, %rbx
	andq $7, %rbx
	cmpq $1, %rbx
	je then100281
	callq exit
	jmp end100282
then100281:
	movq %rcx, %rbx
	sarq $3, %rbx
end100282:
	movq -344(%rbp), %rcx
	addq %rbx, %rcx
	movq %rcx, %rbx
	salq $3, %rbx
	orq $1, %rbx
	movq %rbx, %rax

	movq %rax, %rdi
	movq	%rax, %rdi
	callq	print_any
	subq $0, %r15
	addq $576, %rsp
	movq $0, %rax
	popq %rbx
	popq %r12
	popq %r13
	popq %r14
	popq %rbp
	retq
