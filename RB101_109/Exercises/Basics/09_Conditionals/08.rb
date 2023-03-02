status = %w[awake tired].sample

action = status == "awake" ? "Be productive!" : "Go to sleep!"
puts action
