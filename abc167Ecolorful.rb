# nCk 前処理メモ化
MOD = 998244353
N = 200000
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

n, m, k = gets.split.map(&:to_i)
ans = m
memo = [ans]
(n - 1).times do |i|
  ans *= (m - 1)
  ans %= MOD
  memo[i + 1] = ans
end
1.upto(k) do |i|
  ans += memo[n - i - 1] * nCk(n - 1, i)
  ans %= MOD
end
puts ans % MOD
