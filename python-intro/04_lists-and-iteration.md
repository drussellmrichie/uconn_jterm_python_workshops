# Lists and Iteration

## Intro to lists

**Lists** are yet another extremely useful tool in Python. You might know them
in other languages as *vectors* or *arrays*. They are pretty self-explanatory,
simply an ordered sequence of objects enclosed in square brackets (`[]`). The
"objects" here can be just about anything: strings, numerics, other lists,
variables pointing to objects...I actually don't know of any type that could
*not* be in a list.

Of note is the fact that lists **do not** have to be comprised of all one type
(in some other languages, you have to limit it to one type, meaning that a list
containing integers could not contain a string). This makes lists seriously versatile.

Let's start by defining a list called `pets` that we will use in later steps:

```python
pets = ["dogs", "cats", "guinea pigs"]
```

## Indexing and list methods

Members of a list can be accessed by their **index**, a number referring to
their position in the list. Importantly, Python is known as a zero-indexed language,
meaning that it **starts counting from 0, not 1**. That means:

```python
print(pets[0])
```

prints `'dogs'`.

To add an item to the end of a list, use the `list.append()` method:

```python
pets.append("fish")
print(pets)
```

prints `['dogs', 'cats', 'guinea pigs', 'fish']`.

If you want to know how many items are in a list, use the `len()` function:

```python
print(len(pets))
```

prints `4`.

### Try it yourself: Lists

Make a new file called `lists.py`. Define a list called `fruits` that has members
"apple", "banana", "orange", "grape".

`append` a pineapple to your list.

And `print` the third member of the list.

## Iteration: for loops

Since I keep saying it, I figured I would write a program to tell you how important
and useful each section is.

```python
for section in tutorial:
    rachael.say(section + " is a really important and useful tool!")
```

And that's a **for loop**!

A for loop takes each member of a list (with the syntax: `for member in
list`) one at a time, and does something to it according to your instructions.
The process of doing something to each member of a list is known as **iteration**.

Let's say you wanted to take a list of numbers and double each number, and print
the results to the screen:

```python
numbers = [1, 2, 23, 634563.75, 23.0, 1212**2]
for n in numbers:
    double_n = n*2
    print(double_n)
```

Notice that statements that are part of the `for` loop are indented. This is
actually meaningful, because it tells the interpreter that the statements should
be thought of as **nested** within the loop and part of the iteration, not separate.
See the following example:

```python
for pet in pets:
    print(pet + " are great!")
print("All pets are great!")
```

The last line is only printed once, because it is outside the loop. If I had
indented it, it would have been printed with every iteration.

### Try it yourself: for loop

Go back to `lists.py`. Write a loop that would print the following:

    I need to get more apples.
    I need to get more bananas.
    I need to get more oranges.
    I need to get more grapes.
    I need to get more pineapples.
    Time for a grocery run!

## Dictionaries

**Dictionaries** are kind of like lists, but with a special property. In some other
languages, you might know them as **hashes**. They are also very similar to JavaScript's
objects (and can easily be converted to JSON).

Dictionaries are lists of **key, value pairs**, or lists of named values. This
means that instead of accessing dictionary items by their index, you access them
by their key. Dictionaries are useful for storing data that you might want to look
up later.

Let's create a dictionary that actually stores definitions of Python terms:

```python
glossary = {
    "string": "text, surrounded in quotation marks",
    "integer": "whole number",
    "float": "number containing a decimal",
    "boolean": "true or false",
    "list": "an ordered set of values",
    "dictionary": "set of key-value pairs"
}
```

You can now access values via their key:

```python
print(glossary["list"])
```

Or you can iterate over their items. This is best demonstrated with the `Dict.items()` method:

```python
for key, value in glossary.items():
    print("{}: {}".format(key.title(), value.title()))
```

## Advanced topic: while loops and list comprehension

I won't go into detail about these for the sake of time, but you should know
about **while loops** and **list comprehension**. Instead, I will leave it as a
challenge. See if you can figure out what these code snippets are doing and why.
I'm happy to work through them with you if you have questions about them later.

while loop: (hint: the `+=` operator is called "recursive addition" and
it's—surprise!—really useful)

```python
x = 1
y = []
while x <= 5:
    y.append(2**x)
    x += 1
print(y)
```

list comprehension:

```python
x = [1, 2, 3, 4, 5]
y = [2**i for i in x]
print(y)
```

## Up next: control flow

See `05_control-flow.md` to get started with that.
