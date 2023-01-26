for i in 1..100
  puts i if i % 2 != 0
end

# OR

puts 1.step(100, 2).to_a
