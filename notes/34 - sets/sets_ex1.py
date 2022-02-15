#-----------------------------------------------------------------------------
# Name:        Sets (sets_ex1.py)
# Purpose:     Example of difference(),
#              intersection(), and union() methods
#              in use for sets
#
# Author:      Mr. Seidel
# Created:     15-Feb-2022
# Updated:     15-Feb-2022
#-----------------------------------------------------------------------------

# Initial two sets
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
my_fruits = {'banana', 'pineapple', 'pomegranate', 'kiwi'}

print('Initial sets: ')
print('fruits: ', end='')
print(fruits)
print('my_fruits: ', end='')
print(my_fruits)

# difference() method
# which items exist in fruits that don't exist in my_fruits
print('\nfruits.difference(my_fruits): ', end='')
print(fruits.difference(my_fruits))

# difference() method
# which items exist in my_fruits that don't exist in fruits
print('\nmy_fruits.difference(fruits): ', end='')
print(my_fruits.difference(fruits))

# intersection() method (which items exist in both sets)
print('\nfruits.intersection(my_fruits): ', end='')
print(fruits.intersection(my_fruits))

# union() method (the combination of both sets without duplicates)
print('\nfruits.union(my_fruits): ', end='')
print(fruits.union(my_fruits))
