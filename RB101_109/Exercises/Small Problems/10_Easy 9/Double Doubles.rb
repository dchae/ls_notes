# input: int
# output: int

# - if the input argument n is a double number:
#   return n
# - else return n * 2

# ds: int

# algo:
# literally an if else statement

def twice(n)
  (m = n.to_s)[...m.size / 2] == m[m.size / 2..] ? n : n * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334_433) == 668_866
p twice(444) == 888
p twice(107) == 214
p twice(103_103) == 103_103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
