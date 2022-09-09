org 100h


.model small  

.data
 
     a db "Sabit$"
     b db "5th Semester$"
     c db "011 171 220"
     NL db 0AH, 0DH, '$'
     
.code
           
 main proc
 
   lea dx,a
   mov ah,9
   int 21h;
 
   lea dx,NL
   mov ah,9
   int 21h
   
   lea dx,b
   mov ah,9
   int 21h
 
 
   lea dx,NL
   mov ah,9
   int 21h;
 
   lea dx,c
   mov ah,9
   int 21h
   
   lea dx,NL
   mov ah,9
   int 21h
 
   mov ah,7
   int 21h
 
   mov ah,4ch
   int 21h
 
 
   main endp

   end main

;Output:
;Sabit

;5th Semester

;011 171 220
