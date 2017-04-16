.text
.globl main

main:
li $v0, 4
la $a0, number1Message # Display first message
syscall

li $v0, 5 # read keyboard into $v0 
syscall

# move the first number from $v0 in $t0
move $t0,$v0 # this is A

li $v0, 4
la $a0, number2Message # Display second message 
syscall

li $v0, 5 # read keyboard into $v0 
syscall

# move the second number from $v0 in $t1
move $t1,$v0  # this is B

#mult $t0,$t1 #this is process of using mult
#mflo $t2

li $t2, 0 # This is C
li $t3, 0 # This is D


li $t7, 0 # set t7 to 0
move $t6, $t7 # copy t6 from t7

loop1:
and $t5, $t0, 1 # use the AND gate to get the number and store it in t5
beqz $t5, loop2 
addu $t2, $t2, $t1 # C = C + the number after we get from AND gate
sltu $t5, $t2, $t1 
addu $t3, $t3 , $t5 
addu $t3, $t3, $t6

loop2:
li $t5, 2147483648
sll $t1, $t1, 1
sll $t6, $t6, 1
add $t6, $t6, $t5

srl $t0, $t0, 1
bne $t0, $t7, loop1

li $v0, 4 
la $a0, resultMessage # print answer 
syscall

li $v0, 1 
move $a0, $t2  # put the answer into $a0 and t
syscall

li $v0, 4 
la $a0, space
syscall

li $v0, 1 
move $a0, $t3  # put the answer into $a0 and t
syscall

#exit
end: li $v0, 10 
syscall 

.data
number1Message:  
.asciiz	"Enter number1: "
number2Message:  
.asciiz	"Enter number2: "
resultMessage: 
.asciiz	"Answer is: "
space:
.asciiz " "
