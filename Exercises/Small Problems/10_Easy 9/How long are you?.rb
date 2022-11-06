# input: string
# output: array of strings

# - return array containing strings
# - each string in array should be a word in input followed by a space and word length
# - words in input strings are separated by exactly one space
# - a word is any substring of non-space chars

# ds: string, array

# algo:
# convert input string into array of words
# map array
# - each word becomes "#{word} #{word.size}"

# def word_lengths(s)
#   s.split.map { |w| "#{w} #{w.size}" }
# end

# regex version for fun
def word_lengths(s)
  s.scan(/\S+/).map { |w| "#{w} #{w.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") ==
    ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
