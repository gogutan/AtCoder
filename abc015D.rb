NUM = 40
COLOR = 4

# dp[引いたぷよ数][当たったぷよ数]の確率
dp = Array.new(NUM + 1) { Array.new(NUM + 1) {0} }

# 初期化 0個引いて0個当たった確率は1.0
dp[0][0] = 1.0

(0...NUM).each do |all_from|
  (0..NUM).each do |hit_from|
    # 当たらなかった場合の確率の加算
    dp[all_from + 1][hit_from] += dp[all_from][hit_from] * (COLOR - 1.0) / COLOR
    # 当たった場合の確率の加算
    dp[all_from + 1][hit_from + 1] += dp[all_from][hit_from] / COLOR if hit_from != NUM
  end
end

dp.each_with_index do |row, r_index|
  p row.map.with_index { |proximity, p_index| "#{p_index}/#{r_index}個…#{proximity * 100}%"}
end
