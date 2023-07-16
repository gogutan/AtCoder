n = gets.to_i
k = gets.to_i
balls = gets.split.map(&:to_i)
distances = balls.map { |i| [k - i, i - 0].min }
puts distances.inject(:+) * 2
