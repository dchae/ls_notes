# input: three ints
# output: string

# - return letter grade associated with mean of three input scores

# algo:
# calc mean of input ints
# case statement

def get_grade(*scores)
  mean = scores.reduce(&:+) / scores.size.to_f
  if mean >= 90
    "A"
  elsif mean >= 80
    "B"
  elsif mean >= 70
    "C"
  elsif mean >= 60
    "D"
  else
    "F"
  end
end
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
