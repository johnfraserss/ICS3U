#-----------------------------------------------------------------------------
# Name:        Dictionaries (dictionaries_ex5.py)
# Purpose:     To provide examples of how to use dictionaries
#              Combining concepts (lists, iterators, ifs, etc.)
#              All definitions are from www.wordnik.com
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------

fruitDefinitions = { 'pear' : 'n. A widely cultivated tree (Pyrus communis) in the rose family, having glossy leaves, white flowers grouped in a corymb, and edible fruit.', 'pineapple' : 'n. A tropical American plant (Ananas comosus) having large swordlike leaves and a large, fleshy, edible, multiple fruit with a terminal tuft of leaves.' }

fruitList = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for item in fruitList:
    if item in fruitDefinitions.keys():
        print("The definition of a/an " + str(item) + " is: " + str(fruitDefinitions[item]))
