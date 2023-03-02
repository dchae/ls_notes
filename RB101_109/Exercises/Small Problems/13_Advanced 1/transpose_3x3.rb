# input: array of three nested 3-element subarrays
# output: new transposed input array

# - return a new "matrix" array, in which the columns are the rows, and the rows are the columns of the input array
# - do not use the Array#transpose method or the Matrix class

# ds:
# - 3x3 matrix as nested array

# algo:
# matrix[0][0] => new_matrix[0][0]
# matrix[0][1] => new_matrix[1][0]
# matrix[0][2] => new_matrix[2][0]

# matrix[1][0] => new_matrix[0][1]
# matrix[1][1] => new_matrix[1][1]
# matrix[1][2] => new_matrix[2][1]
# ...

# def transpose(matrix)
#   3.times.map { |i| 3.times.map { |j| matrix[j][i] } }
# end

# matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# FE

# def transpose!(m)
#   m.each_index do |y|
#     3.times { |x| m[y][x], m[x][y] = m[x][y], m[y][x] if x > y }
#   end
# end

# def transpose!(matrix)
#   2.times { |y| (y + 1..2).each { |x| matrix[y][x], matrix[x][y] = matrix[x][y], matrix[y][x] }}; matrix
# end

m = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

new_matrix = transpose!(m)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p m == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
