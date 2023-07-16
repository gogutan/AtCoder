a, b = gets.split.map(&:to_i)
distance = (a - b).abs
count = 0
until distance.zero?
  if distance >= 8
    distance = (distance - 10).abs
    count += 1
  elsif distance >= 4
    distance = (distance - 5).abs
    count += 1
  else
    distance -= 1
    count += 1
  end
end
puts count
