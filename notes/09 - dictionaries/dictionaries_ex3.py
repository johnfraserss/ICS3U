#-----------------------------------------------------------------------------
# Name:        Dictionaries (dictionaries_ex3.py)
# Purpose:     To provide examples of how to use dictionaries
#              Using "in" and "not" to check if something exists
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------

fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}

if 'apple' in fruit.keys():
    print('YAY!')

if 4 in fruit.values():
    print('YAY!')

if 'kiwi' not in fruit.keys():
    print('Kiwi not in here...')

'''
# Output from example:
YAY!
YAY!
Kiwi not in here...
'''
