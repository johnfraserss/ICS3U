# Notes (File Reading)

There is not much to reading from a file in Python.  The main idea is for you to open a channel to a file, read in all the information from the file, then close the channel to the file so that other people can open and use the file.

```python3
with open('input.txt', 'r') as file:
	fileContents = file.readlines()
```

Note the use of the ```'r'```.  This is used to denote to ```open()``` that we are going to **read** from the file.

### Examples

See the ```file_reading.py``` example above.
