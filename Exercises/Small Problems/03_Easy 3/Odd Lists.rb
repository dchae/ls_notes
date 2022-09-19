def oddities(arr)
  res = []
  arr.each_slice(2) { |x, y| res << x }
  res
end

# OR

def oddities(arr)
  arr.select.each_with_index { |_, i| !i.odd? }
end

# FE
def oddities(arr)
  arr.select.each_with_index { |v, i| i.odd? }
end

def oddities(arr)
  (0...arr.length).step(2).map { |i| arr[i] }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(%w[abc def]) == ["abc"]
p oddities([123]) == [123]
p oddities([]) == []
