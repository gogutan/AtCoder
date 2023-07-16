a, b, c = gets.split(" ").map(&:to_i)
puts b + [c, (a + b + 1)].min