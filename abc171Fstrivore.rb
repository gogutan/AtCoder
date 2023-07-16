# reference: https://youtu.be/TUdZT1wIbe8?t=2810

# nCk 前処理メモ
INF = 10 ** 6
MOD = 10 ** 9 + 7
N = INF * 2
@fac = [1, 1]
@inv = [1, 1]
@finv = [1, 1]

(2..N).each do |i|
  @fac[i] = @fac[i - 1] * i % MOD
  @inv[i] = MOD - @inv[MOD % i] * (MOD / i) % MOD
  @finv[i] = @finv[i - 1] * @inv[i] % MOD
end

def nCk(n, k)
  return 0 if n < k || n < 0 || k < 0
  @fac[n] * (@finv[k] * @finv[n - k] % MOD) % MOD
end

def repeated_nCk(n, k)
  # 仕切りのイメージで
  nCk(n + k - 1, n - 1) % MOD
end

k = gets.to_i
s = gets.chomp
s_size = s.size

twentyfive_memo = [1]
twentysix_memo = [1]
(0..INF * 2).each do |i|
  twentyfive_memo[i + 1] = twentyfive_memo[i] * 25 % MOD
  twentysix_memo[i + 1] = twentysix_memo[i] * 26 % MOD
end

ans = 0
# 前半を選ぶ個数
0.upto(k) do |former|
  # nCk は、区切り文字を選ぶ組み合わせ
  ans += twentyfive_memo[former] * nCk(former + s_size - 1, s_size - 1) * twentysix_memo[k - former] % MOD
  ans %= MOD
end
puts ans
