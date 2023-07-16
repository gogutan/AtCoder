x, y, z = gets.split.map(&:to_i)
ans = 0
x -= z
while x >= 2
  x -= (y + z)
  ans += 1 if x >= 0
end
puts ans
