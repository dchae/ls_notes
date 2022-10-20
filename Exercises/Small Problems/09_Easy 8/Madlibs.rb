# def main()
#   words = {}
#   %w[noun verb adjective adverb].each do |word|
#     print "Enter a#{"n" if word[0] =~ /[aeiou]/i} #{word}: "
#     words[word.to_sym] = gets.chomp
#   end
#   puts "\nPlease #{words[:verb]} the #{words[:adjective]} #{words[:noun]} #{words[:adverb]}!"
# end

# One-liner for fun:
# puts %w[noun verb adjective adverb].each_with_object("\nPlease verb the adjective noun adverb!") { |word, res| print "Enter a#{"n" if word[0] =~ /[aeiou]/i} #{word}: "; res.gsub!(/\b#{word}/, gets.chomp) }

# puts %w[noun verb adjective adverb]
#        .each_with_object("\nPlease 1 the 2 0 3!")
#        .with_index { |(word, res), i|
#          print "Enter a#{"n" if word[0] =~ /[aeiou]/i} #{word}: "
#          res.gsub!(i.to_s, gets.chomp)
#        }
