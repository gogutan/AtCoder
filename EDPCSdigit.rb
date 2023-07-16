MOD = 10 ** 9 + 7
K = gets.chomp.to_s
D = gets.to_i
# Kの桁数
KL = K.length
# Dの数と等しいdp用配列
dp = [0] * D
# Kの1桁目の回数だけ、
K[0].to_i.times do |k|
  dp[k % D] += 1
end