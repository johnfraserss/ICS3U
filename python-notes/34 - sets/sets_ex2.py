#-----------------------------------------------------------------------------
# Name:        Sets (sets_ex2.py)
# Purpose:     Example of difference_update()
#              and intersection_update() methods
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

# difference_update() method
# remove items from 'fruits' that exist in both sets
# this changes the 'fruits' set
print('\nfruits.difference_update(my_fruits)')
fruits.difference_update(my_fruits)
print('fruits: ', end='')
print(fruits)
print('my_fruits: ', end='')
print(my_fruits)

print('\nResetting sets')
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
my_fruits = {'banana', 'pineapple', 'pomegranate', 'kiwi'}
print('fruits: ', end='')
print(fruits)
print('my_fruits: ', end='')
print(my_fruits)

# intersection_update() method (which items exist in both sets)
# removes items that are unique to `fruits`
# this changes the `fruits` set
print('\nfruits.intersection_update(my_fruits)')
fruits.intersection_update(my_fruits)

print('fruits: ', end='')
print(fruits)
print('my_fruits: ', end='')
print(my_fruits)