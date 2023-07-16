w, a, b = gets.split.map(&:to_i)
minimum_left, maximum_left = [a, b].sort
minimum_right = minimum_left + w
maximum_right = maximum_left + w
puts [maximum_left - minimum_right, 0].max
