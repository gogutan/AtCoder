a, b, k, l = gets.split.map(&:to_i)
b = [a * l, b].min
div, mod = k.divmod(l)
puts b * div + [a * mod, b].min
