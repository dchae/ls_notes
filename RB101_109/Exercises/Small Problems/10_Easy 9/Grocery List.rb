# input: array of two element arrays containing string, int
# output: array of strings

def buy_fruit(arr)
  arr.map { |item, count| [item] * count }.flatten
end
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
    %w[apples apples apples orange bananas bananas]
