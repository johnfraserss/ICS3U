# Notes (Basics)

### Printing strings

When printing strings, there are 3 different "quote" levels that you can use.  The most used are single-quotes (apostrophes); however, the other two do have their place.  The double-quotes are mainly used if you have an apostrophe within the string itself (i.e. "What's going on?").  The triple-quote (three apostrophes) is mainly used when you have both a double-quote and apostrophes in it (i.e. ('''Mr. Seidel said, "Who's there?"''')

```python
print('Hello world!')
print("Hello world!")
print('''Hello World!''')
```

### Printing numerical values

When printing out numerical values, you will want to wrap the text with a ```str()``` function.  The reason being that you might want to include strings in your  output along with the number(s) so that it is easier to understand what the number is printing out for (as in example 2 above)

```python
print(str(5 + 10)) # example 1
print('The value of x is: ' + str(5.5))  # example 2
```

### Variables and printing

Variables are used to temporarily store information, and can be manipulated in multiple ways.  Variables should be named so that it is easy to tell what the value held by the variable is easily identifiable.

Variables can be of different types such as:
* integers
* floats
* characters 
* strings
* Boolean values
* and more!

```python
integerOne = 15
integerTwo = 22
print(str(integerOne - integerTwo))

greeting = 'Hello'
print(greeting)
```

When printing out variables, you will want to wrap the text with a ```str()``` function if you know that the values might be numeric.  If you know they are strings you can print out the information directly to the ```print()``` function.


### Mathematical Operations

You can use the standard mathematical operators ```+```, ```-```, ```*```, ```/``` as well as some other ones that you might not be used to using such as:
* ```//``` - This is used to do integer division (see below)
* ```%``` - This is used to find the remainder after a division (see below)
* ```**``` - This is used for a power (see below)

```python
integerDivisionOfFloats = 5.5 // 2
print(integerDivisionOfFloats)	#  Should be 2

moduloOfIntegers = 5 % 2
print(moduloOfIntegers)  # Should be 1

powerOfIntegers = 2 ** 3
print(powerOfIntegers)   # Should be 8
```

### Converting between types

You can convert between different data types by using functions such as:
* ```int()``` - Will convert to an integer
* ```float()``` - Will convert to a float value
* ```str()``` - Will convert to a string
* and more!

```python
integerConversion = int(5.5)
print(str(integerConversion))

floatConversion = float(2)
print(str(floatConversion))
```

### Receiving input from the user

Sometimes you will want to ask someone to enter information for you so that you can process that information and print it back out.  This is useful if you are, for example, receiving information to create a database, or to calculate the hypotenuse of a right-angle triangle, etc.

To do so, we use the ```input()``` function.  The ```input()``` function takes one argument (information in the parentheses) which is typically the question that we would ask the user to help guide them, as a string.  For example:

```python
name = input('Enter your name: ')
print(name)
```

The above program prompts the user with ```Enter your name: ``` and waits for the user to enter information to continue.  Afterwards, it will then just print out the name entered.  For more examples, check the ```basics.py``` file above.
