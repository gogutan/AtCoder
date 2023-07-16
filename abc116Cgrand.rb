n = gets.to_i
heights = gets.split.map(&:to_i)

def water(n, heights)
  from = heights.find_index { |height| height > 0 }
  (from...n).each do |index|
    break if heights[index].zero?
    heights[index] -= 1
  end
  heights
end

ans = 0
until heights.max.zero?
  heights = water(n, heights)
  ans += 1
end

puts ans
