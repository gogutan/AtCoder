colors = gets.chomp.split(" ").map(&:to_i)
puts colors.uniq.length