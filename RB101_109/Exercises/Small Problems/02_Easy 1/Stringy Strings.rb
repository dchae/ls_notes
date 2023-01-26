def stringy(n)
  "".rjust(n, "10")
end

puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4) == "1010"
puts stringy(7) == "1010101"

# OR

def stringy(n)
  res = ""
  1.upto(n) { |i| res << (i % 2).to_s }
  return res
end

puts stringy(6) == "101010"
puts stringy(9) == "101010101"
puts stringy(4) == "1010"
puts stringy(7) == "1010101"

# FE
def stringy(n, first = 1)
  "".rjust(n, (first == 1 ? "10" : "01"))
end

puts stringy(6) == "101010"
puts stringy(6, 0) == "010101"

# OR
def stringy(n, first = 1)
  res = ""
  first.upto(n - 1 + first) { |i| res << (i % 2).to_s }
  return res
end

puts stringy(6) == "101010"
puts stringy(6, 0) == "010101"
