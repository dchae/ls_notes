# input: string
# output: bool

# - return true if all parentheses in the string are properly balanced
# - else return false

# ds: string, int vars

# algo:
# init var; count of open parentheses
# for char in s
#   if char is "("
#     increment count
#   elsif char is ")"
#     decrement count
#   return false if count is negative
# return count == 0

def balanced?(s)
  k = 0
  s.chars.each do |c|
    if c == "("
      k += 1
    elsif c == ")"
      k -= 1
    end
    return false if k < 0
  end
  return k == 0
end

# def balanced?(s)
#   s.chars.reduce(0) { |k, c| return false if k < 0; k + (c == "(" ? 1 : (c == ")" ? -1 : 0)) } == 0
# end

p balanced?("()")
p balanced?("(()")
p balanced?("What (is) this?") == true
p balanced?("What is) this?") == false
p balanced?("What (is this?") == false
p balanced?("((What) (is this))?") == true
p balanced?("((What)) (is this))?") == false
p balanced?("Hey!") == true
p balanced?(")Hey!(") == false
p balanced?("What ((is))) up(") == false
