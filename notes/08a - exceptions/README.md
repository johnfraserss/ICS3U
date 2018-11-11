# Notes (Exceptions)

As your programs become more and more complex, being able to follow what is happening is key to ensuring that you don't spend hours fixing problems in your program.

To help with this, you are now going to force your program to break whenever it is supposed to.  However, you are going to do this in a certain manner that makes it easy to find out where the problem occurred, as we want to ensure ease of debugging.

The new keywords we are going to be using today are:
* ```raise```
* ```try```
* ```except```
* ```Exception()``` (and multiple derivatives thereof).

### Raising Exceptions

If we take a look at the functions that you were asked to build in *Exercise 6* you will notice that we have multiple return value types (integers if the input was given correct, and strings if it wasn't).  We are going to be making changes to these functions in order to fall in line with Python convention.  Every function should only have **one return value _type_** no matter what is going on in the function.

Let's take a look at what we **were** doing as of *Exercise 6* (before documentation and assertions):

```python3
def convertCToF(temperature):
	if temperature < -100 or temperature > 100:
		return 'Unacceptable input values.'
	fahrenheit = (temperature * 1.8) + 32
	return fahrenheit

print(convertCToF(100))
print(convertCToF(200))

# Output
212.0
Unacceptable input values.
```

Let's get this caught up to at least include documentation and assertions:
```python3
def convertCToF(temperature):
	'''Converts the given temperature from Celsius into Fahrenheit

	Parameters
	----------
	temperature : float
		This is the input temperature value from Celsius to convert

	Returns
	-------
	float
		The converted temperature in Fahrenheit
	str
		If the values are incorrect, it will return the string 'Unacceptable input values.'
	'''
	assert isinstance(temperature, (int, float)), 'Expecting an int or float'  # ensure we have a number to work with
	if temperature < -100 or temperature > 100:
		return 'Unacceptable input values.'
	
	fahrenheit = (temperature * 1.8) + 32
	
	assert isinstance(fahrenheit, float), 'Expecting a float' # ensure that we have a float being returned
	return fahrenheit

print(convertCToF(100))
print(convertCToF(200))

# Output
212.0
Unacceptable input values.
```

Now that we have documentation and assertions in place, let's take a look at what needs to be changed.  There are multiple things to change:
1. Under the ```Returns``` section in the documentation, we want there to be only one type being returned (a float).
2. Ensure we return only a float in the actual code (not the documentation)
3. Ensure the ```temperature``` value is an ```int``` or ```float``` as it is coming into the function
4. Ensure the ```temperature``` value is between -100 and +100.

Number 1 is easy to fix.  We would just remove the ```str``` and ```If the values are ... ``` lines.
Number 2, 3, and 4 require us to use the new keywords ```raise``` and ```Exception()``` to (essentially) return an error back to the place that called the function.

The new code would look something like this:
```python3
def convertCToF(temperature):
	'''Converts the given temperature from Celsius into Fahrenheit

	Parameters
	----------
	temperature : float
		This is the input temperature value from Celsius to convert

	Returns
	-------
	float
		The converted temperature in Fahrenheit

	Raises
	------
	TypeError
		If temperature is not an int or float
	ValueError
		If temperature was outside the required range
	Exception
		If the Fahrenheit calculation goes awry
	'''

	if not isinstance(temperature, (int, float)):  
		raise TypeError('convertCToF expecting an int or float as input')
	if temperature < -100 or temperature > 100:
		raise ValueError('Values not within expected range (-100, 100)')
	
	fahrenheit = (temperature * 1.8) + 32
	
	if not isinstance(fahrenheit, float):
		raise Exception('Farhenheit calculation did not return a float value as expected.')

	return fahrenheit

print(convertCToF(100))
# print(convertCToF("hi")) # Raises the TypeError
# print(convertCToF(200)) # Raises the ValueError

# Output
212.0
Unacceptable input values.
```

Let's break down the changes:
1. Fixed the ```Returns``` documentation, and added a ```Raises``` section describing all the ```Exception()``` options that would be raised.
2. Change the different ```return``` code options, when there could be an issue into ```raise```.
3. Used the word **```not```** to check to see if something is **not** an integer or float (since we were expecting an int or float).

If we uncomment ```print(convertCToF("hi"))``` the program will break and display the ```TypeError``` information.  Whereas if we uncomment ```print(convertCToF(200))``` the program will break and display the ```ValueError``` information.

There exists [a listing of built-in errors/exceptions in Python 3](https://docs.python.org/3/library/exceptions.html).  If you cannot find one that suits what you are raising an exception for, you can always use the generic ```Exception()``` option.

### Catching Exceptions

Now that we know how to ```raise``` exceptions, we should now deal with catching acceptions and dealing with them when they happen.  Whenever you are first working with them, the easiest thing to do is to just print out the problem.  Once you are comfortable with the idea, you can deal with anything that is raised **without** having to break your program.

Below is a simple example of how to deal with a raised exception:

```python3
def convertCToF(temperature):
    '''Converts the given temperature from Celsius into Fahrenheit

    Parameters
    ----------
    temperature : float
        This is the input temperature value from Celsius to convert

    Returns
    -------
    float
        The converted temperature in Fahrenheit

    Raises
    ------
    TypeError
        If temperature is not an int or float
    ValueError
        If temperature was outside the required range
    Exception
        If the Fahrenheit calculation goes awry
    '''
    if not isinstance(temperature, (int, float)):  
        raise TypeError('convertCToF expecting an int or float as input')
    if temperature < -100 or temperature > 100:
        raise ValueError('Values not within expected range (-100, 100)')

    fahrenheit = (temperature * 1.8) + 32

    if not isinstance(fahrenheit, float):
        raise Exception('Farhenheit calculation did not return a float value as expected.')
    return fahrenheit

try:
    print(convertCToF(100))
    print(convertCToF("hi"))
    print(convertCToF(200))
except Exception as e:
    print('Something went wrong: ' + str(e))
```

If you know that something **could** go wrong with a function, you will want to wrap it in a ```try/except``` pair of statements.
* ```try``` will try to run the code within it's block.  If an error/exception gets raised, it will send it to the ```except``` block.
* ```except``` will catch any of the errors/exceptions that the ```try``` block attempted to run.  You typically want to include what you are trying to catch as part of the statement.
* ```as``` will catch the error/exception that ```except``` caught and then convert it into a temporary variable (in this case ```e```) that you can use within the ```except``` block only.

There is another example available above that shows how you can use multiple ```except``` blocks with a single try.  This is useful if you want to do something different depending on the exception that you caught. 
