#-----------------------------------------------------------------------------
# Name:        Raising Exceptions (raising.py)
# Purpose:     To provide examples of how to raise exceptions in Python programs
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     11-Nov-2018
#-----------------------------------------------------------------------------

def convertCToF(temperature):
    '''Converts the given temperature from Celsius into Fahrenheit

    Parameters
    ----------
    temperature : float
        This is the input temperature value in Celsius to convert

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
# print(convertCToF("hi"))
# print(convertCToF(200))
