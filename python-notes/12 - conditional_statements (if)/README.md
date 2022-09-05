# Notes (Conditional Statements (if))

If statements allow a branching off of the program based on whether a condition is true or false.

To check whether a condition is false, it is found within the brackets of the if statement.  The condition will return a boolean value (i.e. true or false), and that will determine whether the program enters that if statement or not.

```python

x = 1
if x == 1:
  print("It's ONE!")
```

Note the indenting of the ```print()``` command in the code above.  The indenting is required for the program to understand that the ```print()``` command is part of the ```if``` statement.  Anytime you have an ```if``` statement, you will need to indent any code that you want run under those conditions.  Typically you use the ```TAB``` key to indent, or use 4 spaces as a Python convention.

For conditional statements, there are different ways for the boolean value to be checked.  Some examples include using:
* ```==``` to check for equality
* ```>=``` to check greater than or equal to
* ```>``` to check greater than
* ```<=``` to check less than or equal to
* ```<``` to check less than
* ```!=``` to check **not** equal to

There will be more options shown later in the course, but these are the basics boolean checks that a conditional statement can check.

If statements can combine to check ```if``` something is true, ```else``` do something different.  See a code block below.

```python

x = 1
if x == 2:
  print("It's TWO!")
else:
  print("It's NOT TWO!")
```

This will check to see if the value of ```x``` is the same as ```2``` and if it isn't, the program will jump down to the ```else``` statement and run the code found within that block.

You can also chain a variety of ```if``` statements together; however, every ```if``` beyond the first is written as ```elif``` which stands for "else if".  See the code block below.

```python

x = int(input('Enter a number between 1 and 100'))
if x > 10:
  print('The number is at least two digits long')
elif x < 10:
  print('The number is less than 10')
else:
  print('The number IS 10!')

```

Finally, we can chain different conditions together to check to see if multiple things are true.  Chaining different conditional statements together requires one of the following:
* ```and``` which makes sure the conditions on both sides of the ```and``` are true
* ```or``` which checks if either of the conditions on both sides of the ```or``` are true

For example:
```python

x = 1
y = 2

if x == 1 and y == 2:
  print('Yay!')
else:
  print('Nay!')
```

or

```python

x = int(input('Enter a number: '))
y = int(input('Enter another number: '))

if x == 1 or y == 1:
  print('Yay! One of the numbers was a one!')
else:
  print('Nay! Neither number was the number one...')

```

Lastly, you can chain the chains together; however, you will want to ensure that you use parentheses to help you, as ```and``` has priority over ```or```, just like how ```*``` has a higher precedent in the order of operations over ```+``` for mathematics.

```python

x = 1
y = 2
z = 3

if (x == 1 and y == 1) or (z == 1):
  print('Yay!')
elif (x == 1 and y == 2) and (y == 3 or z == 3):
  print('WOOHOO!')
else:
  print('Nay!')

```
