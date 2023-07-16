n, a = gets.split.map(&:to_i)
cards = gets.split.map(&:to_i)
dp = Hash.new(0)
# dp開始前、平均と0枚差の組み合わせは1通り
# ただし1枚以上選ぶ必要があるため、最後にこの1通りは引く
dp[0] = 1

cards.each do |card|
  copy_dp = dp.dup
  copy_dp.each do |key, value|
    dp[key + card - a] += value
  end
end

puts dp[0] - 1
