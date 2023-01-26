# input: array
# output: new array

# explicit reqs:
# - should return new array with the elements of the original array in reverse order
# - do not modify original array
# - do not use Array#reverse or Array#reverse!

# implicit reqs:
# - n >= 0, where n = array length

# DS: Array

# Algo:

# init empty res array
# iterate through input array
# unshift each element to res array
# return populated res array

# def reverse(arr)
#   res = []
#   arr.each { |v| res.unshift(v) }
#   res
# end

# def reverse(arr)
#   arr.each_with_object([]) { |v, res| res.unshift(v) }
# end

# def reverse(a)
#   a.each_index.each_with_object(a[0..]) { |i, b| b[-i - 1] = a[i] }
# end

def reverse(arr)
  ((b = arr[0..]).size / 2).times { |i| b[i], b[-i - 1] = arr[-i - 1], arr[i] }
  b
end

require "benchmark"

test_list = (100..100_000).to_a
time = Benchmark.realtime { (1..100).each { reverse(test_list) } }
p "#{time * 1000} ms"

# p reverse([1, 2, 3, 4]) == [4, 3, 2, 1] # => true
# p reverse(%w[a b e d c]) == %w[c d e b a] # => true
# p reverse(["abc"]) == ["abc"] # => true
# p reverse([]) == [] # => true

# list = [1, 3, 2] # => [1, 3, 2]
# new_list = reverse(list) # => [2, 3, 1]
# p list.object_id != new_list.object_id # => true
# p list == [1, 3, 2] # => true
# p new_list == [2, 3, 1] # => true
