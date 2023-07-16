str = gets.chomp
n = gets.to_i
swaps = []
n.times { swaps << gets.split.map(&:to_i).map(&:pred) }
swaps.each { |a, b| str[a..b] = str[a..b].reverse }
puts str
