require "date"

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(dayname, ordinal)
    wday = parse_day(dayname)
    res = Date.new(@year, @month)
    res = res.next until res.wday == wday

    case ordinal.downcase
    when "teenth"
      res = res + 7 until (13..19) === res.day
    when "last"
      res = res + 7 while res.month == (res + 7).month
    else
      res += (%w[first second third fourth fifth].index(ordinal.downcase)) * 7
    end

    res.month == @month ? res : nil
  end

  def parse_day(dayname)
    Date::DAYNAMES.index(dayname.capitalize)
  end
end

if __FILE__ == $0
  meetup = Meetup.new(2015, 11)
  p meetup.day("Thursday", "fifth")
end
