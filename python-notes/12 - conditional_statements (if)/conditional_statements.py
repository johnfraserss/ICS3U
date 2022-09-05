#-----------------------------------------------------------------------------
# Name:        Conditional Statements (conditionalStatements.py)
# Purpose:     To provide information about how conditional statements (if)
#			   work in Python
#
# Author:      Mr. Seidel
# Created:     15-Aug-2018
# Updated:     15-Aug-2018
#-----------------------------------------------------------------------------

# Using 3D coordinates for variable nomenclature
x = 1
y = 2
z = 300

# Basic if statement
if x > 0:
	print('Hello!')

# Using 'elif' in a conditional
if x > 1:
	print("It's not supposed to be!")
elif y == 2:
	print('Yup!')
else:
	print('Nope!')
	
# Using 'and' in a conditional chain
if x > 0 and z > 10:
	print("It's supposed to be here!")
else:
	print("Shouldn't reach here")

# Using 'or' in a conditional chain
if x > 10 or y > 10 or z > 10:
	print('Yup!')
else:
	print('Nope!')