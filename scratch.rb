LINE_LIMIT = 76

def split_text(message, index)
  limit = index + (LINE_LIMIT - 1)
  limit = message.size if limit > message.size
  #sets limit variable so it can run any message size

  result = message.slice(index..limit)
  result
end

def print_message(message)
  index = 0
  multiplier = message.size / LINE_LIMIT

  #print full length lines first
  multiplier.times do
    result = split_text(message, index)
    puts "| #{result} |"
    index += LINE_LIMIT
  end

  #print remaining message characters plus additional spaces
  final_line = split_text(message, index)
  message.size <= LINE_LIMIT ?
    spaces = 0 :
    spaces = LINE_LIMIT - final_line.size
  puts "| #{final_line + (" " * spaces)} |"
end

#main
def print_in_box(message)
  size = message.size
  size = LINE_LIMIT if message.size > LINE_LIMIT
  #to ensure horizontal/space lines don't exceed 80 character limit

  horizontal_line = "+#{"-" * (size + 2)}+"
  space_line = "|#{" " * (size + 2)}|"

  puts horizontal_line
  puts space_line
  print_message(message)
  puts space_line
  puts horizontal_line
end

print_in_box(
  "Life is short and we have never too much time for gladdening the hearts of those who are traveling the dark journey with us. Oh be swift to love, make haste to be kind. -Henri Frederic Amiel",
)
print_in_box("")
print_in_box("Tech Neck")

print_in_box("To boldly go where no one has gone before.")
print_in_box("")
print_in_box(
  "Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.",
)
print_in_box(
  "The first 500 digits of pi: 3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502841027019385211055596446229489549303819644288109756659334461284756482337867831652712019091456485669234603486104543266482133936072602491412737245870066063155881748815209209628292540917153643678925903600113305305488204665213841469519415116094330572703657595919530921861173819326117931051185480744623799627495673518857527248912279381830119491",
)
