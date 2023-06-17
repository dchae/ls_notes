class Scrabble
  VALUE =
    "AEIOULNRSTDGBCMPFHVWYKJXQZ"
      .chars
      .zip([1] * 10 + [2] * 2 + [3] * 4 + [4] * 5 + [5] + [8] * 2 + [10] * 2)
      .to_h

  def initialize(s)
    @word = s
  end

  def self.score(word)
    word && word.scan(/\w/).reduce(0) { |sum, c| sum + VALUE[c.upcase] } || 0
  end

  def score
    self.class.score(@word)
  end
end

if __FILE__ == $0
  #
  [nil, "  ", "\t", "\n", "CABBAGE"].each { |word| p Scrabble.new(word).score }
end
