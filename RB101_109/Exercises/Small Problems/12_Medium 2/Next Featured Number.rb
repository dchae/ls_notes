# input: int
# output: int

# - given an integer n, return the next (non-inclusive) featured number
# - a featured number is a number x such that:
#   x % 2 == 1
#   x % 7 == 0,
#   x.digits.size == x.digits.uniq.size

# ds: integers

# algo:
# naive:
# while n < 9_999_999_999
#   n += 1
#   return n if n.odd? && n % 7 == 0 && n.digits.size == n.digits.uniq.size
# return error message

# def featured(n)
#   x = n + 1
#   x += 1 while x % 7 != 0 || x.even?
#   while x <= 9_876_543_201
#     return x if x.digits.size == x.digits.uniq.size
#     x += 14
#   end
#   "No featured number greater than #{n}"
# end
# def featured(n)
#   (n+1..9_876_543_201).find { |x| x.odd? && x % 7 == 0 && x.digits.size == x.digits.uniq.size } || "No featured number > n"
# end

def featured(n)
  (
    (n + 1..lim = 9_876_543_201).find { |x| x.odd? && x % 7 == 0 } ||
      lim + 1..lim
  ).step(14).find { |x| x.digits.size == x.digits.uniq.size } ||
    "No featured number > n"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_876_543_200)
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
