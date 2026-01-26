#-----------------------------------------------------------------------------
# Name:        Assertions (assertions.py)
# Purpose:     To provide examples of how to use assertions in Python to
#			   ensure your programs are working as expected.		
#
# Author:      Mr. Seidel
# Created:     06-Sep-2018
# Updated:     06-Sep-2018
#-----------------------------------------------------------------------------

def hypotenuse(side_a, side_b):
     '''Calculates the hypotenuse and returns it to the sender based on
         side_a and side_b given

     '''

     c_square = side_a**2 + side_b**2	  # local variable used to hold information
     hypotenuse_value = c_square**0.5 	# takes the square root
     return hypotenuse_value

# Check to make sure the function is working
assert hypotenuse(3, 4) == 5, 'Expecting triangle with sides 3, 4 to have a hyp of 5'

# The following will break, this is just to show the error message that could pop up.
# Uncomment the line below to see what happens
# assert hypotenuse(3, 4) == 6, 'Expecting triangle with sides 3, 4 to have a hyp of 5'

# Testing basic variable types using the 'isinstance(item, expected)' function.
x = 3.5
y = 2
regular_z = x / y
floor_z = int(x // y)
words = 'hello everyone!'
test_value = True

assert isinstance(x, float), "Expecting float"
assert isinstance(y, int), "Expecting integer"
assert isinstance(regular_z, float), "Expecting float"
assert isinstance(floor_z, int), "Expecting integer"
assert isinstance(words, str), "Expecting string"
assert isinstance(test_value, bool), "Expecting boolean"
