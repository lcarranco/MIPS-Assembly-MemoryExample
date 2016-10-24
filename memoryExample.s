# simple example of reading operands from memory and writing back to a reserved space in memory

.data
L1:     .word 0x2345        # some arbitrary value
L2:     .word 0x33667       # some arbitrary value
Res:    .space 4

.text
.globl main

main:   lw		$t0, L1($0)	# load the first value
        lw		$t1, L2($0)	# load the second value
        and             $t2, $t0, $t1   # compute the bit-by-bit and
        or              $t3, $t0, $t1   # compute the bit-by-bit or
        sw		$t3, Res($0)	# store result at location in memory
        li		$v0, 10		# $v0 = 10
        syscall
         
         
        
