n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 0
(1...n).each do |i|
  tmp = heights[i] - heights[i - 1]
  if tmp < 0
    ans += tmp.abs
    heights[i] += tmp.abs
  end
end
puts ans
