#-----------------------------------------------------------------------------
# Name:        Sets (sets-functions.py)
# Purpose:     To provide examples of how to use sets
#              and some frequently used functions.
#
# Author:      Mr. Seidel
# Created:     15-Feb-2022
# Updated:     15-Feb-2022
#-----------------------------------------------------------------------------

# Initial fruits set
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
print(fruits)

# Removing a known item from the set
fruits.remove('apple')
print(fruits)

# Adding a new item to the set
fruits.add('cranberry')
print(fruits)

# Remove an item
fruits.discard('kiwi')

# Clearing out the fruits set
fruits.clear()
print(fruits)

# Resetting fruit set for use with iteration
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
print(fruits)

# Iteration
for fruit in fruits:
  print(fruit)

# Converting a string into a set
sentence = 'Hello world!'
sentence_set = set(sentence)
print(sentence_set)

# Converting a list into a set
fruits = ['apple', 'pear', 'apple', 'banana', 'apple']
fruits_set = set(fruits)
print(fruits_set)

