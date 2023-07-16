a, b, x = gets.split.map(&:to_i)
filled_volume = a * a * b
half_volume = filled_volume / 2.0
if x >= half_volume
  bottom = b * ((filled_volume - x) / half_volume)
  angle = Math.atan(bottom / a) * 180 / Math::PI
else
  bottom = a * x / half_volume
  angle = 90 - Math.atan(bottom / b) * 180 / Math::PI
end
puts angle
