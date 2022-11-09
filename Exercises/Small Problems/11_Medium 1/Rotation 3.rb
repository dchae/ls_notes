def rotate_rightmost_digits(x, n)
  ((d = x.digits.reverse) << d.delete_at(-[1, n].max)).reduce(0) do |sum, d|
    sum * 10 + d
  end
end

# def max_rotation(x)
#   (x.digits.size).downto(1) { |i| x = rotate_rightmost_digits(x, i) }
#   x
# end

def max_rotation(x)
  (d = x.to_s).size.times.reduce(d) { |d, i| d + (d.slice!(i) || "") }.to_i
end

# def max_rotation(x)
#   (d = x.digits.reverse).each_index { |i| d << d.delete_at(i) }.reduce(0) { |y, z| y * 10 + z }
# end
p max_rotation(0) == 0
p max_rotation(101_011_101_001) == 1_001_110_111
p max_rotation(735_291) == 321_579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
