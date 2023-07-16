n = gets.to_i
nums = gets.split.map(&:to_i)

cumulative_sums = []
previous = 0
nums.each do |num|
  cumulative_sums << num + previous
  previous += num
end

cumulative_sums_r = []
previous = 0
nums.reverse.each do |num|
  cumulative_sums_r.unshift(num + previous)
  previous += num
end

gaps = []
(1...n).each do |index|
  gaps << (cumulative_sums[index - 1] - cumulative_sums_r[index]).abs
end

puts gaps.min
