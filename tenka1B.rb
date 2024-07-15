n = gets.to_i
ans = n.times.map{ gets.split.map(&:to_i) }.max_by { |rank, _| rank }.sum
puts ans
