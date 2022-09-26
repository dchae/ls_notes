D_TO_I = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
}

# def string_to_integer(numstring)
#   numstring.chars.reduce(0) { |sum, d| sum * 10 + D_TO_I[d] }
# end

# OR
def string_to_integer(ns)
  ns.chars.reduce(0) { |sum, d| sum * 10 + d.ord - 48 }
end

p string_to_integer("4321") == 4321
p string_to_integer("570") == 570

# FE
def hexadecimal_to_integer(ns)
  ns
    .chars
    .reduce(0) do |sum, d|
      sum * 16 + d.upcase.ord - ("0123456789".include?(d) ? 48 : 55)
    end
end

p hexadecimal_to_integer("4D9f") # == 19_871
