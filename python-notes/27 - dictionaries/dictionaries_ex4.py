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
colors_at_points = {(3, 4): 'red', (4, 5): 'green'}

print(colors_at_points.keys())
print(colors_at_points.values())
print(colors_at_points[(3, 4)])
