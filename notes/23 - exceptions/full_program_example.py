#-----------------------------------------------------------------------------
# Name:        Raising and Catching Exceptions (full-program-example.py)
# Purpose:     This is an example of how you could use raise, try, and except
#              to create a fully functional program.
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


while True:
    print('Enter a number between -100 and 100.  If you are done, just press Enter')
    value = input()
    if value == '':
        break
    try:
        answer = convertCToF(float(value))
        print(value + 'C converted into ' + str(answer) + 'F')
    except (TypeError, ValueError) as e:
        print('That value did not work, please try again')
        continue
    except Exception as e:
        print('Something went wrong: ' + str(e))
        break
