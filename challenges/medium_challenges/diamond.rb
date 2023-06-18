class Diamond
  AL = ("A".."Z").to_a
  def self.make_diamond(c)
    lines = []
    width = (c.ord - 64) * 2 - 1
    midpoint = width / 2
    height = width

    height.times do |i|
      line = ""
      width.times.map do |j|
        x_offset = (midpoint - j).abs
        y_offset = (midpoint - (i - midpoint).abs).abs
        if x_offset == y_offset
          line << AL[y_offset]
        else
          line << " "
        end
      end
      lines << line
    end

    lines.join("\n") << "\n"
  end

  # def self.make_diamond(c)
  #   (0...(n=(c.ord-64)*2-1)).map {|i| (0...n).map {|j| (n/2-j).abs == (k=(n/2-(i-n/2).abs).abs) ? AL[k] : " "}.join}.join("\n") + "\n"
  # end
end

if __FILE__ == $0
  #
  # p Diamond.make_diamond("F")
  ("A".."C").each { |c| puts Diamond.make_diamond(c) }
end
