puts "What is your name?"
name = gets.chomp

puts(
  if name.end_with?("!")
    "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"
  else
    "Hello #{name}."
  end
)
