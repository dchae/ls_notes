# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# input: int array
# output: int array

# ds: int, array, hash

# algo:
# arr.map { |n| arr.uniq.count { |x| x < n } }

# def smaller_numbers_than_current(arr)
#   arr.map { |n| arr.uniq.count { |x| x < n } }
# end

def bin_search(arr, target)
  l, r = 0, arr.size - 1
  while l < r
    middle = l + (r - l) / 2
    cur = arr[middle]
    if cur >= target
      r = middle
    else # cur < target
      l = middle + 1
    end
  end
  return l
end

# p bin_search([1, 3, 5, 7, 8, 9], 9)

def smaller_numbers_than_current(arr)
  sorted_uniques = arr.uniq.sort
  arr.map { |n| bin_search(sorted_uniques, n) }
end

# Examples:

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1, 4, 6, 8, 13, 2, 4, 5, 4]) ==
    [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".
