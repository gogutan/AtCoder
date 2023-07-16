a, b = gets.split.map(&:to_i)
ans = b - a
ans -= 1 if b > 0 && a < 0
puts ans
