#-----------------------------------------------------------------------------
# Name:        Functions (functions_ex2.py)
# Purpose:     To provide examples of how for functions work in Python
#              This example uses required parameters.
#              Required in the sense that the caller **must** provide all
#              parameters for the function to work.
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     11-Nov-2018
#-----------------------------------------------------------------------------

# A function with two required parameters

def hypotenuse(side_a, side_b):
	'''
	Calculates the hypotenuse and returns it to the sender based on
	side_a and side_b given
	'''

	c_square = side_a**2 + side_b**2	# local variable used to hold information
	hypotenuse_value = c_square**0.5 	# takes the square root
	return hypotenuse_value

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
print(str(hyp))


