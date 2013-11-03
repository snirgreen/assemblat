mov al,13h
mov ah,0
int 10h

mov cx,10
mov dx,20 
mov al,1111b
mov ah,0Ch
int 10h

paint:
mov ah,00h
int 16h
cmp al,119
je up
cmp al,97
je left
cmp al,115
je down
cmp al,100
je right 
jmp paint

up:    
;this pixel-black
mov al,0000b
mov ah,0Ch
int 10h  
;move 10 pixls
add dx,-10  
mov al,1111b
mov ah,0Ch
int 10h
jmp paint

left: 
;this pixel-black
mov al,0000b
mov ah,0Ch
int 10h  
;move 10 pixls   
add cx,-10 
mov al,1111b
mov ah,0Ch
int 10h
jmp paint

down: 
;this pixel-black
mov al,0000b
mov ah,0Ch
int 10h  
;move 10 pixls
add dx,10 
mov al,1111b
mov ah,0Ch
int 10h
jmp paint

right: 
;this pixel-black
mov al,0000b
mov ah,0Ch
int 10h  
;move 10 pixls
add cx,10
mov al,1111b
mov ah,0Ch
int 10h
jmp paint