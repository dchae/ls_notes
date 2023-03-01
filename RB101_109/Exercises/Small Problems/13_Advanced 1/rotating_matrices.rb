# input: nested matrix (nested array)
# output: rotated matrix (nested array)

# - return rotated matrix

# ds: array

# algo:
# 0th row becomes last column
# last row becomes first column

# nth row becomes size - n column
# OR
# 0th column reversed becomes first row
# nth column reversed becomes nth row

# pseudocode

# init empty arr
# iterate through columns of input matrix
# reverse each column
# append to arr

# def rotate90(matrix)
#   new_matrix = []
#   matrix.first.size.times do |col|
#     new_matrix << matrix.size.times.map { |row| matrix[row][col] }.reverse
#   end
#   new_matrix
# end

def rotate90(m)
  m[0].size.times.map { |x| (m.size - 1).downto(0).map { |y| m[y][x] } }
end

# matrix1 = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# matrix2 = [[3, 7, 4, 2], [5, 1, 0, 8]]

# new_matrix1 = rotate90(matrix1)
# new_matrix2 = rotate90(matrix2)
# new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

def rotate(matrix, steps)
  steps.times do |_|
    matrix =
      matrix.first.size.times.map do |col|
        (matrix.size - 1).downto(0).map { |row| matrix[row][col] }
      end
  end
  matrix
end

matrix1 = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
matrix2 = [[3, 7, 4, 2], [5, 1, 0, 8]]

tests = [
  [[matrix1, 1], [[3, 4, 1], [9, 7, 5], [6, 2, 8]]],
  [[matrix1, 2], rotate90(rotate90(matrix1))],
  [[matrix2, 3], rotate90(rotate90(rotate90(matrix2)))],
  [[matrix2, 4], matrix2],
]

tests.each { |(matrix, steps), ans| p rotate(matrix, steps) == ans }
