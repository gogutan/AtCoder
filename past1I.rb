# bitDP
INF = 10 ** 15
n, m = gets.split.map(&:to_i)
availables = []
costs = []
m.times do
  s, cost = gets.chomp.split
  s.gsub!(/Y/, "1")
  s.gsub!(/N/, "0")
  availables << s.to_i(2)
  costs << cost.to_i
end
dp = Array.new(2 ** n, INF)
dp[0] = 0
availables.each_with_index do |a, a_i|
  dp.each_with_index do |cost, got|
    next if cost == INF
    next_availables = (a | got)
    dp[next_availables] = cost + costs[a_i] if dp[next_availables] > cost + costs[a_i]
  end
end
puts dp.last == INF ? - 1 : dp.last
