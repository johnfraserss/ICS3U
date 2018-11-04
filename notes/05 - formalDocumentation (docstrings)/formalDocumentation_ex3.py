#-----------------------------------------------------------------------------
# Name:        Formal Documentation i.e. docstrings (formalDocumentation_ex3.py)
# Purpose:     Provides an example of how to create docstrings in Python using
#		formal documentation standards.				
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     04-Nov-2018 (fixed spacing)
#-----------------------------------------------------------------------------

def printPerson(name, age=0):
  '''
  Prints out the information given about a person.
	
  Takes in information from the user and then prints out
  a summary of the name and age of the information.  If 
  the age isn't given, then it is defaulted to zero.
	
  Parameters
  ----------
  name : str
    The name of the person to be printed
  age : int, optional
    The age of the person to be printed. If nothing given, value will be zero.
	
  Returns
  -------
  None
  '''

  print('Name: ' + str(name))
  print('Age: ' + str(age))
  return

# Program runs starting here.  Above this line, the functions are just defined.
printPerson('Einstein', 40)
printPerson('Newborn')		# used the default value of the "age" parameter
