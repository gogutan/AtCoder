n = gets.to_i
spots = []
n.times { spots << gets.split.map(&:to_i) }
xs = []
ys = []
spots.each do |x, y|
  xs << x
  ys << y
end
available_spots = xs.uniq.size * ys.uniq.size
puts available_spots - n
