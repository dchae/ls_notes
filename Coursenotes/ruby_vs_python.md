### Codecademy

#### Constants

`FOUR = 4`
Constant variables (which do not change) are denoted in ALL CAPS

#### times method

    10.times { puts "This will be printed 10 times" }

#### !

! at the end of a method usually means modify the original instead of returning a copy

#### Ternary expressions

puts x < y ? "#{x} is less than #{y}" : "#{x} is not less than #{y}"

#### case statements

    puts "Input command:"
    command = gets.chomp.downcase

    case command
      when "add"
        #add something to data structure
      when "remove"
        #remove something from data structure
      else
        puts "command not recognised"

we can also save the result of a case to a variable

    a = 5

    result =
      case a
      when 5
        "a is 5"
      when 6
        "a is 6"
      else
        "a is neither 5, nor 6"
      end
    puts result
    # => a is 5

There can only be one case; i.e., the case statement will break after completing one "when" statement.
Essentially, case statement is always equivalent to if, elslif... else chain.

#### conditional assignment

#### implicit return

#### respond_to? method

#### << push/concatenate


#### symbols

      .to_sym
      .intern

- you can pass a ruby method as a symbol
- method names are symbols
- these two ways of defining a method are equivalent

      class Foo
        def bar
          puts "hello"
        end
      end

      class Foo
        define_method(:bar) do
          puts "hello"
        end
      end

- can use & to convert symbol to proc

      numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      strings_array = numbers_array.map(&:to_s)
      puts strings_array
      # => ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

#### blocks

- basically sad lambda expressions..?

      do
      end

      {}

      def double(n)
        yield n
      end

      puts double(10) { |x| x * 2 }

- you can have a double function that yields to (essentially) a lambda that does the actual doubling for you??
- what the fuck

A block is code delimited by do/end or {} which immediately follows a method invocation.

A for loop is not a method invocation, so this do/end is not a block and a is accessible globally.

    for i in 1..3 do
      a = 5
    end
    puts a # => 5

The code within the do/end here is a block and a is limited by its scope.

    (1..3).each do
      a = 5
    end
    puts a
    # => "undefined local variable or method 'a' for main:Object (NameError)"

#### proc

- a proc is a "saved block"

      cube = Proc.new { |x| x**3 }
      [1, 2, 3].each.map(&cube)

- can .call a proc

      hi = Proc.new { |name| puts "Hello #{name}!" }
      hi.call("Daniel")
      # => Hello Daniel!

#### Lambdas

- just a weird proc
  `lambda { puts "Hello" }` ~= `Proc.new { puts "Hello" }`

##### Lambdas vs Procs

- A lambda checks the number of arguments passed to it, proc does not
- Lambda will throw an error if wrong number of arguments are passed to it
- A proc will ignore extra args and assign nil to missing args.

      p = Proc.new {|a, b| puts a**2+b**2 } # => #<Proc:0x3c7d28@(irb):1>
      p.call 1, 2 # => 5
      p.call 1 # => NoMethodError: undefined method `**' for nil:NilClass
      p.call 1, 2, 3 # => 5
      l = lambda {|a, b| puts a**2+b**2 } # => #<Proc:0x15016c@(irb):5 (lambda)>
      l.call 1, 2 # => 5
      l.call 1 # => ArgumentError: wrong number of arguments (1 for 2)
      l.call 1, 2, 3 # => ArgumentError: wrong number of arguments (3 for 2)

- A lambda will return only within the scope of the calling function (like python)
- A proc will also return from the enclosing method

      def my_proc_method
        puts "before proc"
        my_proc = Proc.new do
          puts "inside proc"
          return
        end
        my_proc.call
        puts "after proc"
      end

      my_proc_method
      # => before proc
      # => inside proc

"after proc" is not printed, because proc returns from both my_proc.call and my_method

      def my_lambda_method
        puts "before lambda"
        my_lambda = lambda do
          puts "inside lambda"
          return
        end
        my_lambda.call
        puts "after lambda"
      end

      my_lambda_method
      # => before lambda
      # => inside lambda
      # => after lambda

"after lambda" is printed.

### Intro to Programming with Ruby

#### Remainder vs modulo (%)

| a   | b   | a/b  | floor | a % b | truncate | a.remainder(b) |
| --- | --- | ---- | ----- | ----- | -------- | -------------- |
| 17  | 5   | 3.4  | 3     | 2     | 3        | 2              |
| 17  | -5  | -3.4 | -4    | -3    | -3       | 2              |
| -17 | 5   | -3.4 | -4    | 3     | -3       | -2             |
| -17 | -5  | 3.4  | 3     | -2    | 3        | -2             |

Ruby Docs:
a % b = a-(b*(a/b).floor)
a.remainder(b) = a % b = a-(b*(a/b).truncate)

#### .to_i(base=10)

`string.to_i(b)` assumes the string is in base b and converts it to a base 10 integer

Returns first valid base b number in string or 0

    "0a".to_i(16)  # => 10
    "4 hello".to_i # => 4
    "hello 4".to_i # => 0

Same for .to_f(base=10) for float conversion

#### .gets.chomp

`.gets` equivalent to python `input()`

- always returns input + \n
  `chomp` equivalent to python `.strip()`

#### Variable Scope

In python, a variable declared outside of a function has global scope.

    a = 0
    def print_a():
      print(a)
    # >> 0

In ruby, a lowercase variable always has local scope and cannot be accessed outside the method/function within which it was defined

    a = 0
    def print_a
      puts a
    end
    # => "NameError: undefined local variable or method `a' for main:Object"

Ruby blocks _can_ access and modify variables defined outside the block but _cannot_ create variables to be accessed outside of the block.

    total = 0
    [1, 2, 3].each { |n| total += n }
    puts total
    # => 6

    total = 0
    [1, 2, 3].each do |n|
      total += n
      new_total = total
    end
    puts new_total
    # => NameError: undefined local variable 'new_total'

#### Call Stack

Stack frame, aka `main` method
same as python

#### Loops

`loop` is essentially method version of `while true`, it creates its own local scope
`next` equivalent to python `continue`
`until` equivalent to `while not`

`do/while` loop is a loop that is guaranteed to execute at least once

`.each` is preferred over for loops because variables created in for loops are global and therefore persistent

    for x in [1, 2, 3]
      x
    end
    puts x
    # => 3

#### Arrays
`arr.delete_at(i)` equivalent to python `del arr[i]`
`arr.delete(element)` equivalent to python `arr.remove(element)`
`arr.uniq` equivalent to python `list(set(arr))`
`arr.push(e)` equivalent to python `arr.append(e)`
`arr.unshift(element)` equivalent to python `arr.insert(0, element)`
`arr.include?(element)` equivalent to python `element in arr`
`arr.flatten` roughly equivalent to python `[element for sublist in arr for element in sublist]`
`arr.each_index` roughly equivalent to python `for i in range(len(arr)):`
`arr.each_with_index` roughly equivalent to python `for i, v in enumerate(arr):`, except gives value first and index last.
`arr.sort` equivalent to python `sorted(arr)`
`arr.sort!` equivalent to python `arr.sort()`
`arr.product` roughly equivalent to python `itertools.product`
`[["test", "hello", "world"],["example", "mem"]]` == `[%w[test hello world], %w[example mem]]`

#### .collect

essentially python map (but returns copy) or list comp
equivalent to ruby .map

#### .select

essentially equivalent to python filter or list comp
returns a new same-type iterable, the contents of which are a selection from the iterable that matches a condition

        my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
        symbol_filter = lambda { |x| x.is_a? Symbol }
        symbols = my_array.select(&symbol_filter)
        p symbols
        # => [:kettles, :mittens, :packages]

#### Hashes
`:a` is equal to `:"a"`
`hash1.merge(hash2)` equivalent to python `dict1 | dict2 ` or `{**dict1, **dict2}`
`hash1.merge!(hash2)` equivalent to python `dict1.update(dict2)`

When a hash is the last argument passed into a function, curly braces are not required.

    def greet(name, options={})
      if options.empty?
        puts "Hello, #{name}!"
      else:
        puts "Hello, #{name}! You are #{options[age]} years old and you live in #{options[city]}."
      end
    end

    puts greet("Daniel", age: 25, city: "Los Angeles")

`hash.key?` == python `key in dict`
`hash.fetch("key")` ~= python `dict.get("key")` 
`hash.fetch("key", nil)` == python `dict.get("key")` 
`hash.to_a` ~= python `list(dict.items())`
`hash.keys` == python `dict.keys()`
`hash.each_key` ~= python `for k in dict.keys()`
`hash.values` == python `dict.values()`
`hash.each_value` ~= python `for v in dict.values()`

- Ruby hashes preserve insertion order beginning from Ruby 1.9

#### Regex
    "abcdef" =~ /b/
    => 1
or 

    "abcdef".match(/cde/)
    => #<MatchData "cde">
both return values here evaluate as `true`

#### Exception handling
`begin`, `rescue`, `end` ~= python `try:` and `except:`

syntax:

    def divide(number, divisor)
      begin
        ans = number / divisor
      rescue ZeroDivisionError => e
        puts e.message
      end
    end
or 

    0.each { |x| puts x } rescue puts "Error Message"

#### Array.split(pattern=nil, [limit])
defaults to split on whitespace
limit is the length of the returned array
e.g. `arr.split(",", 2)`

#### String assignment
Strings in ruby are mutable.

    a = "abcdef"
    def modify_string(b)
      b[2] = "C"
    end

    modify_string(a)
    puts a
    => "abCdef"

`b[2] = "C"` is not a true assignment, but calls the `[]=` method which mutates the string it is called on. 

#### Operators
Prefer `&&`, `||`, and `!` over `and`, `or`, and `not`.
`and`, `or`, and `not` have lower precedence than `&&`, `||`, and `!`
`and`, `or` have the same precedence, while `&&` has higher precedence than `||`.

    a = false || true  #=> true
    a  #=> true

    a = false or true  #=> true
    a  #=> false
In the second case, a is assigned to false, because `=` has higher precedence than `or`.

#### if expressions return value
In Ruby, `if` expressions can return values

    answer = if true
                'yes'
             else
                'no'
             end
    puts answer
    # => yes

#### Heredoc

Wrapping a block of text in `<<-MSG...MSG` allows for multiline strings.
```
help = <<-MSG
Enter operation:
  add      (a)
  subtract (s)
  multiply (m)
  divide   (d)
MSG

puts help
# => 
# Enter operation:
#   add      (a)
#   subtract (s)
#   multiply (m)
#   divide   (d)
```