command = nil
loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  command = gets.chomp.downcase
  break if command == "q"
  num_lines = command.to_i
  if num_lines < 3
    puts ">> That's not enough lines."
    next
  else
    puts "Launch School is the best!\n" * num_lines
  end
end
