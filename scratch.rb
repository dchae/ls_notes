class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  def to_s
    "Name: #{name}, Breed: #{breed}"
  end


  private
  attr_reader :name, :breed
end


rufus = Dog.new("Rufus", "Lab")
puts rufus