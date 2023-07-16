INF = 10 ** 10
n, _ = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
lowest = INF
possible = 0
nums.each do |num|
  possible = [possible, (num - lowest)].max
  lowest = [lowest, num].min
end

count = 0
lowest = INF
nums.each do |num|
  count += [(num - lowest - possible + 1), 0].max
  lowest = [lowest, num].min
end

count_reverse = 0
highest = 0
nums.reverse.each do |num|
  count_reverse += [(highest - num - possible + 1), 0].max
  # highest = [highest, num].max
  # highest = num if num > highest
end
puts [count, count_reverse].min
