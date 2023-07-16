INF = 10 ** 9
n, k, s = gets.split.map(&:to_i)
ans = []
k.times { ans << s }
(n - k).times { ans << (s + 1) % INF }
puts ans.join(" ")
