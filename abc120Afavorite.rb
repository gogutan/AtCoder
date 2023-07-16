a, b, c = gets.chomp.split(" ").map(&:to_i)
count = [b / a, c].min
puts count