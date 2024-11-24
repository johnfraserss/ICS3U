#-----------------------------------------------------------------------------
# Name:        Functions (functions_ex3.py)
# Purpose:     To provide examples of how for functions work in Python
#              This example includes an optional parameter with a default value.
#
# Author:      Mr. Seidel
# Created:     24-Nov-2024
# Updated:     24-Nov-2024
#-----------------------------------------------------------------------------

def greet(name, greeting="Hello"):
    """A function that returns a personalized greeting."""
    return f"{greeting}, {name}!"

# Example usage
print(greet("Person1"))
print(greet("Person2", "Hi"))
print(greet("Person3", "Hey"))
