class Robot
  @@used = Hash.new(nil)
  attr_reader :name

  def initialize
    reset
  end

  def reset
    old_name = @name
    @name = generate_name while @@used.include?(@name) || @name.nil?

    @@used[@name] = true
    @@used.delete(old_name)
  end

  def generate_name
    (Array.new(2) { [*("A".."Z")].sample } + Array.new(3) { rand(10) }).join
  end

  private

  attr_writer :name
end

if __FILE__ == $0
  robot = Robot.new
  p robot.name
end
