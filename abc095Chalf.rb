a, b, c, x, y = gets.split.map(&:to_i)
reasonable = (a + b) >= c * 2 ? true : false
cost = 0
if reasonable
  min = [x, y].min
  cost += c * min * 2
  x -= min
  y -= min
end
cost += [a, c * 2].min * x + [b, c * 2].min * y
puts cost