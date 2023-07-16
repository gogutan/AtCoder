INF = 10 ** 9 + 7
n, m = gets.split.map(&:to_i)
gap = (n - m).abs
factorial = [1]
(1..[n, m].max).each do |index|
  factorial[index] = index * factorial[index - 1] % INF
end
if gap > 1
  ans = 0
elsif gap == 1
  ans = factorial[n] * factorial[m] % INF
else
  ans = factorial[n] * factorial[m] * 2 % (INF)
end
puts ans
