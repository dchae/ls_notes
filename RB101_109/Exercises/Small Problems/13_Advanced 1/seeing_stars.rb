# input: int
# output: print strings

# - given an odd integer n, n >= 7,
#   print an 8 pointed star in an n x n grid

# algo:
# naive:
# print top half
# print middle line
# print top half reversed

# top half:
# (n / 2).times do |i|
# [0 + i, n / 2, n - i].each_with_object(Hash.new([0...n], " ")) { |j, arr| arr[j] = "*"}
# end
# def half_star(n, diverge: false)
#   rows = (diverge ? (0...n / 2).reverse_each : (0...n / 2))
#   rows.each do |i|
#     arr = [" "] * n
#     [0 + i, n / 2, n - 1 - i].each { |j| arr[j] = "*" }
#     puts arr.join
#   end
# end

# def star(n)
#   half_star(n)
#   puts "*" * n
#   half_star(n, diverge: true)
# end

# def star(n)
#   n.times { |i| puts (i == n / 2 ? n.times : [0 + i, n / 2, n - 1 - i]).each_with_object([" "] * n) { |j, a| a[j] = "*" }.join }
# end

# def star(n)
#   puts (0...n).map { |i| (0...n).map { |j| i == n / 2 ? "*" : [0 + i, n / 2, n - 1 - i].include?(j) ? "*" : " " }.join }
# end
star(7)
star(9)
star(15)
