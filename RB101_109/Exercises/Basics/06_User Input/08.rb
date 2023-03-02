def is_valid?(ns)
  return ns.to_i.to_s == ns
end

def get_valid_num(query, nozero = false)
  while true
    puts "Please enter the #{query}:"
    x = gets.chomp
    break if is_valid?(x) and (!nozero || (x.to_i != 0))
    puts "Invalid input. Only #{"non-zero " if nozero}integers are allowed."
  end
  return x.to_i
end

n = get_valid_num("numerator")
d = get_valid_num("denominator", true)
puts "#{n} / #{d} is #{n / d}"
