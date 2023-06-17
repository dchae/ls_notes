class RomanNumeral
  NUMERALS = %w[I IV V IX X XL L XC C CD D CM M]
  VALUES = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000]
  DICT = VALUES.zip(NUMERALS).to_h

  def initialize(n)
    @val = n
  end

  # def to_roman
  #   cur = @val
  #   res = ""
  #   while cur > 0
  #     greatest = VALUES.reverse.find { |x| x <= cur }
  #     cur -= greatest
  #     res += DICT[greatest]
  #   end
  #   res
  # end

  def to_roman
    cur = @val;VALUES.reverse.each_with_object('') { |x, res| (res << DICT[x] * (cur / x); cur %= x) if x <= cur }
  end
end

if __FILE__ == $0
  (1..20).each do |x|
    # 
    p RomanNumeral.new(x).to_roman
  end
end
