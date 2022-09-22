def palindrome?(s)
  return s == s.reverse
end

p palindrome?("madam") == true
p palindrome?("Madam") == false # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?("356653") == true

# FE

def arr_palindrome?(a)
  return a == a.reverse
end

p arr_palindrome?([1, 2, 3, 2, 1]) == true

# OR
def palindromic?(iterable)
  i, j = 0, iterable.length - 1
  while i <= j && iterable[i] == iterable[j]
    i += 1
    j -= 1
  end
  return i > j
end

p palindromic?("madam") == true
p palindromic?("Madam") == false # (case matters)
p palindromic?("madam i'm adam") == false # (all characters matter)
p palindromic?("356653") == true
p palindromic?([1, 2, 3, 2, 1]) == true
p palindromic?([1, 2, 3, 2, 1, 1]) == false
p palindromic?([nil]) == true
p palindromic?([]) == true
