# class BeerSong
#   def self.verses(start, fin)
#     start.downto(fin).map { |i| verse(i) }.join("\n")
#   end

#   def self.verse(i)
#     case i
#     when (2..)
#       "#{i} bottles of beer on the wall, #{i} bottles of beer.\n" \
#         "Take one down and pass it around, #{i - 1} bottle#{"s" if i > 2} of beer on the wall.\n"
#     when 1
#       "#{i} bottle of beer on the wall, #{i} bottle of beer.\n" \
#         "Take it down and pass it around, no more bottles of beer on the wall.\n"
#     when 0
#       "No more bottles of beer on the wall, no more bottles of beer.\n" \
#         "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
#     end
#   end

#   def self.lyrics
#     self.verses(99, 0)
#   end
# end

class BeerSong
  def self.verses(start, fin)
    start.downto(fin).map { |i| verse(i) }.join("\n")
  end

  def self.verse(i)
    a = 'bottles of beer'
    b = "on the wall"
    ["#{i} #{a} #{b}, #{i} #{a}.",
      (i > 0 ? "Take #{i == 1 ? "it" : "one" } down and pass it around" : "Go to the store and buy some more") +
    ", #{(i - 1) % 100} #{a} #{b}.\n"
    ].map { |s| s.gsub(/\b0/, "no more").capitalize}.join("\n").gsub(/(?<=\b1 bottle)s/, "")
  end

  def self.lyrics
    self.verses(99, 0)
  end
end

if __FILE__ == $0
  #
  puts BeerSong.verse(99)
  puts BeerSong.verse(1)
  puts BeerSong.verse(20)
  puts BeerSong.verse(0)
  puts
  puts BeerSong.verses(2,0)
end
