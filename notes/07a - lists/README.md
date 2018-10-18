# Notes (Lists)

A list is a single variable that holds more than one piece of information.  Up until this point, each variable that you created held a unique **single** piece of information.

Lists can hold any variable type in them.  Lists can also hold different data types, but this is high suggested against as it is very error prone.

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']
numbers = [5, 3, 2, 4, 1, 6, 8, 10]

print(fruit)
print(numbers)

# Example output
>>> ['apple', 'pear', 'peach', 'banana', 'pineapple']
>>> [5, 3, 2, 4, 1, 6, 8, 10]
```

A list is structured using square brackets, and each item is held within it separated by commas.  We can access the information inside a list in multiple ways.

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for i in range(len(fruit)):
  print(fruit[i])


# Example output
>>> apple
    pear
    peach
    banana
    pineapple
```

There is some new terminology/functions used in this example, such as:
* ```len()``` - will find the length of either a list, tuple or a string.
* ```i``` - is a variable typically used to represent the _index_ of a list.  This is one of the few cases where a single-letter variable is allowed.
* ```listName[i]``` - will access the ```listName``` list and grab the i'th _element_ in the list.

The second way that we can access the elements in the list is via a new method of using a for loop:

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for item in fruit:
  print(item)


# Example output
>>> apple
    pear
    peach
    banana
    pineapple
```

This way of using the for loop gives you the element itself and stores it in the variable called ```item```.  Every time the for loop runs, it changes to the next item in the list.  This method is used when you don't want to change anything in the list itself, as any changes made to ```item``` are not saved to the list.  Whereas the ```listName[i]``` method **can** allow you to change the information in the list itself as below:

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for i in range(len(fruit)):
  fruit[i] = fruit[i] + "'s are great!"

print(fruit)


# Example Output
>>>["apple's are great!", "pear's are great!", "peach's are great!", "banana's are great!", "pineapple's are great!"]
```

### Functions available

Notes here about the functions available for lists.

### Converting a string into a list

Notes here about conversion
