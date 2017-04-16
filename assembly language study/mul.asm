.text

li  $v0, 4 
la  $a0, ask_1
syscall

li  $v0,5
syscall
move    $s1, $v0


li  $v0, 4
la  $a0, ask_2
syscall

li  $v0,5
syscall
move    $s2, $v0

#sll    $s2, $s2, 3     #$s2 * $s2^3 = result
srl $s2, $s2, 1

li  $v0, 1
la  $a0, ($s2)
syscall


.data

ask_1:  .asciiz     "Enter number1: "
ask_2:  .asciiz     "Enter number2: "
result: .asciiz         "Answer is: "