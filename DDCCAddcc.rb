x, y = gets.split.map(&:to_i)
ans = 0
if x == 3
  ans += 100000
elsif x == 2
  ans += 200000
elsif x == 1
  ans += 300000
end

if y == 3
  ans += 100000
elsif y == 2
  ans += 200000
elsif y == 1
  ans += 300000
end

if x == 1 && y == 1
  ans += 400000
end

puts ans
