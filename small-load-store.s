#gcc -static -no-pie -Tbss=0x800000 small-load-store.s

	.globl main
main:
	mov $0xff, %rax
	mov %al, 0x800000
	movsxb 0x800000,%r8
	ret
