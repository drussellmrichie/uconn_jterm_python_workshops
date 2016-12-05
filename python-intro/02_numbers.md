# Numbers in Python

Knowing how to use a programming language like an elaborate calculator is one of the most fundamental skills of programming.

Python has plenty of built-in mathematical functions, as well as some powerful libraries for higher-level math, statistics, etc. that we won't go over today, but might prove useful in the future (e.g., `scipy`, `pandas`, `matplotlib`).

## Variables

Before we get into actual math, you'll need to understand variables. Technically, you can do basic math without them, but variables will make your code *way* simpler and easy to use.

A **variable** is a name that refers to some value. You can define a variable using an equals sign (`=`, also known as an **assignment operator**), and then use it or manipulate it later on in your code.

Variable names can contain letters, numbers, and some special characters (`-` and `_`), and must start with a lowercase letter.

In the following example:

```python
x = 5
print(x)
```

The interpreter would print `5`.

Variables in Python are **dynamically typed**. That means that you can assign an **integer** value to a variable, and then later on make it a string without encountering an error. (Many other languages are **statically typed**, meaning that you declare the data type with the variable, and cannot change it later.) So:

```python
x = 5
x = "Hello"
print(x)
```

The interpreter would print `Hello`.

### Try it yourself: Define some variables

Make a new file called `numbers.py`

Define a variable `a` and set it equal to 2.
Define another variable `b` and set it equal to 5.

Save the file. We will use these variables in later steps.

## Operations

Python has several basic mathematical operators: `+`, `-`, `*`, `/`, `**`, and `%`.

You can probably guess that `+` and `-` are addition and subtraction, respectively.

`*` is for multiplication, and `/` is for division—but division has some interesting and useful quirks that we will get to in the next step.

`**` is for exponentiation; that is, `3**2` is the same as "3 squared."

`%` is called a **modulus** (or *mod*). It is related to division's quirks, so we'll cover it shortly.

Math is generally carried out how you'd expect, in that `2+2` is a valid Python statement.

### Try it yourself: Basic operations

Go over to your IPython terminal (if IPython is not running, start it up again) and `%run numbers.py`.

You won't see any output—that's okay, we didn't include any print statements! Instead, the variables you defined in `numbers.py` are now in IPython's memory, ready for you to use them. Make sure everything is set by entering `a` into the prompt. It should return `2`.

Now, let's do some math. Enter the following lines into IPython one-by-one, but before you enter each one, try to guess what it'll do.

```python
a+b
a-b
a*b
a**b
```

Simple enough. Now to mix it up a little:

```python
2*a
42**b
b + 3 * a
a * (a + b) - b**b
10(b)
```

Sorry, that last one was a trick. You might be used to using parentheses to represent multiplication, but that doesn't work in Python. You still need the `*`. You can, however, use parentheses for association (like in `a * (a + b) - b**b`).

## Integers, floats, and division

As we currently have them defined, `a` and `b` are both **integers**, meaning that they are numbers that do not contain decimals.

Numbers that *do* contain decimals (even if the decimal place is ".0") are called **floats**. This distinction often does not matter, because `5 + 5` and `5.0 + 5.0` are numerically equivalent. But it does matter when considering division, which often has a remainder.

When you divide two floats (or even an integer and a float), everything goes as you would expect, and it returns a float:

```python
1.2 / 2.4
```

returns `0.5`.

But, when you divide two *integers*, you get an integer. The remainder is discarded.

```python
5 / 2
```

returns `2`.

On the other hand, we have the **modulus** function (`%`). This returns *only the remainder*.

```python
5 % 2
```

returns `1`.

### Try it yourself: division

First, go back to `numbers.py` and define a variable `c` whose value is 1.5. Then define one more variable, `d`, and give it a value of 3, **but make it a float.**

Go back to IPython and `%run numbers.py` to bring your new variables into memory.

Try these lines, guessing in advance what they will do:

```python
a / b
b / a
a * c
b / c
d / c
b % a
c % a  
a % c
```

Now, define a variable `e` (in IPython) whose value is the sum of `a` and `b`, divided by the product of `c` and `d`. What will the value of `e` be? What **type** (integer or float) will `e` be?

> Call `type(e)` to see if you're right.

## That's all for this section!

Next up is `03_boolean-operators.md`
