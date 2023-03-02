# input: two integers; i, j
# output: print sequence of numbers and words

# - sequence:
#   - all numbers from i..j inclusive
#   - if a number is divisible by 3, print "Fizz"
#   - if a number is divisible by 5, print "Buzz"
#   - if a number is divisble by both, print "FizzBuzz"

# ds: range, strings

# algo:
# Naive:
# while i <= j
#   if i is divisible by both 3 and 5
#     print "FizzBuzz"
#   elsif i is divisible by 3
#     print "Fizz"
#   elsif i is divisble by 5
#     print "Buzz"
#   else
#     print i
#   i += 1

# def fizzbuzz(i, j)
#   while i <= j
#     if i % 3 == 0 && i % 5 == 0
#       puts "FizzBuzz"
#     elsif i % 3 == 0
#       puts "Fizz"
#     elsif i % 5 == 0
#       puts "Buzz"
#     else
#       puts i
#     end
#     i += 1
#   end
# end

# one-liner
# def fizzbuzz(i, j)
#   (i..j).each { |n| puts (x = (n % 3 == 0 ? "Fizz" : "") + (n % 5 == 0 ? "Buzz" : "")).empty? ? n : x }
# end

# def fizzbuzz(i, j)
#   (i..j).each { |n| puts (x = [["Fizz"][n % 3], ["Buzz"][n % 5]].compact).empty? ? n : x.join }
# end

# def fizzbuzz(i, j)
#   puts (i..j).map { |n| (x = [["Fizz"][n % 3], ["Buzz"][n % 5]].compact).empty? ? n : x.join }.join(", ")
# end
# def fizzbuzz(i, j)
#   (i..j).each { |n| puts (x = "FizzBuzz"[(n % 3 == 0 ? 0 : 4)...(n % 5 == 0 ? 8 : 4)]).empty? ? n : x }
# end

# recursive
# base case:
#   sequence is one number long
#     print fizzbuzz on the last number
# else:
# call method on (i, j-1)

# def fizzbuzz(i, j)
#     puts (x = "FizzBuzz"[(i % 3 == 0 ? 0 : 4)...(i % 5 == 0 ? 8 : 4)]).empty? ? i : x
#     fizzbuzz(i+1, j) if i < j
# end

def fizzbuzz(i, j)
  print(
    (
      if (x = "FizzBuzz"[(i % 3 == 0 ? 0 : 4)...(i % 5 == 0 ? 8 : 4)]).empty?
        i
      else
        x
      end
    ),
    (i < j ? ", " : "\n"),
  )
  fizzbuzz(i + 1, j) if i < j
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
