def calculate_bonus(x, b)
  b ? x / 2 : 0
end

# test
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50_000, true) == 25_000
