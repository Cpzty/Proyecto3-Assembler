/* Programa Laboratorio no.10 */

/* Autor: José Rodolfo Pérez  */
/* Carné: 16056 */
/* Autor: Cristian Pérez  */
/* Carné: 16011 */
 
/* Descripcion del Porgrama: Graficador ASCII 2D */ 


/*IMPORTANTE ARREGLO 8 POSICION 25 ES EL 0,0 (TIENE UN SIGNO +)*/


.text
.align 2
.global main
.type main,%function

.global array1
.global array2
.global array3
.global array4
.global array5
.global array6
.global array7
.global array8
.global array9
.global array10
.global array11
.global array12
.global array13
.global array14
.global array15

main:
	stmfd sp!, {lr}

	@contador para el ciclo de impresion
	mov r3, #50
	@locaciones de los arreglos x y y
	ldr r6, = x
	ldr r9, = y

ciclo:
	@inicio del array y
	ldr r0, [r9], #0
	@regresa en r0 el array al que tenemos que imprimir
	bl subway
	@arreglo correcto de impresion
	mov r10, r0
	@cargamos en r0 el array de x
	ldr r0, [r6], #0
	bl ejex
	@guardamos en r4 lo que nos retorna la subrutina
	mov r4, r0
	@desplazarnos en el array correcto de impresion
	add r10, r10, r4
	@cargar lo que vamos a escribir a r0
<<<<<<< HEAD
	ldr r0, = const
	ldrb r1, [r0]
	strb r1, [r10]

	@ciclo
	add r6, r6, #4
	add r9, r9, #4
	subs r3, r3, #1
	bne ciclo
=======
	ldrb r0, = const
	@vamo a ver si es esto
	@strb r0, [r10]
	str r0, [r10]
	
>>>>>>> origin/master
	


	@llamamos a la subrutina de impresion
	ldr r0, =array1
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 2
	ldr r0, = array2
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 3
	ldr r0, = array3
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 4
	ldr r0, = array4
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 5
	ldr r0, = array5
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 6
	ldr r0, = array6
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 7
	ldr r0, = array7
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 8
	ldr r0, = array8
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 9
	ldr r0, = array9
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 10
	ldr r0, = array10
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 11
	ldr r0, = array11
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 12
	ldr r0, = array12
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 13
	ldr r0, = array13
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 14
	ldr r0, = array14
	bl impresion

	ldr r0, = formatoenter
	bl puts

	@fila 15
	ldr r0, = array15
	bl impresion

	ldr r0, = formatoenter
	bl puts

salida:
	@salida del SO 
	@mov r7, #1
	@swi 0

	mov r0, #0
	mov r3, #0
	ldmfd sp!, {lr}
	bx lr

.data
.align 2

formato:
	.asciz "%c"
formatoenter:
	.asciz " "
e1:
	.word 1,3
x:
	.word -1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,-22,-21,-20,-19,-18,-17,-16,-15,-14,-13,-12,-11,-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,-0,-1,-2,-3
y:
	.word -1,1,2,3,4,5,6,0,-1,-2,-3,-4,-5,-6,0,1,2,3,4,5,6,0,-1,-2,-3,-4,-5,-6,0,1,2,3,4,5,6,0,-1,-2,-3,-4,-5,-6,0,1,2,3,4,5,6,0
const:
	.byte 'x'
array1:
	.byte '+','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','+'
array2:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array3:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array4:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array5:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array6:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array7:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array8:
	.byte '+','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','+','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','+'
array9:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array10:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array11:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array12:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array13:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array14:
	.byte '+',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','|',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','+'
array15:
	.byte '+','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','-','+'
