lines = File.readlines("temp.txt")
x = lines.map { |fn| fn.chomp("\n") }.join("|")
res = "(" + x + ")"

File.write("res.txt", res)
