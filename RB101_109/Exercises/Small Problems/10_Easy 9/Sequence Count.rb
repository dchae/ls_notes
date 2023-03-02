# input: two integers; n, x
# output: array

# - return array of length n, containing consecutive multiples of x
# - n >= 0, x can be any int
# - when n == 0; return empty array

# e.g.;
# n, x => [sequence]
# 5, 1 => [1, 2, 3, 4, 5]
# 4, -7 => [-7, -14, -21, -28]
# 3, 0 => [0, 0, 0]
# 0, 10000 => []

# ds: array

# algo:
# naive:
# init i
# init res array
# init cur as x
# while i < n
#   res << cur
#   cur += x
#   i += 1
# return res

# def sequence(n, x)
#   i = 0
#   res = []
#   cur = x
#   while i < n
#     res << cur
#     cur += x
#     i += 1
#   end
#   res
# end

# def sequence(n, x)
#   (1..n).map { |i| i * x }
# end

def sequence(n, x)
  x.step((n * x == 0 ? (return [x] * n) : n * x), x).to_a
end
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1_000_000) == []
