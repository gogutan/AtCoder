# 度からラジアンを求める
def radian(degree)
  degree * Math::PI / 180
end

# ラジアンから度を求める
def degree(radian)
  radian * 180 / Math::PI
end

# ヘロンの公式 三角形の3辺の長さから面積を求める
def heron(a, b, c)
  s = (a + b + c) / 2.0
  Math.sqrt(s * (s - a) * (s - b) * (s - c))
end

x, y = gets.split.map(&:to_i)
n = gets.to_i
takahashi_point = Complex(x, y)
points = []
n.times do
  tmp_x, tmp_y = gets.split.map(&:to_i)
  points << Complex(tmp_x, tmp_y)
end
points.sort_by! { |point| point.angle }

distances = []
n.times do |from|
  point_1 = points[from]
  point_2 = points[(from + 1) % n]
  area = heron((takahashi_point - point_1).abs, (takahashi_point - point_2).abs, (point_1 - point_2).abs)
  # 垂線の長さ
  distance = area / (point_1 - point_2).abs * 2
  distances << distance
end

puts distances.min

# 角度（ラジアン）
# p h_complex.angle

# [x座標, y座標]
# p h_complex.rect

# 90度左回転
# p h_complex * Complex.polar(1.0, radian(90))

# 原点に対して対称
# p -h_complex

# x軸に対して対称（y座標の正負を反転）
# p h_complex.conj

# y軸に対して対称（x座標の正負を反転）
# p -h_complex.conj

# x座標3、y座標4から生成する場合
# c = Complex(3, 4)

# 原点からの距離
# p c.abs
#=> 5
