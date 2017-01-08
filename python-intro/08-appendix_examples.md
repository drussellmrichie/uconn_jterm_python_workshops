# Miscellaneous Examples & More Advanced Topics

> These expand on the examples provided in the tutorial files, so that you can
  see other ways some of these concepts can be used, or get more practice guessing
  what they'll do, or use them as a springboard for your own code.

## Strings

Strings can be concatenated using the `+` operator.

```python
print("Hello" + " " + "world!")
```

Be careful that you don't run into trouble trying to add numbers that are represented
as strings:

```python
x = "4"
y = "2"

print(x+y)
# prints "42"
```

### String interpolation

It can get annoying to break out of quotation marks and use `+` every time you
need to add a different string, especially if you're working with variables:

```python
name = "Rachael"
print("My name is " + name + ".")
```

To get around this, you can use **string interpolation**.

```python
print("My name is {}.".format(name))
```

Start by typing up your whole string, but everywhere you would put a variable,
type `{}` instead.

```python
"This is a {}."
```

Then, use the `String.format()` method to fill in the blanks. Pass the fillers to
`format()` as arguments.

```python
what = "string"
print("This is a {}.".format(what))
```

Right now, it might not look much more efficient than just concatenating your
strings. But what if you had a bunch?

```python
month = "January"
day = "9th"
year = "2017"

print("Today is {} {}, {}.".format(month, day, year))
# compared to:
print("Today is " + month + " " + day + ", " + year + ".")
```

Much simpler!

### Substrings

Strings can be indexed just like lists. This means that you can fetch just a portion
of a string:

```python
my_string = "Hello world!"
print(my_string[0])
print(my_string[0:5])
```

Try to print just the word "world" from the above example.

### To lists and back

You can also break strings into lists of smaller strings using the `String.split()`
method. Pass as the argument whatever you want to use as the delimiter. It defaults
to whitespace, meaning that it will break strings up into a list of words.

```python
"Hello world!".split()
# returns ['Hello', 'world!']

"Hello world!".split("l")
# returns ['He', '', 'o wor', 'd!']
```

Surprisingly, you can't split it into individual characters using an empty string
as the separator. However, you can simply convert it to a list:

```python
list("Hello world!")
# returns ['H', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

You might want to convert it back into a string when you're done doing whatever
you were doing. To do that, use the `String.join(list)` method. It's a little
counterintuitive to use, and best demonstrated with an example:

```python
my_list = ["Hello", "world!"]
" ".join(my_list)
# returns 'Hello world!'
```

So the new separator goes in front (in this case, it is a space), and the list
to be joined is the argument. In this case, you *can* join on an empty string:

```python
my_list = ['a', 'b', 'c', 'd', 'e']
"".join(my_list)
# returns 'abcde'
```

## for loops

```python
tutorial = ["Hello World", "Math", "Boolean operators", "Lists", "Iteration",
    "Control flow", "Functions", "Object-oriented programming"]

class Rachael:
    def __init__(self, tut_list):
        self.tutorial = tut_list

    def say(self, utterance):
        print(utterance)

    def introduce_topics(self):
        for section in self.tutorial:
            self.say(section + " is a really important and useful tool!")

rachael = Rachael(tutorial)
rachael.introduce_topics()
```

## Functions

```python
def add_three(num):
    return num+3

add_three(4)

my_num = 12
add_three(my_num)

x = add_three(1)
y = add_three(x)
print(x + y)
```

### Other arguments

You can use any type as an argument for a function. Here is one with strings:

```python
def greet(name):
    name = name.title()
    print("Hello, {}!".format(name))
```

The `name = name.title()` line says to convert the string to title case, just in
case the user forgot to capitalize their name, or left caps lock on.

## Miscellaneous miscellany

```python
import this
```
