n = gets.to_i
spots = gets.split.map(&:to_i)
spots << 0
costs = []
previous = 0
spots.each do |spot|
  costs << (previous - spot).abs
  previous = spot
end

costs_when_skipped = []
costs_when_skipped << nil
previous_1 = spots.first
previous_2 = 0
spots[1..n].each do |spot|
  costs_when_skipped << (previous_2 - spot).abs
  previous_2 = previous_1
  previous_1 = spot
end

gaps = []
spots[0...n].each_with_index do |spot, index|
  gaps[index] = costs_when_skipped[index + 1] - (costs[index] + costs[index + 1])
end

costs_sum = costs.inject(:+)

gaps.each do |gap|
  puts costs_sum + gap
end
