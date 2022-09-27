NUMS =
  (0..19).zip(
    %w[
      zero
      one
      two
      three
      four
      five
      six
      seven
      eight
      nine
      ten
      eleven
      twelve
      thirteen
      fourteen
      fifteen
      sixteen
      seventeen
      eighteen
      nineteen
    ],
  ).to_h
def alphabetic_number_sort(arr)
  arr.sort { |a, b| NUMS[a] <=> NUMS[b] }
end

# SOLUTION
# I didn't need to map this to a hash, because the numbers correspond to their indexes.
# Could also have used sort_by to simplify the block code

NUMBER_WORDS = %w[
  zero
  one
  two
  three
  four
  five
  six
  seven
  eight
  nine
  ten
  eleven
  twelve
  thirteen
  fourteen
  fifteen
  sixteen
  seventeen
  eighteen
  nineteen
]

def alphabetic_number_sort(arr)
  arr.sort_by { |i| NUMBER_WORDS[i] }
end

p alphabetic_number_sort((0..19).to_a) ==
    [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
