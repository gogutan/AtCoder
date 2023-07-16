digits = gets.chomp.split("").map(&:to_i)
puts digits.inject(:+)