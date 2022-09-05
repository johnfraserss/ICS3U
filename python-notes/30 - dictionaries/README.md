# Notes (Dictionaries)

Dictionaries are another data structure that we will be learning about this semester.  Other data structures we have learned are lists and tuples.

Going back to our ```fruit``` example from the lists notes, we are going to expand and look at it differently.  Here is what we had previously:

| | | | | |
|-|-|-|-|-|
| **index** | 0 | 1 | 2 | 3 | 4 |
| **element** | 'apple' | 'pear' | 'peach' | 'banana' | 'pineapple' |

Now, say we own a grocery store.  We will want to keep track of inventory, and how many of each fruit we have.  An example visualization would be like the following:

| | | | | |
|-|-|-|-|-|
| **key** | 'apple' | 'pear' | 'peach' | 'banana' | 'pineapple' |
| **value** | 10 | 4 | 9 | 24 | 3 |

In this case, the idea of the **key** is similar to the idea of an **index** in a list, in that we access the data using the **key**.  Following the same train of thought, the **value** in a dictionary is similar to the idea of an **element** in a list.

Let's see that in action:

```python3
fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}

print(fruit)
print(fruit.keys())  # function to get all the keys from the dictionary
print(fruit.values()) # function to get all the values from the dictionary

# Output from example
{'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
dict_keys(['apple', 'pear', 'peach', 'banana', 'pineapple'])
dict_values([10, 4, 9, 24, 3])

```

### Accessing & Adding Data

Let's see how we can access the data, and how we can add data to a dictionary on the fly.

```python3

fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}
print(fruit)

fruit['kiwi'] = 2  # add the key 'kiwi' with a value of 2 to the dictionary
print(fruit)

print(fruit['peach'])  # access the value of the key 'peach' from the dictionary

# Output from example
{'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
{'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3, 'kiwi': 2}
9
```

**IMPORTANT:**  Although it looks like a dictionary has order (like a list), it is important to know that a dictionary is actually **unordered**.  This means there is no way to sort the data, and there is **no guarantee** that the data will print out the same way every time.


### Deleting Data 
```python3

fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}
print(fruit)

del fruit['apple']  # delete the key/value pair associated with the key 'apple'
print(fruit)

try:
  del fruit['kiwi'] # this will raise a KeyError since there is no such key in the dictionary
except KeyError as e:
  print('The key you attempted to delete did not exist')
  
# Output from example
{'apple': 10, 'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
{'pear': 4, 'peach': 9, 'banana': 24, 'pineapple': 3}
The key you attempted to delete did not exist
```


### Iteration

Another example of how we can go through all of the options in a dictionary are below:

```python3
fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}
for k in fruit.keys():
	print(k)

for v in fruit.values():
	print(v)

for i in fruit.items():
	print(i)

# Output from example
apple
pear
peach
banana
pineapple
10
4
9
24
3
('apple', 10)
('pear', 4)
('peach', 9)
('banana', 24)
('pineapple', 3)
```

Notice how the ```.items()``` function returns a tuple for us of the ```key/value``` pair.

### Finding things in a dictionary

How do we check for whether an item exists in the dictionary?  Here's a few examples:

```python3
fruit = {'apple' : 10, 'pear' : 4, 'peach' : 9, 'banana' : 24, 'pineapple' : 3}

if 'apple' in fruit.keys():
	print('YAY!')

if 4 in fruit.values():
	print('YAY!')

if 'kiwi' not in fruit.keys():
	print('Kiwi not in here...')

# Output from example:
YAY!
YAY!
Kiwi not in here...

```

### Key Options

You can use almost anything as a ```key``` for dictionaries; however, you **cannot use lists** as a key for dictionaries.

An example of using a tuple as a key can be seen below

```python3
# (x,y) = 'color'
colorsAtPoints = { (3,4) : 'red', (4,5) : 'green' }
```

Another way we can use dictionaries, is as a ... wait for it ... dictionary!

```python3
# All definitions are from www.wordnik.com

fruitDefinitions = { 'pear' : 'n. A widely cultivated tree (Pyrus communis) in the rose family, having glossy leaves, white flowers grouped in a corymb, and edible fruit.', 'pineapple' : 'n. A tropical American plant (Ananas comosus) having large swordlike leaves and a large, fleshy, edible, multiple fruit with a terminal tuft of leaves.' }

fruitList = ['apple', 'pear', 'peach', 'banana', 'pineapple']

for item in fruitList:
    if item in fruitDefinitions.keys():
        print("The definition of a/an " + str(item) + " is: " + str(fruitDefinitions['pear']))


```
