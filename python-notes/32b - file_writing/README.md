# Notes (File Writing)

There is not much to writing to a file in Python.  The main idea is for you to open a channel to a file, write the information you need to, then close the channel to the file so that other people can open and use the file.

```python3
string = "This will be written to a file"

with open('output.txt', 'w') as file:
	file.write(string)
```

The above example uses ```'w'``` to write to a file.  This will **overwrite** the entire contents of the file.  If what you would prefer is to **append** to the end of the file, you would use the ```'a'``` option instead of ```'w'```.

### Examples
See the ```file_writing.py``` example above.