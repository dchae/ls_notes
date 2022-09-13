def time_of_day(daybool)
  puts daybool ? "It's daytime!" : "It's nighttime!"
end

daylight = [true, false].sample

time_of_day(daylight)
