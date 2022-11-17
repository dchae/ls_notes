# input: string
# ouput: bool

# - given a collection of "spelling blocks" consisting of two letters,
#   return true if there is no block for which the input string contains both letters.

# - ds: arr, set

# - algo:
# init blocks arr
# init word as set
# for a, b in blocks:
#   return false if a and b are both in word
# return true

def block_word?(word)
  counter = word.upcase.chars.tally
  %W[BO XK DQ CP NA GT RE FS JW HU VI LY ZM].none? do |ab|
    ab.chars.sum(0) { |char| counter[char] || 0 } > 1
  end
end

# def block_word?(s)
#   cnt = s.upcase.chars.tally; %W[BO XK DQ CP NA GT RE FS JW HU VI LY ZM].none? { |ab| ab.chars.sum(0) { |c| cnt[c] || 0 } > 1 }
# end
p block_word?("BATCH") == true
p block_word?("BUTCH") == false
p block_word?("jest") == true
p block_word?("batch") == true
p block_word?("butch") == false
