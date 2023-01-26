# input: int
# output: int

# - given an int n (n > 1752) representing a year,
#   return the number of fridays that fall on the 13th.

# - ds: datetime library equivalent

# - algo:
# no idea

require "date"
# def friday_13th(yyyy)
#   [*Date.new(yyyy, 1, 13)..Date.new(yyyy, 12, 13)].count { |d| d.friday? && d.day == 13 }
# end

# FE
# naive
# def five_fridays(yyyy)
#   res = 0
#   12.times do |i|
#     mm = i + 1
#     if [*Date.new(yyyy, mm, 1)..Date.new(yyyy, mm, -1)].count { |d|
#          d.friday?
#        } >= 5
#       res += 1
#     end
#   end
#   res
# end

def five_fridays(yyyy)
  (1..12).count do |mm|
    [*Date.new(yyyy, mm, 1)..Date.new(yyyy, mm, -1)].count { |d| d.friday? } >=
      5
  end
end

# def five_fridays(yyyy)
#    [*Date.new(yyyy, 1, 1)..Date.new(yyyy, 12, 31)].select { |d| d.friday? }
#       .group_by { |d| d.mm }
#       .count { |k, v| v.size >= 5 }
# end

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

(2020..2050).each { |year| p year, five_fridays(year) }
