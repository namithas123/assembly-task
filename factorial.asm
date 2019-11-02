 BITS 32

extern printf
extern scanf

section .data
	fmt: db "%d", 0
	output: db "factorial is %d",10,0

section .text
	global main

	main:
	push ebp
	mov ebp, esp
	sub esp, 0x10

	lea eax, [ebp-0x4]
	push eax
	push fmt
	call scanf
        

	mov ebx,1
    mov ecx,0
        
    l:
      add ecx,1
      mov edx,dword [ebp-0x4]
      imul ebx,ecx
      cmp ecx,edx
      jl l
    
    push ebx
    push output
    call printf 
      
leave 
ret
