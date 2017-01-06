# Object-Oriented Programming

## Object-oriented programming

Object-oriented programming centers around the definition of **classes**, which
hold **attributes** and **methods** in one cohesive **object.** On one hand, this
is sort of "where it all comes together," but in reality, it is far less important
than the preceding sections (shocking, I know). Classes can make your code much cleaner,
but you can get by without them for simple things, whereas you would have a hard
time doing without any of the last sections.

## Defining a class

A **class** is a template. It gives details about the properties that **objects**
based on the class will have.

The **class**ic example is a person:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
```

Class definitions start with an `__init__` method. (A **method** is a function
that happens to be a member of a class.) The `__init__` method takes the arguments
`self`, and any others that are relevant  Here, our `Person` class also takes a
name and age.

`self` is a special keyword meaning "the object." It is synonymous with other
languages' `this` keyword. So, the line `{python} self.name = name` means "Assign
the argument `name` to the object's `name` **attribute**."

Now, we can create an **instance** of the class `Person`:

(tbc)

```python

```
