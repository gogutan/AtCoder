n, a, b = gets.split.map(&:to_i)
puts (b - a).even? ? "Alice" : "Borys"
