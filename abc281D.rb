n, k, d = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

# dp[何桁目まで確認して][何個採用して][余りがいくつの時]の最大値
dp = (n + 1).times.map { (k + 1).times.map { Array.new(d, nil) } }

# 初期化
# dp[0桁目まで確認して][0個採用して][余りが0の時]の最大値は 0
dp[0][0][0] = 0

(1..n).each do |digit|
  (0..k).each do |selected|
    (0...d).each do |mod|
      next unless current = dp[digit - 1][selected][mod]

      dp[digit][selected][mod] = current if current >= dp[digit][selected][mod].to_i
      next if selected == k

      current += nums[digit - 1]
      new_mod = current % d
      dp[digit][selected + 1][new_mod] = current if current >= dp[digit][selected + 1][new_mod].to_i
    end
  end
end

puts dp[n][k][0] || -1
