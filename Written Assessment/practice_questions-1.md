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
