n, k = gets.split.map(&:to_i)
snukes = (1..n).to_a
k.times do
  _ = gets.to_i
  havings = gets.split.map(&:to_i)
  snukes -= havings
end
puts snukes.size
