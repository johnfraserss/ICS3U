#-----------------------------------------------------------------------------
# Name:        Tuples with isinstance() (tuples-with-isinstance.py)
# Purpose:     To provide examples of how to use tuples in assertions
#			   in Python
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     11-Nov-2018
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
  assert isinstance(sideA, (int, float)), 'Expecting an int or float'
  assert isinstance(sideB, (int, float)), 'Expecting an int or float'
  
  cSquare = sideA**2 + sideB**2	# local variable used to hold information
  hypotenuseValue = cSquare**0.5 	# takes the square root
  return float(hypotenuseValue)

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
# assert hypotenuse(3, 4) == (int, float)  This will break, see notes below
print(str(hyp))

'''
Note the use of tuples with isinstance() on lines 28 and 29 above.
This allows you to check multiple variable types with an isinstance() function

This will **not** work with a straight comparison (as shown on line 37)
'''
