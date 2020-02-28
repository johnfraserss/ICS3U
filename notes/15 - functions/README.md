# Notes (Functions)

Functions are used to encapsulate and organize reusable code that is used to perform a single action.  You have been using a function quite often throughout previous work: ```print()```.

Functions have a different structure from anything you've done previously, and we'll take this on step-by-step.  The basic setup of a function is as follows:

```python
def functionName( parameter1, parameter2, ... ):
    '''Description of what the function does

    '''
    # body of the function
    return expression
```

The above concepts break down as follows:
* ```def``` - Is required for you to **define** a function
* ```functionName``` - Is the name of the function.  The name of the function should be clear on its purpose.
* ```parameter#``` - Are different parameters that the function accepts.  These parameters are used inside the function.  This section can be left blank as well (i.e. ```def functionName():```).  Some parameters can have default values (see example below).
* ```'''Description'''``` - This area is used to describe the purpose of the function.  We will go further in-depth on this in the future; however, for now you will only place a description in this section.
* ```body``` - This area is where the function does whatever the function is supposed to do.
* ```return``` - This line will return back to where you called the function, or return a value to wherever the function is called.

Before being able to use a function, it must be defined.  As such, you will need to define functions near the top of a file, and then you can use them later.  Below are some basic examples to help solidify these concepts.  For more examples, check out the ```functions.py``` file above.



```python
def menu():
    '''Displays a basic menu of options

    '''

    print('Menu')
    print('Vegetables')
    print('Fruit')
    return

# Program runs starting here.  Above this line, the functions are just defined.
menu()	# Calls the function to run

```


```python
def hypotenuse(sideA, sideB):
    '''Calculates the hypotenuse and returns it to the sender based on
       sideA and sideB given

    '''

    cSquare = sideA**2 + sideB**2	  # local variable used to hold information
    hypotenuseValue = cSquare**0.5 	# takes the square root
    return hypotenuseValue

# Program runs starting here.  Above this line, the functions are just defined.
hyp = hypotenuse(3, 4)
print(str(hyp))
```

As you'll notice, in the ```hypotenuse``` example, there is a mention of a ```local``` variable.  These variables are usable **only** within the function itself, and should not exist outside of the function.

There are **multiple other examples** given for this concept:
* ```functions_ex1.py``` shows a basic function without any parameters or return values (the ```menu()``` function.
* ```functions_ex2.py``` shows a function with required parameters and a return value (the ```hypotenuse()``` function.
* ```functions_ex3.py``` shows a function with both required and optional parameters. (**needs updating**)
* ```functions_ex4.py``` shows a function with required parameters, but being called in a different order. (**needs updating**)
