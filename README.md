# MIPS-Assembly-programs
This repository contains several projects completed using the MIPS/Assembly language. From a conversion table to a program that calculates permutations.

<b>PartB:</b>

A MIPS program that asks for and gets a non-negative integer n.
It then prints the number n followed by n asterisks. 

<b>PartC:</b>

I use the program from PartB to ask for both a positive integer n greater then or equal to
3 and a character ch. The I have my program print an n-by-n hollow square of the character ch.
For example, if the user entered 3 and X; 4 and U respectfully, it would print the following. My
program is to continue to ask for input and print the output until n=0, which will exit the
program.

3

XXX

X &nbsp;X

XXX

4

UUUU

U &nbsp;&nbsp;&nbsp; U

U &nbsp;&nbsp;&nbsp; U

UUUU 



<b>PartD:</b>

A MIPS program which will accept 1 positive integer, in effect n. My program calculates P(n,r) for all possible combinations n and r from n down to 1. For example, the user
enters 3, then your program should generate as output:

P(3,3) = 6

P(3,2) = 6

P(3,1) = 3

P(2,2) = 2

P(2,1) = 2

P(1,1) = 1

<b>FloatingPoint:</b>


I assumed you are a farmer and must administer some drug to your ailing animals. The instructions
on the medication read “administer 1ml (1cc) per X Kilos of body weight”, this being a standard way of
describing dosages. Since several animals are to be treated, and the farmer is old school, he weighs the
animals in pounds. A conversion table is required.
The Assignment
You are dealing with a cattle farmer, where an animal can range from 500 lbs, to 1300 lbs. Your
program is to prompt for X, see above. Then produce a dosage table based on the animal’s body weight
in pounds. This should be in the form of a table which ranges from 500 to 1300 lbs. in 50 lbs increments.
There are 453.592 grams / pound.
Example calculation:
X = 25 kilos, thus 25 x 1000/453.592 = 55.12 lbs = Y.
So, 500 lb animal requires 500/55.12 = 9.07 cc of medication.

