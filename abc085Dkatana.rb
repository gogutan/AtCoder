n, h = gets.split.map(&:to_i)
swings = []
throwings = []
n.times do
  s, t = gets.split.map(&:to_i)
  swings << s
  throwings << t
end
swing = swings.max
throwings.sort! { |a, b| b <=> a }
ans = 0
until h <= 0 || throwings.empty?
  throwing = throwings.shift
  if throwing > swing
    h -= throwing
  else
    h -= swing
    throwings.clear
  end
  ans += 1
end
ans += (h / swing.to_f).ceil if h > 0
puts ans
