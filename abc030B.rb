n, m = gets.split.map(&:to_i)
h_angle = (360 / 12) * ((n % 12) + m / 60.0)
m_angle = (360 / 60) * m
ans = (h_angle - m_angle).abs
puts [ans, 360 - ans].min
