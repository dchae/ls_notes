def is_odd?(x)
  return x % 2 != 0
end

# FE
def is_odd?(x)
  return x.remainder(2) != 0
end

puts is_odd?(2) # => false
puts is_odd?(5) # => true
puts is_odd?(-17) # => true
puts is_odd?(-8) # => false
puts is_odd?(0) # => false
puts is_odd?(7) # => true
