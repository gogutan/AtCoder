n = gets.to_i
d, x = gets.split.map(&:to_i)
intervals = []
n.times { intervals << gets.to_i }
counts = intervals.map { |item| (d / item.to_f).ceil }
puts counts.inject(:+) + x
