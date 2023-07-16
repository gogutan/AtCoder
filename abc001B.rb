m = gets.to_f
k = m / 1000.0
if k < 0.1
  ans = 0
elsif k <= 5
  ans = k * 10
elsif k <= 30
  ans = k + 50
elsif k <= 70
  ans = (k - 30) / 5 + 80
else
  ans = 89
end
puts sprintf("%02d", ans)
