s = gets.chomp.split("").map(&:to_i)
reds = s.count(0)
blues = s.count(1)
puts [reds, blues].min * 2
