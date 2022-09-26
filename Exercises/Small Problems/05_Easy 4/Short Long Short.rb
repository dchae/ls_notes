def short_long_short(str1, str2)
  short, long = [str1, str2].sort_by { |x| x.length }
  return short + long + short
end

p short_long_short("abc", "defgh") == "abcdefghabc"
p short_long_short("abcde", "fgh") == "fghabcdefgh"
p short_long_short("", "xyz") == "xyz"
