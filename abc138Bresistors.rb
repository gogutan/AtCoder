n = gets.to_i
numbers = gets.split.map(&:to_i)
sum = 0.0
numbers.each do |num|
  sum += 1.0 / num
end
puts 1 / sum
