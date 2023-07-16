INF = 10 ** 100
h, n = gets.split.map(&:to_i)
damage_cost = []
n.times { damage_cost << gets.split.map(&:to_i) }
damage_cost.sort! { |a, b| a[0] <=> b[0] }
dp = Array.new(h + 1, INF)
1.upto(h) do |hp|
  damage_cost.each do |damage, cost|
    tmp_cost = hp <= damage ? cost : dp[hp - damage] + cost
    dp[hp] = tmp_cost if dp[hp] > tmp_cost
  end
end
puts dp.last
