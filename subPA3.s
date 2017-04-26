

.global impresion

impresion:
	push {lr}
	@ Contador salidas
	mov r8, #50
	
	@ Arreglo ya lleno
ciclo:
	push {r0}
	ldrb r1, [r0]
	ldr r0,= formato
	bl printf
	pop {r0}
	add r0, r0, #1
	subs r8, r8, #1
	bne ciclo
	
	pop {pc}

formato:
		.asciz "%c"