#### My solutions to Variable Scope Exercises

1. => 7
2. => 7
3. => 7
4. => Error; strings are immutable, don't support assignment
5. => "Xyzzy"; `b` reassigned to different string does not mean `a` is also.
6. => 7
7. => 7; `each` is a method and can't access the a variable on line 1
8. => NameError; variables created within blocks cannot be accessed outside of the block.
9. => 7; If it's anything like a python lambda `|a|` should assign `a` in local scope?
10. => NameError; Can't see `a` within `my_value()` method.



##### SOLUTION
4. => "Xy-zy": Strings are mutable in Ruby!?!?
6. => Raises NameError, because ruby variables are local by default, not global like python. Need to remember this!!
7. => 3; I'm dumb, it's not the method that's accessing it, it's the block.
9. => This is called _shadowing_; good to know the word for this.
10. Not NameError; we get "Undefined method '+' for nil:NilClass (NoMethodError)". Essentially correct on this one.
