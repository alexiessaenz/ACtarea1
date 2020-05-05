	org	100h
	
	mov 	ax,	0
	mov	byte[200h],	19d
	mov	byte[201h],	21d
	mov	byte[202h],	12d
	mov	byte[203h],	5d
	mov	byte[204h],	34d
	mov	byte[205h],	15d
	mov	byte[206h],	6d
	mov	byte[207h],	44d
	mov	byte[208h],	40d
	mov	byte[209h],	30d
	mov 	cx,	10d
	mov	di,	200h
suma:	mov	bl,	[di]
	add	ax,	bx
	inc 	di
	loop 	suma

	sub	di,	200h
	div	di
	mov	[20ah],	ax

	int 20h


