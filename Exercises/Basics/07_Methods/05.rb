def car(make, model)
  puts "#{make} #{model}"
end

car("Toyota", "Corolla")

# FE

def car(make, model)
  return "#{make} #{model}"
end

puts car("Toyota", "Corolla")
