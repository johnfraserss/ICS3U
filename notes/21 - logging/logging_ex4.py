#-----------------------------------------------------------------------------
# Name:        Logging (logging_ex4.py)
# Purpose:     To provide examples of how to debug and log information in 
#              Python programs.
#              Important: 
#              This version disables logging with one line of code
#              
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     26-Nov-2018
#-----------------------------------------------------------------------------

# These two lines are necessary to import the logging module
import logging
logging.basicConfig(filename='log_ex4.txt', level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')
logging.disable(logging.DEBUG)

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
    assert isinstance(numbers, list), 'Expecting a list'
    logging.debug('Ensuring each item in the list is an int or float')
    for item in numbers:
        logging.debug('Checking ' + str(item) + ' is an int or a float')
        assert isinstance(item, (int, float)), 'Expecting an int or float'

    logging.debug('All values are numbers, starting to multiply them all')

    total = 1.0 
    for item in numbers:
        logging.debug('Total is ' + str(total) + ', now multiplying ' + str(item) + ' to the total.')
        total *= item
        logging.debug("Total's new value is " + str(total))

    logging.debug('Ensuring the final value is a float value')
    assert isinstance(total, float), 'Expecting a float'

    logging.debug('Final value of total is ' + str(total))
    logging.info('End of function')
    return total
    

nums = [1, 2, 3, 4, 5, 6, 20, 8]
product = multiply(nums)
assert isinstance(product, float), 'Expecting a float'
logging.info('End of program')

'''
 The output of this exercise goes to the log_ex4.txt file
'''
