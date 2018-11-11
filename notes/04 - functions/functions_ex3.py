#-----------------------------------------------------------------------------
# Name:        Functions (functions_ex3.py)
# Purpose:     To provide examples of how for functions work in Python
#              This example uses required AND optional parameters.
#              Required in the sense that the caller **must** provide all
#              parameters for the function to work.
#              Optional parameters are given a default value in the parameter
#              list, in case the caller doesn't use all parameters.
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     11-Nov-2018
#-----------------------------------------------------------------------------

# A function with one required, and one optional parameter
def printPerson(name, age=0):
	'''
	This will print out the information given about a person
	If an age isn't given, it is defaulted to a value of zero.
	'''

	print('Name: ' + str(name))
	print('Age: ' + str(age))
	return

printPerson('Einstein', 40)
printPerson('Newborn')		# used the default value of the "age" parameter (i.e. age = 0)
