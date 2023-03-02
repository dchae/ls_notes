# input: string
# output: bool

# - return true if parentheses, square brackets, curly brackets, single and double quotes are balanced
# - else return false

# ds: stack, string

# algo:
# init stack
# iterate through s
# if cur is an opening symbol:
#   add it to stack
# if cur is a closing symbol:
#   compare it to top element in stack
#   if stack is empty or it doesn't match, return false
#   if it matches, delete top element of stack
# return stack size == 0

def balanced?(s)
  pairs = { "(" => ")", "[" => "]", "{" => "}", "'" => "'", '"' => '"' }
  stack = []
  s.chars.each do |c|
    if pairs.has_key?(c) && !(c =~ /(['"])/ && stack[-1] == $&)
      stack << c
    elsif pairs.has_value?(c)
      if c == pairs[stack.last]
        stack.pop
      else
        return false
      end
    end
  end
  return stack.size == 0
end

p balanced?("('{[]}')") == true
p balanced?("('{[']}')") == false
p balanced?("('{[]]}')") == false
p balanced?("") == true
p balanced?('he said "hi", ({[[]]})') == true
p balanced?("he'llo," + 'wo"rld"' + "!'") == true
p balanced?("he'llo," + 'wo"rld"' + "!") == false
