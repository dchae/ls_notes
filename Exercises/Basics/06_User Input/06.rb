while true
  puts "Please enter your password:"
  break if gets.chomp == "SecreT"
  puts "Invalid password!"
end
puts "Welcome!"

# slightly more secure version for fun

require "digest/sha1"
require "io/console"
hashkey = "34f23a0c0133b5cd833b054b7aec4964e6a582b3"
while true
  puts "Please enter your password:"
  break if Digest::SHA1.hexdigest(STDIN.noecho(&:gets).chomp) == hashkey
  puts "Invalid password!"
end
puts "Welcome!" # When 'SecreT' is inputted
