name = 'Roger'
puts name.downcase == "RoGeR".downcase
puts name.downcase == "DAVE".downcase

# SOLUTION
# Can use STRING#casecmp method to compare two strings while ignoring case

name = "Roger"
puts name.casecmp("RoGeR") == 0
puts name.casecmp("DAVE") == 0
