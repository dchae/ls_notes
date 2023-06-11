# input: positive int n
# output: print string pattern

# explicit reqs:
# - string pattern to be printed should be a right triangle
#   - each side should have n stars
#   - the hypotenuse should start at lower-left and end at top-right
#   - e.g.:

#     *
#    **
#   ***
#  ****
# *****

# implicit reqs:
# - triangle should be printed with star char ("*")

# DS: int variable iteration

# Algo:

# iterate up to n
# for each iteration
#   print line formatted with i stars, right-justified to length n with spaces

# def triangle(n)
#   1.upto(n) { |i| puts ("*" * i).rjust(n) }
# end

# def triangle(n, corner = 1)
#   n.times do |i|
#     puts ("*" * (corner.odd? ? (n - i) : i)).rjust(corner < 2 ? n : 0).ljust(
#            corner < 2 ? 0 : n,
#          )
#   end
# end

# FE
def triangle(n, o = 0)
  n.times { |i| puts ("*" * (o < 2 ? (n - i) : i + 1)).rjust(o.odd? ? n : 0).ljust(o.odd? ? 0 : n) }
end

4.times do |o|
  puts "Orientation ##{o}\n\n"
  triangle(5, o)
  puts
end
