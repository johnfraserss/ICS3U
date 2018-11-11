#-----------------------------------------------------------------------------
# Name:        Functions (functions_ex4.py)
# Purpose:     To provide examples of how for functions work in Python
#              This example uses required parameters, but explicit calling.
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     11-Nov-2018
#-----------------------------------------------------------------------------

# An example of how the order of the arguments can be given however you want
# as long as you are specific in your call to the function.
def printEmployee(name, occupation, salary):
	'''
	This will print out employee information based on what is given
	'''
	
	print('Name: ' + str(name))
	print('Occupation: ' + str(occupation))
	print('Salary: ' + str(salary))

printEmployee(salary=31000, name="January", occupation="Month") # note order
printEmployee(name="February", occupation="Month", salary=28000) # note order
