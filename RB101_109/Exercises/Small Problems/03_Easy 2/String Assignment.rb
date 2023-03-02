# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name

# => Bob Alice

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# => BOB BOB
# upcase! mutates the original string object that both name and save_name point to.
