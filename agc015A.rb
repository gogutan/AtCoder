n, a, b = gets.split.map(&:to_i)
min = a * (n - 1) + b
max = a + b * (n - 1)
puts min > max ? 0 : max - min + 1
