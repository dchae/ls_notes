names = %w[Sally Joe Lisa Henry]

loop do
  puts names.shift
  break if names.length == 0
end

# Further Exploration

names = %w[Sally Joe Lisa Henry]

loop do
  puts names.pop
  break if names.empty?
end
