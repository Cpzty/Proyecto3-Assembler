<<<<<<< HEAD
=======
.text
.align 2
.global ejex
ejex:
mov r5,#25
ldr r3,=e1
ldr r4,[r3]
add r5,r5,r4
ldr r3,=caracter
ldr r1,[r3]
str r1,[r0,r5]
>>>>>>> origin/master

.global ejex

<<<<<<< HEAD
ejex:
	push {lr}
	mov r5,#25
	add r5,r5,r0
	mov r0, r5
	pop {pc}
=======
.data
caracter:
.byte '*'
>>>>>>> origin/master
