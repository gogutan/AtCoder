a, b = gets.split.map(&:to_i)
count = 0
(a..b).each do |i|
  if i >= a && i <= b
    count += 1
  end
end
puts count
