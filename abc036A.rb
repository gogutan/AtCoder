a, b = gets.chomp.split(" ").map(&:to_i)
div, mod = b.divmod(a)
ans = mod == 0 ? div : div + 1
puts ans