a, d = gets.chomp.split(" ").map(&:to_i)
puts a <= d ? (a + 1) * d : a * (d + 1)