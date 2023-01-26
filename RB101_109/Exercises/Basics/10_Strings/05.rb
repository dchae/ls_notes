first_name = 'John'
last_name = 'Doe'

full_name = first_name + " " + last_name


# FE
full_name = "#{first_name} #{last_name}"
full_name = String.new(first_name).concat(" ", last_name)
full_name = last_name[0..].prepend(first_name, " ")
full_name = first_name.ljust(first_name.length + last_name.length + 1, " " + last_name)
