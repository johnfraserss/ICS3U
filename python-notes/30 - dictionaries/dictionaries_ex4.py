#-----------------------------------------------------------------------------
# Name:        Dictionaries (dictionaries_ex4.py)
# Purpose:     To provide examples of how to use dictionaries
#              with tuples as keys.
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------

# (x,y) = 'color'
colorsAtPoints = { (3,4) : 'red', (4,5) : 'green' }

print(colorsAtPoints.keys())
print(colorsAtPoints.values())
print(colorsAtPoints[(3,4)])
