# 度からラジアンを求める
def radian(degree)
  degree * Math::PI / 180
end

# ラジアンから度を求める
def degree(radian)
  radian * 180 / Math::PI
end

n = gets.to_i
x0, y0 = gets.split.map(&:to_i)
xn2, yn2 = gets.split.map(&:to_i)

from = Complex(x0, y0)
to = Complex(xn2, yn2)
from_to = Complex(xn2 - x0, yn2 - y0)
degree_sum = 180 * (n - 2) / 2
moving_degree_per_side = 180 - (degree_sum * 2.0 / n)
start_degree = degree(from_to.angle) - 90 - moving_degree_per_side / 2

pre_side_length = 1.0
current = from
(n / 2).times do |i|
  move = Complex.polar(pre_side_length, radian(start_degree + moving_degree_per_side * (i + 1)))
  current += move
end

dist = (from - current).abs
actual_dist = (from - to).abs
rate = actual_dist / dist
actual_side_length = pre_side_length * rate
actual_move = Complex.polar(actual_side_length, radian(start_degree + moving_degree_per_side * (0 + 1)))
ans = (from + actual_move).rect
puts ans.join(' ')
