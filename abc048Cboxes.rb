n, x = gets.split.map(&:to_i)
candies = gets.split.map(&:to_i)
previous = 0
ans = 0
candies.each do |candy|
  sum = previous + candy
  deduction = [sum - x, 0].max
  ans += deduction
  previous = candy - deduction
end
puts ans
