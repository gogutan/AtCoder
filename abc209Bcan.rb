n, x = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i)
sum = prices.sum - n / 2
puts x >= sum ? "Yes" : "No"
