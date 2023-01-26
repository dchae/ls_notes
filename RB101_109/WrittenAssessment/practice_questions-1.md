### RB109 Written Assessment Practice Questions

[RB109 Written Questions from Christian Larwood](https://fine-ocean-68c.notion.site/RB109-Written-Questions-From-Christian-Larwood-s-Blog-91bcc598a24d4ad6aadad86802e7412b)

##### Example 1
```ruby
a = “Hello”
b = a
a = “Goodbye”

puts a
puts b
```

On line 1, the local variable `a` is initialised and assigned to the string `"Hello"`. On line 2, the local variable `b` is initialised and assigned to the return value of `a` which is the string `"Hello"`. On line 3, the local variable `a` is reassigned to the string `"Goodbye"`.
On line 5, the `puts` method is called with the local variable `a` as an argument, which prints the string `"Goodbye"` and returns `nil`.
On line 6, the `puts` method is called with the local variable `b` as an argument, which prints the string `"Hello"` and returns `nil`.
This code demonstrates variable initialisation and reassignment.

##### Example 2
```ruby
a = 4

loop do  
  a = 5  
  b = 3

  break
end

puts a
puts b
```

On line 1, the local var `a` is initialised and assigned to the int `4`. On line 3, the `loop` method is invoked with a `do...end` block spanning lines 3-8. On line 4, local var `a` is reassigned to the int `5`. On line 5, the local var `b` is initialised within the inner scope of the `do...end` block and assigned to the int `3`. On line 7, the `break` keyword is invoked, breaking the execution of the loop iteration. On line 10 and 11, the `puts` method is invoked twice with local vars `a` and `b` passed in as an arguments respectively. Line 10 will output 5 and line 11 will raise a NameError since `b` is not defined outside the `do...end` block. 

##### Example 3
```ruby
a = 4
b = 2

loop do  
  c = 3  
  a = c  
  break
end

puts a
puts b
```

On line 1, local variable `a` is initialised and assigned to the integer 4. On line 2, the local variable `b` is initialised and assigned to the integer 2.
On line 4 the loop method is called with a `do...end` block spanning lines 4-8. On line 5, the local variable `c` is initialised within the inner scope and assigned to the integer 3. On line 6, the local variable `a` is reassigned to the return value of `c` which is the integer 3. On line 7, the `break` keyword is invoked, ending the execution of the loop. The loop returns `nil`.

On lines 10 and 11, the puts method is invoked with local variables `a` and `b` as arguments, respectively. Line 10 prints 3 and returns `nil`. Line 11 prints 2 and returns nil.

##### Example 4
```ruby
def example(str)
  i = 3  
  loop do    
    puts str    
    i -= 1    
    break if i == 0  
  end
end

example('hello')
```
On line 1 the method `example` is defined.
On line 10 the method `example` is called with the string `"hello"` as an argument. We then execute the method as defined in line 1, passing the string `"hello"` into the `example` method as the argument `str`.
On line 2, the local variable `i` is initialised and assigned to the integer `3` within the method definition.
On line 3, the `loop` method is called with a `do..end` block that spans lines 3-7. On line 4 within the `do..end` block, the method `puts` is called with the argument `str`. On line 5, local variable `i` is decremented by 1. On line 6, the break keyword is invoked with a conditional such that we will break out of the loop if `i` is equal to 0.
The code will print "hello" 3 times and return the default return value of the loop method, which is `nil`.

This code demonstrates passing in arguments to a method, as well as using a conditional to break out of a loop.

##### Example 5
```ruby
def greetings(str)  
  puts str  
  puts "Goodbye"
end

word = "Hello"
greetings(word)
```
On line 1, the `greetings` method is defined with one parameter `str`.
On line 6, the local variable `word` is initialised and assigned to the string `"Hello"`.
On line 7, the `greetings` method is called with the argument `word`.
On line 2, the `puts` method is called with the argument `str`. Since we have passed in `word` to the method, the string `"Hello"` is printed and `nil` is returned.
On line 3, the `puts` method is called with the string argument `"Goodbye"`. "Goodbye" is printed and `nil` is returned.
Since the last return value in the method execution was `nil`. the method invocation on line 7 returns `nil`.

This code demonstrates passing in a variable to a method as an argument. Local variables defined outside of a method are accessible within the inner scope of a function when passed in as an argument.

##### Example 6
```ruby
arr = [1, 2, 3, 4]
counter = 0
sum = 0

loop do  
  sum += arr[counter]  
  counter += 1  
  break if counter == arr.size
end 

puts "Your total is #{sum}"
```
On line 1, the local variable `arr` is initialised and assigned to the array `[1, 2, 3, 4]`.
On line 2, the local variable `counter` is initialised and assigned to the integer 0.
On line 3, the local variable `sum` is initialised and assigned to the integer 0.

On line 5, the `loop` method is invoked with a `do..end` block spanning lines 5-9. On line 6, within the block, the local variable `sum` is incremented by the integer element of `arr` at index `counter`. On line 7, `counter` is incremented by one. On line 8, the `break` keyword is invoked with a conditional such that we will exit the loop if the local variable `counter` is equal to the return value of the `size` method called on `arr`. Since the `size` method returns the length of the array it is called on, the loop will iterate `arr.size` times, adding each integer element of `arr` to `sum` and returning `nil` after breaking.

Since `sum` was initialised in the outer scope, it will be equal to the sum of `arr` after the loop finishes executing, which is 10. On line 11, `puts` method is called with `sum` interpolated into the string. It will print "Your total is 10" and return `nil`.
