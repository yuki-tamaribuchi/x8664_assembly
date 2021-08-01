# gcc -static -no-pie -Tbss=0x800000 x86_mem_operand.s

	.globl main
main:
	mov $0x99, %rax
	mov %rax, 0x800000

	mov $0x200000, %rax
	mov $0x100000, %rcx

	#0x40000+0x20000(rax)+0x100000*2=0x800000
	mov 0x400000(%rax,%rcx,2), %r8
	ret
