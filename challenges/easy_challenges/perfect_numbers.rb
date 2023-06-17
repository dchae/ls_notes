class PerfectNumber
  def self.classify(n)
    raise StandardError if n < 1
    sum = (2..n**0.5).sum(1) { |k| n % k == 0 ? k + (n / k != k ? n / k : 0) : 0 }
    %w[perfect abundant deficient][sum <=> n]
  end
end

if __FILE__ == $0
  #
  p PerfectNumber.classify(6)
  p PerfectNumber.classify(24)
  p PerfectNumber.classify(15)
end
