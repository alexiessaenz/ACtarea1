	org	100h
	
section .text
	mov 	al,		120d 	;voltaje
	mov 	ah,		0

	mov	bl,		60d	;resistencia
	mov	bh,		0    
	cmp 	bx,		0	;op1, op2      
	je 	zero			;op1 == 0           
	div	bx			;I = V / R   
	mov	[220h],		ax      

	int 	20h

zero:	mov	di,		0d
	mov	cx,		len

lupi:	mov	bl,		[comnt+di]
	mov	[di+200h],	bl
	inc	di
	loop	lupi

	int 	20h

section	.data
	comnt	db		"ERROR"
	len	equ		$-comnt

