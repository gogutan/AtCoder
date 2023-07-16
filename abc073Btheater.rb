n = gets.to_i
counts = 0
n.times do
  left, right = gets.split.map(&:to_i)
  counts += right - left + 1
end
puts counts
