# Input: integer d, representing number of digits
# Output: n, where nth Fibonacci number is the first to have d digits

# Explicit Reqs:
# - Can assume that d > 1
# - n >= 1; i.e., first Fibonacci number has index 1, NOT 0
# Implicit Reqs:

# DS:
# - Want to do this algebraically, else memory will be overwhelmed for larger inputs
# - int variable manipulation

# A:
# Pseudo-code
# start with prev, cur variables = 1, 1
# iterate through fibonacci sequence until cur has d digits
# return i

def find_fibonacci_index_by_length(d)
  prev, cur = 1, 1
  i = 2
  while cur / 10**(d - 1) < 1
    prev, cur = cur, prev + cur
    i += 1
  end
  return i
end

# fib is an array containing prev, current fibonacci number, and idx.
# def find_fibonacci_index_by_length(d)
#   (fib = [1, 1, 2]).cycle { (fib[1] / 10**(d - 1) >= 1) ? (return fib[2]) : (fib[0..] = fib[1], fib[0, 2].sum, fib[2] + 1)}
# end

p find_fibonacci_index_by_length(2) #== 7 # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12 # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10_000) == 47_847
