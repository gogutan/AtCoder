n, k = gets.split.map(&:to_i)
points = []
n.times { points << gets.split.map(&:to_i) }
areas = []
points.combination([k, 4].min).each do |combination|
  xs = []
  ys = []
  combination.each do |x, y|
    xs << x
    ys << y
  end
  xs.sort!
  ys.sort!
  x_first = xs.first
  x_last = xs.last
  y_first = ys.first
  y_last = ys.last
  inner_points = 0
  points.each_with_index do |(x, y), index|
    inner_points += 1 if (x_first <= x && x <= x_last) && (y_first <= y && y <= y_last)
    break if inner_points >= k || inner_points + (n - index - 1) < k
  end
  areas << (x_last - x_first) * (y_last - y_first) if inner_points >= k
end
puts areas.min
