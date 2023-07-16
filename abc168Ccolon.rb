# reference: https://www.buildinsider.net/language/rubytips/0007

# 度からラジアンを求める
def radian(degree)
  degree * Math::PI / 180
end

# ラジアンから度を求める
def degree(radian)
  radian * 180 / Math::PI
end

a, b, h, m = gets.split.map(&:to_i)

h_degree = 30 * h + m / 2.0
m_degree = 6 * m

# Complex.polar(長さ, 偏角（ラジアン）)
# 実数部にx座標、虚数部にy座標
h_complex = Complex.polar(a, radian(h_degree))
m_complex = Complex.polar(b, radian(m_degree))
# 2点間の距離 |a - b|
puts (h_complex - m_complex).abs

# 角度（ラジアン）
# p h_.angle

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



# 三平方の定理版
# a, b, h, m = gets.split.map(&:to_i)

# h_degree = 30 * h + m / 2.0
# m_degree = 6 * m

# hour_x = a * Math.cos(radian(h_degree))
# hour_y = a * Math.sin(radian(h_degree))
# minute_x = b * Math.cos(radian(m_degree))
# minute_y = b * Math.sin(radian(m_degree))
# puts Math.sqrt((hour_x - minute_x).abs ** 2 + (hour_y - minute_y).abs ** 2)
