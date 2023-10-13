
.586
.model flat, c
.stack 100h
.data

.code

doit proc

	; this is a comment i can type whatever i like after a semicolon and assembler will ignore it
	
	; ----A More Complex Mathematical Expression ----

	; 7 + 2 * 8 - 8 / 5
	
	mov eax, 2
	mov ebx, 8
	mul ebx			; (eax2 + ebx8)result 16 in eax
	mov ecx, eax	; copy eax16 to ecx
	mov eax, 8		; change eax2 to eax8
	mov ebx, 5		; change ebx8 to ebx5
	div ebx			; (eax8 / ebx5)result 1 in eax, remainder 3 in edx
	; 7 + 16 - 1
	mov ebx, 7
	add ebx, ecx	; (ebx7 + ecx16)result 23 in ebx
	; 23 - 1
	
	
	
	ret
	
	
	
	; 9 / 2

	; ----Dividing Large Numbers---

	;mov eax, 0FFFFFFFFh	; largest 64bit value
	;mov edx, 0FFFFFFFFh
	;mov ebx, 2
	;div ebx
	;ret
	;error - integer overflow - result is too large must be less than 32bit


	;mov eax, 9		; eax(0000 0009) has the answer, edx(0000 0001) has the remainder
	;mov ebx, 2
	;mov edx, 1
	;div ebx
	;ret
	; ----Dividing Large Numbers---END
	
	
	;mov eax, 9		; eax has the answer, edx has the remainder
	;mov ebx, 2
	;div ebx
	
	; 2 useful assembly instrutions: nop , ret
	;nop				; no operation or do nothing for debugging
	;nop
	;nop
	;nop
	;ret				; return 
	
	
	
	; 8 * 4 

	;mov eax, 8		; eax is accumalator registry
	;mov ebx, 4
	;mov edx, 21323	; edx will fill the overflow	; edx is a data registry
	; mul eax, ebx	; syntacs error: mul only needs 1 argument	
	;mul ebx
	;mul 4
	
	;mov eax, 0FFFFFFFFh
	;mov ebx, 0FFFFFFFFh
	;mul ebx

	; the went bought. some I and, food to store	; wrong syntacs, semantics, parsing
	; I went to the store, and I bought some food. ;correct semantics, parse
	; I went to the run, and I bought some dive.	; wrong semantics

doit endp

end