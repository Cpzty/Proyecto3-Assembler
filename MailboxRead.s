.globl MailboxRead
MailboxRead:
@paso1
cmp r0,#15
movhi pc.lr

@paso2
channel	.req r1
mov channel,r0
push {lr}
bl GetMailboxBase
mailbox .req r0

@paso3
rightmail$:
wait2$:
status	.req r2
ldr status,[mailbox,#0x18]
tst status,#0x40000000
.unreq status
bne wait2$

@paso 4
mail	.req r2
ldr mail,[mailbox,#0]
inchan	.req r3
and inchan,mail,#0b1111
teq inchan,channel
.unreq inchan
bne rightmail$

@paso 5
and r0,mail,#0xfffffff0
.unreq mail
pop {pc}
