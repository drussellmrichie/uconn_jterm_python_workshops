# Boolean Operators

**Boolean** is a fancy word for "true or false." **Boolean operators** are a
special class of operators that are used to check whether an expression is true
or false. These are especially used for comparisons.

Boolean operators in Python include `<` (less than), `>` (greater than), `<=`
(less than or equal to), `>=` (greater than or equal to), `==` (equals), `!=`
(does not equal), `and`, `or`, and `not`.

You can use boolean operators with numbers:

```python
2 < 3
4 >= 8
1.0 == 1
```

returns `True`, `False`, and `True`, respectively (notice that 1 and 1.0 are
different types but are still considered equivalent),

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

The logical operators (`and`, `or`, and `not`, specifically) add an extra layer
of complication.

`and` returns `True` only if the expressions on both sides are true.  
`or` refers to "logical or," meaning that it returns `True` if **one or both**
of the compared expressions are true.  
`not` is probably the most confusing. It does not actually compare two expressions;
instead, it *inverts* the value of the expression it is attached to (that is,
`not True` returns `False`, and `not False` returns `True`).

### Try it yourself: Boolean operators

See if you can guess what these will return without running them (but go ahead
and run them if you need to).

```python
(1 < 3) and (2*3 == 3*2)
False or True
not (2 < 2)
((2 < 4) and not (1+1 == 3)) or not ((16%2 > 0) and (10+10+10+10 <= 4*10) and False)
```

Sorry for the last one; they're just super important.

Okay, on to `04_lists-and-iteration.md`!
