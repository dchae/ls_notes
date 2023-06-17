class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def self.to(lim, nums = [3, 5])
    # (1...lim).sum { |x| nums.any? { |n| x % n == 0 } ? x : 0 } 
    nums.each_with_object([]) { |x, res| (x...lim).step(x) { |k| res << k }}.uniq.sum 
  end

  def to(lim)
    self.class.to(lim, @nums)
  end
end

if __FILE__ == $0
  def time_it
    start = Time.now
    yield
    close = Time.now
    close - start
  end
  p time_it { 100.times { SumOfMultiples.new(7, 17, 24).to(10**6) } }
end
