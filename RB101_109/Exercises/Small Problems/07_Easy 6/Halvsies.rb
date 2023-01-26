# input: array
# output: array containing two nested arrays

# explicit reqs:
# - two nested arrays should contain the first and second halves of the input array, in that order
# - if the original array contains an odd number of elements, the middle element should be placed in the first half array
#   - i.e., the length of the first half array = (length of input array + 1 ) / 2

# implicit reqs:
# - if one or more halves have zero elements, return empty array for that half

# DS: arrays

# Algo:

# naive:
# init two empty arrays: b, c
# init counter i
# while i < (length of input array + 1 ) / 2
#   b.push(input array[i])
# while i < length of input array
#   c.push(input array[i])
# return [b, c]

# def halvsies(a)
#   b, c, i = [], [], 0
#   while i < a.size
#     [b, c, b][i <=> (a.size - 1) / 2].push(a[i])
#     i += 1
#   end
#   [b, c]
# end

# def halvsies(a)
#   a.each_index.each_with_object([(b = []), (c = []), b]) { |i, bcb| bcb[i <=> (a.size - 1) / 2].push(a[i])}[0,2]
# end

# slice:
# return [first half slice of arr, second half slice of arr]

# def halvsies(a)
#   [a[0, (a.size - 1) / 2], a[(a.size + 1) / 2..]]
# end

# with partition:
def halvsies(a)
  arr.partition.with_index { |_, i| i < (arr.size + 1) / 2 }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
