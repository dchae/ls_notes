=begin
Problem
- Create a class DNA with an instance method hamming_distance
- the method should take a string representing a DNA strand
- method should return the number of positions in which the input string differs from the instance's string
- method should ignore extra length on either strand; i.e. only compare up to the shortest length
- method should not mutate original string

Examples
DNA.new('GGACG').hamming_distance('GGTCG') #=> 1
- index 2 char differs

DNA.new('ACCAGGG').hamming_distance('ACTATGG') #=> 2
- string differs at indices 2 and 4

Data Structure
DNA object with string instance variable

Algorithm
- create basic DNA class that takes a string arg 'strand'
  - should have instance var for strand
- create hamming_distance instance method

init i = 0
init count = 0
increment i while i < [strand, other_strand].min size
  increment count if strand[i] != other_strand[i]
return count

=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  # def hamming_distance(other_strand)
  #   i = 0
  #   count = 0
  #   while i < [@strand, other_strand].map(&:size).min
  #     count += 1 if @strand[i] != other_strand[i]
  #     i += 1
  #   end
  #   count
  # end

  def hamming_distance(s)
    # [@strand, s].map(&:size).min.times.count { |i| @strand[i] != s[i] }
    [@strand, s].sort_by(&:size).map(&:chars).reduce(&:zip).count { |a, b| a != b }
  end
end

if __FILE__ == $0
  p DNA.new("GGACG").hamming_distance("GGTCGAAAAAAAA") #=> 1
  p DNA.new("ACCAGGG").hamming_distance("ACTATGG") #=> 2
end
