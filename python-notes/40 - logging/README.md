# Notes (Logging)

Debugging your program is usually the part that causes the most strife whenever you are unsure about why your program is breaking.

Up until this point, you probably put in ```print()``` statements all over the place in order to try to find out what the problem was.  This was a good stop-gap solution, but there is a formal debugging and logging process that we will go over here.  You will no longer be using ```print()``` to debug your code, and will be expected to use these new skills going forward.

To make use of the debugging and logging features in Python, we will need to import a library to help us out.  A library is a set of tools that someone else wrote that we will be making use of.

Anytime we go to use the logging features we will need to use the two lines of code below at the beginning of our programs.  Don't worry about understanding how these lines work, you will just copy/paste them for now.

```python
import logging
logging.basicConfig(level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')
```
or

depending on whether we will want to have our debug information sent to a log file, or sent to the console. 

Let's take a look at our ```hypotenuse(sideA, sideB)``` function and how we could use the debug features to find errors quicker.

```python
import logging
logging.basicConfig(level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')

logging.debug('Start of program')

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
    NoneType
        Returns None if the values entered were not numbers.
    '''
    
    if not isinstance(sideA, (int, float)) or not isinstance(sideB, (int, float)):
        logging.error('The values entered into the hypotenuse function were not valid.')
        return None

    logging.debug('Starting hypotenuse with values ' + str(sideA) + ' and ' + str(sideB))

    cSquared = sideA**2 + sideB**2	# local variable used to hold information
    logging.debug('cSquared == ' + str(cSquared))
    
    hypotenuseValue = cSquared**0.5 	# takes the square root
    logging.debug('hypotenuseValue == ' + str(hypotenuseValue))
    
    return float(hypotenuseValue)


hyp = hypotenuse(3,4)
assert isinstance(hyp, float), 'Expecting a float'
logging.debug('End of program')
```

You will notice that there are a lot of ```logging.debug(string)``` lines that will help use debug the program as we go along.  If we run the program, we will have output that looks like below:

```
 2018-11-11 12:40:28,031 - DEBUG - Start of program
 2018-11-11 12:40:28,044 - DEBUG - Starting hypotenuse with values 3 and 4
 2018-11-11 12:40:28,049 - DEBUG - cSquared == 25
 2018-11-11 12:40:28,054 - DEBUG - hypotenuseValue == 5.0
 2018-11-11 12:40:28,059 - DEBUG - End of program
```

Since we are displaying debug information after certain key points, we will be able to easily identify where issues crop up if the program breaks in some way.

### Logging Levels
There are five logging levels, as shown below, where the least important is at the top, and the most important is at the bottom of the table.  This table was source from [here](https://automatetheboringstuff.com/chapter10/#calibre_link-2862).

| Level | Logging Function | Description |
| ----- | ---------------- | ----------- |
| DEBUG | ```logging.debug()``` | The lowest level. Used for small details. Usually you care about these messages only when diagnosing problems. |
| INFO | ```logging.info()``` | Used to record information on general events in your program or confirm that things are working at their point in the program. | 
| WARNING | ```logging.warning()``` | Used to indicate a potential problem that doesn’t prevent the program from working but might do so in the future. |
| ERROR | ```logging.error()``` | Used to record an error that caused the program to fail to do something.|
| CRITICAL | ```logging.critical()``` | The highest level. Used to indicate a fatal error that has caused or is about to cause the program to stop running entirely. |


### Logging to a file
We don't always want the program to display information to the console.  In a scenario where your program gets released to the public, you won't want your program randomly displaying debug information all over the place.  Instead, the majority of program use logs and logging functions to output their work to a specific log file.  For u to do the same, we will want to change our first 2 lines to something like below instead.  Note that the only change is the addition of **```filename='log.txt',```**.

```python
import logging
logging.basicConfig(filename='log.txt', level=logging.DEBUG, format=' %(asctime)s - %(levelname)s - %(message)s')
```

This will cause all of the debug information to be sent to the ```log.txt``` file instead of being displayed to the console.


### Disabling Logging Quickly
Unlike when you place ```print()``` statements everywhere in your program, you do **not** have to delete all of your ```logging.debug()``` statements.  Instead, you can add a single line to disable **all** of your ```logging.``` statements.  Depending on which ```logging.``` statements you want to disable, you would put in different options as below:

| Level | Disabling Function | What is disables |
| ----- | ------------------ | ---------------- |
| DEBUG | ```logging.disable(logging.DEBUG)``` | Only ```logging.debug()``` statements |
| INFO  | ```logging.disable(logging.INFO)``` | As above, and ```logging.info()``` statements |
| WARNING | ```logging.disable(logging.WARNING)``` | As above, and ```logging.warning()``` statements |
| ERROR | ```logging.disable(logging.ERROR)``` | As above, and ```logging.error()``` statements |
| CRITICAL | ```logging.disable(logging.CRITICAL)``` | Disables logging entirely |


### Examples
There are a multitude of examples shown above (```logging_ex#.py```).  Open each of them and run them to see what output information is displayed.
