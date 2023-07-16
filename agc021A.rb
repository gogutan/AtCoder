# 桁DP

n = gets.chomp.split("").map(&:to_i)
length = n.length
# dp[上から i 桁まで][smaller]の最大値
dp = (length + 1).times.map { Array.new(2, - 1) }
# 初期化
# dp[0 桁目まで][桁は不自由]の最大値は 0
dp[0][0] = 0

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  dp_current = dp[i]
  dp_next = dp[i + 1]
  # smaller == 1 の場合、以下の桁は自由
  2.times do |smaller|
    next if dp_current[smaller] == -1
    # smaller が既に 1 の場合は 10 回ループ、0 の場合は(その桁の数字 + 1）回ループ
    limit = smaller == 1 ? 9 : n[i]
    (limit + 1).times do |d|
      # smaller == 0 且つ d == limit（上限）の時のみ、0 のまま遷移する
      next_smaller = smaller == 0 && d == limit ? 0 : 1
      sum = dp_current[smaller] + d
      dp_next[next_smaller] = sum if dp_next[next_smaller] < sum
    end
  end
end

puts dp.last.flatten.max
