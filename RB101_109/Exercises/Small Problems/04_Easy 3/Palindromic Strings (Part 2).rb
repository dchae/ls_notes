# def real_palindrome?(s)
#   a = []
#   s.each_char { |c| a << c.downcase if c.match?(/[[:alnum:]]/) }
#   p a
#   return a == a.reverse
# end

# OR
def real_palindrome?(s)
  arr = s.gsub(/[^[:alnum:]]/, "").downcase
  return arr == arr.reverse
end
p real_palindrome?("madam") == true
p real_palindrome?("Madam") == true # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?("356653") == true
p real_palindrome?("356a653") == true
p real_palindrome?("123ab321") == false
