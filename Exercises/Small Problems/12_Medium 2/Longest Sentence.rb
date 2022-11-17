# input: text file
# output: string

# - read the content of given text file and print the longest sentence in the file.
# - sentences may end with periods, exclamation points, or question marks.

# ds: string

# algo:
# - open file
# - read through file line by line
# - for each line:
#     compare line to best
#     update best if necessary
#   return best

# lines = File.read("pg84.txt").split(/[.!?]/)
# res = lines.max_by { |line| line.length }
# puts res
# puts res.split.size
def print_longest_sentence(filename)
  puts(
    res =
      File
        .read(filename)
        .split(/(?<=[.!?])\s*/)
        .max_by { |line| line.length }
        .gsub("\n", " "),
    "Length: #{res.split.size}",
  )
end

def print_longest_word(filename)
  puts(
    res = File.read(filename).split.max_by { |word| word.length },
    "Length: #{res.size}",
  )
end

def print_longest_paragraph(filename)
  puts(
    res =
      File
        .read(filename)
        .split(/\n\n/)
        .max_by { |par| par.length }
        .gsub("\n", " "),
    "Length: #{res.size}",
  )
end
print_longest_word("input.txt")
print_longest_sentence("input.txt")
print_longest_paragraph("input.txt")
