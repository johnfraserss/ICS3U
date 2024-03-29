#-----------------------------------------------------------------------------
# Name:        File Writing (fileWriting.py)
# Purpose:     Building on the File Reading work, we are now going to change
#              the data and output the new information to 'output.txt'
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


def convertDictionaryToString(dictionary):
    '''
    Converts the incoming dictionary information into a string for a file

    Convert information that comes in as a dictionary into
    a string that is formatted as 'key:value\n' per line

    Parameters
    ----------
    dictionary : dict
        A dictionary to convert into a single string for output

    Returns
    -------
    dict
        A dictionary based on the list of string information input

    '''
    assert isinstance(dictionary, dict), "Expecting input to be a dictionary"
    logging.debug('Starting convertDictionaryToString function')
    string = ''
    for k, v in dictionary.items():
        string = string + str(k) + ':' + str(v) + '\n'    # add a newline character at the end of each line

    logging.debug('convertDictionaryToString function completed.  Returning string')
    return string


logging.debug('Program beginning')
logging.debug('Attempting: Reading in fruit.txt')
file = open('fruit.txt', 'r')
fileContents = file.readlines()
file.close()
logging.debug('Pass: Reading in fruit.txt')

# Just printing out the contents of the file (note the extra spaces after each item in the output)
for line in fileContents:
    print(line)

logging.debug('Attempting: Converting information to a dictionary')

# Creating a dictionary of the file content
fruits = convertToDictionary(fileContents)
logging.debug('Pass: Converting information to a dictionary')

print(fruits)

logging.debug('Converting all values to zero')

# Change the values of everything to be zero
for fruit in fruits.keys():
    fruits[fruit] = 0

logging.debug('Building output string from dictionary')
fruitString = convertDictionaryToString(fruits)
print(fruitString) # 

logging.debug('Attempting: writing to output.txt')
with open('output.txt', 'w') as file:
	file.write(fruitString)

logging.debug('Pass: writing to output.txt')

logging.debug('Program ended')
    
