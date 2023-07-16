n = gets.to_i
l = [2, 1]
(2..n).each { |num| l << l[num - 1] + l[num - 2] }
puts l.last
