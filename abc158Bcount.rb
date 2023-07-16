n, a, b = gets.split.map(&:to_i)
sum = a + b
count, mod = n.divmod(sum)
count *= a
count += [a, mod].min
puts count
