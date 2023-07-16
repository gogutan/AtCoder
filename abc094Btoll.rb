n, m, x = gets.split.map(&:to_i)
gates = gets.split.map(&:to_i)

left_cost = gates.select { |item| item < x }.size
right_cost = gates.size - left_cost

puts [left_cost, right_cost].min