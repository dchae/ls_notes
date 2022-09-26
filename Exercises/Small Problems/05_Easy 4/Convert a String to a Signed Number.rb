# def string_to_signed_integer(ns)
#   ns
#     .chars
#     .reduce(0) { |sum, d| (48..57) === d.ord ? sum * 10 + d.ord - 48 : sum } *
#     (ns[0] == "-" ? -1 : 1)
# end

# def string_to_signed_integer(ns)
#   (ns.slice!(/\D/) == "-" ? -1 : 1) *
#     ns.chars.reduce(0) { |sum, d| sum * 10 + d.ord - 48 }
# end

# FE

def string_to_integer(ns)
  ns.chars.reduce(0) { |sum, d| sum * 10 + d.ord - 48 }
end

def string_to_signed_integer(string)
  sign = 1
  case string[0]
  when "-"
    sign *= -1
    string = string[1..-1]
  when "+"
    string = string[1..-1]
  end
  string_to_integer(string) * sign
end

p string_to_signed_integer("4321") # == 4321
p string_to_signed_integer("-570") # == -570
p string_to_signed_integer("+100") # == 100
