stoplight = %w[green yellow red].sample

action =
  case stoplight
  when "green"
    "Go!"
  when "yellow"
    "Slow down!"
  else
    "Stop!"
  end

puts action
