#-----------------------------------------------------------------------------
# Name:        Logging (logging_ex2.py)
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

    total = 0.0 # This is an intentional error to show the importance of debugging
    for item in numbers:
        logging.debug('Total is ' + str(total) + ', now multiplying ' + str(item) + ' to the total.')
        total *= item
        logging.debug("Total's new value is " + str(total))

    logging.debug('Ensuring the final value is a float value')
    assert isinstance(total, float), 'Expecting a float'

    logging.debug('Final value of total is ' + str(total))
    logging.info('End of program')
    return total
    

nums = [1, 2, 3, 4, 5, 6, 7, 8]
product = multiply(nums)
assert isinstance(product, float), 'Expecting a float'
logging.info('End of program')

'''
 Below is the output from having total = 0.0 when it first is created (instead of a better value of 1.0)

 2018-11-11 12:51:23,289 - INFO - Start of program
 2018-11-11 12:51:23,301 - INFO - Starting multiply function
 2018-11-11 12:51:23,306 - DEBUG - Ensuring input is a list
 2018-11-11 12:51:23,311 - DEBUG - Ensuring each item in the list is an int or float
 2018-11-11 12:51:23,316 - DEBUG - Checking 1 is an int or a float
 2018-11-11 12:51:23,321 - DEBUG - Checking 2 is an int or a float
 2018-11-11 12:51:23,326 - DEBUG - Checking 3 is an int or a float
 2018-11-11 12:51:23,331 - DEBUG - Checking 4 is an int or a float
 2018-11-11 12:51:23,336 - DEBUG - Checking 5 is an int or a float
 2018-11-11 12:51:23,341 - DEBUG - Checking 6 is an int or a float
 2018-11-11 12:51:23,346 - DEBUG - Checking 7 is an int or a float
 2018-11-11 12:51:23,351 - DEBUG - Checking 8 is an int or a float
 2018-11-11 12:51:23,356 - DEBUG - All values are numbers, starting to multiply them all
 2018-11-11 12:51:23,361 - DEBUG - Total is 0.0, now multiplying 1 to the total.
 2018-11-11 12:51:23,366 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,371 - DEBUG - Total is 0.0, now multiplying 2 to the total.
 2018-11-11 12:51:23,376 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,381 - DEBUG - Total is 0.0, now multiplying 3 to the total.
 2018-11-11 12:51:23,387 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,392 - DEBUG - Total is 0.0, now multiplying 4 to the total.
 2018-11-11 12:51:23,397 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,402 - DEBUG - Total is 0.0, now multiplying 5 to the total.
 2018-11-11 12:51:23,407 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,412 - DEBUG - Total is 0.0, now multiplying 6 to the total.
 2018-11-11 12:51:23,417 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,423 - DEBUG - Total is 0.0, now multiplying 7 to the total.
 2018-11-11 12:51:23,428 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,433 - DEBUG - Total is 0.0, now multiplying 8 to the total.
 2018-11-11 12:51:23,438 - DEBUG - Total's new value is 0.0
 2018-11-11 12:51:23,443 - DEBUG - Ensuring the final value is a float value
 2018-11-11 12:51:23,449 - DEBUG - Final value of total is 0.0
 2018-11-11 12:51:23,449 - INFO - End of function
 2018-11-11 12:51:23,454 - INFO - End of program
'''
