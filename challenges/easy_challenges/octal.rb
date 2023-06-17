class Octal
  def initialize(s)
    @val = s
  end

  def to_decimal
    return 0 unless @val =~ /^[0-7]+$/
    # @val.chars.reverse.each_with_index.reduce(0) { |res, (x, i)| res + x.to_i * 8**i }
    @val.size.times.reduce(0) { |res, i| res + @val[@val.size - 1 - i].to_i * 8**i }
  end
end

def time_it
  start = Time.now
  yield
  close = Time.now
  close - start
end

if __FILE__ == $0
  #
  p time_it {
      10_000.times do
        Octal.new(Array.new(8) { [*"0".."7"].sample }.join).to_decimal
      end
    }
end
