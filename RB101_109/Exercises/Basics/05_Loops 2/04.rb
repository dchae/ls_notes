loop do
  puts "What does 2 + 2 equal?"
  if gets.to_i == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end
