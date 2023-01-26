# input: string
# output: hash

# return hash containing 3 entries:
# 1. lowercase: percentage of lowercase letters in string
# 2. uppercase: percentage of uppercase letters in string
# 3. neigher: percentage of chars in string that are neither upper or lowercase

# ds: hash

# algo:
# init res hash
# for char in string:
#   if char in a-z:
#     res[:lowercase] += 1
#   elsif char in A-Z:
#     res[:uppercase] += 1
#   else:
#     res[:neither] += 1
# return res hash

# def letter_percentages(s)
#   res = Hash[%i[lowercase uppercase neither].product([0])]
#   s.chars.each do |char|
#     if char =~ /[a-z]/
#       res[:lowercase] += 1
#     elsif char =~ /[A-Z]/
#       res[:uppercase] += 1
#     else
#       res[:neither] += 1
#     end
#   end
#   p res.each { |k, v| res[k] = v.to_f / s.size * 100 }
# end

# def letter_percentages(s)
#   p (res = s.chars.group_by { |c| c =~ /[a-z]/ ? :lowercase : c =~ /[A-Z]/ ? :uppercase : :neither }).each { |k, v| res[k] = v.size.to_f / s.size * 100 }
# end

# def letter_percentages(s)
#   s.chars.each_with_object(Hash[%i[lowercase uppercase neither].product([0])]) { |c, res| res[c =~ /[a-z]/ ? :lowercase : c =~ /[A-Z]/ ? :uppercase : :neither] += 1 }.transform_values { |v| v.to_f / s.size * 100}
# end

#FE

# def letter_percentages(s)
#   s.chars.each_with_object(Hash[%i[lowercase uppercase neither].product([0])]) { |c, res| res[c =~ /[a-z]/ ? :lowercase : c =~ /[A-Z]/ ? :uppercase : :neither] += 1 }.transform_values { |v| (v.to_f / s.size * 100).round(1)}
# end
p letter_percentages("abCdef 123") ==
    { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages("AbCd +Ef") ==
    { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages("123") ==
    { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages("abcdefGHI")
