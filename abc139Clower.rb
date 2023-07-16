n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 0
tmp = 0
previous = 0
heights.each do |height|
  if height > previous
    tmp = 0
    previous = height
  else
    tmp += 1
    previous = height
    ans = tmp if tmp > ans
  end
end
puts ans
