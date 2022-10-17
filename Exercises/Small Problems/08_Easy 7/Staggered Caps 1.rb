# input: string
# output: string

# reqs:
# - starting with the first char, all chars should alternate between upper and lowercase.

# algo:
# iterate through string with map
# if index is even, upcase
# else downcase
# return new string

# one-liner
# def staggered_case(s)
#   s.chars.map.with_index { |c, i| i.even? ? c.upcase : c.downcase }.join
# end

# FE one-liner
def staggered_case(s, offset = 0)
  s.chars.map.with_index { |c, i| i % 2 == offset ? c.upcase : c.downcase }.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('I Love Launch School!', 1) == 'i lOvE LaUnCh sChOoL!'
