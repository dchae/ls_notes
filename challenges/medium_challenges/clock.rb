class Clock
  def self.at(hh, mm = 0)
    self.new(hh * 60 + mm)
  end

  def initialize(minutes)
    @val = minutes.divmod(1440).last
  end

  def ==(other)
    self.val == other.val
  end

  def +(add)
    self.class.new(self.val + add)
  end

  def -(add)
    self.+(-add)
  end

  def to_s
    format("%02d:%02d", *@val.divmod(60))
  end

  protected

  attr_reader :val
end
