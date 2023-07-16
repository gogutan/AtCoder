INF = 2 * 10 ** 12
a, k = gets.split.map(&:to_i)
if k == 0
  puts INF - a
else
  count = 0
  while a < INF
    a += 1 + a * k
    count += 1
  end
  puts count
end
