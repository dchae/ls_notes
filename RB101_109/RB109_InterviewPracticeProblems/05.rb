# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# input: string
# output: string (single char)

# - return the character that occurs least often in the input string
# - if there are multiple candidates, return the one that appears first
# - treat uppercase chars as their lowercase counterparts; i.e., return value should always be lowercase

# ds: string, hash

# algo:
# create counter hashmap for string
# init res
# iterate through counter hashmap
# update res if counter[res] < res
# return res

# def least_common_char(s)
#   counter =
#     s.each_char.with_object(Hash.new(0)) { |c, cnt| cnt[c.downcase] += 1 }
#   res = counter.first.first.downcase
#   counter.each { |char, count| res = char.downcase if count < counter[res] }
#   res
# end

def least_common_char(s)
  s.downcase.chars.tally.min_by { |k, v| v }.first
end

# Examples:

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == " "
p least_common_char("aaaaaAAAA") == "a"

# The tests above should print "true".
