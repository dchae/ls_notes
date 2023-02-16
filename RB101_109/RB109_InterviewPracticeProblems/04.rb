# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# input: integer array
# output: integer array (two-element)

# - return the two elements of the input that are the closest together in value

# ds: array

# algo:
# sort array
# init two-element array best [-inf, inf]
# for each index i in (0...arr.size-1) (can use each_cons)
#   update best compared to arr[i, 2]
# return best

# def closest_numbers(arr)
#   (arr = arr.sort)
#     .each_cons(2)
#     .with_object([arr.first, arr.last]) do |pair, res|
#       res[0], res[1] = pair[0], pair[1] if pair[1] - pair[0] < res[1] - res[0]
#     end
# end

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".
