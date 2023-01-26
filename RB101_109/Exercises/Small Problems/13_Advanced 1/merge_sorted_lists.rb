def merge(arr1, arr2)
  arr3 = []
  i = 0
  j = 0
  while i < arr1.length && j < arr2.length
    if arr1[i] < arr2[j]
      arr3 << arr1[i]
      i += 1
    else
      arr3 << arr2[j]
      j += 1
    end
  end
  arr3 += arr1[i..] if i < arr1.length
  arr3 += arr2[j..] if j < arr2.length
  return arr3
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge([1], [2, 6, 8]) == [1, 2, 6, 8]
p merge([6], [2, 6, 8]) == [2, 6, 6, 8]
p merge([], []) == []
