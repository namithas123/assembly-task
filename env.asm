BITS 32
extern printf
extern scanf
extern getenv
section .data
section .bcc
    
section .text
        global main

     main:
     push ebp
     mov ebp,esp
     sub esp,0x10


     mov eax,dword[ebp+0xc]
     mov eax,dword[eax+0x4]
     mov dword[ebp-0x8],eax
     mov edi,dword[ebp-0x8]
     push edi
     call getenv
     mov dword[ebp-0x10],eax
     mov esi,dword[ebp-0x10]
     push esi
     call printf
    

leave
ret
     
