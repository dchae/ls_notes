operands = []

%w[first second].each do |ordinal|
  puts "=> Enter the #{ordinal} number:"
  operands << gets.to_i
end
x, y = operands

puts "=> #{x} + #{y} = #{x + y}"
puts "=> #{x} - #{y} = #{x - y}"
puts "=> #{x} * #{y} = #{x * y}"
puts "=> #{x} / #{y} = #{x / y}"
puts "=> #{x} % #{y} = #{x % y}"
puts "=> #{x} ** #{y} = #{x**y}"

# OR

%i[+ - * / % **].each { |op| puts "=> #{x} #{op} #{y} = #{x.send(op, y)}" }

# OR
%i[+ - * / % **].each do |op|
  puts "=> #{x} #{op} #{y} = #{operands.reduce(op)}"
end

# OR

%i[+ - * / % **].each { |op| puts "=> #{x} #{op} #{y} = #{x.method(op).(y)}" }
