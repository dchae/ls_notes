# input: array, hash
# output: string

# - input array will contain 2 or more elements representing a name
# - input hash will contain :title and :occupation keys and corresponding values

# - return a greeting that uses the full name and mentions the title and occupation.

# ds: array, hash, string interpolation

# algo:
# - just use string interpolation lol

# def greetings(name, info)
#   "Hello, #{name.join(" ")}! Nice to have a #{info[:title]} #{info[:occupation]} around."
# end

# FE

def greetings(name, info)
  n, t, o = name.join(" "), info[:title], info[:occupation]
  "Hello, #{n}! Nice to have a #{t} #{o} around."
end

if $PROGRAM_NAME == __FILE__
  p greetings(%w[John Q Doe], { title: "Master", occupation: "Plumber" })
end
