# input: string
# output: bool

# - return false if any lowercase chars in string
# - else true

# ds: string, regex

# algo:
# no regex

# def uppercase?(s)
#   s == s.upcase
# end

# regex
def uppercase?(s)
  !(s =~ /[a-z]/)
end

p uppercase?("t") == false
p uppercase?("T") == true
p uppercase?("Four Score") == false
p uppercase?("FOUR SCORE") == true
p uppercase?("4SCORE!") == true
p uppercase?("") == true
