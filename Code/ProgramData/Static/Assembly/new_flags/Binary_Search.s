	.file	"Binary_Search.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z12binarySearchPiiii
	.type	_Z12binarySearchPiiii, @function
_Z12binarySearchPiiii:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+16]
	cmp	eax, DWORD PTR [ebp+12]
	jl	.L2
	mov	eax, DWORD PTR [ebp+16]
	sub	eax, DWORD PTR [ebp+12]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	cmp	eax, DWORD PTR [ebp+20]
	jne	.L3
	mov	eax, DWORD PTR [ebp-12]
	jmp	.L4
.L3:
	mov	eax, DWORD PTR [ebp-12]
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	cmp	eax, DWORD PTR [ebp+20]
	jle	.L5
	mov	eax, DWORD PTR [ebp-12]
	dec	eax
	push	DWORD PTR [ebp+20]
	push	eax
	push	DWORD PTR [ebp+12]
	push	DWORD PTR [ebp+8]
	call	_Z12binarySearchPiiii
	add	esp, 16
	jmp	.L4
.L5:
	mov	eax, DWORD PTR [ebp-12]
	inc	eax
	push	DWORD PTR [ebp+20]
	push	DWORD PTR [ebp+16]
	push	eax
	push	DWORD PTR [ebp+8]
	call	_Z12binarySearchPiiii
	add	esp, 16
	jmp	.L4
.L2:
	mov	eax, -1
.L4:
	leave
	ret
	.size	_Z12binarySearchPiiii, .-_Z12binarySearchPiiii
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
