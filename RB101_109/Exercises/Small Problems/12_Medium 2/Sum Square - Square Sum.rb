# input: int
# output: int

# - return (1..n).sum**2 - (1..2).map { |x| x**2 }.sum

def sum_square_difference(n)
  (1..n).sum**2 - (1..n).map { |x| x**2 }.sum
end
# def sum_square_difference(n)
#   (n * (n + 1) / 2)**2 - n * (n + 1) * (2 * n + 1) / 6
# end
p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25_164_150

# (1..100).each { |x| p sum_square_difference(x) }

require "benchmark"

time = Benchmark.realtime { 100_000.times { sum_square_difference(1000) } }

puts "Time: #{time * 1000} ms"
