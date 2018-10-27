#-----------------------------------------------------------------------------
# Name:        Tuples (tuples.py)
# Purpose:     To provide examples of how to work with tuples in Python
#              in a variety of ways including specific functions for tuples
#
# Author:      Mr. Seidel
# Created:     27-Oct-2018
# Updated:     27-Oct-2018
#-----------------------------------------------------------------------------

# date in the format Y, M, D
date = (2018, 10, 27)
print('Working with a single tuple', date)
print(date[0])
print(date[1])
print(date[-1])

# Working with a list of tuples
listOfDates = [(2018, 10, 26), (2018, 10, 27)]
print('Working with a list of tuples', listOfDates)

for date in listOfDates:
  year, month, day = date    
  print(year)
  print(month)
  print(day)
  print()

