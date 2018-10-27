#-----------------------------------------------------------------------------
# Name:        Lists (lists.py)
# Purpose:     To provide examples of how to wor with lists in Python
#              in a variety of ways including specific functions for lists
#
# Author:      Mr. Seidel
# Created:     27-Oct-2018
# Updated:     27-Oct-2018
#-----------------------------------------------------------------------------

# creating a list of fruit as a list
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

# printing out the fruit list (individually) using the indexing method
for i in range(0, len(fruit), 1):
  print(fruit[i])

# resetting fruit (in case something happened above)
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

# printing out the fruit list using the advanced for loop
for item in fruit:
  print(item)

