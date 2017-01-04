# Instructions and information for preparation for the tutorials

## Titles & Abstracts

### Introduction to Python

This is a hands-on tutorial covering the basics of programming in Python: a powerful yet
user-friendly programming language that is a much-loved tool for scientists. We will
start from the very basics and build up, touching on a variety of topics ("Hello 
world!", boolean logic, control flow, lists and loops, functions, possibly
object-oriented programming), and you will be writing and running your own
programs from the beginning.

**No prior programming experience is needed.** The goal is to provide you with 
the foundational tools for thinking "programmatically"—developing a sense for
what kinds of problems can be solved by writing a program. The materials we will
use in the tutorial will be designed to also act as a reference for your future
Pythonic endeavors. 

### PsychoPy

[Abstract to come]

### Data analysis with Python

In this workshop -- held on Thursday January 12th at 10am, and led by Russell -- you will get a quick, high-level introduction to data analysis in Python. We will cover the following Python tools:

1. [Jupyter notebooks](https://jupyter.org/), a web application that allows you to create and share documents that contain live (Python) code and code output, equations, visualizations and explanatory text. They are an excellent tool for doing reproducible #openscience.
2. The [pandas](http://pandas.pydata.org) library, used for representing and manipulating tabular data structures (e.g., data in csv's or Excel spreadsheets).
3. [Seaborn](http://seaborn.pydata.org), a data visualization library that allows generating both basic plots (bar plots, scatter plots) and more advanced plots (violin plots, heatmaps) a breeze.
4. [Scipy.stats](https://docs.scipy.org/doc/scipy/reference/stats.html) and/or [statsmodels](http://statsmodels.sourceforge.net/), libraries with common statistical functions and tests in the general(ized) linear model and beyond.

We will probably explore 1-4 with data produced by one of Monica's PsychoPy examples, and then in greater depth with data collected by me and Matt Hall.

## Installation and setup for Python sessions

1. [Anaconda Python 3.5](https://www.continuum.io/downloads), which contains the Jupyter Notebook which Russell's session will use.
    1. Follow [this link](https://www.continuum.io/downloads), and then click the icon for your computer's OS. You want Python 3.5. For Mac, you will probably find it easier to use the graphical installer. (For Windows, it appears you can only install via graphical installer!)
    2. Once you install Anaconda, if you open a terminal (Mac) or cmd prompt (Windows) and type `python --version`, you should see 'Anaconda' somewhere in the output. **If you don't see 'Anaconda' in the output, get in touch with one of us (Rachael is probably your best bet).**
    3. If you type `jupyter notebook` from the terminal/cmd-prompt, a tab with a file explorer interface should open in your default web browser. If you click 'New' in the upper-right, you should see an option for 'Notebook -- Python [root]'. If you click that, a new jupyter notebook should open in a new tab. Russell's session will be conducted in one of these.
2. A code-oriented text editor / IDE (text editor **!=** word processor), preferably with Markdown support, such as [Atom](https://atom.io) (Rachael's recommendation), [Sublime](https://www.sublimetext.com/), [Gedit](https://wiki.gnome.org/Apps/Gedit), Spyder (included with Anaconda), [PyCharm](https://www.jetbrains.com/pycharm/), [Emacs](https://www.gnu.org/software/emacs/), or [Vim](http://www.vim.org/). You will use a text editor / IDE for Rachael's portion.
3. [PsychoPy](www.psychopy.org). To install PsychoPy, first install the Anaconda distribution of Python in step 1, and then do the following:
    1. Open a terminal (Mac) or cmd prompt (Windows) and type `conda create -n psychopy-tutorial --channel https://conda.anaconda.org/CogSci psychopy pyglet wxpython python=2.7`. That should be all one line. This will (1) create a Python 2.7 'environment' on your machine, and (2) install PsychoPy and its dependencies (required packages/libraries) to that environment.
    2. To activate this new environment when you want to work with PsychoPy, type `source activate psychopy-tutorial` (Mac) or `activate psychopy-tutorial` (Windows).
    3. You should now be able to run a psychopy script (like [this](https://github.com/drussellmrichie/uconn_jterm_python_workshops/blob/master/python-psychopy/01_text.py)) in the current working directory with `python <psychopy-filename.py>` (replacing `<psychopy-filename.py>` with the actual filename!).
    4. To deactivate this environment and return to the default Python 3.5 environment installed by Anaconda (so you can work on Rachael's and Russell's sessions, for example), type `source deactivate` (Mac) or `deactivate` (Windows).
