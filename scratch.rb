def balanced?(str)
  left_side_count = str.count("(")
  right_side_count = str.count(")")
  return false if left_side_count != right_side_count
  str
    .chars
    .each_with_object(only_par = []) do |item, obj|
      obj << item if item == "(" || item == ")"
    end
  only_par[-1] == "(" || only_par[0] == ")" ? false : true
end

p balanced?("())(()") == false
p balanced?("What (is) this?") == true
p balanced?("What is) this?") == false
p balanced?("What (is this?") == false
p balanced?("((What) (is this))?") == true
p balanced?("((What)) (is this))?") == false
p balanced?("Hey!") == true
p balanced?(")Hey!(") == false
p balanced?("What ((is))) up(") == false
