#-----------------------------------------------------------------------------
# Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex2.py)
# Purpose:     Provides an example of how to create docstrings in Python using
#		formal documentation standards.				
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     04-Nov-2018 (fixed spacing)
#-----------------------------------------------------------------------------

def hypotenuse(side_a, side_b):
  '''
  Calculates the hypotenuse and returns it to the sender based on
  side_a and side_b given
	
  Parameters
  ----------
  side_a : float
    One of the arms of the right angle of the triangle
  side_b : float
    The other arm of the right angle of the triangle
	
  Returns
  -------
  float
    The hypotenuse value
  '''

  c_square = side_a**2 + side_b**2	# local variable used to hold information
  hypotenuse_value = c_square**0.5 	# takes the square root
  return float(hypotenuse_value)

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
print(str(hyp))
