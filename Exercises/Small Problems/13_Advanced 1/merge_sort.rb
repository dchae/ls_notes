# input: unsorted array of numbers or strings
# output: sorted array

# explicit requirements:
# - use recursion (merge sort algo)

# pseudo-code

# base case:
# if array is atomic, return array

# else:
# call merge sort on first half of array
# call merge sort on second half of array

# initialise empty res array

# compare first elements of both arrays
# add lesser element to res array
# repeat until both arrays are empty

# return resulting array (sorted)

def merge_sort(arr)
  return arr if arr.size <= 1

  arr1 = merge_sort(arr[0, arr.size / 2])
  arr2 = merge_sort(arr[arr.size / 2..])

  res = []
  while !arr1.empty? && !arr2.empty?
    arr1.first < arr2.first ? res << arr1.shift : res << arr2.shift
  end
  res.concat(arr1, arr2)
end

# p merge_sort([]) == []
# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w[Sue Pete Alice Tyler Rachel Kim Bonnie]) ==
#     %w[Alice Bonnie Kim Pete Rachel Sue Tyler]
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
#     [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
