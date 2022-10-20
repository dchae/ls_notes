# input: string
# output: array of substrings

# - return list of all substrings that start at index 0
# - resulting array should be sorted by length

# Qs:
# - what should we return for empty string input?
#   - empty array

# DS: string, array

# Algo:
# Naive:
# init res array
# i = 0
# while i < input length
#   res << input string[0..i]
#   i += 1
# end
# return res

# def leading_substrings(s)
#   res = []
#   i = 0
#   while i < s.length
#     res << s[0..i]
#     i += 1
#   end
#   return res
# end

# recursive one-liner
# base case: string len == 1
#   return array with string in it
# else:
#   return recursive call(s[0...-1]) + s

def leading_substrings(s)
  s.size < 1 ? [] : leading_substrings(s[0...-1]) << s
end

# one-liner with
# def leading_substrings(s)
#   s.size.times.with_object([]) { |i, a| a << s[0..i] }
# end

# def leading_substrings(s)
#   s.size.times.map { |i| s[0..i] }
# end

p leading_substrings("") == []
p leading_substrings("abc") == %w[a ab abc]
p leading_substrings("a") == ["a"]
p leading_substrings("xyzzy") == %w[x xy xyz xyzz xyzzy]
