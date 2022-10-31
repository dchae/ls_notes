# def repeater(s)
#   s.chars.reduce("") { |r, c| r + c * 2 }
# end

# def repeater(s)
#   s.chars.zip(s.chars).flatten.join
# end

# def repeater(s)
#   s.gsub(/(.)/, '\1' * 2)
# end

def repeater(s)
  s.size < 1 ? "" : s[0] * 2 + repeater(s[1..])
end
p repeater("Hello") == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater("") == ""
