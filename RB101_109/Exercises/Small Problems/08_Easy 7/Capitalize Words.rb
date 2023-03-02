# input: string
# output: new string

# reqs:
# - output string must capitalise
#   first letter of every word, and downcase all other chars
# - words are any sequence of non-blank chars
# - a word in quotes will not be capitalised (since first char '"' has no upcase)

# ds: string

# algo:
# split string into arr of words
# iterate through words
# map block return word.capitalize
# join words with " "

# def word_cap(s)
#   s.split.map(&:capitalize).join(" ")
# end

# FE
# FE one-liner without using String#capitalize
def word_cap(s)
  s.gsub(/(^|\s)(\S)(\S*)/) { $1 + $2.upcase + $3.downcase }
end

# one-liner without using String#capitalize or #upcase or #downcase
# def word_cap(s)
#   s.gsub(/(^|\s)(\S)(\S*)/) {$1 + ((97..122).cover?($2.ord) ? ($2.ord - 32).chr : $2) + $3.chars.map { |c| (65..90).cover?(c.ord) ? (c.ord + 32).chr : c }.join }
# end

p word_cap("four score and seven") == "Four Score And Seven"
p word_cap("the javaScript language") == "The Javascript Language"
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
