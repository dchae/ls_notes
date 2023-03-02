puts "Please write word or multiple words: "
input_string = gets.chomp

count = input_string.gsub(" ", "").length
# OR
# count = input_string.length - input_string.count(" ")
# OR
# count = input_string.split.join("").length
puts "There are #{count} characters in '#{input_string}'."
