# input: int
# output: int

# - if input int n is positive
#   return negative n
# - else return n

def negative(n)
  n < 0 ? n : -n
end

# def negative(n)
#   -n.abs
# end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 # There's no such thing as -0 in ruby
