# input: string
# output: string

# - return a new string in which every consonant character is doubled.

# ds: strings

# algo:
# regex, gsub consonants with capture group doubled.

# def double_consonants(s)
#   s.gsub(/((?![aeiou])[a-z])/i, '\1' * 2)
# end

# one-liner
# def double_consonants(s)
#   s.chars.each.map { |c| c =~ /^[^aeiou_\d\W]/i ? c * 2 : c }.join
# end

# not mine
def double_consonants(str)
  str.gsub(/([^aeiouAEIOU\W\d])/, '\1\1')
end

p double_consonants("a BcdE1:;-_") == "a BBccddE1:;-_"
p double_consonants("String") == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants("") == ""
