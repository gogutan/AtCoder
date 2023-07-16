n, k = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)
ans = 0
heights.each do |height|
  if height >= k
    ans += 1
  end
end
puts ans
