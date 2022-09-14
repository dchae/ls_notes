# The third if-statement is being evaluated after Confucius's line
# causing the method to return nil
def get_quote(person)
  case person
  when "Yoda"
    "Do. Or do not. There is no try."
  when "Confucius"
    "I hear and I forget. I see and I remember. I do and I understand."
  when "Einstein"
    "Do not worry about your difficulties in Mathematics. I can assure you mine are still greater."
  else
    "Person not found"
  end
end

puts "Confucius says:"
puts '"' + get_quote("Confucius") + '"'
