number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

=begin
FE:
`next` must be placed after the incrementation of number, or number
will never increment when it is odd - causing an infinite loop after
the first incrementation.
`next` must be placed before number is printed, because we are using
next to skip printing odd numbers. If the printing happens before 
evaluating the number, we will print all numbers.

