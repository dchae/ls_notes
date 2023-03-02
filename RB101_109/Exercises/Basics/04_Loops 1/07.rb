count = 10

until count == 0
  puts 11 - count
  count -= 1
end

# OR
count = 1

until count > 10
  puts count
  count += 1
end

# OR
puts (1..10).to_a
