def remove_duplicates(s)
  s.chars.select.with_index { |c, i| c != s[i + 1] }.join
end

tests = [%W[bbbbbb b], ["heellloooo i ammm saaaamm", "helo i am sam"]]
tests.each { |s, ans| p remove_duplicates(s) == ans }
