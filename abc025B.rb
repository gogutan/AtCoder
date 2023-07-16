n, minimum, maximum = gets.split.map(&:to_i)
moves = []
n.times { moves << gets.chomp.split.map.with_index { |e, index| index == 0 ? e : e.to_i } }
current = 0
moves.each do |direction, step|
  actual_step = [minimum, maximum, step].sort[1]
  current += direction == "East" ? actual_step : -actual_step
end
if current > 0
  puts "East #{current}"
elsif current < 0
  puts "West #{-current}"
else
  puts 0
end
