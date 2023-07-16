a, b = gets.split.map(&:to_i)
available = 1
ans = 0
until available >= b
  available += a - 1
  ans += 1
end
puts ans
