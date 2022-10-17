# input: string
# output: new string

# reqs:
# - return new string in which every uppercase letter
#   is replaced by its lowercase version, and vice versa
# - non-letter characters should be unchanged
# - do not use String#swapcase method

# no regex
def swapcase(s)
  s.chars.map { |c| ('a'..'z').cover?(c) ? c.upcase : c.downcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
