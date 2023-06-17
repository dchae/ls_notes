class Anagram
  def initialize(s)
    @word = s
    @tally = @word.downcase.chars.tally
  end

  def match(arr)
    arr.select { |x| @word.downcase != x.downcase && @tally == x.downcase.chars.tally }
  end
end