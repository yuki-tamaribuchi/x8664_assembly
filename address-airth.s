# gcc -static -no-pie -Tbss=0x800000 address-airth.s

	.globl main
main:
	movb $0x0, 0x800000
	movb $0x1, 0x800001
	movb $0x2, 0x800002
	movb $0x3, 0x800003

	mov $0x800000, %rax
	mov $0, %r8

	movsxb (%rax), %r9
	add %r9, %r8
	add $1, %rax

	movsxb (%rax), %r9
	add %r9, %r8
	add $1, %rax

	movsxb (%rax), %r9
	add %r9, %r8
	add $1, %rax
	ret
