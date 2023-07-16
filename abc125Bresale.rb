n = gets.to_i
jewels = []
2.times do
  jewels.push(gets.split(" ").map(&:to_i))
end
sum = 0
n.times do |num|
  if jewels[0][num] > jewels[1][num]
    sum += jewels[0][num] - jewels[1][num]
  end
end
puts sum