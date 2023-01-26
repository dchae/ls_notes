def swap(s)
  s.split.each { |word| word[0], word[-1] = word[-1], word[0] }.join(" ")
end

p swap("Oh what a wonderful day it is") == "hO thaw a londerfuw yad ti si"
p swap("Abcde") == "ebcdA"
p swap("a") == "a"

# FE: Wouldn't work, because reassignment, not mutation.
