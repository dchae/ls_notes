class Diamond
  def self.make_diamond(peak)
    lim = peak.ord - 65
    width = lim * 2 + 1
    midpoint = width / 2
    res = []

    # (0...lim).each do |row|
    #   char = (row + 65).chr
    #   line = width.times.map do |i|
    #     if (i - width / 2).abs == row
    #       char
    #     else
    #       " "
    #     end
    #   end
    #   res << line.join
    # end

    # lim.downto(0).each do |row|
    #   char = (row + 65).chr
    #   line = width.times.map do |i|
    #     if (i - width / 2).abs == row
    #       char
    #     else
    #       " "
    #     end
    #   end
    #   res << line.join
    # end
    # res.join("\n") + "\n"

    width.times.map do |row|
      line = width.times.map do |col|
        if (midpoint - col).abs == (midpoint -(midpoint - row).abs)
          char = ((midpoint - (midpoint - row).abs).abs + 65).chr
        else
          " "
        end
      end.join
    end.join("\n") + "\n"
  end
end

if __FILE__ == $0
  p Diamond.make_diamond("A")

  puts Diamond.make_diamond("C")
end
