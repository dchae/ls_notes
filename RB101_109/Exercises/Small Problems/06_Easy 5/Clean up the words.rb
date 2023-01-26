def cleanup(s)
  s.gsub(/[^a-z]+/, " ")
end

p cleanup("---what's my +*& line?") == " what s my line "

# SOLUTION
# Didn't think of using squeeze to cleanup duplicate whitespace
# def cleanup(s)
#   s.gsub(/[^a-z]/, " ").squeeze(" ")
# end

# OR

# def cleanup(s)
#   s.gsub(/\W+/, " ")
# end
