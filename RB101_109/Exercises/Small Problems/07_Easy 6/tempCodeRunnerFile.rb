 reverse!(a)
  a.each_with_index { |v, i| a.unshift(a.delete_at(i)) }
end
