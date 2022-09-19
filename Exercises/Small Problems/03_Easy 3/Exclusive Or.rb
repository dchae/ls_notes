def xor?(x, y)
  (x || y) && !(x && y)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# FE
# XOR cannot be short-circuited, because its truth value depends on both operands.
