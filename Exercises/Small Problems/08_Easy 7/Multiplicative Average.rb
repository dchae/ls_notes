# input: array of integers
# output: int

# reqs:
# - multiply all elements of array and divide by array length,
#   print result rounded to 3 decimal places
# - array length > 0

# ds: array

# algo:
# reduce by *, divide by n, format to round

def show_multiplicative_average(arr)
  puts "The result is " + format("%.3f", arr.reduce(:*) / arr.size.to_f)
end

show_multiplicative_average([3, 5]) # => The result is 7.500
show_multiplicative_average([6]) # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
