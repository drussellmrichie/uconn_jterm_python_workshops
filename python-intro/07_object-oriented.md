# Object-Oriented Programming

**Object-oriented programming** centers around the definition of **classes**, which
hold **attributes** and **methods** in one cohesive **object.** On one hand, this
is sort of "where it all comes together," but in reality, it is far less important
than the preceding sections (switching things up, I know).

Classes can make your code much cleaner, but you can get by without them, which
is something that cannot be said as easily for the previous sections. Still,
they are worth understanding, at least at a surface level, so that is what we'll
cover now.

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
languages' `this` keyword. So, the line `self.name = name` means "Assign
the argument `name` to the object's `name` **attribute**."

Now, we can create an **instance** of the class `Person`:

```python
arthur = Person("Arthur", 1085)
```

And then access its **member variables** or **attributes**:

```python
# Outputs "Arthur"
arthur.name

# Outputs 1085
arthur.age
```

## Adding methods

If classes were only good for keeping some attributes together, that would be
boring. We could just use a dictionary for that. Luckily, they have another
feature: **methods**.

Methods are functions. They are just a specific subset of functions that are
also members of a class. So, they are defined just like any other function,
but they take the `self` keyword as their first argument.

Let's expand on our Person class with a couple methods:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def introduce(self):
        print("My name is " + self.name + ".")

    def how_old(self):
        print("I am " + str(self.age) + " years old.")
```

Notice how we used `self.name` and `self.age` in the method definitions, but
did not pass them explicitly as arguments. That is because as members of `self`,
they are **implicitly** included in the arguments.

Now, we can call some methods with our example Person:

```python
# Outputs "My name is Arthur."
arthur.introduce()

# Outputs "I am 1085 years old."
arthur.how_old()
```

## Objects are mutable

Let's pretend a year has passed, and our aged friend has aged even more. We can
update the `Person.age` variable, no problem. In fact, there are a
couple ways to go about it.

First, let's update the attribute directly. To do this, we will use what is known
as **recursive addition**, using the format `x += y`, which is shorthand for
"x equals x plus y." (If you are used to Java, JavaScript, C(++), Perl, etc.,
note that Python does not have a `++` or `--` operator.)

```python
# Outputs 1085
arthur.age

# Increment by 1
arthur.age += 1

# Try to guess what this will output
arthur.age
```

You could also do it with methods. For example, this method will increase the
Person's age by 1:

```python
class Person:
    # [intermediate code removed for space]

    def age_one_year(self):
        self.age += 1

# Check the age
arthur.age

# Increment it by 1
arthur.age_one_year()

# Check it again
arthur.age
```

### Try it yourself

We don't have to restrict it to one year. I've started a method that would
increase a Person's age by any number of years. Fill in the rest, and then call
the method to age your Person by however many years you want.

```python
class Person:
    # [intermediate code removed for space]

    def age_several_years(self, years):
        # Your code goes here

# Now instantiate a new Person or use an existing one,
# and increase their age:
```

## Advanced topic: Inheritance

One more powerful feature of classes is known as **inheritance**. A class can be
based on another class and inherit all of the base class's attributes, and add
some of its own. Let's try with a class called Adventurer, which is **derived**
from the class Person:

```python
class Adventurer(Person):
    def __init__(self, name, age, quest):
        super().__init__(name, age)
        self.quest = quest

    def introduce(self):
        print("""
            The bridge-keeper asks: "What is your name?"
            Response: "It is {}."
            """.format(self.name)
            )

    def say_quest(self):
        print("""
            The bridge-keeper asks: "What is your quest?"
            Response: "{}."
            """.format(self.quest)
          )
```

There are a number of new things to go over here.

### Specifying a base class

Starting from the top, you'll
notice that the definition contains an argument: `Person`. When you are creating
a class that is not derived from any other class, there does not need to be an
argument there (in reality, there is an implicit argument `object`, which you
can include if you choose). However, if you are deriving a class, the **base class**
is listed as the argument. So, since we are basing our derived class Adventurer
on the class Person, then we define it with:

```python
class Adventurer(Person):
```

### Initializing the base class

You may also notice an unfamiliar line in the `__init__()` method:

```python
super().__init__(name, age)
```

`super()` refers to the base class, which in this case is Person. When you call
`super().__init__([arguments])`, you are saying to call the `__init()__` method
*of the base class.* So, you need to pass the relevant arguments along with it.

`Person.__init__()` takes arguments `name` and `age`, so they need to be passed
to it.

The result of the `super().__init__()` call is that the derived class Adventurer
will have *all* of the attributes that the base class Person has, including its
methods.

### Overwriting methods

You might also notice that the Adventurer class has a method `introduce()`. This
may seem problematic, because the base class also has a method by the same name.
But remember that *classes are mutable.* Writing a method of the same name as a
base class's method simply overwrites the base class's method.

### Test it out

So now let's make an adventurer.

(If you hadn't guessed, every introduction to Python must contain at least one
reference to Monty Python, and I'm running out of sections.)

```python
arthur = Adventurer("Arthur, King of the Britons", 1085, "To seek the Holy Grail")

# Test out some methods from the derived class:
arthur.introduce()
arthur.say_quest()

# And from the base class:
arthur.age_several_years(15)
arthur.how_old()
```

## That's all!

Congratulations on completing this introduction to Python!
