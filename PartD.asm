#Haaris Yahya
#hy20ao
#7054984


#data section
.data
prompt: .asciiz "Enter set size: "
result1: .asciiz "P["
result2: .asciiz ","
result3: .asciiz "]="
nextLine: .asciiz "\n"
error: .asciiz "Entered number should be positive!!!\n"
#Main program
.text

.globl main
main:

#Prompt for size of set and read
li $v0,4
la $a0,prompt
syscall
li $v0,5
syscall


blt $v0,1,Error
#move into ao for function call
move $a0,$v0
jal combination
li $v0,10
syscall

#Combination implementation
combination:
#Store return address
move $s1,$ra
#Move integer to s0 further use
move $s0,$a0
#First loop to get combination start sets
firstLoop:
blt $s0,1,return
move $t0,$s0
move $a0,$s0
#n!
jal fact
move $t2,$v0
move $t1,$s0
#Subset getting

secondLoop:
blt $t1,1,next
#n-r
sub $a0,$t0,$t1
#(n-r)!
jal fact
#n!/(n-r)!
div $v0,$t2,$v0
#result
move $t3,$v0
#Display P[
li $v0,4
la $a0,result1
syscall

#print first value
move $a0,$s0
li $v0,1
syscall

#dis[lay ,
li $v0,4
la $a0,result2
syscall

#Print second value
move $a0,$t1
li $v0,1
syscall

#Display ]=
li $v0,4
la $a0,result3
syscall

#Print result
move $a0,$t3
li $v0,1
syscall

#Goto nextline
li $v0,4
la $a0,nextLine
syscall

#Decrement second count
addi $t1,$t1,-1
j secondLoop
#Decrement first count
next:
addi $s0,$s0,-1
j firstLoop
#Return to main
return:
move $ra,$s1
jr $ra
#Factorial finder
fact:
li $v0,1
beq $a0,0,ret
loop:
beq $a0,1,ret
mul $v0,$v0,$a0
addi $a0,$a0,-1
j loop
ret:
jr $ra
#Error message for negative
Error:
li $v0,4
la $a0,error
syscall

j main
