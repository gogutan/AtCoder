n = gets.to_i
acts = Array.new
n.times do
  acts << gets.chomp.split(" ").map(&:to_i)
end

# [Aを選んだ幸福度, Bを選んだ幸福度, Cを選んだ幸福度]を格納するdp用配列
dp = Array.new(n)
dp.length.times do |index|
  dp[index] = Array.new(3, 0)
end

# 初日の幸福度を格納する
3.times do |index|
  dp[0][index] = acts[0][index]
end

# 2日目〜最終日まで、それぞれの幸福度を格納する
1.upto(n - 1) do |day|
  # 前日Bの幸福度、前日Cの幸福度のうち、高い方と当日Aの幸福度を足して格納する
  dp[day][0] = [dp[day - 1][1], dp[day - 1][2]].max + acts[day][0]
  # 前日Aの幸福度、前日Cの幸福度のうち、高い方と当日Bの幸福度を足して格納する
  dp[day][1] = [dp[day - 1][0], dp[day - 1][2]].max + acts[day][1]
  # 前日Aの幸福度、前日Bの幸福度のうち、高い方と当日Cの幸福度を足して格納する
  dp[day][2] = [dp[day - 1][0], dp[day - 1][1]].max + acts[day][2]
end

# 最終日に最も高い幸福度を出力する
puts [dp[n - 1][0], dp[n - 1][1], dp[n - 1][2]].max