require! <[ lib path ]>

export func: (a b) -> a + b

# class definitions
class A
  (num) ->
    @x = num
  property: 1
  method: (y) ->
    @x + @property + y

# implicit access, accessignment
up-case-name = (.name .= to-upper-case!)

# list comprehensions, destructuring, piping
[{id:id1, name, age} for {id:id1, name} in table1 for {id:id2, age} in table2
                     when id1 is id2]

# operators as functions, piping
map (.age), table2 |> fold1 (+)

# infix function calls
add = (x, y) -> x + y
3 `add` 4 #=> 7




