#-----------------------------------------------------------------------------
# Name:        Some Basics (basics.py)
# Purpose:     To provide a sample program about the basics of Python
#
# Author:      Mr. Seidel
# Created:     14-Aug-2018
# Updated:     28-Sep-2018
#-----------------------------------------------------------------------------

# Printing the addition of two integers
print(str(1 + 2))

# Printing of the subtraction of two floats
print(str(4.3 - 2.1))

# Boolean values
right = True
wrong = False
print(str(right))
print(str(wrong))

# Two integers to be used for the rest of the program.
integerOne = 1
integerTwo = 2

# Two float values to be used for the rest of the program.
floatOne = 3.14
floatTwo = 5.3

# Multiplying two float values.
productOfFloats = floatOne * floatTwo
print(str(productOfFloats))

# Division of two float values.
quotientOfFloats = floatTwo / floatOne
print(str(quotientOfFloats))

# Using integer division on two floats
integerDivisionOfFloats = floatTwo // floatOne
print(str(integerDivisionOfFloats))

# Using the modulo operator
moduloOfIntegers = 5 % 2
print(str(moduloOfIntegers))

# Converting between floats and integers
print(str(int(floatOne)))
print(str(float(integerOne)))

# Equation
print(str(4 * 2 / 8))

# Getting input from the user using input('Question goes here')
# Then formatting and printing back out the user input.
name = input('Enter your name: ')  # Note: This asks the user to 'Enter your name: '.  Do NOT change this to your name directly
age = input('Enter your age: ')
print('Hello ' + str(name) + ', you are ' + str(age) + ' years old.')

