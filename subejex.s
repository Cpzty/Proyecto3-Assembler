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


.data
caracter:
.byte '*'
