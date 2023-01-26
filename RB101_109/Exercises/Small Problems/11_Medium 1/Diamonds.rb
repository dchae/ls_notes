# input: int
# output: print strings

# - display a 4 pointed diamond in an n x n grid
# - n will always be odd

# ds: ???

# algo:
# iterate n times
#   if i < n / 2
#     print center justified i * 2 + 1 stars
#   else
#     print center justified (n-i) * 2 + 1 stars

# def diamond(n)
#   n.times do |i|
#     if i < n / 2
#       stars = "*" + "*" * i * 2
#     else
#       stars = "*" + "*" * (n - i - 1) * 2
#     end
#     puts stars.center(n)
#   end
# end

# def diamond(n)
#   n.times { |i| puts(("*" * (2 * (i < n / 2 ? i : n - i - 1) + 1)).center(n)) }
# end

# def diamond(n)
#   n.times do |i|
#     puts(("*" * (2 * (n / 2 - (i - n / 2).abs).abs + 1)).center(n))
#   end
# end

# FE
# def diamond(n)
#   n.times do |i|
#     if i == 0 || i == n - 1
#       puts "*".center(n)
#       next
#     elsif i < n / 2
#       spaces = " " * (i * 2 - 1) || ""
#     else
#       spaces = " " * ((n - i - 1) * 2 - 1) || ""
#     end
#     puts spaces.center(spaces.size + 2, "*").center(n)
#   end
# end

# def diamond(n)
#   n.times { |i| puts (0...n).map { |j| (n / 2 - j).abs == (n / 2 - (i - n / 2).abs).abs ? "*" : " " }.join }
# end

1.step(11, 2) { |n| diamond(n) }
