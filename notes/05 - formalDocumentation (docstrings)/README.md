# Notes (Formal Documentation (docstrings))

> "Code is more often read than written."
> -- _Guido van Rossum_

When you are given a piece of code that you are to implement into your own work, you are typically reading through the code to understand it.  Given the two pieces of code below, which would you prefer to receive?

```python
def foo():
  return 5 * 8 / 10 ** 9 % 2 + 1

xyzzy = 5
corge = xyzzy ** 5 + foo()
print(str(corge))
```

```python
def seidelonianConstant():
  '''
  This function calculates the Seidelonian constant and returns that value to the caller
  
  Parameters
  ----------
  None

  Returns
  -------
  float
    The value of the Seidelonian constant.
  '''

  return 5 * 8 / 10 ** 9 % 2 + 1


speedOfCar = 5  # in km/h
rotationalVelocity = speedOfCar ** 5 + seidelonianConstant()
print(str(rotationalVelocity))
```

Both pieces of code do the exact same work; however, the second piece of code is much easier to read and figure out what the code is doing, and the purpose of the function.

Docstrings are used in Python as a formal documentation method for functions and other structures (used in Grade 12 course).  Focusing on docstrings for functions, we are going to be using a formal documentation standard formatting type called [**_NumPy/SciPy docstrings_**](https://numpydoc.readthedocs.io/en/latest/format.html) which is formatted using [reStructuredText](http://docutils.sourceforge.net/docs/user/rst/quickref.html).  The main way to create docstrings in functions is structured as below:

```python


def functionName(parameter1, parameter2, parameter3=0, ...):
  '''
  Short summary of the use of the function
  
  Longer description of the use of the function.  This is an area where you can 
  expand on the short summary.

  Parameters
  ----------
  parameter1 : type
    description of parameter1
  parameter2 : type
    description of parameter2
  parameter3 : type, optional
    description of parameter3
  
  Returns
  -------
  type
    description of what's being returned
  
  Warnings (this section is optional)
  --------
  This is a free-text area that describes any warnings that could propogate
  in this program

  Raises (this section is only applicable if your function raises an exception)
  ------
  ExceptionType
    Describe why/how this exception gets raised
  '''
```

The example above includes extra sections based on what you will need to include in the future (post-Exercise 11).  For now, **you are required to include the following sections**:
* Short summary
* Longer description
* Parameter list
* Returns

See the ```formalDocumentation_ex#.py``` files above for examples of what you are responsible to include in your docstrings going forward.
