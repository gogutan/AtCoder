n, c = gets.split.map(&:to_i)
sushis = []
n.times { sushis << gets.split.map(&:to_i) }
max_value = 0
current_value = 0
current_pos = 0
max_values = []
sushis.each do |dist, value|
  current_value -= (dist - current_pos)
  current_value += value
  max_value = current_value if max_value < current_value
  max_values << max_value
  current_pos = dist
end

reversed_sushis = sushis.reverse.map { |dist, value| [c - dist, value] }
max_value = 0
current_value = 0
current_pos = 0
reversed_max_values = []
reversed_sushis.each do |dist, value|
  current_value -= (dist - current_pos)
  current_value += value
  max_value = current_value if max_value < current_value
  reversed_max_values << max_value
  current_pos = dist
end

returned_max_values = []
max_values.each_with_index do |value, index|
  dist = sushis[index][0]
  returnable_index = n - index - 2
  value += reversed_max_values[returnable_index] - dist if returnable_index >= 0 && reversed_max_values[returnable_index] - dist > 0
  returned_max_values << value
end

returned_reversed_max_values = []
reversed_max_values.each_with_index do |value, index|
  dist = reversed_sushis[index][0]
  returnable_index = n - index - 2
  value += max_values[returnable_index] - dist if returnable_index >= 0 && max_values[returnable_index] - dist > 0
  returned_reversed_max_values << value
end

puts [returned_max_values.max, returned_reversed_max_values.max].max
