# puts "What is the bill?"
# bill = gets.to_f
# puts "What is the tip percentage?"
# tip_percent = gets.to_f / 100

# tip = (bill * tip_percent).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{bill + tip}"

# FE

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percent = gets.to_f / 100

tip = (bill * tip_percent)

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", bill + tip)}"
