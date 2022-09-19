## General Study Notes

- Read through the entire course. Don't take any notes. Do the practice questions and quizzes.
- Now do it all again, this time slowly and while taking notes. This leads to better notes and fewer unnecessary notes. Do the quizzes and practice questions again.
- Make flashcards for any confusing concepts, missed quiz questions, practice questions, and any concepts that require memorizing lists.
- Just before the assessment, read through everything, including my notes, one final time.


## General coding practice
- Methods should be at the same level of abstraction
  - Keep methods relatively short and simple (10 or less lines)
  - We should be able to just copy and paste the method into irb and test it.

- Method names should reflect what they do, especially displaying, mutating, and returning.
- Try to separate side-effects and return when writing methods.
  - i.e., have a method *either* mutate self or return a modified copy of self or print a value - not more than one of these things.

- Don't mutate a collection while iterating through it.
- Don't use assignment in a conditional
```ruby
if x = foo
  puts bar
end
# if statement will always evaluate true unless foo == nil or false, 
# because the = method is assigning foo to x, and then returning the value of x.

```
Even if this works, it is unclear to the reader whether the conditional is a bug or intentional.

- Use underscore for unused parameters
```ruby
some_hash.each { |_, v| puts "Value: #{v}" }
```

methods whose name ends in a ? should usually only return the explicit true and false values