#gcc -static -no-pie -Tbss=0x800000 load-v2.s

	.globl main
main:
	mov $99, %rax
	mov %rax, 0x800000
	mov 0x800000, %r8
	ret
