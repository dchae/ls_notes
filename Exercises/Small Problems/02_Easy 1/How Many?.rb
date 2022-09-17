def count_occurrences(arr)
  cnt = Hash.new(0)
  arr.each { |element| cnt[element] += 1 }
  cnt.each { |k, c| puts "#{k} => #{c}" }
end

vehicles = %w[car car truck car SUV truck motorcycle motorcycle car truck]

count_occurrences(vehicles)
puts

# OR

def count_occurrences(arr)
  arr.uniq.each { |v| puts "#{v} => #{arr.count(v)}" }
end

count_occurrences(vehicles)
puts

# FE
def count_occurrences(arr)
  cnt = Hash.new(0)
  arr.each { |element| cnt[element.downcase] += 1 }
  cnt.each { |k, c| puts "#{k} => #{c}" }
end

vehicles = %w[car car Truck car SUV Truck motorcycle motorcycle Car truck]
count_occurrences(vehicles)
