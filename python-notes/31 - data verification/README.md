# Notes (Data Verification)

When we are using a loosely typed language such as Python, we need to verify that the information that we are receiving in a function (or elsewhere) is what we are expecting it to be.  If it isn't, then we send back some sort of notification to the user to state that the information is not accurately being passed along.

There are two things are are going to cover below: the ```isinstance()``` function and a special datatype called ```None```.

### isinstance()

Previously, in _Exercise 6_ (before documentation and assertions) this is what we were doing:

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

We were checking the **value** of the ```temperature``` variable, but we did not check to see if the variable was even a number or not.  This is where ```isinstance()``` will come in handy.

```isinstance()``` takes in two values for comparison.  The first one is the variable you want to compare, and the second one is either a single datatype to compare, or a tuple (special type of list) of different datatypes.  Using the same exercise above, we can modify it slightly to the following:
```python3
def convertCToF(temperature):
	if not isinstance(temperature, (int, float)):
		return 'Unacceptable input values.'
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

You'll notice that the first line in the ```convertCToF()``` function now checks to see if the variable is **either** an int **or** a float.  The tuple (represented by parentheses and a list of options) contains a bunch of options to check for with isinstance().  This is the only place you are expected to use a tuple if you want to have a few options to check for.

### None

In the above section, we used the ```convertCToF()``` function as an example, and we will continue to do so here.  Whenever you are creating functions, it is best practice to always have a single datatype returning from that function.  In our example, we should **not** be returning either a string or a numeric value depending on the input given, it should always be one or the other.  In this case, we should always be returning a numeric value, because that's what we would be expecting just based on the function's name.

But what do we do if the user has given us incorrect information? Is there a special number we can return? Well... no there is not.  However, there is a special datatype that we can use to represent that the user has not provided us with the properly information.  That special datatype is called ```None```.

If we slightly modify the example above, we would have:
```python3
def convertCToF(temperature):
	if not isinstance(temperature, (int, float)):
		return None
	if temperature < -100 or temperature > 100:
		return None
	fahrenheit = (temperature * 1.8) + 32
	return fahrenheit

print(convertCToF(100))
print(convertCToF(200))

# Output
212.0
None
```

In this case, there is the numeric input, or the special ```None``` datatype being returned.  This can be useful to the people calling the function, for if they know they're receiving ```None``` when your functions don't work, they can compensate for that.  For example, they could write the following program.

```python3
def convertCToF(temperature):
	if not isinstance(temperature, (int, float)):
		return None
	if temperature < -100 or temperature > 100:
		return None
	fahrenheit = (temperature * 1.8) + 32
	return fahrenheit

values = [100, 200] 

for value in values:
	f = convertCToF(value)
	if f == None:
		print("The data you entered is incorrect, or incorrectly formatted.")

# Output
212.0
The data you entered is incorrect, or incorrectly formatted.
```

Now, let's get this caught up to at least include documentation:
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
	NoneType
		If the values are incorrect (or of incorrect type), it will return the value None
	'''
	if not isinstance(temperature, (int, float)):
		return None
	if temperature < -100 or temperature > 100:
		return None
	
	fahrenheit = (temperature * 1.8) + 32
	
	return fahrenheit
	
print(convertCToF(100))
print(convertCToF(200))

# Output
212.0
Unacceptable input values.
```
