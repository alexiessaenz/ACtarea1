org 100h

mov ax, 0
mov al, 10d
mov bl, 3d
div bx
mov [200h], ax

int 20h