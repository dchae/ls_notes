# input: two arrays
# output: one array

# explicit reqs:
# - output array should contain all the values from the argument arrays
# - there should be no duplicate elements in the output array

# implicit reqs:
# -

# questions:
# - does ordering matter?

# DS: array

# Algo

# ruby array union
# array1 | array2

# def merge(a, b)
#   a | b
# end

# FE
# def merge(a, b)
#   a.concat(b).uniq
# end

require "set"
def merge(a, b)
  Set.new(a + b).to_a
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
