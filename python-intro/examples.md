# Miscellaneous Examples

> These expand on the examples provided in the tutorial files, so that you can see other ways some of these concepts can be used, or get more practice guessing what they'll do, or use them as a springboard for your own code.

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

In programming, there is a concept known as "unexpected results." It is a professional-sounding way of saying "I have literally no idea whatsoever how it could possibly be getting that result. No one else can seem to figure it out, either. Just...try something else instead, maybe."

On that note, while writing an example that would compare two numbers and return the bigger one, *or* compare two strings and return the longer one, I encountered some unexpected results. One thing that I learned is that you can indeed compare strings, but I have no idea what they compare them on.

```python
def compare(a, b):
    while True:
        try:
            print("Comparing " + str(a) + " to " + str(b) + "...")
            if a > b:
                print(str(a) + " is bigger.")
            elif a < b:
                print(str(b) + " is bigger.")
            else:
                print("They're the same!")
            break
        except ValueError:
            print("Whoops those aren't numbers. String mode!")
            a_len = len(a)
            print(a + " is " + str(a_len) + " characters long.")
            b_len = len(b)
            print(b + " is " + str(b_len) + " characters long.")
            if a_len > b_len:
                print(a + " is bigger.")
            elif a_len < b_len:
                print(b + " is bigger.")
            else:
                print("They're the same!")
            break
            # continue
        except Exception:
            print("I don't even know what to do with that input...")
            break
    print("\n")

def compare_list(lst):
    for pair in lst:
        compare(pair[0], pair[1])

pairs = [[1, 2], [5*2, 2*5], ["tiny", "huuuuuuuge"], [{"key":"value", "another_key":"another_value"}, 22], [555, 1]]
compare_list(pairs)
```

Why is "tiny" bigger than "huuuuuuuge"? I have no idea.


## Miscellaneous miscellany

```python
import this
```
