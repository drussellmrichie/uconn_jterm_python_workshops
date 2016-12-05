# Control flow

**Control flow** is a way of executing different commands depending on certain conditions. It pairs nicely with loops. **if statements** are the primary type of control flow in Python.

## if statements

An **if statement** evaluates a boolean expression and executes a certain block of code if the statement is true, and optionally a different block if the statement is false.

Let's say you have a list of numbers, and you only want to add the ones that are greater than 10 to another list. If it is less than or equal to 10, you want to note that it was not added to the second list. You could do that with an if statement within a for loop.

```python
starter = [1, 2, 45, 12, 10, 6, 33]
good = []

for n in starter:
    if n > 10:
        good.append(n)
    else:
        print(str(n) + " isn't greater than 10!")
print(good)
```

    1 isn't greater than 10!
    2 isn't greater than 10!
    10 isn't greater than 10!
    6 isn't greater than 10!
    [45, 12, 33]

(Notice the `str(n)`. This is because you cannot "add" a string and a number---it doesn't know if you were trying to do addition or string concatenation, and it doesn't want to guess. Using `str()` tells the interpreter to treat it like a string so that there's no question anymore.)

But what if you decided to concede and let 10 into the "good" list, as long as you remind the user that they should be using numbers that are *greater* than 10? Well, there's a handy keyword **elif** (short for "else, if") that allows for that:

```python
starter = [1, 2, 45, 12, 10, 6, 33]
good = []

for n in starter:
    if n > 10:
        good.append(n)
    elif n == 10:
        print("Fine, but it's supposed to be greater than 10.")
        good.append(n)
    else:
        print(str(n) + " isn't greater than 10!")
print(good)
```

### Try it yourself: if statements

Create a file called `control-flow.py`. Define a list `numbers` with the values [47, 26, 58, 2, 27, 13, 38, 68, 52, 35].

Using an if statement within a for loop, print only the odd numbers.

## Advanced topic: exception handling

Errors happen. Sometimes, you can anticipate them and build in a handler. To do this, you would use another type of control flow, known as **try...except** statements. (In Python, errors are known as *exceptions*.)

See if you can figure out what this code is doing. (Hint: Try running the previous version without the try...except statement, but with this new input list.)

```python
starter = [1, 2, 45, "string", 12, 10, [1,2,3], 6, 33]
good = []

for n in starter:
    try:
        if n > 10:
            good.append(n)
        elif n == 10:
            print("Fine, but it's supposed to be greater than 10.")
            good.append(n)
        else:
            print(str(n) + " isn't greater than 10!")
    except TypeError:
        print("That's not even a number...")
        continue
print(good)
```
