n = gets.chomp.split("").map(&:to_i)
puts n.uniq.length == 1 ? "SAME" : "DIFFERENT"