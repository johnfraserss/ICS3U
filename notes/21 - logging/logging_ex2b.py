#-----------------------------------------------------------------------------
# Name:        Logging (loggging_ex2b.py)
# Purpose:     To provide examples of how to debug and log information in 
#              Python programs.
#
# Author:      Mr. Seidel
# Created:     11-Nov-2018
# Updated:     02-May-2020 (removed assertions, updated for NoneType)
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
    NoneType
        Returns None if the wrong datatype is given.
    '''
    logging.info ('Starting multiply function')
    
    logging.debug('Ensuring input is a list')
    if not isinstance(numbers, list):
        return None
    logging.debug("Outputting all items in the list to ensure they're ints or floats")
    for item in numbers:
        logging.debug('Checking ' + str(item) + ' is an int or a float')

    logging.debug('Starting to multiply them all numbers')

    total = 1.0 
    for item in numbers:
        logging.debug('Total is ' + str(total) + ', now multiplying ' + str(item) + ' to the total.')
        total *= item
        logging.debug("Total's new value is " + str(total))

    logging.debug('Final value of total is ' + str(total))
    logging.info('End of function')
    return total
    

nums = [1, 2, 3, 4, 5, 6, '7', 8]  # This is an intentional error to check out assertions
                                   # and how the debugging window can help us narrow down the error quickly
product = multiply(nums)
logging.info('End of program')

'''
 Below is the output from having one of the numbers be a string

 2020-05-02 23:12:11,882 - INFO - Start of program
 2020-05-02 23:12:11,882 - INFO - Starting multiply function
 2020-05-02 23:12:11,882 - DEBUG - Ensuring input is a list
 2020-05-02 23:12:11,882 - DEBUG - Outputting all items in the list to ensure they're ints or floats
 2020-05-02 23:12:11,882 - DEBUG - Checking 1 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 2 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 3 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 4 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 5 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 6 is an int or a float
 2020-05-02 23:12:11,883 - DEBUG - Checking 7 is an int or a float
 2020-05-02 23:13:12,960 - INFO - Start of program
 2020-05-02 23:13:12,960 - INFO - Starting multiply function
 2020-05-02 23:13:12,960 - DEBUG - Ensuring input is a list
 2020-05-02 23:13:12,963 - DEBUG - Outputting all items in the list to ensure they're ints or floats
 2020-05-02 23:13:12,964 - DEBUG - Checking 1 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 2 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 3 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 4 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 5 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 6 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 7 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Checking 8 is an int or a float
 2020-05-02 23:13:12,964 - DEBUG - Starting to multiply them all numbers
 2020-05-02 23:13:12,965 - DEBUG - Total is 1.0, now multiplying 1 to the total.
 2020-05-02 23:13:12,965 - DEBUG - Total's new value is 1.0
 2020-05-02 23:13:12,965 - DEBUG - Total is 1.0, now multiplying 2 to the total.
 2020-05-02 23:13:12,965 - DEBUG - Total's new value is 2.0
 2020-05-02 23:13:12,967 - DEBUG - Total is 2.0, now multiplying 3 to the total.
 2020-05-02 23:13:12,968 - DEBUG - Total's new value is 6.0
 2020-05-02 23:13:12,968 - DEBUG - Total is 6.0, now multiplying 4 to the total.
 2020-05-02 23:13:12,968 - DEBUG - Total's new value is 24.0
 2020-05-02 23:13:12,968 - DEBUG - Total is 24.0, now multiplying 5 to the total.
 2020-05-02 23:13:12,968 - DEBUG - Total's new value is 120.0
 2020-05-02 23:13:12,968 - DEBUG - Total is 120.0, now multiplying 6 to the total.
 2020-05-02 23:13:12,968 - DEBUG - Total's new value is 720.0
 2020-05-02 23:13:12,968 - DEBUG - Total is 720.0, now multiplying 7 to the total.
Traceback (most recent call last):
  File "main.py", line 47, in <module>
    product = multiply(nums)
  File "main.py", line 37, in multiply
    total *= item
TypeError: can't multiply sequence by non-int of type 'float'
'''
