# input: two arrays of nums
# output: new array

# reqs:
# - result array should contain product of every possible pair of numbers between two arrays
# - result array should be sorted by increasing value
# - both arrays are length > 0

# ds: array

# algo:
# Naive:
# init res array
# iterate through array1
# for each el of array1
#   iterate through array2
#   res << el1 * el2
# return res.sort

# def multiply_all_pairs(a, b)
#   a.each.with_object([]) { |x, res| b.each { |y| res << x * y } }.sort
# end

# Array#product:
def multiply_all_pairs(a, b)
  p arr.product(b).map { |c| c.reduce(:*) }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
