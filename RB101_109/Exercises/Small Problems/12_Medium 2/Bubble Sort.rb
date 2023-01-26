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
#   n = arr.size
#   while n > 1
#     unsorted = 0
#     (arr.size - 1).times do |i|
#       a, b = arr[i], arr[i + 1]
#       if b < a
#         arr[i], arr[i + 1] = b, a
#         unsorted = i
#       end
#     end
#     n = unsorted
#   end
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
