n, m = gets.split.map(&:to_i)
homeworks = gets.split.map(&:to_i)
ans = n - homeworks.sum
puts [ans, -1].max
