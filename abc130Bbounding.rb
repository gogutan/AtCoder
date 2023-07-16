n, x = gets.split.map(&:to_i)
leaps = gets.split.map(&:to_i)
count = 1
current = 0
leaps.each do |leap|
  current += leap
  count += 1 if current <= x
end
puts count
