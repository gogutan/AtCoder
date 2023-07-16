n = gets.chomp.to_i
ls = gets.chomp.split(" ").map(&:to_i)
max = ls.max
sum = ls.inject(:+) - max
puts max < sum ? "Yes" : "No"