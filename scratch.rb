def bubble_sort1!(arr)
  sorted = 0
  loop do
    (0...arr.size - 1 - sorted).each do |idx|
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
    end
    p sorted += 1
    break if sorted == arr.size
  end
end

def bubble_sort2!(arr)
  n = arr.size - 1
  while n > 1
    unsorted = 0
    n.times do |i|
      p "#{arr[i]}, #{arr[i + 1]}"
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        unsorted = i
        p arr
        puts
      end
    end
    n = unsorted
  end
end

array2 = [6, 2, 7, 1, 4]
bubble_sort1!(array2)
p array2 == [1, 2, 4, 6, 7]

array2 = [6, 2, 7, 1, 4]
bubble_sort2!(array2)
p array2 == [1, 2, 4, 6, 7]

# array3 = Array.new(rand(9..15)) { rand(-40..40) }
# bubble_sort2!(array3)
# p array3 == array3.sort
