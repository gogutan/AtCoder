n, x = gets.chomp.split(" ").map(&:to_i)
ans = [x - 1, n - x].min
puts ans