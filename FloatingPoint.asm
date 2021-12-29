# Haaris Yahya, hy20ao, 7054984
# COSC 2P12 - Assignment 5
# 12/05/2021

.data
prompt:         .asciiz         "Enter a weight in kilograms: "
msg:            .asciiz         "=================================\n"
msg2:           .asciiz         "CC per Y pounds of body  weight\n"
msg3:           .asciiz         "\nWeight"
msg4:           .asciiz         "\t\tDosage\n"
tab:            .asciiz         "\t\t"
newline:        .asciiz         "\n"
number:         .float          1000
number2:        .float          453.592

.text
.globl main
main:
                # prints a string 
                addi    $v0,$0,4
                la      $a0,prompt
                syscall
                
                # reading a number from user in the console and number is in $f0
                addi    $v0,$0,6
                syscall
                
                lwc1    $f2,number
                lwc1    $f4,number2
                
                mul.s   $f0,$f0,$f2
                div.s   $f0,$f0,$f4
                
                addi    $t0,$0,500      # asssigning a 500 to $t0 (min weight)
                addi    $t1,$0,1350     # assigning a 1350 to $t1 end condition (max weight)
                
                
                # prints a string with msg
                addi    $v0,$0,4
                la      $a0,msg
                syscall
                
                # prints a string with msg2
                addi    $v0,$0,4
                la      $a0,msg2
                syscall
                
                # prints a string with msg3
                addi    $v0,$0,4
                la      $a0,msg3
                syscall
                
                # prints a string with msg4
                addi    $v0,$0,4
                la      $a0,msg4
                syscall
                
                # prints a string with msg
                addi    $v0,$0,4
                la      $a0,msg
                syscall
                
                # loop until $t0 reaches 1300
                
loop:           beq     $t0,$t1,done
                
                # converts integers into floating point
                mtc1    $t0,$f4
                cvt.s.w $f4,$f4
                
                # performs a division
                div.s   $f8,$f4,$f0
                
                # prints an integer
                addi    $v0,$0,1
                addi    $a0,$t0,0
                syscall
                
                #printing a tab
                addi    $v0,$0,4
                la      $a0,tab
                syscall
                
                # incrementing weight by 50
                addi    $t0,$t0,50
                
                #printing a float value
                addi    $v0,$0,2
                mov.s   $f12,$f8
                syscall
                        
                
                #print a new line
                addi    $v0,$0,4
                la      $a0,newline
                syscall
                
                #jump to loop
                j       loop
                
                
                
done:
                # exit program
                addi    $v0,$0,10
                syscall
