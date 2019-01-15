# Notes (Lists)

A list is a single mutable variable that holds more than one piece of information.  Up until this point, each variable that you created held a unique **single** piece of information.

Lists can hold any variable type within them and will typically be the same type, making them _homogeneous_ in nature.  This means you will typically deal with list items individually, rather than as a whole list.

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']
numbers = [5, 3, 2, 4, 1, 6, 8, 10]

print(fruit)
print(numbers)

# Example output
>>> ['apple', 'pear', 'peach', 'banana', 'pineapple']
>>> [5, 3, 2, 4, 1, 6, 8, 10]
```

A list is structured using square brackets, and each item is held within it separated by commas.  The data is stored in such a way that you can access the information by either **index** or  retrieving the **element** directly.  A visual way that a list is stored could be as follows (using our ```fruit``` example above):

| | | | | |
|-|-|-|-|-|
| **index** | 0 | 1 | 2 | 3 | 4 |
| **element** | 'apple' | 'pear' | 'peach' | 'banana' | 'pineapple' |   




We can access the information inside a list in multiple ways.

```python
fruit = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for i in range(0, len(fruit), 1):
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

for i in range(0, len(fruit), 1):
  fruit[i] = fruit[i] + "'s are great!"

print(fruit)


# Example Output
>>>["apple's are great!", "pear's are great!", "peach's are great!", "banana's are great!", "pineapple's are great!"]
```

### Functions available

See the ```lists-functions.py``` file above for a functioning program that shows a lot of the functions and options that are available for lists.

### Converting a string into a list

If you want to convert a string into a list, there is a quick function to do that for you.

```python
word = 'What do?'
letters = list(word)

print(letters)

# Example Output
>>> ['W', 'h', 'a', 't', ' ', 'd', 'o', '?'] 


```