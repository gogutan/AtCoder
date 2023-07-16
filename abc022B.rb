n = gets.to_i
flowers = Array.new(10 ** 5, 0)
n.times { flowers[gets.to_i.pred] += 1 }
puts flowers.map(&:pred).select { |i| i > 0 }.inject(:+)
