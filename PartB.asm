#Haaris Yahya
#hy20ao
#7054984

.data

prompt: .asciiz "Enter a non-negative value for n: "
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
#print n
li $v0, 1
move $a0, $t0 #store n in $a0
syscall

#prompt newline
li $v0, 4
la $a0, newline
syscall

li $t1, 1 #counter

loop:
bgt $t1, $t0, end_loop
#print asterisk\
li $v0, 11
lb $a0, asterisk
syscall


add $t1, $t1, 1 #increment counter
b loop
end_loop:
#exit
li $v0, 10
syscall
