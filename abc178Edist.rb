n = gets.to_i
INF = 10 ** 9
nodes = []
n.times do
  nodes << gets.split.map(&:to_i)
end
from_left_down = nodes.map { |x, y| x + y }.sort.reverse
from_right_down = nodes.map { |x, y| (INF - x) + y }.sort.reverse
from_left_up = nodes.map { |x, y| (INF - x) + (INF - y) }.sort.reverse
from_right_up = nodes.map { |x, y| x + (INF - y) }.sort.reverse
puts [from_left_down.first - from_left_down.last, from_right_down.first - from_right_down.last, from_left_up.first - from_left_up.last, from_right_up.first - from_right_up.last].max
