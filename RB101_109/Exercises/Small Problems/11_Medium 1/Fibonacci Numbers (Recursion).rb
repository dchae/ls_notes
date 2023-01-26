# input: int
# output: int

# - given input n, return nth Fibonacci number
# - n > 0

# algo: recursive

def fibonacci(n)
  n < 3 ? 1 : fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
