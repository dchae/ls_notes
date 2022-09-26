def multisum(x)
  res = []
  (0..x).step(3) { |n| res << n }
  (0..x).step(5) { |n| res << n }
  return res.uniq.sum
end

# OR

def multisum(x)
  (0..x).reduce { |sum, n| sum + (n % 3 == 0 || n % 5 == 0 ? n : 0) }
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234_168
