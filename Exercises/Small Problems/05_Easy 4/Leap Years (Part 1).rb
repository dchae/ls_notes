# def leap_year?(year)
#   return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
# end

# FE
# Will fail for years divisible by 400

def leap_year?(year)
  if year % 4 == 0
    return year % 400 == 0 if year % 100 == 0
    return true
  end
  return false
end

p p leap_year?(2016) == true
p p leap_year?(2015) == false
p p leap_year?(2100) == false
p p leap_year?(2400) == true
p p leap_year?(240_000) == true
p p leap_year?(240_001) == false
p p leap_year?(2000) == true
p p leap_year?(1900) == false
p p leap_year?(1752) == true
p p leap_year?(1700) == false
p p leap_year?(1) == false
p p leap_year?(100) == false
p p leap_year?(400) == true
