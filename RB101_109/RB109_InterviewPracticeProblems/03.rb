# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# input: string
# output: string

# - return the input string with every 2nd character in every third word converted to uppercase.

# ds: string, array

# algo:
# split the input string into an array of words
# for every third word:
#   upcase every 2nd character
# return the new string

def to_weird_case(s)
  s = s.split
  (2...s.size).step(3) do |i|
    (1...s[i].size).step(2) { |j| s[i][j] = s[i][j].upcase }
  end
  s.join(" ")
end

# regex split solution with capitalise

# Examples:

p to_weird_case("Lorem Ipsum is simply dummy text of the printing") ==
    "Lorem Ipsum iS simply dummy tExT of the pRiNtInG"
p to_weird_case(
    "It is a long established fact that a reader will be distracted",
  ) == "It is a long established fAcT that a rEaDeR will be dIsTrAcTeD"
p to_weird_case("aaA bB c") == "aaA bB c"
p to_weird_case(
    "Miss Mary Poppins word is supercalifragilisticexpialidocious",
  ) == "Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS"

# The tests above should print "true".
