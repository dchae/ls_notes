# input: array, search value
# output: bool

# explicit reqs:
# - return true if search value is in array, else false
# - do not use Array#include? method

# implicit reqs:
# - should work for nil as an element or a search term

# questions:
# - is array sorted? if yes, use bin search
#   - assume not
# - can I use Set#===?
#   - probably not

# DS: array

# Algo:

# Naive:
# iterate through array
# if element == search term, return True
# return False

# Cheating?:

# convert array to set
# return set === search term

# def include?(arr, x)
#   arr.each { |e| return true if e == x }; false
# end

# require "set"
# def include?(arr, x)
#   Set.new(arr) === x
# end

# def include?(arr, x)
#   arr.count(x) > 0
# end

def include?(arr, x)
  !!arr.tally.fetch(x, false)
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
