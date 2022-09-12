count = 1

loop do
  break if count > 5
  puts "#{count} is #{count.even? ? "even" : "odd"}!"
  count += 1
end

# OR

1.upto(5) { |n| puts "#{n} is #{n.even? ? "even" : "odd"}!" }
