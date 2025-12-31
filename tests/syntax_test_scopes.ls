# SYNTAX TEST "Packages/LiveScript/LiveScript.sublime-syntax"


###[ IMPORTS ]#################################################################

  require! lib
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^ variable.other.livescript

  require! 'lib1'
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^ meta.string.livescript string.quoted.single.livescript
#          ^ punctuation.definition.string.begin.livescript
#               ^ punctuation.definition.string.end.livescript

  require! prelude-ls # no
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^^^^^ variable.other.livescript
#                     ^^^^ comment.line.number-sign.livescript
#                     ^ punctuation.definition.comment.livescript

  require! 'prelude-ls'
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
#          ^ punctuation.definition.string.begin.livescript
#                     ^ punctuation.definition.string.end.livescript

  require! [fs, path]
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^^^^^ meta.sequence.livescript
#          ^ punctuation.section.sequence.begin.livescript
#           ^^ variable.other.livescript
#             ^ punctuation.separator.sequence.livescript
#               ^^^^ variable.other.livescript
#                   ^ punctuation.section.sequence.end.livescript

  require! <[ fs path ]>
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^^^^^^^^ meta.sequence.livescript
#          ^^ punctuation.section.sequence.begin.livescript
#             ^^ string.unquoted.livescript
#                ^^^^ string.unquoted.livescript
#                     ^^ punctuation.section.sequence.end.livescript

  require! jQuery: $
# ^^^^^^^^ keyword.control.import.livescript
#          ^^^^^^ variable.other.livescript
#                ^ keyword.operator.assignment.livescript

  require! {
# ^^^^^^^^ keyword.control.import.livescript
#         ^ - meta.mapping
#          ^^ meta.mapping.livescript
#          ^ punctuation.section.mapping.begin.livescript
    fs
    path
    lib: foo
  }
#^^ meta.mapping.livescript
# ^ punctuation.section.mapping.end.livescript
#  ^ - meta.mapping

###[ EXPORT DEFINITIONS ]######################################################

  export func = ->
# ^^^^^^ keyword.control.export.livescript
#        ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#            ^^^^^ meta.function.livescript
#             ^ keyword.operator.assignment.livescript
#               ^^ keyword.declaration.function.livescript

  export value
# ^^^^^^ keyword.control.export.livescript
#        ^^^^^ variable.other.livescript

  export value-a, value-b, value-c
# ^^^^^^ keyword.control.export.livescript
#        ^^^^^^^ variable.other.livescript
#               ^ punctuation.separator.sequence.livescript
#                 ^^^^^^^ variable.other.livescript
#                        ^ punctuation.separator.sequence.livescript
#                          ^^^^^^^ variable.other.livescript

  export
# ^^^^^^ keyword.control.export.livescript
  a: 1
  b: -> 123
# ^ meta.function.identifier.livescript entity.name.function.livescript
#  ^^^^ meta.function.livescript
#  ^ keyword.operator.assignment.livescript
#    ^^ keyword.declaration.function.livescript
#       ^^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

  export class MyClass
# ^^^^^^ keyword.control.export.livescript
#        ^^^^^ meta.class.livescript
#             ^^^^^^^^ meta.class.identifier.livescript
#        ^^^^^ keyword.declaration.class.livescript
#              ^^^^^^^ entity.name.class.livescript

###[ CLASS DEFINITIONS ]#######################################################

  class AnyClass
# ^^^^^ meta.class.livescript
#      ^^^^^^^^^ meta.class.identifier.livescript
# ^^^^^ keyword.declaration.class.livescript
#       ^^^^^^^^ entity.name.class.livescript

  class AnyClass extends BaseClass
# ^^^^^ meta.class.livescript
#      ^^^^^^^^^ meta.class.identifier.livescript
#               ^ meta.class.livescript
#                ^^^^^^^^^^^^^^^^^ meta.class.extends.livescript
# ^^^^^ keyword.declaration.class.livescript
#       ^^^^^^^^ entity.name.class.livescript
#                ^^^^^^^ storage.modifier.extends.livescript
#                        ^^^^^^^^^ entity.other.inherited-class.livescript

  class AnyClass implements Inteface
# ^^^^^ meta.class.livescript
#      ^^^^^^^^^ meta.class.identifier.livescript
#               ^ meta.class.livescript
#                ^^^^^^^^^^^^^^^^^^^ meta.class.implements.livescript
# ^^^^^ keyword.declaration.class.livescript
#       ^^^^^^^^ entity.name.class.livescript
#                ^^^^^^^^^^ storage.modifier.implements.livescript
#                           ^^^^^^^^ entity.other.inherited-class.livescript

  class Parent.AnyClass implements Parent.Inteface
# ^^^^^ meta.class.livescript
#      ^^^^^^^^^^^^^^^^ meta.class.identifier.livescript
#                      ^ meta.class.livescript
#                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.implements.livescript
# ^^^^^ keyword.declaration.class.livescript
#       ^^^^^^ support.class.livescript
#             ^ punctuation.accessor.dot.livescript
#              ^^^^^^^^ entity.name.class.livescript
#                       ^^^^^^^^^^ storage.modifier.implements.livescript
#                                  ^^^^^^ support.class.livescript
#                                        ^ punctuation.accessor.dot.livescript
#                                         ^^^^^^^^ entity.other.inherited-class.livescript

  class A
    (num) ->
#   ^^^^^ meta.function.parameters.livescript
#   ^ punctuation.section.parameters.begin.livescript
#    ^^^ variable.parameter.livescript
#       ^ punctuation.section.parameters.end.livescript
#        ^^^ meta.function.livescript
#         ^^ keyword.declaration.function.livescript
      @x = num
#     ^ variable.language.this.livescript
#      ^ variable.other.livescript
#        ^ keyword.operator.assignment.livescript
#          ^^^ variable.other.livescript
    property: 1
#   ^^^^^^^^ variable.other.livescript
#           ^ keyword.operator.assignment.livescript
#             ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
    method: (y) ->
#   ^^^^^^ meta.function.identifier.livescript entity.name.function.livescript
#         ^^ meta.function.livescript
#         ^ keyword.operator.assignment.livescript
#           ^^^ meta.function.parameters.livescript
#           ^ punctuation.section.parameters.begin.livescript
#            ^ variable.parameter.livescript
#             ^ punctuation.section.parameters.end.livescript
#              ^^^ meta.function.livescript
#               ^^ keyword.declaration.function.livescript
      @x + @property + y
#     ^ variable.language.this.livescript
#      ^ variable.other.livescript
#        ^ keyword.operator.arithmetic.livescript
#          ^ variable.language.this.livescript
#           ^^^^^^^^ variable.other.livescript
#                    ^ keyword.operator.arithmetic.livescript
#                      ^ variable.other.livescript
    @static-prop = 10
#   ^ variable.language.this.livescript
#    ^^^^^^^^^^^ variable.other.livescript
#                ^ keyword.operator.assignment.livescript
#                  ^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
    get-static: ->
      @@static-prop + 2
#     ^^ variable.language.this.livescript
#       ^^^^^^^^^^^ variable.other.livescript
#                   ^ keyword.operator.arithmetic.livescript
#                     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

###[ FUNCTION DEFINITIONS ]####################################################

  function f
# ^^^^^^^^ keyword.declaration.function.livescript
#         ^ meta.function.livescript
#          ^ meta.function.identifier.livescript entity.name.function.livescript
    return "foo"
#   ^^^^^^ keyword.control.flow.return.livescript
#          ^^^^^ meta.string.livescript string.quoted.double.livescript

  async function f
# ^^^^^^^^^^^^^^ keyword.declaration.function.livescript
#               ^ meta.function.livescript
#                ^ meta.function.identifier.livescript entity.name.function.livescript
    return "foo"
#   ^^^^^^ keyword.control.flow.return.livescript
#          ^^^^^ meta.string.livescript string.quoted.double.livescript

  name = function f  # comment
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^^^^^^^ keyword.declaration.function.livescript
#                 ^ meta.function.identifier.livescript entity.name.function.livescript
#                  ^^^^^^^^^^^^ - meta.function
#                    ^^^^^^^^^ comment.line.number-sign.livescript
#                    ^ punctuation.definition.comment.livescript
    return "foo"
#   ^^^^^^ keyword.control.flow.return.livescript
#          ^^^^^ meta.string.livescript string.quoted.double.livescript

  name = function f x
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^^^^^^^ keyword.declaration.function.livescript
#                 ^ meta.function.identifier.livescript entity.name.function.livescript
#                  ^^ meta.function.parameters.livescript
#                   ^ variable.parameter.livescript
    return "foo"
#   ^^^^^^ keyword.control.flow.return.livescript
#          ^^^^^ meta.string.livescript string.quoted.double.livescript

  name = async function f x
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^^^^^^^^^^^^^ keyword.declaration.function.livescript
#                       ^ meta.function.identifier.livescript entity.name.function.livescript
#                        ^^ meta.function.parameters.livescript
#                         ^ variable.parameter.livescript
    return "foo"
#   ^^^^^^ keyword.control.flow.return.livescript
#          ^^^^^ meta.string.livescript string.quoted.double.livescript

  name = ! function f
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#          ^^^^^^^^ keyword.declaration.function.livescript
#                   ^ meta.function.identifier.livescript entity.name.function.livescript

  name = ~ function f
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#          ^^^^^^^^ keyword.declaration.function.livescript
#                   ^ meta.function.identifier.livescript entity.name.function.livescript

  name = !~ function f
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^ keyword.operator.logical.livescript
#           ^^^^^^^^ keyword.declaration.function.livescript
#                    ^ meta.function.identifier.livescript entity.name.function.livescript

  name = ~! function f
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^ keyword.operator.logical.livescript
#           ^^^^^^^^ keyword.declaration.function.livescript
#                    ^ meta.function.identifier.livescript entity.name.function.livescript

  name = ->
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^ keyword.declaration.function.livescript

  name := -->
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^ meta.function.livescript
#      ^^ keyword.operator.assignment.livescript
#         ^^^ keyword.declaration.function.livescript

  name = !->
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^ keyword.declaration.function.livescript

  name := !-->
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^ meta.function.livescript
#      ^^ keyword.operator.assignment.livescript
#         ^ keyword.operator.logical.livescript
#          ^^^ keyword.declaration.function.livescript

  name : !~>
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^ keyword.declaration.function.livescript

  name = !~~>
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^^ keyword.declaration.function.livescript

  name = ->>    # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^^ keyword.declaration.function.livescript

  name := -->>  # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^ meta.function.livescript
#      ^^ keyword.operator.assignment.livescript
#         ^^^^ keyword.declaration.function.livescript

  name = !->>   # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^^ keyword.declaration.function.livescript

  name := !-->> # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^^^ meta.function.livescript
#      ^^ keyword.operator.assignment.livescript
#         ^ keyword.operator.logical.livescript
#          ^^^^ keyword.declaration.function.livescript

  name : !~>>   # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^^ keyword.declaration.function.livescript

  name = !~~>>  # async function
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ keyword.operator.logical.livescript
#         ^^^^ keyword.declaration.function.livescript

  name = -> "value"
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^^ keyword.declaration.function.livescript
#           ^^^^^^^ meta.string.livescript string.quoted.double.livescript

  name = () ->
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ meta.function.parameters.livescript punctuation.section.parameters.begin.livescript
#         ^ meta.function.parameters.livescript punctuation.section.parameters.end.livescript
#          ^^^ meta.function.livescript
#           ^^ keyword.declaration.function.livescript

  name = (arg1, arg2 = "value") -> arg1 + arg2
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ meta.function.parameters.livescript punctuation.section.parameters.begin.livescript
#         ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.livescript
#         ^^^^ variable.parameter.livescript
#             ^ punctuation.separator.sequence.livescript
#               ^^^^ variable.parameter.livescript
#                    ^ keyword.operator.assignment.livescript
#                      ^^^^^^^ meta.string.livescript string.quoted.double.livescript
#                      ^ punctuation.definition.string.begin.livescript
#                            ^ punctuation.definition.string.end.livescript
#                             ^ punctuation.section.parameters.end.livescript
#                              ^^^ meta.function.livescript
#                               ^^ keyword.declaration.function.livescript
#                                  ^^^^ variable.other.livescript
#                                       ^ keyword.operator.arithmetic.livescript
#                                         ^^^^ variable.other.livescript

  name = (
# ^^^^ meta.function.identifier.livescript entity.name.function.livescript
#     ^^^ meta.function.livescript
#      ^ keyword.operator.assignment.livescript
#        ^ meta.function.parameters.livescript punctuation.section.parameters.begin.livescript
    arg1,
#^^^^^^^^ meta.function.parameters.livescript
#   ^^^^ variable.parameter.livescript
#       ^ punctuation.separator.sequence.livescript
    arg2 = "default"
#^^^^^^^^^^^^^^^^^^^ meta.function.parameters.livescript
#   ^^^^ variable.parameter.livescript
#        ^ keyword.operator.assignment.livescript
#          ^^^^^^^^^ meta.string.livescript string.quoted.double.livescript
#          ^ punctuation.definition.string.begin.livescript
#                  ^ punctuation.definition.string.end.livescript
  ) -> "Returns #{arg1 + arg2}!"
#^^ meta.function.parameters.livescript
# ^ punctuation.section.parameters.end.livescript
#  ^^^ meta.function.livescript
#   ^^ keyword.declaration.function.livescript
#      ^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.livescript
#      ^^^^^^^^^ string.quoted.double.livescript
#      ^ punctuation.definition.string.begin.livescript
#               ^^^^^^^^^^^^^^ meta.interpolation.livescript
#               ^ punctuation.definition.interpolation.livescript
#                ^ punctuation.section.interpolation.begin.livescript
#                 ^^^^ variable.other.livescript
#                      ^ keyword.operator.arithmetic.livescript
#                        ^^^^ variable.other.livescript
#                            ^ punctuation.section.interpolation.end.livescript
#                             ^^ string.quoted.double.livescript
#                              ^ punctuation.definition.string.end.livescript

## extended parameters

  set-person-params = (
    person # target object to set params
    person.age
    person.height
#^^^^^^^^^^^^^^^^ meta.function.parameters.livescript
#   ^^^^^^ variable.parameter.livescript
#         ^ punctuation.accessor.dot.livescript
#          ^^^^^^ variable.parameter.livescript
  ) -> person
#^^ meta.function.parameters.livescript
# ^ punctuation.section.parameters.end.livescript
#  ^^^ meta.function.livescript
#   ^^ keyword.declaration.function.livescript
#      ^^^^^^ variable.other.livescript

## This is especially useful with this.

  set-text = (@text) -> this
#            ^^^^^^^ meta.function.parameters.livescript
#            ^ punctuation.section.parameters.begin.livescript
#             ^ variable.language.this.livescript
#              ^^^^ variable.parameter.livescript
#                  ^ punctuation.section.parameters.end.livescript
#                   ^^^ meta.function.livescript
#                    ^^ keyword.declaration.function.livescript
#                       ^^^^ variable.language.this.livescript

  add = (x = 4, y? 3) -> x + y
# ^^^ meta.function.identifier.livescript entity.name.function.livescript
#    ^^^ meta.function.livescript
#     ^ keyword.operator.assignment.livescript
#       ^^^^^^^^^^^^^ meta.function.parameters.livescript
#       ^ punctuation.section.parameters.begin.livescript
#        ^ variable.parameter.livescript
#          ^ keyword.operator.assignment.livescript
#            ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#             ^ punctuation.separator.sequence.livescript
#               ^ variable.parameter.livescript
#                ^ keyword.operator.existence.livescript
#                  ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                   ^ punctuation.section.parameters.end.livescript
#                    ^^^ meta.function.livescript
#                     ^^ keyword.declaration.function.livescript
#                        ^ variable.other.livescript
#                          ^ keyword.operator.arithmetic.livescript
#                            ^ variable.other.livescript

  add = (x && 4, y || 3) -> x + y
# ^^^ meta.function.identifier.livescript entity.name.function.livescript
#    ^^^ meta.function.livescript
#     ^ keyword.operator.assignment.livescript
#       ^^^^^^^^^^^^^^^^ meta.function.parameters.livescript
#       ^ punctuation.section.parameters.begin.livescript
#        ^ variable.parameter.livescript
#          ^^ keyword.operator.logical.livescript
#             ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#              ^ punctuation.separator.sequence.livescript
#                ^ variable.parameter.livescript
#                  ^^ keyword.operator.logical.livescript
#                     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                      ^ punctuation.section.parameters.end.livescript
#                       ^^^ meta.function.livescript
#                        ^^ keyword.declaration.function.livescript
#                           ^ variable.other.livescript
#                             ^ keyword.operator.arithmetic.livescript
#                               ^ variable.other.livescript

## You can also destructure the arguments:

  set-cords = ({x, y}) -> "#x,#y"
#             ^^^^^^^^ meta.function.parameters.livescript
#             ^ punctuation.section.parameters.begin.livescript
#              ^^^^^^ meta.mapping.livescript
#              ^ punctuation.section.mapping.begin.livescript
#               ^ variable.parameter.livescript
#                ^ punctuation.separator.sequence.livescript
#                  ^ variable.parameter.livescript
#                   ^ punctuation.section.mapping.end.livescript
#                    ^ punctuation.section.parameters.end.livescript
#                     ^^^ meta.function.livescript
#                      ^^ keyword.declaration.function.livescript
#                         ^^^^^^^ meta.string.livescript
#                         ^ string.quoted.double.livescript punctuation.definition.string.begin.livescript
#                          ^^ meta.interpolation.livescript
#                          ^ punctuation.definition.interpolation.livescript
#                           ^ variable.other.livescript
#                            ^ string.quoted.double.livescript
#                             ^^ meta.interpolation.livescript
#                             ^ punctuation.definition.interpolation.livescript
#                              ^ variable.other.livescript
#                               ^ string.quoted.double.livescript punctuation.definition.string.end.livescript

  set-cords = ({x = 1, y = 3} = {}) -> "#x,#y"
# ^^^^^^^^^ meta.function.identifier.livescript entity.name.function.livescript
#          ^^^ meta.function.livescript
#           ^ keyword.operator.assignment.livescript
#             ^^^^^^^^^^^^^^^^^^^^^ meta.function.parameters.livescript
#             ^ punctuation.section.parameters.begin.livescript
#              ^^^^^^^^^^^^^^ meta.mapping.livescript
#              ^ punctuation.section.mapping.begin.livescript
#               ^ variable.parameter.livescript
#                 ^ keyword.operator.assignment.livescript
#                   ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                    ^ punctuation.separator.sequence.livescript
#                      ^ variable.parameter.livescript
#                        ^ keyword.operator.assignment.livescript
#                          ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                           ^ punctuation.section.mapping.end.livescript
#                             ^ keyword.operator.assignment.livescript
#                               ^^ meta.mapping.livescript
#                               ^ punctuation.section.mapping.begin.livescript
#                                ^ punctuation.section.mapping.end.livescript
#                                 ^ punctuation.section.parameters.end.livescript
#                                  ^^^ meta.function.livescript
#                                   ^^ keyword.declaration.function.livescript
#                                      ^^^^^^^ meta.string.livescript
#                                      ^ string.quoted.double.livescript punctuation.definition.string.begin.livescript
#                                       ^^ meta.interpolation.livescript
#                                       ^ punctuation.definition.interpolation.livescript
#                                        ^ variable.other.livescript
#                                         ^ string.quoted.double.livescript
#                                          ^^ meta.interpolation.livescript
#                                          ^ punctuation.definition.interpolation.livescript
#                                           ^ variable.other.livescript
#                                            ^ string.quoted.double.livescript punctuation.definition.string.end.livescript

###[ GENERATOR DEFINITIONS ]###################################################

  function* f
# ^^^^^^^^^ keyword.declaration.function.livescript
#          ^ meta.function.livescript
#           ^ meta.function.identifier.livescript entity.name.function.livescript
    yield "foo"
#   ^^^^^ keyword.control.flow.yield.livescript
#         ^^^^^ meta.string.livescript string.quoted.double.livescript

  g = ->*
# ^ meta.function.identifier.livescript entity.name.function.livescript
#  ^^^^^^ meta.function.livescript
#   ^ keyword.operator.assignment.livescript
#     ^^^ keyword.declaration.function.livescript
    yield from f!
#   ^^^^^^^^^^ keyword.control.flow.yield.livescript
#              ^ variable.other.livescript
#               ^ keyword.operator.logical.livescript
    yield bar
#   ^^^^^ keyword.control.flow.yield.livescript
#         ^^^ variable.other.livescript

###[ BACK CALLS ]##############################################################

  <-   # regular function
# ^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  <--  # curried regular function
# ^^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  <-!  # suppressing return
# ^^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  <~   # bound function
# ^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  <~~  # curried bound function
# ^^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  *<-  # generator function
# ^^^ meta.function.livescript keyword.declaration.function.back-call.livescript

  x <- map _, [1 to 3]
# ^ variable.other.livescript
#   ^^ meta.function.livescript keyword.declaration.function.back-call.livescript
#      ^^^ variable.other.livescript
#          ^ variable.language.anonymous.livescript
#           ^ punctuation.separator.sequence.livescript
#             ^^^^^^^^ meta.sequence.livescript
#             ^ punctuation.section.sequence.begin.livescript
#              ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                ^^ keyword.other.range.livescript
#                   ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                    ^ punctuation.section.sequence.end.livescript

###[ FUNCTION CALLS ]##########################################################

  do function f x
# ^^ keyword.control.flow.do.livescript
#    ^^^^^^^^^ meta.function.livescript
#    ^^^^^^^^ keyword.declaration.function.livescript
#             ^ meta.function.identifier.livescript entity.name.function.livescript
#              ^^ meta.function.parameters.livescript
#               ^ variable.parameter.livescript

  do -> 3 + 2 #=> 5
# ^^ keyword.control.flow.do.livescript
#    ^^ meta.function.livescript keyword.declaration.function.livescript
#       ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#         ^ keyword.operator.arithmetic.livescript
#           ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#             ^^^^^ comment.line.number-sign.livescript
#             ^ punctuation.definition.comment.livescript

## infix calls

  add = (x, y) -> x + y
  3 `add` 4 #=> 7
#   ^^^^^ meta.function-call.livescript variable.function.infix.livescript

###[ VARIABLE DEFINITIONS ]####################################################

  const variable
# ^^^^^ keyword.declaration.variable.livescript
#       ^^^^^^^^ variable.other.livescript

  let variable
# ^^^ keyword.declaration.variable.livescript
#     ^^^^^^^^ variable.other.livescript

  var variable
# ^^^ keyword.declaration.variable.livescript
#     ^^^^^^^^ variable.other.livescript

###[ IF/UNLESS STATEMENTS ]####################################################

  if 2 + 2 == 4
# ^^ keyword.control.conditional.if.livescript
    'something'
  else if 2 + 2  == 5
# ^^^^ keyword.control.conditional.else.livescript
#      ^^ keyword.control.conditional.if.livescript
    'something else'
  else
# ^^^^ keyword.control.conditional.else.livescript
    'something else'

  if 2 + 2 == 4 then 'something' else 'something else'
# ^^ keyword.control.conditional.if.livescript
#               ^^^^ keyword.control.conditional.then.livescript
#                                ^^^^ keyword.control.conditional.else.livescript

  unless 2 + 2 == 5
# ^^^^^^ keyword.control.conditional.unless.livescript
    'something'

  x = 3 unless 2 + 2 == 5
#       ^^^^^^ keyword.control.conditional.unless.livescript

###[ LOOP STATEMENTS ]#########################################################

  for i from 1 to 10 by 3
# ^^^ keyword.control.loop.for.livescript
#     ^ variable.other.livescript
#       ^^^^ keyword.other.range.livescript
#            ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#              ^^ keyword.other.range.livescript
#                 ^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                    ^^ keyword.other.range.livescript
#                       ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

  for v in [1 2 3]
# ^^^ keyword.control.loop.for.livescript
#     ^ variable.other.livescript
#       ^^ keyword.control.loop.in.livescript
#          ^^^^^^^ meta.sequence.livescript
#          ^ punctuation.section.sequence.begin.livescript
#                ^ punctuation.section.sequence.end.livescript

  for [a, b, c] in lists
# ^^^ keyword.control.loop.for.livescript
#     ^^^^^^^^^ meta.sequence.livescript
#     ^ punctuation.section.sequence.begin.livescript
#      ^ variable.other.livescript
#       ^ punctuation.separator.sequence.livescript
#         ^ variable.other.livescript
#          ^ punctuation.separator.sequence.livescript
#            ^ variable.other.livescript
#             ^ punctuation.section.sequence.end.livescript
#               ^^ keyword.control.loop.in.livescript
#                  ^^^^^ variable.other.livescript

  for {key: value, key: value} in dict
# ^^^ keyword.control.loop.for.livescript
#     ^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.livescript
#     ^ punctuation.section.mapping.begin.livescript
#      ^^^ variable.other.livescript
#         ^ keyword.operator.assignment.livescript
#           ^^^^^ variable.other.livescript
#                ^ punctuation.separator.sequence.livescript
#                  ^^^ variable.other.livescript
#                     ^ keyword.operator.assignment.livescript
#                       ^^^^^ variable.other.livescript
#                            ^ punctuation.section.mapping.end.livescript
#                              ^^ keyword.control.loop.in.livescript
#                                 ^^^^ variable.other.livescript

xs = for let x, i in [1 to 10] by 2 when x % 3 == 0 -> i + x
#    ^^^ keyword.control.loop.for.livescript
#        ^^^ keyword.declaration.variable.livescript
#            ^ variable.other.livescript
#             ^ punctuation.separator.sequence.livescript
#               ^ variable.other.livescript
#                 ^^ keyword.control.loop.in.livescript
#                    ^^^^^^^^^ meta.sequence.livescript
#                    ^ punctuation.section.sequence.begin.livescript
#                     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                       ^^ keyword.other.range.livescript
#                          ^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                            ^ punctuation.section.sequence.end.livescript
#                              ^^ keyword.other.range.livescript
#                                 ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                                   ^^^^ keyword.control.conditional.when.livescript
#                                        ^ variable.other.livescript
#                                          ^ keyword.operator.arithmetic.livescript
#                                            ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                                              ^^ keyword.operator.comparison.livescript
#                                                 ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                                                   ^^ keyword.declaration.function.livescript
#                                                      ^ variable.other.livescript
#                                                        ^ keyword.operator.arithmetic.livescript
#                                                          ^ variable.other.livescript

###[ SWITCH STATEMENTS ]#######################################################

## case constants

  switch 6
# ^^^^^^ keyword.control.conditional.switch.livescript
#        ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
  case 1    then \hello
# ^^^^ keyword.control.conditional.case.livescript
#      ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#           ^^^^ keyword.control.conditional.then.livescript
#                ^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
  case 2, 4 then \boom
# ^^^^ keyword.control.conditional.case.livescript
#      ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#       ^ punctuation.separator.sequence.livescript
#         ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#           ^^^^ keyword.control.conditional.then.livescript
#                ^^^^^ meta.string.backslash.livescript string.unquoted.livescript
  case 6
# ^^^^ keyword.control.conditional.case.livescript
#      ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
    'here it is'
#   ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
  default \something
# ^^^^^^^ keyword.control.conditional.default.livescript
#         ^^^^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript

## case expressions

  switch
# ^^^^^^ keyword.control.conditional.switch.livescript
  case 5 == 6
# ^^^^ keyword.control.conditional.case.livescript
#      ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#        ^^ keyword.operator.comparison.livescript
#           ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
    \never
#   ^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
  case false
# ^^^^ keyword.control.conditional.case.livescript
#      ^^^^^ constant.language.boolean.false.livescript
    'also never'
#   ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
  case 6 / 2 is 3
# ^^^^ keyword.control.conditional.case.livescript
#      ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#        ^ keyword.operator.arithmetic.livescript
#          ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#            ^^ keyword.operator.word.livescript keyword.operator.comparison.livescript
#               ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
    'here'
#   ^^^^^^ meta.string.livescript string.quoted.single.livescript

## symbolic keywords

  switch 'moto'
# ^^^^^^ keyword.control.conditional.switch.livescript
#        ^^^^^^ meta.string.livescript string.quoted.single.livescript
  | "some thing"     => \hello
# ^ keyword.control.conditional.case.livescript
#   ^^^^^^^^^^^^ meta.string.livescript string.quoted.double.livescript
#                    ^^ keyword.control.conditional.then.livescript
#                       ^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
  | \explosion \bomb => \boom
# ^ keyword.control.conditional.case.livescript
#   ^^^^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#              ^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#                    ^^ keyword.control.conditional.then.livescript
#                       ^^^^^ meta.string.backslash.livescript string.unquoted.livescript
  | <[ the moto ? ]> => 'here it is'
# ^ keyword.control.conditional.case.livescript
#   ^^^^^^^^^^^^^^^^ meta.sequence.livescript
#   ^^ punctuation.section.sequence.begin.livescript
#      ^^^ string.unquoted.livescript
#          ^^^^ string.unquoted.livescript
#               ^ string.unquoted.livescript
#                 ^^ punctuation.section.sequence.end.livescript
#                    ^^ keyword.control.conditional.then.livescript
#                       ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
  | otherwise        => \something
# ^^^^^^^^^^^ keyword.control.conditional.default.livescript
#                    ^^ keyword.control.conditional.then.livescript
#                       ^^^^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#                       ^ punctuation.definition.string.livescript
  | _                => \something
# ^^^ keyword.control.conditional.default.livescript
#                    ^^ keyword.control.conditional.then.livescript
#                       ^^^^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#                       ^ punctuation.definition.string.livescript

## CoffeeScript style

day = \Sun
switch day
#^^^^^ keyword.control.conditional.switch.livescript
#      ^^^ variable.other.livescript
  when "Mon" then 'go to work'
# ^^^^ keyword.control.conditional.when.livescript
#      ^^^^^ meta.string.livescript string.quoted.double.livescript
#            ^^^^ keyword.control.conditional.then.livescript
#                 ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
  when "Fri", "Sat"
# ^^^^ keyword.control.conditional.when.livescript
#      ^^^^^ meta.string.livescript string.quoted.double.livescript
#           ^ punctuation.separator.sequence.livescript
#             ^^^^^ meta.string.livescript string.quoted.double.livescript
      'go dancing'
#     ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
  else 'go to work'
# ^^^^ keyword.control.conditional.else.livescript
#      ^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript

###[ KEYWORDS ]################################################################

  await
# ^^^^^ keyword.control.flow.await.livescript
  break
# ^^^^^ keyword.control.flow.break.livescript
  by
# ^^ keyword.other.range.livescript
  case
# ^^^^ keyword.control.conditional.case.livescript
  catch
# ^^^^^ keyword.control.exception.catch.livescript
  continue
# ^^^^^^^^ keyword.control.flow.continue.livescript
  debugger
# ^^^^^^^^ keyword.control.livescript
  default
# ^^^^^^^ keyword.control.conditional.default.livescript
  do
# ^^ keyword.control.flow.do.livescript
  else
# ^^^^ keyword.control.conditional.else.livescript
  ever
# ^^^^ keyword.control.conditional.ever.livescript
  finally
# ^^^^^^^ keyword.control.exception.finally.livescript
  for
# ^^^ keyword.control.loop.for.livescript
  from
# ^^^^ keyword.other.range.livescript
  if
# ^^ keyword.control.conditional.if.livescript
  loop
# ^^^^ keyword.control.loop.loop.livescript
  match
# ^^^^^ keyword.control.conditional.match.livescript
  return
# ^^^^^^ keyword.control.flow.return.livescript
  switch
# ^^^^^^ keyword.control.conditional.switch.livescript
  then
# ^^^^ keyword.control.conditional.then.livescript
  throw
# ^^^^^ keyword.control.flow.throw.livescript
  til
# ^^^ keyword.other.range.livescript
  to
# ^^ keyword.other.range.livescript
  try
# ^^^ keyword.control.exception.try.livescript
  unless
# ^^^^^^ keyword.control.conditional.unless.livescript
  until
# ^^^^^ keyword.control.loop.until.livescript
  when
# ^^^^ keyword.control.conditional.when.livescript
  where
# ^^^^^ keyword.control.conditional.where.livescript
  while
# ^^^^^ keyword.control.loop.while.livescript
  with
# ^^^^ keyword.control.livescript
  yield
# ^^^^^ keyword.control.flow.yield.livescript

###[ OBJECT AND TYPE OPERATORS ]###############################################

  new Date() instanceof Date
# ^^^ keyword.operator.object.new.livescript
#     ^^^^ support.class.livescript
#         ^ punctuation.section.group.begin.livescript
#          ^ punctuation.section.group.end.livescript
#            ^^^^^^^^^^ keyword.operator.comparison.type.livescript
#                       ^^^^ support.class.livescript

  new Date() instanceof [Date, Object]
# ^^^ keyword.operator.object.new.livescript
#     ^^^^ support.class.livescript
#         ^ punctuation.section.group.begin.livescript
#          ^ punctuation.section.group.end.livescript
#            ^^^^^^^^^^ keyword.operator.comparison.type.livescript
#                       ^^^^^^^^^^^^^^ meta.sequence.livescript
#                       ^ punctuation.section.sequence.begin.livescript
#                        ^^^^ support.class.livescript
#                            ^ punctuation.separator.sequence.livescript
#                              ^^^^^^ support.class.livescript
#                                    ^ punctuation.section.sequence.end.livescript

  new Class("Unknown sort: #{info.type}")
# ^^^ keyword.operator.object.new.livescript
#     ^^^^^ support.class.livescript
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.group.livescript
#          ^ punctuation.section.group.begin.livescript
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.livescript
#           ^^^^^^^^^^^^^^^ string.quoted.double.livescript
#           ^ punctuation.definition.string.begin.livescript
#                          ^^^^^^^^^^^^ meta.interpolation.livescript
#                          ^ punctuation.definition.interpolation.livescript
#                           ^ punctuation.section.interpolation.begin.livescript
#                            ^^^^ variable.other.livescript
#                                ^ punctuation.accessor.dot.livescript
#                                 ^^^^ variable.other.livescript
#                                     ^ punctuation.section.interpolation.end.livescript
#                                      ^ string.quoted.double.livescript punctuation.definition.string.end.livescript
#                                       ^ punctuation.section.group.end.livescript

  delete obj
# ^^^^^^ keyword.operator.object.delete.livescript
#        ^^^ variable.other.livescript

  delete! obj
# ^^^^^^^ keyword.operator.object.delete.livescript
#         ^^^ variable.other.livescript

  instanceof Date
# ^^^^^^^^^^ keyword.operator.comparison.type.livescript
#            ^^^^ support.class.livescript

  instanceof! Date
# ^^^^^^^^^^^ keyword.operator.comparison.type.livescript
#             ^^^^ support.class.livescript

  typeof obj
# ^^^^^^ keyword.operator.object.typeof.livescript
#        ^^^ variable.other.livescript

  typeof! obj
# ^^^^^^^ keyword.operator.object.typeof.livescript
#         ^^^ variable.other.livescript

###[ OPERATORS ]###############################################################

## simple assignments

  lhs = rhs
#     ^ keyword.operator.assignment.livescript

  lhs ?= rhs
#     ^^ keyword.operator.assignment.livescript

  lhs := rhs
#     ^^ keyword.operator.assignment.livescript

  lhs ?:= rhs
#     ^^^ keyword.operator.assignment.livescript

## object assignments

  lhs = {one: 1, two: 2}
#     ^ keyword.operator.assignment.livescript

  lhs <<< three: 3      #=> {one: 1, two: 2, three: 3}
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs import four: 4    #=> {one: 1, two: 2, three: 3, four: 4}
#     ^^^^^^ keyword.operator.assignment.augmented.livescript

  lhs <<<< rhs          # add all from rhs to lhs
# ^^^ variable.other.livescript
#     ^^^^ keyword.operator.assignment.augmented.livescript
#          ^^^ variable.other.livescript

  lhs import all rhs    # add all from rhs to lhs
# ^^^ variable.other.livescript
#     ^^^^^^^^^^ keyword.operator.assignment.augmented.livescript
#                ^^^ variable.other.livescript

## accessignments

  lhs .= to-upper-case!
#     ^^ keyword.operator.assignment.accessignment.livescript

## augmented/compound assignments

  lhs &&= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ||= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs &&:= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||:= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ++= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs --= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs **= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs %%= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs <?= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs >?= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs += rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs -= rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs *= rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs /= rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs %= rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs ^= rhs
#     ^^ keyword.operator.assignment.augmented.livescript

  lhs ?++= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?--= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?**= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?%%= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?<?= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?>?= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ?+= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ?-= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ?*= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ?/= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ?%= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs ?^= rhs
#     ^^^ keyword.operator.assignment.augmented.livescript

  lhs &&++= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&--= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&**= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&%%= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&<?= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&>?= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&+= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&-= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&*= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&/= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&%= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs &&^= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||++= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||--= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||**= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||%%= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||<?= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||>?= rhs
#     ^^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||+= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||-= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||*= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||/= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||%= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

  lhs ||^= rhs
#     ^^^^ keyword.operator.assignment.augmented.livescript

# binding access

  obj.~add
# ^^^ variable.other.livescript
#    ^^ keyword.operator.assignment.binding.livescript
#      ^^^ variable.other.livescript

## pipe assignments

  foo |> bar <| baz
#     ^^ keyword.operator.assignment.pipe.livescript
#            ^^ keyword.operator.assignment.pipe.livescript

  111 |> (+) 222
# ^^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#     ^^ keyword.operator.assignment.pipe.livescript
#        ^^^ meta.group.livescript
#        ^ punctuation.section.group.begin.livescript
#         ^ keyword.operator.arithmetic.livescript
#          ^ punctuation.section.group.end.livescript
#            ^^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

## unary assignment

  !! = rhs
# ^^ keyword.operator.logical.livescript

  -~-~ = rhs
# ^^^^ keyword.operator.arithmetic.livescript

  ...
# ^^^ keyword.operator.variadic.livescript

## arithmetic

  ++ -- ** %%
# ^^ keyword.operator.arithmetic.livescript
#    ^^ keyword.operator.arithmetic.livescript
#       ^^ keyword.operator.arithmetic.livescript
#          ^^ keyword.operator.arithmetic.livescript

  + - * / % ^
# ^ keyword.operator.arithmetic.livescript
#   ^ keyword.operator.arithmetic.livescript
#     ^ keyword.operator.arithmetic.livescript
#       ^ keyword.operator.arithmetic.livescript
#         ^ keyword.operator.arithmetic.livescript
#           ^ keyword.operator.arithmetic.livescript

## bitwise

  .&. .|. .^. .<<. .>>. .>>>. ~
# ^^^ keyword.operator.bitwise.livescript
#     ^^^ keyword.operator.bitwise.livescript
#         ^^^ keyword.operator.bitwise.livescript
#             ^^^^ keyword.operator.bitwise.livescript
#                  ^^^^ keyword.operator.bitwise.livescript
#                       ^^^^^ keyword.operator.bitwise.livescript
#                             ^ keyword.operator.bitwise.livescript

## comparison / relational

  a in b
# ^ variable.other.livescript
#   ^^ keyword.operator.comparison.livescript
#      ^ variable.other.livescript

  a is b
# ^ variable.other.livescript
#   ^^ keyword.operator.comparison.livescript
#      ^ variable.other.livescript

  a isnt b
# ^ variable.other.livescript
#   ^^^^ keyword.operator.comparison.livescript
#        ^ variable.other.livescript

  a is not b
# ^ variable.other.livescript
#   ^^^^^^ keyword.operator.comparison.livescript
#          ^ variable.other.livescript

  a of b
# ^ variable.other.livescript
#   ^^ keyword.operator.comparison.livescript
#      ^ variable.other.livescript

  == != ~= !~= >=? >= >? > <=? <= <? <
# ^^ keyword.operator.comparison.livescript
#    ^^ keyword.operator.comparison.livescript
#       ^^ keyword.operator.comparison.livescript
#          ^^^ keyword.operator.comparison.livescript
#              ^^^ keyword.operator.comparison.livescript
#                  ^^ keyword.operator.comparison.livescript
#                     ^^ keyword.operator.comparison.livescript
#                        ^ keyword.operator.comparison.livescript
#                          ^^^ keyword.operator.comparison.livescript
#                              ^^ keyword.operator.comparison.livescript
#                                 ^^ keyword.operator.comparison.livescript
#                                    ^ keyword.operator.comparison.livescript

# existence

    a? b!?
#   ^ variable.other.livescript
#    ^ keyword.operator.existence.livescript
#      ^ variable.other.livescript
#       ^^ keyword.operator.existence.livescript

## logical

  not a and b or c xor d
# ^^^ keyword.operator.logical.livescript
#     ^ variable.other.livescript
#       ^^^ keyword.operator.logical.livescript
#           ^ variable.other.livescript
#             ^^ keyword.operator.logical.livescript
#                ^ variable.other.livescript
#                  ^^^ keyword.operator.logical.livescript
#                      ^ variable.other.livescript

  ! a && b || c
# ^ keyword.operator.logical.livescript
#   ^ variable.other.livescript
#     ^^ keyword.operator.logical.livescript
#        ^ variable.other.livescript
#          ^^ keyword.operator.logical.livescript
#             ^ variable.other.livescript


###[ ACCESSORS ]###############################################################

x = "hello world": [4 [5 boom: 6]]
x.[]'hello world'.1.{}1.boom #=> 6
#^^^ punctuation.accessor.dot.livescript
#   ^^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
#                ^ punctuation.accessor.dot.livescript
#                 ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                  ^^^ punctuation.accessor.dot.livescript
#                     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#                      ^ punctuation.accessor.dot.livescript
#                       ^^^^ variable.other.livescript

x.[]arr.{}1.y = 9
#^^^ punctuation.accessor.dot.livescript
#   ^^^ variable.other.livescript
#      ^^^ punctuation.accessor.dot.livescript
#         ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#          ^ punctuation.accessor.dot.livescript
#           ^ variable.other.livescript
#             ^ keyword.operator.assignment.livescript
#               ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

x.arr.1.y #=> 9
#^ punctuation.accessor.dot.livescript
# ^^^ variable.other.livescript
#    ^ punctuation.accessor.dot.livescript
#     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#      ^ punctuation.accessor.dot.livescript
#       ^ variable.other.livescript

###[ LISTS ]###################################################################

    []
#   ^^ meta.sequence.livescript
#   ^ punctuation.section.sequence.begin.livescript
#    ^ punctuation.section.sequence.end.livescript

    [foo, bar, baz]
#   ^^^^^^^^^^^^^^^ meta.sequence.livescript
#   ^ punctuation.section.sequence.begin.livescript
#    ^^^ variable.other.livescript
#       ^ punctuation.separator.sequence.livescript
#         ^^^ variable.other.livescript
#            ^ punctuation.separator.sequence.livescript
#              ^^^ variable.other.livescript
#                 ^ punctuation.section.sequence.end.livescript

    <[]>
#   ^^^^ meta.sequence.livescript
#   ^^ punctuation.section.sequence.begin.livescript
#     ^^ punctuation.section.sequence.end.livescript

    <[word]>
#   ^^^^^^^^ meta.sequence.livescript
#   ^^ punctuation.section.sequence.begin.livescript
#     ^^^^ string.unquoted.livescript
#         ^^ punctuation.section.sequence.end.livescript

    <[foo bar baz]>
#   ^^^^^^^^^^^^^^^ meta.sequence.livescript
#   ^^ punctuation.section.sequence.begin.livescript
#     ^^^ string.unquoted.livescript
#         ^^^ string.unquoted.livescript
#             ^^^ string.unquoted.livescript
#                ^^ punctuation.section.sequence.end.livescript

###[ NUMBERS ]#################################################################

    2~0123456789ABCDEF 02~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.binary.livescript
#   ^^ constant.numeric.base.livescript
#     ^^ constant.numeric.value.livescript
#       ^^^^^^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.binary.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^ constant.numeric.value.livescript
#                           ^^^^^^^^^^^^^^ invalid.illegal.numeric.livescript

    3~0123456789ABCDEF 03~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^ constant.numeric.value.livescript
#        ^^^^^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^ constant.numeric.value.livescript
#                            ^^^^^^^^^^^^^ invalid.illegal.numeric.livescript

    4~0123456789ABCDEF 04~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^ constant.numeric.value.livescript
#         ^^^^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^ constant.numeric.value.livescript
#                             ^^^^^^^^^^^^ invalid.illegal.numeric.livescript

    5~0123456789ABCDEF 05~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^^ constant.numeric.value.livescript
#          ^^^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^^ constant.numeric.value.livescript
#                              ^^^^^^^^^^^ invalid.illegal.numeric.livescript

    6~0123456789ABCDEF 06~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^^^ constant.numeric.value.livescript
#           ^^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^^^ constant.numeric.value.livescript
#                               ^^^^^^^^^^ invalid.illegal.numeric.livescript

    7~0123456789ABCDEF 07~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^^^^ constant.numeric.value.livescript
#            ^^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^^^^ constant.numeric.value.livescript
#                                ^^^^^^^^^ invalid.illegal.numeric.livescript

    8~0123456789ABCDEF 08~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.octal.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^^^^^ constant.numeric.value.livescript
#             ^^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.octal.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^^^^^ constant.numeric.value.livescript
#                                 ^^^^^^^^ invalid.illegal.numeric.livescript

    9~0123456789ABCDEF 09~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^ constant.numeric.base.livescript
#     ^^^^^^^^^ constant.numeric.value.livescript
#              ^^^^^^^ invalid.illegal.numeric.livescript
#                      ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#                      ^^^ constant.numeric.base.livescript
#                         ^^^^^^^^^ constant.numeric.value.livescript
#                                  ^^^^^^^ invalid.illegal.numeric.livescript

    10~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.decimal.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^ constant.numeric.value.livescript
#                ^^^^^^ invalid.illegal.numeric.livescript

    11~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^ constant.numeric.value.livescript
#                 ^^^^^ invalid.illegal.numeric.livescript

    12~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^ constant.numeric.value.livescript
#                  ^^^^ invalid.illegal.numeric.livescript

    13~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^^ constant.numeric.value.livescript
#                   ^^^ invalid.illegal.numeric.livescript

    14~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^^^ constant.numeric.value.livescript
#                    ^^ invalid.illegal.numeric.livescript

    15~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^^^^ constant.numeric.value.livescript
#                     ^ invalid.illegal.numeric.livescript

    16~0123456789ABCDEF
#   ^^^^^^^^^^^^^^^^^^^ meta.number.integer.hexadecimal.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^^^^^ constant.numeric.value.livescript

    17~0123456789AG
#   ^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^ constant.numeric.value.livescript

    36~0123456789AZ
#   ^^^^^^^^^^^^^^^ meta.number.integer.other.livescript
#   ^^^ constant.numeric.base.livescript
#      ^^^^^^^^^^^^ constant.numeric.value.livescript

    37~0123456789AZ
#   ^^^^^^^^^^^^^^^ meta.number.integer.other.livescript invalid.illegal.numeric.livescript

    1 2 20 205229
#   ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#     ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#       ^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
#          ^^^^^^ meta.number.integer.decimal.livescript constant.numeric.value.livescript

    1e1 1e-5 1e+5
#   ^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#       ^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#            ^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript

    1.e1 1.e-5 1.e+5
#   ^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#    ^ punctuation.separator.decimal.livescript
#        ^^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#         ^ punctuation.separator.decimal.livescript
#              ^^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#               ^ punctuation.separator.decimal.livescript

    1.2e1 1.2e-5 1.2e+5
#   ^^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#    ^ punctuation.separator.decimal.livescript
#         ^^^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#          ^ punctuation.separator.decimal.livescript
#                ^^^^^^ meta.number.float.decimal.livescript constant.numeric.value.livescript
#                 ^ punctuation.separator.decimal.livescript

###[ CONSTANTS ]###############################################################

    false off no
#   ^^^^^ constant.language.boolean.false.livescript
#         ^^^ constant.language.boolean.false.livescript
#             ^^ constant.language.boolean.false.livescript

    true on yes
#   ^^^^ constant.language.boolean.true.livescript
#        ^^ constant.language.boolean.true.livescript
#           ^^^ constant.language.boolean.true.livescript

    Infinity NaN
#   ^^^^^^^^ constant.language.infinity.livescript
#            ^^^ constant.language.nan.livescript

    null
#   ^^^^ constant.language.null.livescript

    undefined void
#   ^^^^^^^^^ constant.language.livescript
#             ^^^^ constant.language.livescript

###[ REGEXP ]##################################################################

    /
#   ^ keyword.operator.arithmetic.livescript

    a / b / c /g
#   ^^^^^^^^^^^^ - meta.string
#     ^ keyword.operator.arithmetic.livescript
#         ^ keyword.operator.arithmetic.livescript
#             ^ keyword.operator.arithmetic.livescript

    a/b/g
#   ^ variable.other.livescript
#    ^^^^ meta.string.regexp.livescript
#    ^ punctuation.definition.string.begin.livescript
#     ^ string.regexp.livescript
#      ^ punctuation.definition.string.end.livescript
#       ^ constant.language.flags.regexp.livescript

    /^(?:[a-z\/]+)-any$/gim
#   ^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.livescript
#   ^ punctuation.definition.string.begin.livescript
#    ^^^^^^^^^^^^^^^^^^ string.regexp.livescript
#                      ^ punctuation.definition.string.end.livescript
#                       ^^^ constant.language.flags.regexp.livescript

    //
#   ^^ meta.string.regexp.livescript punctuation.definition.string.begin.livescript
#     ^ meta.string.regexp.livescript string.regexp.livescript
        ^(?:[a-z]+)-any$
#^^^^^^^^^^^^^^^^^^^^^^^^ meta.string.regexp.livescript string.regexp.livescript
    //g
#^^^^^^ meta.string.regexp.livescript
#^^^ string.regexp.livescript
#   ^^ punctuation.definition.string.end.livescript
#     ^ constant.language.flags.regexp.livescript

###[ STRINGS ]#################################################################

    \string val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    \string,val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    \string;val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    \string)val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    \string]val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    \string]val
#   ^^^^^^^ meta.string.backslash.livescript string.unquoted.livescript
#   ^ punctuation.definition.string.livescript
#          ^^^^^ - meta.string - string

    'string \n \''
#   ^^^^^^^^^^^^^^ meta.string.livescript string.quoted.single.livescript
#   ^ punctuation.definition.string.begin.livescript
#           ^^ constant.character.escape.livescript
#              ^^ constant.character.escape.livescript
#                ^ punctuation.definition.string.end.livescript

    "string \n \""
#   ^^^^^^^^^^^^^^ meta.string.livescript string.quoted.double.livescript
#   ^ punctuation.definition.string.begin.livescript
#           ^^ constant.character.escape.livescript
#              ^^ constant.character.escape.livescript
#                ^ punctuation.definition.string.end.livescript

    "string #val-ue-"
#   ^^^^^^^^^^^^^^^^^ meta.string.livescript
#   ^^^^^^^^ string.quoted.double.livescript
#   ^ punctuation.definition.string.begin.livescript
#           ^^^^^^^ meta.interpolation.livescript - string
#           ^ punctuation.definition.interpolation.livescript - variable
#            ^^^^^^^ variable.other.livescript
#                   ^ string.quoted.double.livescript punctuation.definition.string.end.livescript

    "string #{val + ue}"
#   ^^^^^^^^^^^^^^^^^^^^ meta.string.livescript
#   ^^^^^^^^ string.quoted.double.livescript
#   ^ punctuation.definition.string.begin.livescript
#           ^^^^^^^^^^^ meta.interpolation.livescript - string
#           ^ punctuation.definition.interpolation.livescript
#            ^ punctuation.section.interpolation.begin.livescript
#             ^^^ variable.other.livescript
#                 ^ keyword.operator.arithmetic.livescript
#                   ^^ variable.other.livescript
#                     ^ punctuation.section.interpolation.end.livescript
#                      ^ string.quoted.double.livescript punctuation.definition.string.end.livescript

###[ VARIABLES ]###############################################################

    _
#   ^ variable.language.anonymous.livescript

    arguments
#   ^^^^^^^^^ variable.language.livescript

    fallthrough
#   ^^^^^^^^^^^ variable.language.livescript

    it
#   ^^ variable.language.livescript

    super
#   ^^^^^ variable.language.livescript

    that
#   ^^^^ variable.language.livescript

    this
#   ^^^^ variable.language.this.livescript

    window
#   ^^^^^^ variable.language.livescript

    @member-value
#   ^ variable.language.this.livescript
#    ^^^^^^^^^^^^ variable.other.livescript

    &0 &10
#   ^^ variable.parameter.livescript
#   ^ punctuation.definition.variable.livescript
#      ^^^ variable.parameter.livescript
#      ^ punctuation.definition.variable.livescript

    variable
#   ^^^^^^^^ variable.other.livescript

    _variable-
#   ^^^^^^^^^^ variable.other.livescript

    dashed-var_iable
#   ^^^^^^^^^^^^^^^^ variable.other.livescript

###[ PACKAGES ]################################################################

    console.log "output string"
#   ^^^^^^^^^^^ meta.path.livescript
#   ^^^^^^^ support.class.console.livescript
#          ^ punctuation.accessor.dot.livescript
#           ^^^ support.function.console.livescript
#               ^^^^^^^^^^^^^^^ meta.string.livescript string.quoted.double.livescript

    Math.E
#   ^^^^^^ meta.path.livescript
#   ^^^^ support.class.math.livescript
#       ^ punctuation.accessor.dot.livescript
#        ^ support.constant.math.livescript

    Math.PI
#   ^^^^^^^ meta.path.livescript
#   ^^^^ support.class.math.livescript
#       ^ punctuation.accessor.dot.livescript
#        ^^ support.constant.math.livescript

    Math.abs 5
#   ^^^^^^^^ meta.path.livescript
#   ^^^^ support.class.math.livescript
#       ^ punctuation.accessor.dot.livescript
#        ^^^ support.function.math.livescript
#            ^ meta.number.integer.decimal.livescript constant.numeric.value.livescript
