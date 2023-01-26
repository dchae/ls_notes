# input: array of numbers
# output: number

# reqs:
# - should return sum of sums of each leading subsequence
#   - return sum of
#     - for i in arr:
#       - sum 0th element to ith element
# - array length > 0

# questions:
# - ints only?

# ds: arr

# algo:
# naive:
# res = 0
# current sum = 0
# iterate through array
# add element at index to current sum
# add current sum to res
# return res

# def sum_of_sums(a)
#   res, cur_sum = 0, 0
#   i = 0
#   while i < a.length
#     cur_sum += a[i]
#     res += cur_sum
#     i += 1
#   end
#   return res
# end

# recursive:
# base case: array len == 1
#   return single element
# return sum(arr) + recursive call(arr[0...-1])

def sum_of_sums(a)
  a.empty? ? 0 : a.sum + sum_of_sums(a[0...-1])
end

# method one-liner:
def sum_of_sums(a)
  a.each_index.sum { |i| a[0..i].sum }
end

def sum_of_sums(a)
  (0...a.size).sum { |i| a[i] * (a.size - i) }
end

p sum_of_sums([])
p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
