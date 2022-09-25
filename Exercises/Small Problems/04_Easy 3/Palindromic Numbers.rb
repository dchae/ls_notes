# def palindromic_number?(x)
#   testcase = x.to_s
#   return x == x.reverse
# end

# OR

def palindromic_number?(x)
  original = x
  res = 0
  while x > 0
    res *= 10
    res += (x % 10)
    x /= 10
  end
  res == original
end

p palindromic_number?(34_543) == true
p palindromic_number?(123_210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

# FE

# def palindromic_number?(x)
#   testcase = x.to_s
#   return x == x.reverse
# end

# p palindromic_number?(00500) == true
