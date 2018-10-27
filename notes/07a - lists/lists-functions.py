#-----------------------------------------------------------------------------
# Name:        List Functions (lists-functions.py)
# Purpose:     To provide examples of functions and modifying lists in Python
#
# Author:      Mr. Seidel
# Created:     27-Oct-2018
# Updated:     27-Oct-2018
#-----------------------------------------------------------------------------

# creating a list of fruit as a list, and a set of numbers
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']
numbers = [5, 3, 2, 7, 8, 10]
print('Initial Lists')
print(fruit)
print(numbers)
print()


# Adding an element to the end of the list
fruit.append('cranberry')
numbers.append(1)

print('After appending a value to each list')
print(fruit)
print(numbers)
print()


# Removing an element to the end of the list
del fruit[2]
del numbers[2]

print('After removing a value from each list')
print(fruit)
print(numbers)
print()


# Sorting
fruit.sort() # this sorts the list in lexicographical order
numbers.sort() # this sorts the list in ascending numerical order

print('After the lists have been sorted')
print(fruit)
print(numbers)
print()


# Printing the last element
print('Printing the last item in each list')
print(fruit[-1])
print(numbers[-1])
print()


# Joining a list
print("Joining a list of letters ['a', 'b', 'c', 'd', 'e']")
letters = ['a', 'b', 'c', 'd', 'e']
word = ''.join(letters)
print(word)
print()

# Printing a slice of the list
print('Printing elements 2 and 3')
print(fruit[2:4])
print(numbers[2:4])
print()


# Merging Lists
print('Concatenating two lists')
print(numbers)
moreNumbers = [24, 25, 26, 29, 28]
print(moreNumbers)
numbers = numbers + moreNumbers
print(numbers)
print()


# Checking if something is in the list
print("Using the keywords 'in' and 'not' for lists")
if 'apple' in fruit:
    print('Apples are in the fruit list!')
if 100 not in numbers:
    print('100 is not in the numbers list')
print()


# Creating a list of lists
moreNumbers = [1, 2, 3, 4, 5]
numbersOfFruit = [numbers, moreNumbers]
print('Joining the numbers and moreNumbers lists into a single multi-dimensional list')
print('This will create a list of lists')
print(numbersOfFruit)
print()

# Why use .copy()?
print("Creating a variable called 'moreFruit' that will equal the 'fruit' variable")
print("Will show what happens if we don't use .copy() first")
moreFruit = fruit
moreFruit.append('orange')
print("fruit", fruit) # note what we're printing here.  We didn't change 'fruit'
print("In the code we appended 'orange' to 'moreFruit', then printed 'fruit'")
print("This happened because both variables point to the same area in the RAM")
print("To fix this, we use the .copy() function so that each list is unique")
moreFruit = fruit.copy()
del moreFruit[-1] # delete 'orange'
print("After using .copy() and deleting 'orange' from moreFruit, \nlet's see the difference in the lists")
print("fruit", fruit)
print("moreFruit", moreFruit)
