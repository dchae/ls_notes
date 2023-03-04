# input: Rational Number
# output: integer array

# - return the array of denominators that are part of the egyptian fraction representation of n

def egyptian(n)
  arr, sum, cur = [], 0, 1
  while sum + Rational(1, cur) != n
    if sum + Rational(1, cur) < n
      arr << cur
      sum += Rational(1, cur)
    end
    cur += 1
  end
  arr << cur
end

# def egyptian(n)
#   [[[], 0, 1]].cycle { |asc| asc[1] + Rational(1, asc[2]) == n ? (return asc[0] << asc[2]) : ((asc[0] << asc[2]; asc[1] += Rational(1, asc[2])) if asc[1] + Rational(1, asc[2]) < n); asc[2] += 1 }
# end

def unegyptian(arr)
  arr.reduce(0) { |res, denom| res + Rational(1, denom) }
end

p egyptian(Rational(2, 1)) # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) #== Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
