def reverse_sentence(s)
  return s.split.reverse * " "
end

p reverse_sentence("Hello World") == "World Hello"
p reverse_sentence("Reverse these words") == "words these Reverse"
p reverse_sentence("") == ""
p reverse_sentence("    ") == "" # Any number of spaces results in ''
