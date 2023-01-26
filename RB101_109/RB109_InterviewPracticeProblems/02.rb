# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# input: int array
# output: int or nil

# - return nil if array size < 5
# - else, find slice of length 5 with minimum sum and return that sum

# ds: array

# algo:
# (naive)

# return nil if array size < 5

# init min_slice_sum = inf
# iterate through the array with index i; while i + 4 is still within the array
#   candidate = sum of arr[i..i + 4]
#   min_slice_sum = candidate if candidate < min_slice_sum
# return min_slice_sum

# def minimum_sum(arr)
#   return nil if arr.size < 5

#   min_slice_sum = 1 / 0.0
#   i = 0
#   while i + 4 < arr.size
#     min_slice_sum = [min_slice_sum, arr[i..i + 4].sum].min
#     i += 1
#   end
#   min_slice_sum
# end

def minimum_sum(arr)
  arr.each_cons(5).map { |sa| sa.sum }.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".
