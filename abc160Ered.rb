x, y, a, b, c = gets.split.map(&:to_i)
reds = gets.split.map(&:to_i).sort { |a, b| b <=> a }
greens = gets.split.map(&:to_i).sort { |a, b| b <=> a }
transparents = gets.split.map(&:to_i).sort { |a, b| b <=> a }

eaten = reds[0...x] + greens[0...y]
eaten.sort!
[transparents.size, eaten.size].min.times do |i|
  if eaten[i] < transparents[i]
    eaten[i] = transparents[i]
  end
end
puts eaten.inject(:+)
