# Notes (String Manipulation)

We've been working with strings since the first program of the year; however, we are now going to delve deeper into strings, what we can do with them, and how to manipulate them.

Strings themselves can be thought of as a list.  Let's take the word ```fruit = 'apple'``` as an example - it can be thought of as a list of it's individual characters as below

| | | | | | |
|-|-|-|-|-|-|
| **index of ```fruit```** | 0 | 1 | 2 | 3 | 4 |
| **element of ```fruit```** | 'a' | 'p' | 'p' | 'l' | 'e' |

With this in mind, we can **access** any part of a string; however, strings **are immutable** in that we cannot just change the string directly.  For example, we cannot do the following: ```fruit[3] = 'b'```, but we can do something like ```print(fruit[0:3])``` to print out only a portion of the string.

There are ways to manipulate the string as we see fit, but it will take some finesse work to complete it properly.  For example, I can change the ```fruit``` variable to have all uppercase letters by using ```fruit = fruit.upper()```.

There are a lot of other function available to work on strings.  See the ```stringManipulation.py``` file above to see some examples at work.

#### Escape Sequences

There are special characters that you can place inside your strings to have access to certain keyboard options.  For example, if you wanted to emulate pressing the ```TAB``` key, you can insert a ```\t``` into your string.  For example: ```'Fruit\tCost'``` would insert a ```TAB``` between ```'Fruit'``` and ```'Cost'```.  Below is a list of the most frequently used escape sequences that are available to you for [Python 3](https://docs.python.org/3/reference/lexical_analysis.html):

| Escape Sequence | Meaning |
| --------------- | ------- |
|   \\    	| Backslash (\)	                 |
|   \'	    | Single quote (')               |	 
|   \"    	| Double quote (")	             | 
|   \n	    | ASCII Linefeed (LF)            |
|   \r     	| ASCII Carriage Return (CR)	(needed for Linux/Mac along with \n)  |
|   \t    	| ASCII Horizontal Tab (TAB) 	  |

See the ```stringManipulation.py``` file above for some example uses of escape sequences.
