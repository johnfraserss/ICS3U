#-----------------------------------------------------------------------------
# Name:        Functions (functions.py)
# Purpose:     To provide examples of how for functions work in Python
#
# Author:      Mr. Seidel
# Created:     22-Aug-2018
# Updated:     22-Aug-2018
#-----------------------------------------------------------------------------

###################################################
################     Program 1    #################
###################################################
# A function without any parameters
def menu():
	'''
	Displays a basic menu of options
	'''

	print('Menu')
	print('Vegetables')
	print('Fruit')
	return

# Program runs starting here.  Above this line, the functions are just defined.
menu()	# Calls the function to run
# //////////////////////////////// End of Program 

###################################################
################     Program 2    #################
###################################################
# A function with two required parameters
def hypotenuse(sideA, sideB):
	'''
	Calculates the hypotenuse and returns it to the sender based on
	sideA and sideB given
	'''

	cSquare = sideA**2 + sideB**2	# local variable used to hold information
	hypotenuseValue = cSquare**0.5 	# takes the square root
	return hypotenuseValue

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
print(str(hyp))
# //////////////////////////////// End of Program 

###################################################
################     Program 3    #################
###################################################
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
printPerson('Newborn')		# used the default value of the "age" parameter
# //////////////////////////////// End of Program 

###################################################
################     Program 4    #################
###################################################
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
