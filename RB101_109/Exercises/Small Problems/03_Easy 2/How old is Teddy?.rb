# age = Random.rand(20..200)

# puts "Teddy is #{age} years old!"

# FE

age = Random.rand(20..200)

print("Enter a name: ")
name = gets.chomp
puts "#{name.empty? ? "Teddy" : name} is #{age} years old!"
