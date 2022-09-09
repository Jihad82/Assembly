org 100h


.data  
 
   tgf db "Even$"
   gf db "ODD$"

.code

main proc
             
   mov dx,@data
    mov ds,dx
   
    mov ax,120 ;set value
         
  mov bx,2 ; set bx 2
  mov dx,0 ; set dx 0    
 
  div bx   ;div ax with bx
  push dx  ; dx get the remainder and save it
         
  cmp dx,0  ; compare dx
  je print1 ; if true      
  jmp print2; false
           
               
print1:

   lea dx,tgf
   mov ah,9
   int 21h
   jmp exit
   
print2:
       
   lea dx,gf
   mov ah,9
   int 21h  
 
 
exit:            
             
endp main

end main

Output:
Even
