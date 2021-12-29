#Haaris Yahya
#hy20ao
#7054984
.data

prompt: .asciiz "Enter a non-negative value for n: "
prompt2: .asciiz "Enter character : "
prompt1: .asciiz "Error !!! Number should be greater than or equal to 3"
newline: .asciiz "\n"
asterisk: .byte '*'


.text
#prompt and read int
li $v0, 4
la $a0, prompt
syscall


#read int and store in $t0
li $v0, 5
syscall
move $t0, $v0 #store n in $t0

blt $t0,3,showError
#prompt and read char
li $v0, 4
la $a0, prompt2
syscall

li $v0, 12
syscall
move $s0, $v0 #store n in $s0


#prompt newline
li $v0, 4
la $a0, newline
syscall

li $t2,1
outerLoop:
bgt $t2, $t0, end_loop2

li $t1, 1 #counter
loop:
bgt $t1, $t0, end_loop
#print asterisk\

beq $t2,1,print
beq $t2,$t0,print
beq $t1,$t0,print
beq $t1,1,print

li $v0, 11
li $a0, ' '
syscall

j skipPrint

print:
li $v0, 11
move $a0, $s0
syscall

skipPrint:
add $t1, $t1, 1 #increment counter
b loop
end_loop:

add $t2, $t2, 1 #increment counter
li $v0, 11
li $a0, '\n'
syscall

b outerLoop
end_loop2:
#exit
li $v0, 10
syscall


showError:
li $v0, 4
la $a0, prompt1
syscall
