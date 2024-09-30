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
	NoneType
		If the values are incorrect (or of incorrect type), it will return the value None

    '''
    if not isinstance(temperature, (int, float)):  
        return None
    if temperature < -100 or temperature > 100:
        return None

    fahrenheit = (temperature * 1.8) + 32

    if not isinstance(fahrenheit, float):
        raise Exception('Farhenheit calculation did not return a float value as expected.')
    return fahrenheit


while True:
    print('Enter a number between -100 and 100.  If you are done, just press Enter')
    value = input()
    if value == '':
        break
	if value.isnumeric():
		value = float(value)  # convert to a float
    answer = convertCToF(value)
	if answer != None:
        print(str(value) + 'C converted into ' + str(answer) + 'F')
    else: 
        print('That value did not work, please try again')
        continue
