n = gets.to_i
numbers = gets.chomp.split(" ").map(&:to_i)
puts numbers.inject(:+) - n