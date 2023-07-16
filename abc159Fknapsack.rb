# dp 状態遷移 TLE

MOD = 998244353
n, s = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
# dp[上から i 個目の num まで][合計値][未定義、左端定義済、左端右端定義済]の数
dp = (n + 1).times.map { (s + 1).times.map { Array.new(3, 0) } }
# 初期化
# dp[0 桁目まで][合計値は 0][未定義]の出現回数は 1
dp[0][0][0] = 1

# n 個分ループする(i は遷移元の num)
n.times do |i|
  dp_current = dp[i]
  dp_next = dp[i + 1]
  (s + 1).times do |from_sum|
    dp_current_from_sum = dp_current[from_sum]
    dp_next_from_sum = dp_next[from_sum]
    dp_next_from_sum[0] += dp_current_from_sum[0]
    dp_next_from_sum[1] += dp_current_from_sum[1]
    dp_next_from_sum[2] += dp_current_from_sum[2]
    # num を足しても遷移先が s を超えない場合
    to_sum = from_sum + nums[i]
    if to_sum <= s
      dp_next_to_sum = dp_next[to_sum]
      dp_next_to_sum[1] += dp_current_from_sum[1]
      # 左端として採用
      dp_next_to_sum[1] += dp_current_from_sum[0] * (i + 1) % MOD
      # 右端として採用
      dp_next_to_sum[2] += dp_current_from_sum[1] * (n - i) % MOD
      # 右端および左端として採用
      dp_next_to_sum[2] += dp_current_from_sum[0] * (i + 1) * (n - i) % MOD
    end
  end
end

puts dp[n][s][2] % MOD
