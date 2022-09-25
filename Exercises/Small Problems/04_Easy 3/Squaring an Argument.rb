def multiply(x, y)
  x * y
end

def square(x)
  multiply(x, x)
end

p square(5) == 25
p square(-8) == 64

# FE

def x_to_nth_power(x, n)
  res = 1
  n.times { res = multiply(res, x) }
  res
end

p x_to_nth_power(2, 4)
