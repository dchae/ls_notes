# def crunch(s)
#   s.chars.each_with_index.map { |x, i| s[i] != s[i + 1] ? s[i] : "" }.join("")
# end

# with regex

def crunch(s)
  s.gsub(/(\w)\1+/, '\1')
end
p crunch("ddaaiillyy ddoouubbllee") == "daily double"
p crunch("addaaiillyy ddoouubbllee") == "adaily double"
p crunch("4444abcabccba") == "4abcabcba"
p crunch("ggggggggggggggg") == "g"
p crunch("a") == "a"
p crunch("") == ""
