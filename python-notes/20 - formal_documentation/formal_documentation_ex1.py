#-----------------------------------------------------------------------------
# Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex1.py)
# Purpose:     Provides an example of how to create docstrings in Python using
#		formal documentation standards.				
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     04-Nov-2018 (fixed spacing)
#-----------------------------------------------------------------------------

def menu():
  '''
  A menu of options
	
  This function will print out a list of food options
  available for the user and then return to the caller

  Parameters
  ----------
  None
	
  Returns
  -------
  None
  '''

  print('Menu')
  print('Vegetables')
  print('Fruit')
  return

# Program runs starting here.  Above this line, the functions are just defined.
menu()
