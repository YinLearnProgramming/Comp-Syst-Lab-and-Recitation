# Yin Hang Kwok
.text
.globl main

main:

li  $v0, 4
la  $a0, prompt1 # Dis[play primpt1
syscall       

li  $v0, 5    # read keyboard into $v0 (number x is number to test)
syscall  

move $t0,$v0  # move the first number from $v0 in $t0

li  $v0, 4    
la  $a0, message # display message to user
syscall

la  $t1, 2 # i
la  $t2, 2 #J
la  $t3, 0 #p
la  $t5, 1 #for adding 1
la  $t6, 2 # to check the number mod 2 
syscall

blt $t0,$t1 Loop2 # if t0 is less than t1 goto Loop2
li  $v0, 1  
move    $a0, $t1
syscall


li $v0, 4  
la $a0, space
syscall  

Loop2: move $t3, $zero

Loop1: remu $t4, $t1, $t2

bne $t4, $zero, I	# enter the i (loop control)
move $t3, $t5
I:  # i loop 
add $t2, $t2, $t5   # i++
blt $t2, $t1 Loop1
bne $t3, $zero, J # enter the j (loop control)
li  $v0, 1         
move  $a0, $t1     
syscall

li  $v0, 4   
la  $a0, space
syscall       

J:   # for checking j>=n then do exit
add $t1, $t1, $t5   # j++
move $t2, $t6
bgt  $t1, $t0, end    # calling exit 
j Loop2

#exit
end: li $v0, 10 
syscall 

.data
prompt1:
.asciiz "user input: "
message:
.asciiz "program  output: "
space:  .asciiz  " "
