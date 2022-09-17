def repeat(str, int)
  puts (str + "\n") * int
end

repeat("Hello", 3)

# OR

def repeat(str, int)
  int.times { puts(str) }
end

repeat("Hello2", 5)
