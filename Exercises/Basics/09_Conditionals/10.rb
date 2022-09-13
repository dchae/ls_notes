stoplight = %w[green yellow red].sample

case stoplight
when 'green'; puts 'Go!'
when 'yellow'; puts 'Slow down!'
else puts 'Stop!'
end

# OR

puts "Go!" if stoplight == "green"
puts "Slow down!" if stoplight == "yellow"
puts "Stop!" if stoplight == "red"

# OR 

action = { green: "Go!", yellow: "Slow down!", red: "Stop!" }
puts action[stoplight.to_sym]

# SOLUTION

case stoplight
when 'green' then  puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end