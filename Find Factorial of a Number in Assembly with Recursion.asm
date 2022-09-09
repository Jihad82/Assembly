org 100h

     
.data

  c db ?

.code

   main proc
   
    mov ax,5
    call fx
         
ret
   endp ;end main
 
   fx proc
   
    cmp ax,1
    jle base
    jmp recursive
   
   
    base:     ;base case
     
       mov bx,1
       ret
     
    recursive:
   
    push ax ;save current value in stack
   
    dec ax  ;n--
   
    call fx     ; recursive call
   
    pop ax      ; get the value of ax
   
    mul bx      ; ax*bx
    mov bx,ax   ; move new ax value to bx
         
 
    ret
   
   endp
 
