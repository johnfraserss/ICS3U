# Notes (Tuples)

A tuple is a data structure in Python that is similar to a list, but with two key differences:
1. Tuples are immutable (cannot be changed once created)
2. Tuples are often used for heterogeneous data (different types of data in a single structure)

> * Tuples (generally) are sequences of different kinds of stuff, and you deal with the tuple as a coherent unit
> * Lists (generally) are sequences of the same kind of stuff, and you deal with the items individually.
> 
> [Source](http://news.e-scribe.com/397)  

In other words, lists have order, tuples have structure.

## Creating Tuples

You can create a tuple by enclosing elements in parentheses:

```python
# Creating a tuple of a person's information
person_info = ("First Last", 30, "Software Engineer")
```

## Accessing Tuple Elements

You can access tuple elements using indexing, similar to lists:

```python
print(person_info[0])  # Prints the name
print(person_info[-1])  # Prints the job title
```

## Tuple Unpacking

Tuples can be unpacked into individual variables:

```python
book_info = ("Macbeth", "William Shakespeare", 1623)
title, author, year = book_info
print(f"{title} was written by {author} in {year}.")
```

## Tuples in Lists

You can create lists of tuples, which is often useful for structured data:

```python
employees = [
    ("Amina", "HR", 5),
    ("Jamal", "Engineering", 3),
    ("Priya", "Marketing", 2)
]
```

## Tuple Methods

Tuples have a few methods that don't modify the tuple:

```python
grades = (85, 90, 78, 90, 92)
print(grades.index(90))  # Returns the index of the first occurrence of 90
print(grades.count(90))  # Returns the number of times 90 appears
```

## Immutability

Remember, tuples cannot be modified after creation. This makes them useful for data that shouldn't change:

```python
constants = (3.14, 2.71, 1.41)
# This will raise an error:
# constants[0] = 3.14159
```

## Tuples vs Lists

While tuples and lists may seem similar, they have different use cases:

```python
# List: Used for collections of similar items that might change
favorite_fruits = ["apple", "banana", "cherry"]
favorite_fruits.append("date")  # This is allowed

# Tuple: Used for collections of related, but possibly different, items that shouldn't change
fruit_info = ("apple", 52, "red")  # (name, calories, color)
# fruit_info.append("sweet") would raise an error
```

### Functions available

Most of the functions that exist for lists are also available for tuples, as long as they do not attempt to change the values within the tuple.  See the example ```tuples.py``` file.
