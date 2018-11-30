#-----------------------------------------------------------------------------
# Name:        String Manipulation (stringManipulation.py)
# Purpose:     To provide examples of manipulating strings in Python
#
# Author:      Mr. Seidel
# Created:     30-Nov-2018
# Updated:     30-Nov-2018
#-----------------------------------------------------------------------------

fruit = 'apple'
sport = "basketball"
quote = '''1. "It's not that I'm so smart, it's just that I stay with problems longer." -Albert Einstein'''

print(fruit)
print(sport)
print(quote)

# upper() and lower()
fruit = fruit.upper()
print(fruit)
print(fruit.lower())

# is____() functions
for character in quote[0:10]:
    if character.isalpha():
        print('\"' + character + '\" is part of the alphabet')
    elif character.isdecimal():
        print('\"' + character + '\" is a number')
    elif character.isspace():
        print('\"' + character + '\" is a space!')
    elif not character.isalnum():
        print('\"' + character + '\" is not an alpha numeric character')

# startswith() and endswith()
if sport.startswith('b'):
    print(sport + " starts with a 'b'")

if fruit.endswith('e'):
    print(fruit + " ends with an 'e'")
elif fruit.lower().endswith('e'):
    print(fruit + " had an uppercase 'e'...")

# splitting strings
sport_characters = list(sport) # splits each character into a list
quote_characters = quote.split(" ") # splits each word into a list
quote_apostrophe_characters = quote.split("\'") # split on the ' character

print(sport_characters)
print() # prints a blank line
print(quote_characters)
print() # prints a blank line
print(quote_apostrophe_characters)
print() # prints a blank line

# newline and tab escape characters
sentence_with_newline = 'What is \n\thappening\n\t\there?\n'
print(sentence_with_newline)

# using .join()
# the character before the .join is what will go between each of the list items
# note the differences between what happens here

one_word = ''.join(sport_characters)
one_word_with_dots = '.'.join(sport_characters)

print(one_word)
print(one_word_with_dots)


# using lstrip(), rstrip() and strip()
string_with_many_spaces = '   Hi!   '
string_with_many_spaces_as_list = list(string_with_many_spaces)
print(string_with_many_spaces_as_list) # note all the extra spaces before and after the words
print() # prints a blank line

string_with_many_spaces_as_list_lstrip = list(string_with_many_spaces.lstrip()) # demonstrating lstrip()
string_with_many_spaces_as_list_rstrip = list(string_with_many_spaces.rstrip()) # demonstrating rstrip()
string_with_many_spaces_as_list_strip = list(string_with_many_spaces.strip())   # demonstrating strip()

print(string_with_many_spaces_as_list_lstrip)
print() # prints a blank line
print(string_with_many_spaces_as_list_rstrip)
print() # prints a blank line
print(string_with_many_spaces_as_list_strip)
print() # prints a blank line


# using rjust(), ljust(), and center()
print("hi".rjust(5, '*'))  # Assumes 5 spaces for justification.  It will fill in right blanks with *s if your word doesn't fill the 5 spaces.
print("lo".ljust(5, '*'))  # Assumes 5 spaces for justification.  It will fill in left  blanks with *s if your word doesn't fill the 5 spaces.
print("wow".center(5, '*')) # Assumes 5 spaces for justification.  It will fill in surrounding blanks with *s if your word doesn't fill the 5 spaces.
print("hello!".center(5, '*')) # If the word is larger than the justification space, then there are no filler characters
