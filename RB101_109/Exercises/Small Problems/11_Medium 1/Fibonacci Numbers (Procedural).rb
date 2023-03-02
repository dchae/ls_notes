def fibonacci(n)
  n.times.reduce([0, 1]) { |(res, add), _| res, add = res + add, res }[0]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354_224_848_179_261_915_075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
