# input: string
# output: string

# - input string is a first name, a space, and a last name.
# - output string should be lastname, comma, firstname

# def swap_name(s)
#   s.split.reverse.join(", ")
# end

def swap_name(s)
  s.gsub(/(\S+) (\S+)/, '\2, \1')
end

# def swap_name(s)
#   s.scan(/\S+/).reverse.join(", ")
# end
p swap_name("Joe Roberts") == "Roberts, Joe"
