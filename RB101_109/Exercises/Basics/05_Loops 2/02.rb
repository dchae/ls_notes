loop do
  number = rand(100)
  puts number
  break if 0 <= number && number <= 10
end

# OR

loop do
  number = rand(100)
  puts number
  break if (0..10).include? number
end

# OR
loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end
