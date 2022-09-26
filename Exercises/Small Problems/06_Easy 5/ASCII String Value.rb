def ascii_value(s)
  s.codepoints.sum
end

# OR

def ascii_value(s)
  s.chars.reduce(0) { |sum, c| sum + c.ord }
end

p ascii_value("Four score") == 984
p ascii_value("Launch School") == 1251
p ascii_value("a") == 97
p ascii_value("") == 0

# FE answer is .chr. both .ord and .chr only work for single characters
