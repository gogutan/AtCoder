tasks = gets.chomp.split(" ").map(&:to_i)
puts tasks.max - tasks.min