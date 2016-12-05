# Hello World

> Your first Python program (assuming you've never written a Python program before)

## The Python program

Programs are not as scary as you might expect—they're just text files with instructions for the computer. (Note: I'll be using "program" and "script" interchangeably.)

Python programs have the extension `.py`.

They sometimes start with a **shebang line** (named for the symbol at the beginning: `#!`), which tells the computer where to look for the interpreter (the program that handles your code). Example:

```sh
#!/usr/bin/env python3
```

### Try it yourself: Start your program file

Make a file in this folder called `hello.py`. Give it a shebang line and save it.

## Strings and printing

**Strings** are one **data type** in Python. Every object in Python has a data type (more commonly known as a *type*), which defines some of the functions you can use on it. Some common types include **strings**, **integers**, **floats**, and **lists**. We will get to each of these, but we'll start with strings.

**Strings** are essentially text. They are enclosed in quotation marks: either `""` or `''`.

```python
"This is a string."
```

Strings, like many other types, can be `print`ed. This refers to printing it on the screen, not printing it out on a sheet of paper.

`print` is a **function** that takes as its **argument** whatever you want to print.

Breaking that down: a **function** is code that does something. In almost every case, the function name is followed by parentheses, which may contain **arguments**. Arguments say what to do the function *to*.

This is better explained with an example:

```python
print("This will be printed.")
```

In the above, `print([argument])` is the **function call**, and `"This will be printed."` is the **argument**.[[1](#footnotes)]

### Try it yourself: Print "Hello World"

Go back to `hello.py`. Write a statement that will `print` the *string* `Hello World!`. Save the file when you're done.

## Running a Python program

Now you're almost ready to run your first Python program!

There are three main ways you can run a Python program: (Spoilers: We will use method 3.)

1. **Run it via the `python` command.** From a terminal, type `python file.py` or `python3 file.py`[[2](#footnoes)], where "file.py" is the name of your program file.
2. **Execute it directly.** Type `./file.py` in the terminal, or double-click on the file from your finder. This is where the shebang line is important, because it lets you run a program without having to specify the language every time. But, you might need add execute permissions to the file first, which is beyond the scope of this tutorial.[[3](#footnotes)]
3. **Run it from an interactive interpreter.** Anaconda comes with a nice interactive interpreter called **IPython**. From IPython, you can run the file with `%run file.py`. When it is done running, all of the variables declared in that program will still be defined in the interpreter, so you can keep using them if you want.

### Try it yourself: Run `hello.py`

If you do not have a terminal open, open one.

Determine your **working directory** by typing `pwd`.

If your terminal is not currently working from the tutorial folder, `cd` ("change directories") into it:[[4](#footnotes)]

```sh
cd ~/Documents/School/python-tutorial-lab
```

Start IPython by typing `ipython`.

`%run` your program.

## Congratulations!

You have officially written and run your own Python program!

Move onto `02_numbers.md` to see what else you can do with Python.


#### Footnotes

1. Note: In Python2, you don't need parentheses to execute a print statement, but in Python3, you do.
2. You should favor calling the version explicitly, especially on a system with versions 2 and 3, because just calling `python` will use the default, which is probably Python2. If you want to be able to use Python3 by calling `python`, I can show you how to set an **alias** on Mac or Linux.
3. If you want to try it later, you can use `ls -l` to see if you have the permissions, and `chmod o+x file.py` to make it executeable, or ask me.
4. Tips:
    * `~/` is short for `/home/username/`
    * If there are spaces in your file path, **escape** them by writing a backslash `\` (e.g., `~/Documents/My\ Folder`)
    * You can write the first few letters of a folder's name and then hit tab, and it will complete it for you if the onset is unique (think cohort model)
