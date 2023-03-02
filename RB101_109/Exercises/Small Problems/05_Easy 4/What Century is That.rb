def suffix(y)
  i = (y % 10 < 4) && (y / 10) % 10 != 1 ? y % 10 : 0
  return %w[th st nd rd][i]
end

def century(year)
  n = 1 + (year - 1) / 100
  return "#{n}#{suffix(n)}"
end

p century(2000) == "20th"
p century(2001) == "21st"
p century(1965) == "20th"
p century(256) == "3rd"
p century(5) == "1st"
p century(10_103) == "102nd"
p century(1052) == "11th"
p century(1127) == "12th"
p century(11_201) == "113th"
