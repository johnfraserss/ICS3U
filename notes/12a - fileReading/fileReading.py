#-----------------------------------------------------------------------------
# Name:        File Reading (fileReading.py)
# Purpose:     To provide examples of how to read from files, parse the data,
#              and make use of the data.
#
# Author:      Mr. Seidel
# Created:     18-Nov-2018
# Updated:     18-Nov-2018
#-----------------------------------------------------------------------------

import logging
logging.basicConfig(filename='log.txt', filemode='w', level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')

def convertToDictionary(information):
    '''
    Converts the incoming file information into a dictionary

    Convert information that comes in as a list of strings
    and breaks it apart assuming a token of ':' is separating
    the information in a 'key:value' type pairing

    Parameters
    ----------
    information : list of strings
        A list of strings in the format of 'key:value' pairing

    Returns
    -------
    dict
        A dictionary based on the list of string information input

    Raises
    ------
    Exception
        Incorrectly formatted work
    ValueError
        There wasn't the right number of items in the string ('key:value') expected
        The second value wasn't an integer

    '''
    assert isinstance(information, list), "Expecting input to be a list of 'key:value' pairs"

    logging.debug('Starting convertToDictionary function - passed in a list')
        
    formattedDictionary = {}
    try:
        logging.debug('Attempting to create a dictionary from key:value pairs')
        for item in information:
            logging.debug('Attempting with: ' + str(item[0:-1]))
            item = item[0:-1]       # remove the newline characters
            k, v = item.split(":")  # this is where it could break

            logging.debug('Attempting to convert ' + str(v) + ' to an integer')
            v = int(v)              # this is another breaking point

            logging.debug('Attempting to insert the key: ' + str(k) + ' :with value: ' + str(v) + ' :into a dictionary entry')
            formattedDictionary[k] = v
        
    except ValueError as e:
        try:
            v = int(v)
        except:
            logging.exception('The second value was not an integer')
        else:
            logging.exception('There was not exactly 2 items in the string after splitting')
    except Exception as e:
        logging.exception('An unexpected error popped up: ' + str(e))

    assert isinstance(formattedDictionary, dict), 'Dictionary was not properly built'
    logging.debug('Ending convertToDictionary - dictionary ready to be passed back')
    return formattedDictionary


logging.debug('Program beginning')
logging.debug('Reading in fruit.txt')
file = open('fruit.txt', 'r')
fileContents = file.readlines()
file.close()
logging.debug('Done reading in fruit.txt')

# Just printing out the contents of the file (note the extra spaces after each item in the output)
for line in fileContents:
    print(line)

logging.debug('Attempting to convert information to a dictionary')

# Creating a dictionary of the file content
fruits = convertToDictionary(fileContents)

print(fruits)
logging.debug('Program ended')
    
