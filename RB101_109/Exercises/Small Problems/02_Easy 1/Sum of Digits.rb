def sum(x)
  x.to_s.chars.map(&:to_i).sum
end

# Test
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
