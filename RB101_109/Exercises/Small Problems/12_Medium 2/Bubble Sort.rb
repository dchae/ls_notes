# input: array
# output: same array, sorted

# - return the input array after sorting it with bubble sort

# ds: array

# algo:
# sorted = false
# while not sorted
#   i = 0
#   sorted = true
#   while i < arr.length - 1
#     a, b = arr[i], arr[i + 1]
#     if b < a:
#       arr[i], arr[i + 1] = b, a
#       sorted = false

# def bubble_sort!(arr)
#   sorted = false
#   while !sorted
#     sorted = true
#     (arr.size - 1).times do |i|
#       a, b = arr[i], arr[i + 1]
#       if b < a
#         arr[i], arr[i + 1] = b, a
#         sorted = false
#       end
#     end
#   end
# end

# def bubble_sort!(arr)
#   unsorted = arr.size - 1
#   while unsorted > 0
#     last_sorted = 0
#     unsorted.times do |i|
#       a, b = arr[i], arr[i + 1]
#       if b < a
#         arr[i], arr[i + 1] = b, a
#         last_sorted = i
#       end
#     end
#     unsorted = last_sorted
#   end
#   arr
# end

# def bubble_sort!(arr)
#   (n = arr.size - 1).times { |i| (n - i).times { |j| arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1] } }
# end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w[Sue Pete Alice Tyler Rachel Kim Bonnie]
bubble_sort!(array)
p array == %w[Alice Bonnie Kim Pete Rachel Sue Tyler]

p 100.times.all? do |_|
  arr = (0..100).to_a.shuffle
  bubble_sort!(arr) == (0..100).to_a
end
