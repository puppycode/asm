#
# testing.s serves as a "main" to test library functions
#
.globl _start
.text
.include "testinc.s"
_start:

	
	
	mov $message, %ecx
	

	call print_string

	movl $EXITP, %eax
	xor %ebx,%ebx
	int $0x80

message:
	.asciz "Front\0"
