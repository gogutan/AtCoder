x, y = gets.split.map(&:to_i).sort
puts (x - y).abs > 1 ? "Alice" : "Brown"
