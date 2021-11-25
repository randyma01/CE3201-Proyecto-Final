.global _start

_start:
	ldr r0, =array 
	mov	r1, #0 
	mov r2, #0 
	mov r3, #0 
	mov r4, #5 
	
	add	r1, r1, #76  
	add	r1, r1, #111 
	add	r1, r1, #114 
	add	r1, r1, #101 
	add	r1, r1, #109 
	
	for:
		ldr r4, [r0] 
		@cmp r4, #0 
		@bne end 
		cmp r4, #32 
		beq reset 
		add r2, r2, r0 
		cmp r2, r1 
		beq repetition
		add r4, r4, #1 
		add r0,r0, #4 
		b for; 
	
	repetition:
		add r3, r3, #1 
		
	reset:
		mov r2, #0
		mov r4, #0
		
	end:

.data

array:
	.word 105,112,115,117,109,32,100,111,108,111,114,32,108,111,114,101,109,32,115,105,116,32,97,109,101,116,32,108,111,114,101,109,109,0