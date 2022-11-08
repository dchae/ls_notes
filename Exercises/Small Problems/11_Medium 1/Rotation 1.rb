# input: array
# output: array

# - return new array rotated by one element
# - first element should be moved to end of array
# - original array should not be modified

# ds: array

# algo:
# return arr[1..] + arr[0]

def rotate_array(arr)
  (arr[1..] || []) + arr[0, 1]
end

# FE
def rotate_string(s)
  s.empty? ? s : s[1..] + s[0]
end

def rotate_int(x)
  ((d = x.digits.reverse)[1..] + d[0, 1]).reduce(0) { |sum, d| sum * 10 + d }
end

p rotate_int(0) == 0
p rotate_int(1) == 1
p rotate_int(5) == 5
p rotate_int(12) == 21
p rotate_int(123) == 231

p rotate_string("") == ""
p rotate_string("a") == "a"
p rotate_string("abc") == "bca"

p rotate_array([]) == []
p rotate_array([1]) == [1]
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(%w[a b c]) == %w[b c a]
p rotate_array(["a"]) == ["a"]

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1] # => true
p x == [1, 2, 3, 4] # => true
