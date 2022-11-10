# def minilang(program)
#   reg, stack, ops = 0, [], program.split
#   ops.each do |op|
#     case op
#     when /\d/
#       reg = op.to_i
#     when "PUSH"
#       stack << reg
#     when "ADD"
#       reg += stack.pop
#     when "SUB"
#       reg -= stack.pop
#     when "MULT"
#       reg *= stack.pop
#     when "DIV"
#       reg /= stack.pop
#     when "MOD"
#       reg %= stack.pop
#     when "POP"
#       reg = stack.pop
#     when "PRINT"
#       puts reg
#     else
#       puts "#{op}: Not a valid operation"
#     end
#   end
# end

def minilang(program)
  math_op = { "ADD" => :+, "SUB" => :-, "MULT" => :*, "DIV" => :/, "MOD" => :% }
  reg, stack, ops = 0, [], program.split
  ops.each do |op|
    case op
    when /\d/
      reg = op.to_i
    when "PUSH"
      stack << reg
    when "POP"
      reg = stack.pop
    when "PRINT"
      puts reg
    else
      if math_op.key?(op)
        reg = reg.send(math_op[op], stack.pop)
      else
        raise ArgumentError.new "Invalid operation in program argument:'#{op}'"
      end
    end
  end
  nil
end

# FE
p minilang("3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT")
puts("---")

p minilang("")

minilang("-5 PUSH 3 MULT PRINT")

minilang("PRINT")
# 0

minilang("5 PUSH 3 MULT PRINT")
# 15

minilang("5 PRINT PUSH 3 PRINT ADD PRINT")
# 5
# 3
# 8

minilang("5 PUSH POP PRINT")
# 5

minilang("3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT")
# 5
# 10
# 4
# 7

minilang("3 PUSH PUSH 7 DIV MULT PRINT ")
# 6

minilang("4 PUSH PUSH 7 MOD MULT PRINT ")
# 12

minilang("-3 PUSH 5 SUB PRINT")
# 8

minilang("6 PUSH")
# (nothing printed; no PRINT commands)
