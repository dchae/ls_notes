# input: string
# output: array of strings

# - result array should contain all palindromic substrings of input string
# - palindromes are case sensitive
# - single characters are not palindromes

# ds:
# naive:
# init res
# iterate through string s
# for each index i
#   init j = i + 1
#   while j < s.length
#     res << s[i..j] if s[i..j] == s[j..i]
# return res

# def palindromes(s)
#   res = []
#   i = 0
#   while i < s.length - 1
#     j = i + 1
#     while j < s.length
#       res << s[i..j] if s[i..j] == s[i..j].reverse
#       j += 1
#     end
#     i += 1
#   end
#   res
# end

# Efficient solution
# insert spacer char between all characters of s
# for each i in range (1...s.length - 1)
# s[i] is the pivot
# expand the window outwards
# for each iteration
#   if palindrome, append to res
#   else, break and move to next pivot
# return res

# def palindromes(s)
#   s = s.chars.join("|")
#   res = []
#   i = 1
#   while i < s.size - 1
#     left, right = i - 1, i + 1
#     while left >= 0 && right < s.size && s[left] == s[right]
#       res << [left, s[left..right].delete("|")] if s[left] != "|"
#       left -= 1
#       right += 1
#     end
#     i += 1
#   end
#   res.sort.map { |i, x| x }
# end

# def palindromes(s)
#   (s = s.chars.join("|")).chars.each_index.with_object([]) {|i, res| [i, s.length - i].min.times {|j| s[i-j-1] == s[i+j+1] ? (res << [i-j-1, s[i-j-1..i+j+1].delete("|")] if s[i-j-1]!= "|") : break }}.sort.map { |i, x| x }
# end
def palindromes(s)
  (s = s.chars.join("|"))
    .chars
    .each_index
    .with_object([]) do |i, res|
      (1..[i, s.length - i].min).each do |j|
        s[i - j] == s[i + j] ?
          (res << [i - j, s[i - j..i + j].delete("|")] if s[i - j] != "|") :
          break
      end
    end
    .sort
    .map { |i, x| x }
end
# recursive solution
# def palindromes(s, iter = true)
#   s.size < 2 ? [] : palindromes(s[...-1], false).concat(s == s.reverse ? [s] : []).concat(iter ? palindromes(s[1..]) : [])
# end

# require "benchmark"
# time =
#   Benchmark.measure do
#     10_000.times do
#       palindromes(
#         "hello-madam-did-madam-goodbyeadasdfhlahllhkjfhiouwuhiouhaskldkfjhhlaksdjfhiuw",
#       )
#     end
#   end
# puts "Time elapsed: #{time * 1000} milliseconds"

p palindromes("abcd") == []
p palindromes("madam") == %w[madam ada]
p palindromes("hello-madam-did-madam-goodbye") ==
    %w[
      ll
      -madam-
      -madam-did-madam-
      madam
      madam-did-madam
      ada
      adam-did-mada
      dam-did-mad
      am-did-ma
      m-did-m
      -did-
      did
      -madam-
      madam
      ada
      oo
    ]
p palindromes("knitting cassettes") == %w[nittin itti tt ss settes ette tt]
