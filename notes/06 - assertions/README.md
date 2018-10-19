# Notes (Assertions)

Assertions are used in-code for you to check a function, variable, etc. to ensure that your code isn't doing something obviously wrong.  To work with assertions, we will use the ```assert``` keyword.  To use the ```assert``` keyword, you will have to set it up as follows: ```assert test, "Error message"```.  Let's see what that looks like using a the hypotenuse function we used in the functions examples:

```python
def hypotenuse(sideA, sideB):
  '''Calculates the hypotenuse and returns it to the sender based on
     sideA and sideB given

  Parameters
  ----------
  sideA : float
    The first side of the right-angled triangle (non-hypotenuse)
  sideB : float
    The second side of the right-angled triangle (non-hypotenuse)
        
        
  Returns
  -------
  float
    The length of the third side of the right-angled triangle (hypotenuse) as per the Pythagorean Theorem
  '''

  cSquare = sideA**2 + sideB**2	  # local variable used to hold information
  hypotenuseValue = cSquare**0.5 	  # takes the square root
  return hypotenuseValue

# Check to make sure the function is working
assert hypotenuse(3, 4) == 5, 'Expecting triangle with sides 3, 4 to have a hyp of 5'


# The following will break, this is just to show the error message that could pop up
assert hypotenuse(3, 4) == 6, 'Expecting triangle with sides 3, 4 to have a hyp of 5'

```

The above example runs the ```hyptoenuse(3, 4)``` function and checks to see if it is equal to ```5```.  If it isn't, then an error message will pop up (based on what was typed in to the quote section).  We can also use the ```assert``` function to check to see if something is currently the expected data type (i.e. strings, int, float, etc.).

To check to see if something is of a particular data type, you use the ```isinstance(variable, expectedType)``` function. A basic example is below:

```python
x = 3.5
assert isinstance(x, float), 'Expecting a float'
```

**Important note:** Assertions are used when developing a program, and will be required for all future programming work.  However, whenever complete programs going forward will need to have asserts commented out by starting the line with a ```#```. 

See the ```assertions.py``` file for more examples.
