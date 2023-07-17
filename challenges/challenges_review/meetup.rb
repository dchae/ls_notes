=begin

Problem
create a Meetup class
should take arguments: year, month

day method
input: day string, descriptor string
output: Date object
- given day and descriptor strings, return the
  corresponding date for that month as a Date object
day and descriptor strings are case agnostic

Examples
create a new meetup for March
meetup = Meetup.new(2013, 3)
find the day of the meetup, given that we want to meet on the first Monday
- should return March 4th
meetup.day('Monday', 'first') == Date.civil(2013, 3, 4)

Data Structure
- should use Date internally

Algo

Meetup class
should store the arguments either as integers or as a converted Date object

day method
ordinal cases (first, second...fifth)
- find first day
- add 7 * %w[first second...].index(day)
- return nil if month != @month # fifth case; sometimes there is no fifth day

last case
- find first day
- Add 1 month
- subtract a week

teenth case
- from days 13-19, find the day that matches day arg

Code
=end

require "date"

class Meetup
  ORDINALS = %w(first second third fourth fifth)

  def initialize(year, month)
    @date = Date.new(year, month)
  end

  def day(weekday, desc)
    desc = desc.downcase
    if ORDINALS.include?(desc)
      find_nth(find_first(weekday), desc)
    elsif desc == "last"
      find_last(find_first(weekday))
    else # teenth case
      find_teenth(find_first(weekday))
    end
  end

  private

  def find_first(weekday)
    weekday_ord = Date::DAYNAMES.index(weekday.downcase.capitalize)
    weekday_difference = weekday_ord - @date.wday
    @date + (weekday_difference % 7)
  end

  def find_nth(cur, desc)
    nth = ORDINALS.index(desc)
    cur += 7 * nth
    cur.month == @date.month ? cur : nil
  end

  def find_last(cur)
    cur += 7 while (cur + 7).month == @date.month
    cur
  end

  def find_teenth(cur)
    cur += 7 until (13..19).include?(cur.day)
    cur
  end
end

if __FILE__ == $PROGRAM_NAME
  p meetup = Meetup.new(2016, 10)
  p meetup.day("Monday", "teenth")
end
