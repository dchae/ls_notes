# input: array of strings
# output: arrays of strings

# - print groups of words that are anagrams of each other

# ds: array, strings

# algo:
# naive:
# init seen hash
# for word in input array
#   seen[word.tally] << word
# for key in seen
#   print value

# def print_anagrams(arr)
#   seen = Hash.new { |h, k| h[k] = [] }
#   arr.each { |word| seen[word.chars.tally] << word }
#   seen.values.each { |words| p words }
# end

# def print_anagrams(arr)
#   arr.each_with_object(seen = Hash.new { |h, k| h[k] = [] }) { |word| seen[word.chars.tally] << word }.each_value { |words| p words }
# end

def print_anagrams(arr)
  arr.group_by { |word| word.chars.tally }.each_value { |words| p words }
end

words = %w[
  demo
  none
  tied
  evil
  dome
  mode
  live
  fowl
  veil
  wolf
  diet
  vile
  edit
  tide
  flow
  neon
]

print_anagrams(words)
