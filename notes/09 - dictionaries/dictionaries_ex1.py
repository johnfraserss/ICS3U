#-----------------------------------------------------------------------------
# Name:        Dictionaries (dictionaries_ex1.py)
# Purpose:     To provide examples of how to use dictionaries
#              Accessing keys, values, and adding in information
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------


fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}
print(fruit)
print(fruit.keys())  # function to get all the keys from the dictionary
print(fruit.values()) # function to get all the values from the dictionary

fruit['kiwi'] = 2  # add the key 'kiwi' with a value of 2 to the dictionary
print(fruit)

print(fruit['peach'])  # access the value of the key 'peach' from the dictionary
