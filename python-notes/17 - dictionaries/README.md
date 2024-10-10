# Notes (Dictionaries)

Dictionaries are a collection data structure in Python, similar to lists but with some key differences:

| Aspect | Lists | Dictionaries |
|--------|-------|--------------|
| Access | By index (position) | By key |
| Order | Ordered | Unordered (Python 3.6+ maintains insertion order, but don't rely on it) |
| Syntax | Square brackets `[]` | Curly braces `{}` |
| Items | Elements | Key-value pairs |
| Duplicates | Allowed | Keys must be unique |
| Mutable | Yes | Yes (can add/remove/modify key-value pairs) |

For example, comparing a list of fruits to a dictionary of fruit inventory:

```python
# List
fruits = ['apple', 'pear', 'peach', 'banana', 'pineapple']
print(fruits[0])  # Outputs: apple

# Dictionary
fruit_inventory = {'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
print(fruit_inventory['apple'])  # Outputs: 10
```

Dictionaries in Python have these key characteristics:
1. Store key-value pairs
2. Keys must be unique and immutable
3. Values can be of any type
4. Mutable (can add, remove, or modify key-value pairs)
5. Unordered (in Python 3.6+, they maintain insertion order, but this shouldn't be relied upon)

## Creating Dictionaries

You can create a dictionary by enclosing key-value pairs in curly braces:

```python
fruit_inventory = {'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
```

## Accessing Dictionary Elements

You can access dictionary elements using their keys:

```python
print(fruit_inventory['apple'])  # Prints 10
```

## Adding and Modifying Elements

You can add new key-value pairs or modify existing ones:

```python
fruit_inventory['kiwi'] = 15  # Adds a new key-value pair
fruit_inventory['apple'] = 12  # Modifies an existing value
```

## Removing Elements

You can remove key-value pairs from a dictionary:

```python
del fruit_inventory['pear']
removed_fruit = fruit_inventory.pop('banana', 0)  # Removes and returns the value, or 0 if key doesn't exist
```

## Dictionary Methods

Dictionaries have several useful methods:

```python
print(fruit_inventory.keys())    # Returns a view of all keys
print(fruit_inventory.values())  # Returns a view of all values
print(fruit_inventory.items())   # Returns a view of all key-value pairs as tuples
```

## Iterating Through Dictionaries

You can iterate through dictionaries in various ways:

```python
for fruit in fruit_inventory:
    print(f"{fruit}: {fruit_inventory[fruit]}")

for fruit, quantity in fruit_inventory.items():
    print(f"{fruit}: {quantity}")
```

## Key Options in Dictionaries

Dictionaries can use various types as keys, but there are some restrictions:

1. Immutable types: Strings, numbers (integers, floats), and tuples (if they contain only immutable elements) can be used as dictionary keys.
2. Mutable types like lists and dictionaries cannot be used as keys.

## Nested Dictionaries

Dictionaries can contain other dictionaries as values:

```python
fruit_details = {
    'apple': {'color': 'red', 'taste': 'sweet', 'quantity': 10},
    'lemon': {'color': 'yellow', 'taste': 'sour', 'quantity': 5}
}
```
