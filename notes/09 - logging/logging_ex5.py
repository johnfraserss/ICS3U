#-----------------------------------------------------------------------------
# Name:        Logging (logging_ex5.py)
# Purpose:     To provide examples of how to debug and log information in 
#              Python programs.
#              Important: 
#              This version implicitly creates a CRITICAL error
#              Commented out some of the debugging info to lower output.
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     26-Nov-2018
#-----------------------------------------------------------------------------

# These two lines are necessary to import the logging module
import logging
logging.basicConfig(level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')

logging.info('Start of program')

def multiply(numbers):
    '''
    Multiplies all the numbers given in the input list
                
    Parameters
    ----------
    numbers : list of (int, float)
        All the numbers to multiply together
    
    Returns
    -------
    float
        The final value of the multiplication
    '''
    logging.info ('Starting multiply function')
    
    logging.debug('Ensuring input is a list')
    assert isinstance(numbers, list), 'Expecting a float'
    logging.debug('Ensuring each item in the list is an int or float')
    for item in numbers:
        # logging.debug('Checking ' + str(item) + ' is an int or a float')
        assert isinstance(item, (int, float)), 'Expecting an int or float'

    logging.debug('All values are numbers, starting to multiply them all')

    total = 1.0 
    for item in numbers:
        # logging.debug('Total is ' + str(total) + ', now multiplying ' + str(item) + ' to the total.')
        total *= item
        # logging.debug("Total's new value is " + str(total))

    logging.debug('Ensuring the final value is a float value')
    assert isinstance(total, float), 'Expecting a float'

    if isinstance(total, float):
        logging.critical('Critical error!')

    logging.debug('Final value of total is ' + str(total))
    logging.info('End function')
    return total
    

nums = [1, 2, 3, 4, 5, 6, 20, 8]
product = multiply(nums)
assert isinstance(product, float), 'Expecting a float'
logging.info('End of program')

'''
 Note the usage of the logging.critical() function shows something slightly different
 in the output below.

 2018-11-11 13:00:42,103 - INFO - Start of program
 2018-11-11 13:00:42,115 - INFO - Starting multiply function
 2018-11-11 13:00:42,120 - DEBUG - Ensuring input is a list
 2018-11-11 13:00:42,125 - DEBUG - Ensuring each item in the list is an int or float
 2018-11-11 13:00:42,131 - DEBUG - All values are numbers, starting to multiply them all
 2018-11-11 13:00:42,136 - DEBUG - Ensuring the final value is a float value
 2018-11-11 13:00:42,142 - CRITICAL - Critical error!
 2018-11-11 13:00:42,147 - DEBUG - Final value of total is 115200.0
 2018-11-11 13:00:42,152 - INFO - End of function
 2018-11-11 13:00:42,152 - INFO - End of program
 
'''
