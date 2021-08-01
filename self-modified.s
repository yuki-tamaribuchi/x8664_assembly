	.section "axw", "axw"
	.globl main
main:
	movl	$0x11223344, mov_inst+3

	jmp	1f
1:	nop

mov_inst:
	mov	$0x1, %rax
	ret
