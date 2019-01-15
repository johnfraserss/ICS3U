#-----------------------------------------------------------------------------
# Name:        Logging (logging_ex1.py)
# Purpose:     To provide examples of how to debug and log information in 
#              Python programs.
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     26-Nov-2018
#-----------------------------------------------------------------------------

# These two lines are necessary to import the logging module
import logging
logging.basicConfig(level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')
logging.info('Start of program')

def hypotenuse(sideA, sideB):
    '''
    Calculates the hypotenuse and returns it to the sender based on
    sideA and sideB given
                
    Parameters
    ----------
    sideA : float
        One of the arms of the right angle of the triangle
    sideB : float
        The other arm of the right angle of the triangle
                
    Returns
    -------
    float
        The hypotenuse value
    '''
    assert isinstance(sideA, (int, float)), 'Expecting an int or float'
    assert isinstance(sideB, (int, float)), 'Expecting an int or float'

    logging.debug('Starting hypotenuse with values ' + str(sideA) + ' and ' + str(sideB))

    cSquare = sideA**2 + sideB**2	# local variable used to hold information
    logging.debug('cSquared == ' + str(cSquare))
    
    hypotenuseValue = cSquare**0.5 	# takes the square root
    logging.debug('hypotenuseValue == ' + str(hypotenuseValue))
    logging.info('End of function')
    return float(hypotenuseValue)


hyp = hypotenuse(3,4)
assert isinstance(hyp, float), 'Expecting a float'
logging.info('End of program')

'''
 This is what the output of the program was after running.

 2018-11-11 12:40:28,031 - INFO - Start of program
 2018-11-11 12:40:28,044 - DEBUG - Starting hypotenuse with values 3 and 4
 2018-11-11 12:40:28,049 - DEBUG - cSquared == 25
 2018-11-11 12:40:28,054 - DEBUG - hypotenuseValue == 5.0
 2018-11-11 12:40:28,054 - INFO - End of function
 2018-11-11 12:40:28,059 - INFO - End of program
'''
