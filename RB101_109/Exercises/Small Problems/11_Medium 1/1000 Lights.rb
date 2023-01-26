# input: int n
# output: array[int]

# - n represents number of switches
# - for each round i, switch at index j is toggled if j is divisible by i
# - return array representing which switches are turned on after n rounds

# ds: hash

# algo:
# - naive

# init res hash; keys = (1..n), values = false
# for round in range (1..n)
#   for key in res
#     res[key] = !res[key] if key % round == 0

# return keys in res for which value is true

# def lights(n)
#   res = Hash[(1..n).map { |x| [x, false] }]
#   (1..n).each { |round| res.each { |k, v| res[k] = !v if k % round == 0 } }
#   res.select { |k, v| v }.keys
# end

# def lights(n)
#   (1..n).each_with_object(Hash[(1..n).map { |x| [x, false] }]) { |round, res| res.each { |k, v| res[k] = !v if k % round == 0 } }.select { |k, v| v }.keys
# end

# algebraic
# a light i will be toggled k times
# k is the number of factors i has

require "set"

# def lights(n)
#   (1..n).select { |i| (1..Math.sqrt(i).to_i).reduce(Set[]) { |f, x| i % x == 0 ? f.merge([x, i / x]) : f }.size % 2 != 0 }
# end

def lights(n)
  (1..Math.sqrt(n)).map { |i| i * i }
end

# LS solution
# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

# ans check
(1..100).each do |n|
  ans = toggle_lights(n)
  res = lights(n)
  # puts "Input: #{n}"
  # puts "Answer: #{ans}"
  # puts "Result: #{res}"
  puts res == ans ? "Pass" : "Fail"
end


# require "benchmark"

# time = Benchmark.realtime { (1..100).each { |n| lights(n) } }
# puts "Time: #{time * 1000} ms"

# p lights(5)
# p lights(10)
