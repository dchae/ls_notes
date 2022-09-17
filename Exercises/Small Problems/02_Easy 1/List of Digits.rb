def digit_list(x)
  x.digits.reverse
end

def test()
  puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
  puts digit_list(12_345) == [1, 2, 3, 4, 5] # => true
  puts digit_list(7) == [7] # => true
  puts digit_list(375_290) == [3, 7, 5, 2, 9, 0] # => true
  puts digit_list(444) == [4, 4, 4] # => true
end
test

# OR

def digit_list(x)
  res = []
  while x > 10
    res.unshift(x % 10)
    x /= 10
  end
  res.unshift(x)
end

test

# SOLUTION
# Could also have done:

def digit_list(x)
  x.to_s.chars.map(&:to_i)
end
