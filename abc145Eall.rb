num, time = gets.chomp.split.map(&:to_i)
time -= 1
things = []
num.times { things << gets.split.map(&:to_i) }
things.sort!

# 許容時間ごとの価値の最大値を格納（順次更新）
dp = Array.new(time + 1, 0)

ans = []
# num個目までの料理を、ナップサックに入れるべきか順番に確認する
num.times do |n|
  # n個目の時間をtmp_time、価値をtmp_valueとする
  tmp_time, tmp_value = things[n]
  # n個目の料理を最後に食べると仮定し、答えの選択肢に追加する
  ans << dp[time] + tmp_value
  # 許容時間がtimeからtmp_timeまでの場合を、順番に確認する
  # （許容時間がtmp_time未満の場合、ナップサックに入れることはできないため確認の必要なし）
  # なお、uptoを用いて逆向きに確認すると、ループ中に既に更新した数値を参照してしまうため、正常に動作しない
  time.downto(tmp_time) do |t_accepted|
    # 「許容時間がtmp_time分少ない時の価値 + tmp_value」が「現在格納されている値」よりも大きければ格納する
    sum_value = dp[t_accepted - tmp_time] + tmp_value
    dp[t_accepted] = sum_value if dp[t_accepted] < sum_value
  end
end

puts ans.max
