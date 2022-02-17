# Notes (Sets)

Sets are yet another collection data structure that we will be learning about this semester.  Other data structures we have learned are lists, tuples, and dictionaries.

A set is a single variable that holds more than one piece of information (like a list). However, a set is **unordered**, **unindexed**, and the items inside cannot be changed. You can add things to a list, or remove things from a list, but you cannot change something specifically.

One of the main features of a set is that **there are no repeat values in a set**.



```python
fruit = {'apple', 'pear', 'peach', 'banana', 'pineapple'}

print(fruit)

# Example output
>>> {'apple', 'pineapple', 'pear', 'peach', 'banana'}

# When run again, you can get this output
>>> {'banana', 'pear', 'peach', 'pineapple', 'apple'}
```

As you can see from the sample output above, the order of the items in the set are not always the same. So, unlike a list we cannot access a specific item using an index, and unlike a dictionary we cannot access a specific item using a key.  Since we cannot access a particular item, we cannot explicitly change it.

### Adding and Removing Data

Here are some examples of adding and removing data from a set

```python
fruit = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
print(fruit)

fruit.remove('apple')
print(fruit)

fruit.add('cranberry')
print(fruit)

try:
  fruit.remove('kiwi') # this will raise a KeyError since there is no such key in the set
except KeyError as e:
  print(f'The key: {e} you attempted to delete did not exist in this set.')

# Output from example
{'banana', 'apple', 'pear', 'peach', 'pineapple'}
{'banana', 'peach', 'pear', 'pineapple'}
{'banana', 'cranberry', 'peach', 'pear', 'pineapple'}
The key: 'kiwi' you attempted to delete did not exist in this set.
```



### Iteration

To iterate through a set, we have to grab each item individually as we cannot locate any specific item by its index

```python
fruits = {'apple', 'pear', 'peach', 'banana', 'pineapple'}

for fruit in fruits:
  print(fruit)

# Output from example above
{'peach', 'pineapple', 'apple', 'pear', 'banana'}
peach
pineapple
apple
pear
banana
```

### Converting strings and lists into sets

```python
sentence = 'Hello world!'
sentence_set = set(sentence)
print(sentence_set)

fruits = ['apple', 'pear', 'apple', 'banana', 'apple']
fruits_set = set(fruits)
print(fruits_set)

# Output from example above
{'e', 'H', ' ', 'w', 'o', '!', 'd', 'l', 'r'}
{'banana', 'pear', 'apple'}
```

One of the benefits of this is to remove duplicates from your lists or to see which unique letters exist in a string.

### Other functions available

See the `sets_functions.py` and other `sets_ex#.py` files for functioning programs that demonstrate many other functions and options that are available for sets.



