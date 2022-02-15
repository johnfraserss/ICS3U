#-----------------------------------------------------------------------------
# Name:        Sets (sets_ex2.py)
# Purpose:     Example of isdisjoint(),
#              issubset() and issuperset() methods
#              in use for sets
#
# Author:      Mr. Seidel
# Created:     15-Feb-2022
# Updated:     15-Feb-2022
#-----------------------------------------------------------------------------

# Initial three sets
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
other_fruits = {'pomegranate', 'kiwi'}
the_fruits_at_home = {'banana', 'pineapple'}

print('Initial sets: ')
print('fruits: ', end='')
print(fruits)
print('other_fruits: ', end='')
print(other_fruits)
print('the_fruits_at_home: ', end='')
print(the_fruits_at_home)

# isdisjoint() method
# returns true or false
print('\nfruits.isdisjoint(other_fruits): ', end='')
print(fruits.isdisjoint(other_fruits))
print('fruits.isdisjoint(the_fruits_at_home): ', end='')
print(fruits.isdisjoint(the_fruits_at_home))

# issubset() method
# returns true or false
print('\nfruits.issubset(other_fruits): ', end='')
print(fruits.issubset(other_fruits))
print('fruits.issubset(the_fruits_at_home): ', end='')
print(fruits.issubset(the_fruits_at_home))

# issuperset() method
# returns true or false
print('\nfruits.issuperset(other_fruits): ', end='')
print(fruits.issuperset(other_fruits))
print('fruits.issuperset(the_fruits_at_home): ', end='')
print(fruits.issuperset(the_fruits_at_home))