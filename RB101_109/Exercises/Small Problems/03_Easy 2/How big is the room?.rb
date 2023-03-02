# puts "Enter the length of the room in meters:"
# room_length = gets.to_i

# puts "Enter the width of the room in meters:"
# room_width = gets.to_i

# area_m = room_length * room_width
# area_ft = area_m * 10.7639

# puts "The area of the room is #{area_m} (#{area_ft} square feet)."

# FE

puts "Enter the length of the room in feet:"
room_length = gets.to_i

puts "Enter the width of the room in feet:"
room_width = gets.to_i

area = room_length * room_width

SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts <<-MSG

The area of the room is: 
#{area} sq ft
#{area * SQFT_TO_SQIN} sq in
#{area * SQFT_TO_SQCM} sq cm

MSG
