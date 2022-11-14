# def word_to_digit(s)
#   %w[zero one two three four five six seven eight nine]
#     .each_with_index
#     .with_object(s) { |(w, i), s| s.gsub!(/\b#{w}\b/, (i).to_s) }
# end

# FE
def word_to_digit(s)
  key = %w[zero one two three four five six seven eight nine]
  s.gsub!(/(#{key.join("|")})/i, key.index($1).to_s)
  # p $1
  # p key.index($1)
end

p word_to_digit("Please call me at five five five one two three four. Thanks.") #== "Please call me at 5 5 5 1 2 3 4. Thanks."
