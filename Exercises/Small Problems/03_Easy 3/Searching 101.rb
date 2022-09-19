arr = []
%w[1st 2nd 3rd 4th 5th last].each do |nth|
  puts "=> Enter the #{nth} number:"
  arr << gets.to_i
end
last = arr.pop
appears = arr.include?(last) ? "appears" : "does not appear"
puts "The number #{last} #{appears} in #{arr}."
