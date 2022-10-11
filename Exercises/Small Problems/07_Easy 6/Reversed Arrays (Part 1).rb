# input: array
# output: same array object, mutated so the elements are reversed in place

# explicit requirements:
# - cannot use Array#reverse or Array#reverse!

# implicit requirements:

# questions:

# DS: array

# Algo:

# Naive:

# two-pointer iteration from endpoints to center

# initialise head, tail indexes

# while head < tail
#   swap head and tail elements
#   increment head
#   decrement tail
# return arr

# def reverse!(arr)
#   head, tail = 0, arr.length - 1
#   while head < tail
#     arr[head], arr[tail] = arr[tail], arr[head]
#     head += 1
#     tail -= 1
#   end
#   arr
# end

# not true one-liner
# def reverse!(a)
#   (a.size / 2).times { |i| a[i], a[-i - 1] = a[-i - 1], a[i] }; a
# end

# true one-liner
# def reverse!(a)
#   (i = 0, a.size - 1).cycle { i != i.sort ? (return a) : (i[0], i[1], a[i[0]], a[i[1]] = i[0] + 1, i[1] - 1, a[i[1]], a[i[0]]) }
# end

# one-liner using a dup of the array
# def reverse!(arr)
#   (cp = arr[0..]).each_index.each_with_object(arr) { |i, arr| arr[-i - 1] = cp[i] }
# end

def reverse!(a)
  a[0..].each_with_index.each_with_object(a) { |(v, i), a| a[-i - 1] = v }
end

# Short but slow
# def reverse!(a)
#   a.each_with_index { |v, i| a.unshift(a.delete_at(i)) }
# end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 2]
result = reverse!(list)
p result == [2, 4, 3, 2, 1] # true
p list == [2, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w[a b e d c]
p reverse!(list) == %w[c d e b a] # true
p list == %w[c d e b a] # true

list = ["abc"]
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
