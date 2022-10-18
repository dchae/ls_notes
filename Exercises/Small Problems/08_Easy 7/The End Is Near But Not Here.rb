# input: string
# output: substring

# reqs:
# - return penultimate word in input string
# - input string will always contain at least two words

# ds: array of strings

# algo:
# array indexing
# split string into arr of words
# return arr[-2]
# def penultimate(s)
#   s.split[-2]
# end

# regex
# def penultimate(s)
#   s.match(/(\S+)\s+\S+$/)
#   $1
# end

def penultimate(s)
  s.scan(/(\S+)\s+\S+$/).dig(0, 0)
end

# def penultimate(s)
#   s[/(?<res>\S+)\s+\S+$/, :res]
# end

# def penultimate(s)
#   s[/\S+(?=\s+\S+$)/, 0]
# end

p penultimate("last word") == "last"
p penultimate("Launch School is great!") == "is"

# FE
# reqs:
# - retrieve middle word of a sentence

# edge cases:
# no word strings -> return empty string
# one-word strings -> return word
# string with even number of words -> return first string in 2nd half
# words are sequences of non-space chars

def middle_word(sentence)
  (arr = sentence.split)[arr.size / 2] || ""
end

p middle_word("") #=> ""
p middle_word("h") #=> "h"
p middle_word("hello") #=> "hello"
p middle_word("hello world") #=> "world"
p middle_word("Hello, World!") #=> "World!"
p middle_word("Hello, I work!") #=> "I"
p middle_word("Should return THIS word") #=> "THIS"
p middle_word("The quick brown fox jumped over the lazy dog.")
