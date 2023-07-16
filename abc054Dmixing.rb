INF = 10 ** 10
n, ma, mb = gets.split.map(&:to_i)
chemicals = []
n.times { chemicals << gets.split.map(&:to_i) }

# dp[確認済の薬][タイプA量][タイプB量]の最安値
dp = (n + 1).times.map { 401.times.map { Array.new(401, INF) } }
# 初期化
# dp[0 個目の薬まで確認][タイプA量は 0][タイプB量は 0]の最安値は 0
dp[0][0][0] = 0

# n 個分ループする(i は遷移元の num)
n.times do |i|
  dp_current = dp[i]
  dp_next = dp[i + 1]
  391.times do |a|
    391.times do |b|
      current_cost = dp_current[a][b]
      dp_next[a][b] = current_cost if dp_next[a][b] > current_cost
      buying_a, buying_b, cost = chemicals[i]
      dp_next[a + buying_a][b + buying_b] = current_cost + cost if dp_next[a + buying_a][b + buying_b] > current_cost + cost
    end
  end
end

current_a = ma
current_b = mb

prices = []
until current_a > 400 || current_b > 400
  prices << dp[n][current_a][current_b]
  current_a += ma
  current_b += mb
end
puts prices.min == INF ? -1 : prices.min
