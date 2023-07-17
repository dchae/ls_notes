=begin
Problem
- Write a Robot class
- Instantiation should take no arguments
- Each instance should generate a unique random @name instance variable
- There should be a #name method
- The name should be checked against a collection of used names to prevent collision
- The name should be wiped upon #reset
- The name should be regenerated the next time #name is called
- Name should be formatted as two capital letters and three digits

Examples
RX837, BC811

Data Structures
- Custom Robot class
- Hashmap or set to check for collision

Algorithm
- Create Robot class
class variables:
- @@used_names = Hash.new(nil)
instance variables:
- @name = nil
methods:
- name
  - if @name = nil
    generate new_name until new_name not in @@used_names
  - else, returns @name
- generate_name
  - generates name
- reset
  - set @name to nil

Code
=end

class Robot
  @@used_names = Hash.new

  def name
    if @name.nil?
      loop do 
        @name = generate_name
        break unless @@used_names.include?(@name)
      end

      @@used_names[@name] = nil
    end
    @name
  end

  def generate_name
    new_name = (2.times.map {[*"A".."Z"].sample} + 3.times.map { rand(10) }).join
  end

  def reset
    @name = nil
  end
end


if __FILE__ == $0
  p Robot.new.name
end