# input: non-empty string
# output: string

# - return middle char or chars of input string
# - if input string length is odd return one char
# - else return two chars

def center_of(s)
  s[(k = s.size) / 2 - 1 + k % 2..k / 2] || ""
end

p center_of("") == ""
p center_of("I love ruby") == "e"
p center_of("Launch School") == " "
p center_of("Launch") == "un"
p center_of("Launchschool") == "hs"
p center_of("x") == "x"
