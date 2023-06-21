class CustomSet
  def initialize(enum = [])
    @elements = Hash[enum.product([nil])]
  end

  def to_a
    elements.keys
  end

  def empty?
    elements.empty?
  end

  def contains?(e)
    elements.key?(e)
  end

  def subset?(other)
    elements <= other.elements
  end

  def disjoint?(other)
    intersection(other).empty?
  end

  def eql?(other)
    elements.eql?(other.elements)
  end

  alias_method :==, :eql?

  def add(e)
    elements[e] = nil
    self
  end

  def intersection(other)
    self.class.new(elements.keys & other.elements.keys)
  end

  def difference(other)
    self.class.new(elements.keys - other.elements.keys)
  end

  def union(other)
    self.class.new(elements.keys + other.elements.keys)
  end

  protected

  attr_reader :elements
end
