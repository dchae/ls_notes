# input: string
# output: bool

# - return true if the input string can be cleanly divided into equal substrings, else return false
# - substring cannot be entire input string
# - input string will consist of only lowercase English letters

# ds: string

# algo:

# - substrings are only valid if they start with s[0] and end with s[-1]

# for each substring of input s that satisfies conditions:
#   check if s == some multiple of substring

# sliding window
# init i = 0
# while i < s.size
#   if s[i] == s[0]
#     j = i
#     while j < s.size
#       if s[j] == s[-1]
#         return true if s == some multiple of s[i..j]
#       end
#       j += 1
#     end
#   end
#   s += 1
# end

# def repeated_substring_pattern(s)
#   j = 0
#   while j < s.size / 2
#     if s[j] == s[-1] && s.size % (j + 1) == 0
#       x = s.size / (j + 1)
#       return true if s == s[0..j] * x
#     end
#     j += 1
#   end
#   false
# end

# def repeated_substring_pattern(s)
#   (s.size / 2).times.any? do |j|
#     s[j] == s[-1] && s.size % (m = j + 1) && s == s[0..j] * (s.size / m)
#   end
# end

# tests = [
#   ["abab", true],
#   ["aba", false],
#   ["aabaaba", false],
#   ["abaababaab", true],
#   ["abcabcabcabc", true],
# ]
# tests.each { |s, ans| p repeated_substring_pattern(s) == ans ? "pass" : "fail" }

# p2

# input: array of lowercase letter strings
# output: array of strings (characters)

# - return an array of all characters that occur in all strings within the input array (including duplicates)
# - if a character occurs 3 times in all strings in the input array, that character must be included 3 times in the result

# ds: strings, arrays, hashmaps

# algo:
# convert the input array into an array of counter hashmaps
# pop the first hashmap and init as variable base
# compare the base against the rest of the hashmaps
# for counter in hashmaps
#   for each char, count pair in base:
#     base[char] = min(count, counter[char])
# res = []
# for key in base, res << key base[key] times
# return res

def common_chars(arr)
  return [] if arr.empty?

  counters =
    arr.map do |str|
      str.chars.each_with_object(Hash.new(0)) { |c, counter| counter[c] += 1 }
    end

  base = counters.shift
  counters.each do |counter|
    base.each { |char, count| base[char] = [count, counter[char]].min }
  end

  base.each_with_object([]) do |(char, count), res|
    count.times { |_| res << char }
  end
end

tests = [
  [[], []],
  [["bella"], %W[b e l l a]],
  [%W[bella label roller], %W[e l l]],
  [%W[cool lock cook], %W[c o]],
  [%W[hello goodbye booya random], %W[o]],
  [%W[aabbaaa, ccdddddd, eeffee, ggrrrrr, yyyzzz], []],
]

tests.each { |arr, ans| p common_chars(arr) == ans }
p tests
