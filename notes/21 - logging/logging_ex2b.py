#-----------------------------------------------------------------------------
# Name:        Logging (loggging_ex2b.py)
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
    

nums = [1, 2, 3, 4, 5, 6, '7', 8]  # This is an intentional error to check out assertions
                                   # and how the debugging window can help us narrow down the error quickly
product = multiply(nums)
assert isinstance(product, float), 'Expecting a float'
logging.info('End of program')

'''
 Below is the output from having one of the numbers be a string

 2018-11-11 12:53:33,460 - INFO - Start of program
 2018-11-11 12:53:33,472 - INFO - Starting multiply function
 2018-11-11 12:53:33,477 - DEBUG - Ensuring input is a list
 2018-11-11 12:53:33,482 - DEBUG - Ensuring each item in the list is an int or float
 2018-11-11 12:53:33,487 - DEBUG - Checking 1 is an int or a float
 2018-11-11 12:53:33,493 - DEBUG - Checking 2 is an int or a float
 2018-11-11 12:53:33,498 - DEBUG - Checking 3 is an int or a float
 2018-11-11 12:53:33,503 - DEBUG - Checking 4 is an int or a float
 2018-11-11 12:53:33,508 - DEBUG - Checking 5 is an int or a float
 2018-11-11 12:53:33,513 - DEBUG - Checking 6 is an int or a float
 2018-11-11 12:53:33,518 - DEBUG - Checking 7 is an int or a float
Traceback (most recent call last):
  File "X:/P/GitHub/ICS3U/notes/08 - debugging/debugging_ex2b.py", line 57, in <module>
    product = multiply(nums)
  File "X:/P/GitHub/ICS3U/notes/08 - debugging/debugging_ex2b.py", line 39, in multiply
    assert isinstance(item, (int, float))
AssertionError
'''
