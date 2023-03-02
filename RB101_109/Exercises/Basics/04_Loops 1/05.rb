say_hello = true
i = 0
while say_hello
  puts "Hello!"
  i += 1
  say_hello = false if i >= 5
end

# OR
5.times { puts "Hello! (2)" }

# OR
say_hello = 0

while say_hello
  puts "Hello! (3)"
  say_hello > 3 ? say_hello = false : say_hello += 1
end

# OR
puts "Hello! (4)\n" * 5
