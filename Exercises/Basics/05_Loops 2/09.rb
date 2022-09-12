number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  # puts "a, b = #{number_a}, #{number_b}"
  next unless [number_a, number_b].include? 5
  puts "5 was reached!"
  break
end

# OR

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  # puts "a, b = #{number_a}, #{number_b}"
  next unless number_a == 5 || number_b == 5
  puts "5 was reached!"
  break
end

# FE

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  # puts "a, b = #{number_a}, #{number_b}"
  if number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end
