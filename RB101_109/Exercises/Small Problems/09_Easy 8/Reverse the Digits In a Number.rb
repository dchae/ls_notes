# input: positive int
# output: positive int

# - return number with its digits reversed

# ds: int or string

# algo:
# simple:
# return n.to_s.reverse.to_i

# algebraic:
# res = 0
# while n is greater than 0
#   res += n % 10
#   res *= 10
#   n //= 10
# return res

# simple
# def reversed_number(n)
#   n.to_s.reverse.to_i
# end

# def reversed_number(n)
#   res = 0
#   while n > 0
#     res += n % 10
#     res *= 10
#     n /= 10
#   end
#   res / 10
# end

# one-liner with digits and reduce
def reversed_number(n)
  n.digits.reduce { |r, d| r * 10 + d }
end

p reversed_number(0) == 0
p reversed_number(11) == 11
p reversed_number(12_345) == 54_321
p reversed_number(12_213) == 31_221
p reversed_number(456) == 654
p reversed_number(12_000) == 21 # No leading zeros in return value!
p reversed_number(12_003) == 30_021
p reversed_number(1) == 1
