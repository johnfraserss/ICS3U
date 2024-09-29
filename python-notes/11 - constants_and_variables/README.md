# Notes (Basics)

### Printing strings

When printing strings, there are 3 different "quote" levels that you can use.  The most used are single-quotes (apostrophes); however, the other two do have their place.  The double-quotes are mainly used if you have an apostrophe within the string itself (i.e. "What's going on?").  The triple-quote (three apostrophes) is mainly used when you have both a double-quote and apostrophes in it (i.e. ('''Mr. Seidel said, "Who's there?"''')

```python
print('Hello world!')
print("Hello world!")
print('''Hello World!''')
```

### Printing numerical values

There are multiple ways to print out numerical values. There are a few examples below to help you out. 

```python
print(5 + 10) # default, no string values connected.
print('The value of x is: ', (5+10))  # example 1
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

When printing out variables, there are a few options for how to print this out. Similarly to the numerical values information above, there are a few examples below.

```python
integerOne = 15
integerTwo = 22

print(integerOne) # default, no string values connected.
print('Our first integer value is', integerOne, 'units.')  # example 1 comma separated
print(f'Our second integer value is {integerTwo} units.')  # example 2 using f-strings
print('Our first integer value is ' + str(integerOne) + ' units.')  # example 3 using the str() function
```


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
print(integerConversion)

floatConversion = float(2)
print(floatConversion)
```

### Receiving input from the user

Sometimes you will want to ask someone to enter information for you so that you can process that information and print it back out.  This is useful if you are, for example, receiving information to create a database, or to calculate the hypotenuse of a right-angle triangle, etc.

To do so, we use the ```input()``` function.  The ```input()``` function takes one argument (information in the parentheses) which is typically the question that we would ask the user to help guide them, as a string.  For example:

```python
name = input('Enter your name: ')
print(name)
```

The above program prompts the user with ```Enter your name: ``` and waits for the user to enter information to continue.  Afterwards, it will then just print out the name entered.  For more examples, check the ```basics.py``` file above.
