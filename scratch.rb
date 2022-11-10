def queue_time(customers, n)
  customers
    .each_with_object(Array.new(n, 0)) do |c, arr|
      arr[(0...n).min_by { |i| arr[i] }] += c
    end
    .max
end

tests = [
  [[], 1, 0],
  [[5], 1, 5],
  [[2], 5, 2],
  [[1, 2, 3, 4, 5], 1, 15],
  [[1, 2, 3, 4, 5], 100, 5],
  [[2, 2, 3, 3, 4, 4], 2, 9],
]

tests.each do |customers, n, ans|
  p res = queue_time(customers, n)
  p res == ans
end
