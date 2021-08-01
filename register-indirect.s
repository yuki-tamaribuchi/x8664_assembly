# gcc -static -no-pie -Tbss=0x800000 register-indirect.s

	.globl main
main:
	mov $0x99, %rax
	mov %rax, 0x800000

	mov $0x800000, %rdx
	mov (%rdx), %r8
	ret
