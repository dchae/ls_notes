# input: two arrays
# output: new array

# reqs:
# - length of both input arrays = n, n > 0
# - new array should be returned
# - new array should contain all elements from
#   both arrays, taken in alternation
# - new array should start with first element from first input arr

# ds: given arrays, new array

# algo:
# res = []
# i = 0; i < n; i++
# res << a[i], b[i]
# res

# Naive
# def interleave(a, b)
#   res = []
#   i = 0
#   while i < a.size
#     res << a[i]
#     res << b[i]
#     i += 1
#   end
#   res
# end

# One-liner with #with_object
# def interleave(a, b)
#   a.size.times.with_object([]) { |i, res| res.concat([a[i], b[i]]) }
# end

# One-liner with zip
def interleave(a, b)
  arr.zip(b).flatten
end

p interleave([1, 2, 3], %w[a b c]) #== [1, "a", 2, "b", 3, "c"]
