# Functions

Sometimes (often), you will have a bit of code that you want to use in several different places throughout a program, or even in other programs you write later. Writing the exact same code over and over again is not fun for anyone. It's boring, but it's also error-prone and inefficient. Luckily, you can define your own **functions** and use them instead of copying and pasting over and over again.

## Defining a function

A function definition starts with the `def` keyword, followed by the name of your new function, and any arguments in parentheses. Then you write your code and usually end it with a `return` statement, which is the output of the function. The `return` statement lets you assign the value of a function to a variable.

Let's say you wanted to define a function that takes one argument, a number, and adds three to it, then `return`s that value:

```python
def add_three(num):
    return num+3
```

Then you could call your new function later on:

```python
add_three(4)
```

would return `7`.

You can also use multiple arguments:

```python
def product_squared(x, y):
    return (x*y)**2

a = 13
b = 22
product_squared(a, b)
```

### Try it yourself: functions

Make a file called `functions.py`.

Write a function that takes two numbers and returns the sum of their cubes.

Call it using any two numbers you'd like.

## More complex functions

One-line functions are almost boring. Sure, they can still save some time, for example:

```python
import datetime
def date():
    return datetime.datetime.now().strftime("%A, %B %d, %Y at %I:%M%p")

print(date())
```

But normally, you would write a function because you have at least a few lines of code that you want to be able to reference in one short identifier.

```python
def compare(a, b):
    print("Comparing " + str(a) + " to " + str(b) + "...")
    if a > b:
        print(str(a) + " is bigger.")
    elif a < b:
        print(str(b) + " is bigger.")
    else:
        print("They're the same!")
    print("\n")

compare(1, 2)
compare(5*2, 2*5)
compare(555, 1)
```

You could even take it a step further:

```python
def compare_list(lst):
    for pair in lst:
        compare(pair[0], pair[1])

pairs = [[1, 2], [5*2, 2*5], [555, 1]]
compare_list(pairs)
```

Function arguments are not limited to numbers. See `examples.md` for more.

## Up next: Object-oriented programming

Head over to `07_object-oriented.md` for the last section!
