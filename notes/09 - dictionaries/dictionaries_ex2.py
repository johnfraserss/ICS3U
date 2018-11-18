#-----------------------------------------------------------------------------
# Name:        Dictionaries (dictionaries_ex2.py)
# Purpose:     To provide examples of how to use dictionaries
#              Using iterators to go through the dictionary
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------

fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}
for k in fruit.keys():
    print(k)

for v in fruit.values():
    print(v)

for i in fruit.items():
    print(i)

'''
# Output from above
apple
pear
peach
banana
pineapple
10
4
9
24
3
('apple', 10)
('pear', 4)
('peach', 9)
('banana', 24)
('pineapple', 3)
'''
