# def fibonacci_last(n)
#   n.times.reduce([0, 1]) { |r, _| r = r.sum % 10, r.first }[0]
# end

# def fibonacci_last(n)
#   res, add = 0, 1
#   n.times do |i|
#     res, add = res + add, res
#     res = res % 10 if res > 9
#   end
#   res
# end

def fibonacci_last(n)
  (0...60).reduce([0, 1]) { |arr| arr << (arr[-1] + arr[-2]) % 10 }[n % 60]
end

(0...60).each { |n| print fibonacci_last(n) }

puts

p fibonacci_last(15) # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100) # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123_456_789) # -> 4
