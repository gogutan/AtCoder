a, b, c = gets.split.map(&:to_i)
puts c.between?(a, b) ? "Yes" : "No"
