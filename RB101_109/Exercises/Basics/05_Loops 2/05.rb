numbers = []

loop do
  puts "Enter any number:"
  numbers.push(gets.chomp.to_i)
  break if numbers.length > 4
end
puts numbers
