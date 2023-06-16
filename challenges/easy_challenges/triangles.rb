class Triangle
  def initialize(*sides)
    @sides = sides.sort
    raise ArgumentError if illegal_sides?
  end

  def illegal_sides?
    sides.size != 3 || sides[0..1].sum <= sides[2]
  end

  def kind
    %w[equilateral isosceles scalene][sides.uniq.size - 1]
  end

  private

  attr_reader :sides
end
