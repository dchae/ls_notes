puts "What is your age?"
age = gets.to_i
puts "At what age would you like to retire?"
retirement_age = gets.to_i

cur_year = Time.new.year

puts "It's #{cur_year}. You will retire in #{cur_year + retirement_age - age}."
puts "You have only #{retirement_age - age} years of work to go!"
