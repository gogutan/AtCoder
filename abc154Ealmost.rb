# 桁DP

n = gets.to_i
n_array = n.to_s.split("").map(&:to_i)
k = gets.to_i
# # dp[上から i 桁まで][smaller][0 でない数]の出現回数
length = n_array.size
dp = (length + 1).times.map { 2.times.map { Array.new(k + 1, 0) } }
# 初期化
# dp[0 桁目まで][桁は不自由][0 でない数は 0 個]の出現回数は 1
dp[0][0][0] = 1

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  dp_current = dp[i]
  dp_next = dp[i + 1]
  next_digit = n_array[i]
  # smaller == 1 の場合、以下の桁は自由
  2.times do |smaller|
    (k + 1).times do |nonzero|
      next if dp_current[smaller][nonzero] == 0
      limit = smaller == 1 ? 10 : next_digit + 1
      limit.times do |digit|
        # smaller == 0 且つ digit == next_digit（上限）の時のみ、0 のまま遷移する
        next_smaller = smaller == 0 && digit == next_digit ? 0 : 1
        next_nonzero = digit == 0 ? nonzero : nonzero + 1
        next if next_nonzero > k
        # 次の桁に遷移する
        dp_next[next_smaller][next_nonzero] += dp_current[smaller][nonzero]
      end
    end
  end
end

puts dp.last[0][k] + dp.last[1][k]


# n = gets.chomp.split("").map(&:to_i)
# k = gets.to_i
# length = n.length
# # dp[上から i 桁まで][smaller][0 でない数字を使った回数]の出現回数
# dp = (length + 1).times.map { 2.times.map { Array.new([length + 1, k + 1].max, 0) } }
# # 初期化
# # dp[0 桁目まで][桁は不自由][0 でない数字 を 0 回使った]の出現回数は 1
# dp[0][0][0] = 1

# # 桁数分ループする（i は遷移元の桁）
# length.times do |i|
#   dp_current = dp[i]
#   # 最適化のため、事前に 1 行分だけ参照渡しをする
#   # dp_next と dp[i + 1] の object_id は同じ
#   dp_next = dp[i + 1]
#   # smaller == 1 の場合、以下の桁は自由
#   2.times do |smaller|
#     # 1 を使った回数ごとに確認する
#     length.times do |count|
#       # smaller が既に 1 の場合は 10 回ループ、0 の場合は(その桁の数字 + 1）回ループ
#       limit = smaller == 1 ? 9 : n[i]
#       (limit + 1).times do |d|
#         # smaller == 0 且つ d == limit（上限）の時のみ、0 のまま遷移する
#         next_smaller = smaller == 0 && d == limit ? 0 : 1
#         # d == 0 でない場合は回数を足す
#         addition = d == 0 ? 0 : 1
#         # 次の桁に遷移する
#         dp_next[next_smaller][count + addition] += dp_current[smaller][count]
#       end
#     end
#   end
# end

# ans = 0
# # 桁が自由、不自由ともに、(0 以外を k 回使った出現回数)を ans に足す
# 2.times do |i|
#   ans += dp[length][i][k]
# end
# puts ans
