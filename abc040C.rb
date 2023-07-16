n = gets.to_i
heights = gets.split.map(&:to_i)
memo = [0, (heights[0] - heights[1]).abs]
heights[2..-1].each.with_index(2) do |height, index|
  memo[index] = [(height - heights[index - 1]).abs + memo[index - 1],
                (height - heights[index - 2]).abs + memo[index - 2]].min
end
puts memo.last
