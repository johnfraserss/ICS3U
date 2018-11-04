#-----------------------------------------------------------------------------
# Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex2.py)
# Purpose:     Provides an example of how to create docstrings in Python using
#		formal documentation standards.				
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     04-Nov-2018 (fixed spacing)
#-----------------------------------------------------------------------------

def hypotenuse(sideA, sideB):
  '''
  Calculates the hypotenuse and returns it to the sender based on
  sideA and sideB given
	
  Parameters
  ----------
  sideA : float
    One of the arms of the right angle of the triangle
  sideB : float
    The other arm of the right angle of the triangle
	
  Returns
  -------
  float
    The hypotenuse value
  '''

  cSquare = sideA**2 + sideB**2	# local variable used to hold information
  hypotenuseValue = cSquare**0.5 	# takes the square root
  return float(hypotenuseValue)

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
print(str(hyp))
