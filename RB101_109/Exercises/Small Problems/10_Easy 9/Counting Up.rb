# input: int
# output: array

# return array of int sequence from 1..n

# def sequence(n)
#   (1..n).to_a
# end

def sequence(n)
  Range.new(*[n, n > 0 ? 1 : 0].sort).to_a
end

p sequence(0) == [0]
p sequence(-1) == [-1, 0]
p sequence(-5) == [-5, -4, -3, -2, -1, 0]
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
