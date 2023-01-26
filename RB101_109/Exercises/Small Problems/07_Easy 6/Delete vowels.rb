# input: array of strings (upper and lowercase)
# output: array of strings

# Explicit reqs:
# - Input strings will be both upper and lower case
# - return array of strings with vowels removed from the original string elements
# Implicit reqs:
# - remove both upper and lowercase vowels

# questions:
# - return new array or modify input array?
#   - assume return new
# - Can input array be empty?
#   - assume yes

# DS: array of strings

# Algo:
# initialise empty result array
# iterate through array
#   for each string element:
#     create new string
#     for each string character
#       concat to new string if not vowel
#     append new string to result array
# return populated result array

def remove_vowels(arr)
  res = []
  arr.each do |s|
    new_s = ""
    s.chars.each { |c| new_s << c if !"aeiouAEIOU".include?(c) }
    res << new_s
  end
  return res
end

def remove_vowels(arr)
  arr.map { |s| s.gsub(/[aeiou]/i, "") }
end

p remove_vowels(%w[abcdefghijklmnopqrstuvwxyz]) #== %w[bcdfghjklmnpqrstvwxyz]
p remove_vowels(%w[green YELLOW black white]) #== %w[grn YLLW blck wht]
p remove_vowels(%w[ABC AEIOU XYZ]) #== ["BC", "", "XYZ"]
p remove_vowels([]) #== []
