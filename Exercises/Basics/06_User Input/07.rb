# while true
#   puts ">> Please enter your username:"
#   usr = gets.chomp
#   puts ">> Please enter your password:"
#   break if gets.chomp == "SecreT" && usr == "admin"
#   puts "Authorisation failed"
# end
# puts "Welcome!"

# slightly more secure version for fun

require "digest/sha1"
require "io/console"
hashkeys = { admin: "34f23a0c0133b5cd833b054b7aec4964e6a582b3" }
while true
  puts ">> Please enter your username:"
  username = gets.chomp
  puts ">> Please enter your password:"
  hashed_password = Digest::SHA1.hexdigest(STDIN.noecho(&:gets).chomp)
  break if hashed_password == hashkeys[username.to_sym]
  puts "Authorisation failed!"
end
puts "Welcome!" # When "admin" and "SecreT" are inputted
