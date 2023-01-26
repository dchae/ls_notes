# input: 3 ints
# output: sym

# - given 3 side lengths (a, b, c), return the type of triangle or :invalid
# - equilateral if a == b == c
# - isosceles if two sides are equal
# - scalene if a != b != c
# - invalid if the sum of the two shortest sides is not greater than the longest side

# ds: set

# algo:
# naive:
# return :invalid if sides.sort!.take(2).sum <= sides.last
# %i[equilateral isosceles scalene][set(sides)]
# def triangle(*sides)
#   sides.sort!.take(2).sum > sides.last ? %i[equilateral isosceles scalene][sides.uniq.size - 1] : :invalid
# end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
