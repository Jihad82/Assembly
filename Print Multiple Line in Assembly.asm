org 100h


.model small

.data
 
   msg db "Hello$"
   msg1 db "World$"
   msg2 db "Code to HaveN"
   NL db 0AH,0DH,"$"
 
.code

    lea dx,msg
    mov ah,9
    int 21h
   
    lea dx,NL ;print new line and shift the cursor to left
    mov ah,9
    int 21h
   
    lea dx,msg1
    mov ah,9
    int 21h
   
    lea dx,NL
    mov ah,9
    int 21h
   
    lea dx,msg2
    mov ah,9
    int 21h
   
    lea dx,NL
    mov ah,9
    int 21h
   
   
ret



;Output:
;Hello

;World
