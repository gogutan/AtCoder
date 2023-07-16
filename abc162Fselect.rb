INF = -1 * 10 ** 1000
n = gets.to_i
nums = gets.split.map(&:to_i)
length = nums.length
# dp[i 個目の num まで][i 個目の数字を選んだか][ぴったり採用 - 1, ぴったり採用, ぴったり採用 + 1]の最大値
dp = (length + 1).times.map { 2.times.map { Array.new(3, INF) } }
# 初期化
# dp[0 個目の num まで][i 個目の数字を選んでいない][ぴったり採用]の最大値は 0
dp[0][0][1] = 0

# num 数分ループする（i は遷移元の num）
length.times do |i|
  # 最適化のため、事前に 1 行分だけ参照渡しをする
  dp_current = dp[i]
  dp_next = dp[i + 1]
  # dp_current の数字を選んでいない場合(0)と、選んだ場合(1)を順に確認
  2.times do |selected|
    dp_current_selected = dp_current[selected]
    # dp_current までの累計採用数が ぴったり - 1, ぴったり, ぴったり + 1 の場合を順に確認
    3.times do |count|
      current_sum = dp_current_selected[count]
      next if current_sum == INF
      # dp_current が偶数個目（dp_next が奇数個目）の num の時、必要採用が 1 つ増える
      count -= 1 if i.odd?
      # dp_next の数字を選ばない場合(0)と、選ぶ場合(1)を順に確認
      2.times do |next_selected|
        # 連続では選べない
        next if selected == 1 && next_selected == 1
        tmp_count = count
        if next_selected == 1
          current_sum += nums[i]
          tmp_count += 1
        end
        next if tmp_count > 2 || tmp_count < 0
        dp_next[next_selected][tmp_count] = current_sum if dp_next[next_selected][tmp_count] < current_sum
      end
    end
  end
end

# dp[n 個目の num まで][n 個目を採用][ぴったり採用]
# dp[n 個目の num まで][n 個目を不採用][ぴったり採用] のうち、値が大きい方を出力
puts [dp[n][0][1], dp[n][1][1]].max
