n, x, t = gets.split.map(&:to_i)
div, mod = n.divmod(x)
div += 1 if mod > 0
puts t * div
