# input: string
# output: hash

# reqs:
# - output hash should contain 3 k-v pairs
#   - lowercase: representing lowercase letter count
#   - uppercase: representing uppercase letter count
#   - neither: else count
# - output hash should contain 3 entries even if any of
#   of their values is 0
#   - i.e., full hash should be initialised

# ds: string, hash

# algo:
# Naive:
# init res hash with keys, value = 0
# iterate through input str
# if char is lower, increment res[:lowercase]
# elsif char is upper, increment res[:uppercase]
# else, increment res[:neither]
# return res

# def letter_case_count(s)
#   res = { lowercase: 0, uppercase: 0, neither: 0 }
#   s.chars.each do |c|
#     if ("a".."z").cover?(c)
#       res[:lowercase] += 1
#     elsif ("A".."Z").cover?(c)
#       res[:uppercase] += 1
#     else
#       res[:neither] += 1
#     end
#   end
#   res
# end

# regex:
def letter_case_count(s)
  {
    lowercase: s.count("a-z"),
    uppercase: s.count("A-Z"),
    neither: s.count("^a-zA-Z"),
  }
end

# weird one-liner with group_by; this one doesn't work for 0 count cases
# def letter_case_count(s)
#   (
#     res =
#       s.chars.group_by do |c|
#         if c.match?(/[a-z]/)
#           :lowercase
#         else
#           (c.match?(/[A-Z]/) ? :uppercase : :neither)
#         end
#       end
#   ).each { |k, v| res[k] = v.size }
# end

p letter_case_count("abCdef 123") #== { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count("AbCd +Ef") == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count("123") == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count("") == { lowercase: 0, uppercase: 0, neither: 0 }
