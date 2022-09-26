def integer_to_string(n)
  res = ""
  while true
    res << (n % 10 + 48).chr
    n /= 10
    break if n == 0
  end
  res.reverse
end

def signed_integer_to_string(n)
  ["", "+", "-"][n <=> 0] + integer_to_string(n.abs)
end

p signed_integer_to_string(4321) == "+4321"
p signed_integer_to_string(-123) == "-123"
p signed_integer_to_string(0) == "0"
