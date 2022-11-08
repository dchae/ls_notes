def rotate_rightmost_digits(x, n)
  ((d = x.digits.reverse) << d.delete_at(-[1, n].max)).reduce(0) do |sum, d|
    sum * 10 + d
  end
end

p rotate_rightmost_digits(0, 0) == 0
p rotate_rightmost_digits(0, 1) == 0
p rotate_rightmost_digits(735_291, 0) == 735_291
p rotate_rightmost_digits(735_291, 1) == 735_291
p rotate_rightmost_digits(735_291, 2) == 735_219
p rotate_rightmost_digits(735_291, 3) == 735_912
p rotate_rightmost_digits(735_291, 4) == 732_915
p rotate_rightmost_digits(735_291, 5) == 752_913
p rotate_rightmost_digits(735_291, 6) == 352_917
