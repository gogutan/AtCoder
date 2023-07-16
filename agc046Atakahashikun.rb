# 度からラジアンを求める
def radian(degree)
  degree * Math::PI / 180
end

x = gets.to_i

c = Complex(0, 0)
10000000.times do |i|
  tmp = Complex(0, 1)
  tmp = tmp * Complex.polar(1.0, radian(i * x))
  c = c + tmp
  if c.abs < 0.0001
    puts i + 1
    exit
  end
end
