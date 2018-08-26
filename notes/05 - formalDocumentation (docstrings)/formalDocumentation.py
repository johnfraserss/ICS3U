#-----------------------------------------------------------------------------
# Name:        Formal Documentation i.e. docstrings (formalDocumentation.py)
# Purpose:     To provide examples of how to create docstrings in Python using
#			   formal documentation standards.				
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
# //////////////////////////////// End of Program 

###################################################
################     Program 3    #################
###################################################
# A function with one required, and one optional parameter
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
		The age of the person to be printed. If nothing given,
		value will be zero.
	
	Returns
	-------
	None
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
	Prints out the information given about an employee.
	
	Takes in information from the user and then prints out
	a summary of the name, occupation, and salary of the 
	information given.
	
	Parameters
	----------
	name : str
		The name of the person to be printed
	occupation : str
		The occupation of the person to be printed
	salary : float
		The salary of the person to be printed.
	
	Returns
	-------
	None
	'''
	
	print('Name: ' + str(name))
	print('Occupation: ' + str(occupation))
	print('Salary: ' + str(salary))

printEmployee(salary=31000, name="January", occupation="Month") # note order
printEmployee(name="February", occupation="Month", salary=28000) # note order
