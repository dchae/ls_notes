def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

while true
  # Get two valid non-zero integers
  arr = []
  while arr.length < 2
    puts ">> Please enter a positive or negative integer:"
    s = gets.chomp
    if valid_number?(s)
      arr.push(s.to_i)
    else
      puts "Invalid input. Only non-zero integers are allowed."
    end
  end

  # Check that we have one positive and one negative
  if arr.inject(:*).negative?
    break
  else
    puts "Sorry. One integer must be positive, one must be negative"
    puts "Please start over."
  end
end

puts "#{arr[0]} + #{arr[1]} = #{arr.sum}"
