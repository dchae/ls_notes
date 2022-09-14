# => n if n.even? will return nil when n is not even. Better to use select:
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select { |n| n.even? }

p even_numbers # expected output: [2, 6, 8]

# => could also use Array#compact to flush nil values from original code
even_numbers = numbers.map { |n| n if n.even? }.compact

p even_numbers # expected output: [2, 6, 8]
