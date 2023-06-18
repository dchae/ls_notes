class Series
  def initialize(s)
    @arr = s.chars.map(&:to_i)
  end

  def slices(n)
    n > @arr.size ? (raise ArgumentError) : @arr.each_cons(n).to_a
  end
end
