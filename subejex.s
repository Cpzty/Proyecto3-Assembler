
.global ejex

ejex:
	push {lr}
	mov r5,#25
	add r5,r5,r0
	mov r0, r5
	pop {pc}

