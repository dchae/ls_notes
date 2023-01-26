def name(arr)
  return arr.sample()
end

def activity(arr)
  return arr.sample()
end

def sentence(name, activity)
  return "#{name} went #{activity} today!"
end

names = %w[Dave Sally George Jessica]
activities = %w[walking running cycling]

puts sentence(name(names), activity(activities))
