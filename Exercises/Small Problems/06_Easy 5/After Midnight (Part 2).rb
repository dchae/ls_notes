def after_midnight(time)
  time
    .split(":")
    .reverse
    .each_with_index
    .reduce(0) { |sum, (n, i)| sum + n.to_i * 60**i } % 1440
end

def before_midnight(time)
  -after_midnight(time) % 1440
end

p after_midnight("00:00") #== 0
p before_midnight("00:00") #== 0
p after_midnight("12:34") #== 754
p before_midnight("12:34") #== 686
p after_midnight("24:00") #== 0
p before_midnight("24:00") #== 0
