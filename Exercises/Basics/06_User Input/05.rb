while true
  puts ">> How many output lines do you want? Enter a number >= 3:"
  n = gets.chomp.to_i
  break if n >= 3
  puts "That is not a valid input. Try again."
end
puts "Launch School is the best!\n" * n
