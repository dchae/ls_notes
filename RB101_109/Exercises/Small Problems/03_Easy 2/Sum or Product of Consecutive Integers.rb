puts ">> Please enter an integer greater than 0:"
n = gets.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
op = gets.chomp

opstring = { s: "sum", p: "product" }
res =
  case op
  when "s"
    (1..n).sum
  when "p"
    (1..n).reduce(:*)
  end

puts "The #{opstring[op.to_sym]} of the integers between 1 and #{n} is #{res}"
