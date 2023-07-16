# 桁DP
MOD = 10 ** 9 + 7
length = gets.to_i
# dp[上から i 桁まで][0 を使ったかどうか][9 を使ったかどうか]の出現回数
dp = (length + 1).times.map { 2.times.map { Array.new(2, 0) } }
# 初期化
# dp[0 桁目まで][0 は使っていない][9 は使っていない]の出現回数は 1
dp[0][0][0] = 1

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  dp_current = dp[i]
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  # dp_next と dp[i + 1] の object_id は同じ
  dp_next = dp[i + 1]
  nonzero_nonnine = dp_current[0][0]
  nonzero_nine = dp_current[0][1]
  zero_nonnine = dp_current[1][0]
  zero_nine = dp_current[1][1]
  dp_next_0 = dp_next[0]
  dp_next_1 = dp_next[1]
  dp_next_0[0] += nonzero_nonnine * 8
  dp_next_0[1] += nonzero_nonnine + nonzero_nine * 9
  dp_next_1[0] += nonzero_nonnine + zero_nonnine * 9
  dp_next_1[1] += nonzero_nine + zero_nonnine + zero_nine * 10
  dp_next_0[0] %= MOD
  dp_next_0[1] %= MOD
  dp_next_1[0] %= MOD
  dp_next_1[1] %= MOD
end

dp.each { |r| p r }

puts dp.last.last.last % MOD
