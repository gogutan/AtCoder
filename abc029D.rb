# 桁DP

n = gets.chomp.split("").map(&:to_i)
length = n.length
# dp[上から i 桁まで][smaller][1 を使った回数]の出現回数
dp = (length + 1).times.map { 2.times.map { Array.new(length + 1, 0) } }
# 初期化
# dp[0 桁目まで][桁は不自由][1 を 0 回使った回数]の出現回数は 1
dp[0][0][0] = 1

# 桁数分ループする（i は遷移元の桁）
length.times do |i|
  dp_current = dp[i]
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  # dp_next と dp[i + 1] の object_id は同じ
  dp_next = dp[i + 1]
  # smaller == 1 の場合、以下の桁は自由
  2.times do |smaller|
    # 1 を使った回数ごとに確認する
    length.times do |count|
      # smaller が既に 1 の場合は 10 回ループ、0 の場合は(その桁の数字 + 1）回ループ
      limit = smaller == 1 ? 9 : n[i]
      (limit + 1).times do |d|
        # smaller == 0 且つ d == limit（上限）の時のみ、0 のまま遷移する
        next_smaller = smaller == 0 && d == limit ? 0 : 1
        # d == 1 の場合のみ 1 の数を足す
        addition = d == 1 ? 1 : 0
        # 次の桁に遷移する
        dp_next[next_smaller][count + addition] += dp_current[smaller][count]
      end
    end
  end
end

ans = 0
# 桁が自由、不自由ともに、(1 を使った回数 * 出現回数)を ans に足す
2.times do |i|
  dp[length][i].each_with_index { |count, index| ans += index * count }
end
puts ans
