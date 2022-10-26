# input: string
# output: array of substrings

# - result array should be sorted by position of first element in input string
#   - within that sort, shortest to longest
# - can use leading substrings method from previous exercise

# ds: string, array

# algo:
# naive:
# init res
# iterate through string s
# for each index i
#   push to res all substrings from i to end of s
# return res

# def substrings(s)
#   res = []
#   s.size.times { |i| (s.size - i).times.each { |j| res << s[i, j + 1] } }
#   res
# end

# one-liner

# def substrings(s)
#   s
#     .size
#     .times
#     .with_object([]) { |i, a| (s.size - i).times.each { |j| a << s[i, j + 1] } }
# end

# modified one-liner

# def substrings(s)
#   s.size.times.map { |i, a| (0...s.size - i).map { |j| s[i, j + 1] } }.flatten
# end

# recursive
# base case: string len == 1
#   return array with string in it
# else:

# def substrings(s, iterating = true)
#   if s.size < 1
#     []
#   else
#     cur_substring = iterating ? substrings(s[1..]) : []
#     (substrings(s[0...-1], false) << s).concat(cur_substring)
#   end
# end

# shortened
# def substrings(s, iter = true)
#   s.size < 1 ? [] : (substrings(s[...-1], false) << s).concat(iter ? substrings(s[1..]) : [])
# end
p substrings("abcde") == %w[a ab abc abcd abcde b bc bcd bcde c cd cde d de e]
