# Notes (Sets)

A set is a collection data structure in Python with these key characteristics:
1. Sets are unordered (items have no specific position)
2. Sets are unindexed (you can't access items by position)
3. Sets contain only unique elements (no duplicates)
4. Sets are mutable (you can add or remove items, but can't change individual items)

## Creating Sets

You can create a set by enclosing elements in curly braces:

```python
fruit_basket = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
```

## Accessing Set Elements

Since sets are unordered and unindexed, you can't access individual elements directly. Instead, you can check if an item is in the set:

```python
print('apple' in fruit_basket)  # Prints True
print('kiwi' in fruit_basket)   # Prints False
```

## Adding and Removing Elements

You can add and remove elements from a set:

```python
fruit_basket.add('mango')
fruit_basket.remove('pear')
fruit_basket.discard('kiwi')  # Doesn't raise an error if 'kiwi' isn't in the set
```

## Set Operations

Sets support various operations:

```python
citrus = {'lemon', 'lime', 'orange'}
tropical = {'pineapple', 'mango', 'banana'}

# Union
all_fruits = fruit_basket.union(citrus, tropical)

# Intersection
common_fruits = fruit_basket.intersection(tropical)

# Difference
non_citrus = fruit_basket.difference(citrus)

# Symmetric Difference
unique_to_either = fruit_basket.symmetric_difference(tropical)
```

## Set Methods

Sets have several useful methods:

```python
fruit_basket = {'apple', 'pear', 'peach', 'banana', 'pineapple'}
print(len(fruit_basket))  # Prints the number of unique fruits

fruit_basket.clear()  # Removes all items from the set
```

## Converting Other Types to Sets

You can convert strings and lists to sets:

```python
fruit_name = "banana"
fruit_set = set(fruit_name)
print(fruit_set)  # Prints {'b', 'a', 'n'}

fruit_list = ['apple', 'pear', 'apple', 'peach', 'pear']
unique_fruits = set(fruit_list)
print(unique_fruits)  # Prints {'apple', 'pear', 'peach'}
```

## Sets vs Lists

While lists and sets may seem similar, they have different use cases:

```python
# List: Used when order matters and duplicates are allowed
fruit_order = ['apple', 'banana', 'apple', 'pear']

# Set: Used when you only need unique items and order doesn't matter
unique_fruits = {'apple', 'banana', 'pear'}
```

Sets are particularly useful for removing duplicates from a collection and for membership testing (checking if an item exists in the collection).

### Other functions available

See the `sets_functions.py` and other `sets_ex#.py` files for functioning programs that demonstrate many other functions and options that are available for sets.



