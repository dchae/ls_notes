# input: two arrays of numbers
# output: new array of numbers

# reqs:
# - output array should contain product of each pair of numbers with the same index
# - both input arrays have same length

# ds: arrays

# algo:
# zip arrays and map product

# def multiply_list(a, b)
#   p a.zip(b).map { |x, y| x * y }
# end

def multiply_list(arr, b)
  p arr.zip(b).map { |x| x.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
