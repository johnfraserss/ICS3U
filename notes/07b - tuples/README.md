# Notes (Tuples)

A tuple is a variable that is **similar** in structure to a list; however, with two distinct differences.
1. They are immutable (cannot be changed once made)
2. They are _heterogeneous_ in nature (treated as a single unit)

> * Tuples (generally) are sequences of different kinds of stuff, and you deal with the tuple as a coherent unit
> * Lists (generally) are sequences of the same kind of stuff, and you deal with the item individually.
> 
> [Source](http://news.e-scribe.com/397)  

In other words, lists have order, tuples have structure.

```python
# date in the format Y, M, D
date = (2018, 10, 27)

print(date)

# Example output
>>> (2018, 10, 27)
```

A tuple is used when you want to be ensure that your data doesn't change over time.  Since tuples are immutable, this means that there is no ```.append()``` function or any other way to modify the information once it has been set.

Tuples can also be used as dictionary keys.  This will show itself when we look at dictionaries - you just need to know that this will be something that comes up later.

You can always have a list of tuples, as shown below:

```python
listOfDates = [(2018, 10, 26), (2018, 10, 27)]

for date in listOfDates:
  print(date)


# Example output
>>> (2018, 10, 26)
    (2018, 10, 27)
```

Since tuples are **structural** in nature, we will always know how they are built.  This gives us an advantage whenever we want to work with the data.  Below is an example of how to extract the year, month, and day information from the ```date``` variable using a special way of declaring variables.

```python
listOfDates = [(2018, 10, 26), (2018, 10, 27)]

for date in listOfDates:
  year, month, day = date    
  print(year)
  print(month)
  print(day)
  print()

```

Note the ```year, month, day = date``` section of the program.  This creates 3 different variables that becomes the 1st, 2nd, and 3rd items respectively of the ```date``` variable.  Since we know it has 3 items in it, we can use that our advantage.

### Functions available

Most of the functions that exist for lists are also available for tuples, as long as they do not attempt to change the values within the tuple.  See the example ```tuples.py``` files above.


### isinstance()

Tuples can be used in the ```isinstance()``` function to provide multiple choices for ```isinstance()``` to check for equality.  
