# def running_total(arr)
#   1.upto(arr.length - 1) { |i| arr[i] = arr[i] + arr[i-1]}
#   return arr
# end

# FE

def running_total(arr)
  arr.each_with_object([0]).map { |x, sum| sum[0] += x }
end

# def running_total(arr)
#   res = []
#   arr.reduce(0) { |sum, x| sum += x; res << sum; sum }
#   res
# end


# def running_total(arr)
#   sum = 0
#   arr.reduce([]) { |res, x| res << (sum += x) }
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []