# input: 3 ints
# output: sym

# - given 3 angles in degrees, return symbol representing the type of triangle
# - triangle is invalid if sum of angles != 180 or any angle <= 0
# - right if one angle is 90
# - acute if all 3 angles are less than 90
# - obtuse if one angle is greater than 90

# ds: arr

# algo:
# naive:
# return :invalid if sum of angles != 180 || angles.any? { |x| x <= 0 }
# max_angle = angles.max
# return :obtuse if max_angle > 90
# return :acute if max_angle < 90
# return :right if max_angle == 90

# def triangle(*angles)
#   angles.sum == 180 && angles.all? {|x| x > 0} ? %i[right obtuse acute][angles.max <=> 90 ] : :invalid
# end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
