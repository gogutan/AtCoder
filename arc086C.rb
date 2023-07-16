n, k = gets.split.map(&:to_i)
balls = gets.split.map(&:to_i)
tally = balls.tally
values = tally.values.sort
array = values[0, values.size - k]
if array
  puts array.sum
else
  puts 0
end
