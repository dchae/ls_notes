=begin
Problem
- Create a clock class that is independent of date.
- Should be able to add or subtract minutes to the time represented by an instance
- Addition and subtraction should return a new clock object, not mutate
- Should support equality between clock object with the same time

Examples
Clock.at(8).to_s == "08:00"
Clock.at(11, 9).to_s == "11:09"
clock = Clock.at(10) + 3
clock.to_s == '10:03'
...

Data Structures
- Instance variables referencing integers

Algo
Clock class
Constants
  MAX = 60*24
class vars
instance vars
  @minutes

methods
initialise(hrs, mins)
  @minutes = hrs * 60 + mins

at(hrs, mins = 0)
  Clock.new(hrs, mins)

+ (int)
  new_minutes = (@minutes + int) % MAX
  clock.new(0, new_minutes)

- (int)
  + (-int)

== (other)
  @minutes == other.minutes

to_s
  hh = minutes / 60
  mm = minutes % 60
  format hh:mm
  

protected
attr_reader :minutes

Code
=end

class Clock
  MAX = 60 * 24

  def initialize(hrs, mins)
    @minutes = hrs * 60 + mins
  end

  def self.at(hrs, mins = 0)
    Clock.new(hrs, mins)
  end

  def +(n)
    new_minutes = (minutes + n) % MAX
    Clock.new(0, new_minutes)
  end

  def -(n)
    self.+(-n)
  end

  def ==(other)
    minutes == other.minutes
  end

  def to_s
    hh = minutes / 60
    mm = minutes % 60
    "%02d:%02d" % [hh, mm]
  end

  protected
  attr_reader :minutes
end

if __FILE__ == $0
  p clock = Clock.at(0)
  p clock - 50
end