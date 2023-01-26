while true
  puts ">> Do you want me to print something? (y/n)"
  command = gets.chomp.downcase
  case command
  when "y"
    puts "something"
    break
  when "n"
    break
  else
    puts "Invalid input! Please enter y or n."
  end
end

# Practice writing in the style of solution

command = nil
while true
  puts ">> Do you want me to print something (y/n)"
  command = gets.chomp.downcase
  break if %w[y n].include? command
  puts "Invalid input!"
end
puts "something" if command == "y"
