#-----------------------------------------------------------------------------
# Name:        Functions (functions_ex4.py)
# Purpose:     To provide examples of how functions work in Python
#              This example includes an optional parameter with a default value,
#              and the values are called in a different order using explicit
#              argument names.
#
# Author:      Mr. Seidel
# Created:     24-Nov-2024
# Updated:     24-Nov-2024
#-----------------------------------------------------------------------------

def greet(name, greeting="Hello"):
    """A function that returns a personalized greeting."""
    return f"{greeting}, {name}!"

print(greet("Person1"))
print(greet(greeting="Hi", name="Person2"))
print(greet("Person3", "Hey"))
