n = gets.to_i
prices = []
n.times { prices << gets.to_i }
prices.sort!.reverse!.uniq!
puts prices[1]
