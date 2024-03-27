;Imprimir los mas nuevos
org 100h
jmp inicio
var1 db "1Nissan",0Dh,0Ah,24h
var2 db "0Toyota",0Dh,0Ah,24h
var3 db "1Honda",0Dh,0Ah,24h
var4 db "0BMW",0Dh,0Ah,24h
var5 db "0Mitsubishi",0Dh,0Ah,24h

inicio:
    mov al, var1
    cmp al,"0"
    jnz inicio2
    mov dx,offset var1
    mov ah,9h
    int 21h
inicio2:
    mov al, var2
    cmp al,"0"
    jnz inicio3
    mov dx,offset var2
    mov ah,9h
    int 21h
inicio3:
    mov al, var3
    cmp al,"0"
    jnz inicio4
    mov dx,offset var3
    mov ah,9h
    int 21h
inicio4:
    mov al, var4
    cmp al,"0"
    jnz inicio5
    mov dx,offset var4
    mov ah,9h
    int 21h
inicio5:
    mov al, var5
    cmp al,"0"
    jnz fin
    mov dx,offset var5
    mov ah,9h
    int 21h        
    
fin:int 20h