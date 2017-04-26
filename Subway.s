.text
.align 2
.global subway
@acceder a puntos especificos de cada array
subway:
	push {lr}
	cmp r0,#1
	@salto al array7
	beq arra7
	cmpne r0,#2
	@salto al array6
	beq arra6
	cmpne r0,#3
	@salto al array5
	beq arra5
	cmpne r0,#4
	@salto al array4
	beq arra4
	cmpne r0,#5
	@salto al array3
	beq arra3
	cmpne r0,#6
	@salto al array2
	beq arra2
	cmpne r0,#7
	@salto al array1
	beq arra1

	cmpne r0, #0
	@salto al array 8
	beq arra8


	/*Negativos??*/

	cmpne r0,#-1
	@salto al array9
	beq arra9
	cmpne r0,#-2
	@salto al array10
	beq arra10
	cmpne r0,#-3
	@salto al array11
	beq arra11
	cmpne r0,#-4
	@salto al array12
	beq arra12
	cmpne r0,#-5
	@salto al array13
	beq arra13
	cmpne r0,#-6
	@salto al array14
	beq arra14
	cmpne r0,#-7
	@salto al array15
	beq arra15




@se pasa al array1	
arra1:
ldr r0,=array1	
b regreso

@se pasa al array2	
arra2:
ldr r0,=array2	
b regreso

@se pasa al array3	
arra3:
ldr r0,=array3	
b regreso

@se pasa al array4	
arra4:
ldr r0,=array4	
b regreso

@se pasa al array5	
arra5:
ldr r0,=array5	
b regreso

@se pasa al array6	
arra6:
ldr r0,=array6	
b regreso

@se pasa al array7	
arra7:
ldr r0,=array7	
b regreso

@se pasa al array8	
arra8:
ldr r0,=array8	
b regreso

@se pasa al array9	
arra9:
ldr r0,=array9	
b regreso

@se pasa al array10	
arra10:
ldr r0,=array10	
b regreso

@se pasa al array11	
arra11:
ldr r0,=array11	
b regreso

@se pasa al array12	
arra12:
ldr r0,=array12	
b regreso

@se pasa al array13	
arra13:
ldr r0,=array13	
b regreso

@se pasa al array14	
arra14:
ldr r0,=array14	
b regreso

@se pasa al array15	
arra15:
ldr r0,=array15	
b regreso

	
	
regreso:	
	pop {pc}
	
.data
.align 2


