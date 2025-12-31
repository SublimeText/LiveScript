# SYNTAX TEST "Packages/LiveScript/LiveScript.sublime-syntax"

class Base
#     @@@@ definition

class Foo extends Base
#     @@@ definition
#                 @@@@ reference

class Parent.AnyClass implements Parent.Inteface
#            @@@@@@@@ definition
#                                       @@@@@@@@ reference

  :label
#  @@@@@ local-definition

  func = () -> "val"
# @@@@ definition

