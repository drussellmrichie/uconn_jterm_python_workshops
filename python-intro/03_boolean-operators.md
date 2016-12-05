# Boolean Operators

**Boolean** is a fancy word for "true or false." **Boolean operators** are a special class of operators that are used to check whether an expression is true or false. These are especially used for comparisons.

Boolean operators in Python include `<` (less than), `>` (greater than), `<=` (less than or equal to), `>=` (greater than or equal to), `==` (equals), `!=` (does not equal), `&` (AND), `|` (OR), and `!` (NOT).


You can use boolean operators with numbers:

```python
2 < 3
4 >= 8
1.0 == 1
```

returns `True`, `False`, and `True`, respectively (notice that 1 and 1.0 are different types but are still considered equivalent),

expressions:

```python
(2 + 3) != 6
```
returns `True`,

even strings:

```python
"String that I have" == "String that I am searching for"
```

returns `False`.

The logical operators (`&`, `|`, and `!`, specifically) add an extra layer of complication.

`&` (AND) returns `True` only if the expressions on both sides are true. `|` (OR) refers to "logical or," meaning that it returns `True` if **one or both** of the compared expressions are true.

`!` (NOT) is probably the most confusing. It does not actually compare two expressions; instead, it *inverts* the value of the expression it is attached to (that is, `!True` returns `False`, and `!False` returns `True`).

### Try it yourself: Boolean operators

See if you can guess what these will return without running them (but go ahead and run them if you need to).

```python
(1 < 3) & (2*3 == 3*2)
False | True
!(2 < 2)
((2 < 4) & !(1+1 == 3)) | !((16%2 > 0) & (10+10+10+10 <= 4*10) & False)
```

Sorry for the last one; they're just super important.

Okay, on to `04_lists-and-iteration.md`!
