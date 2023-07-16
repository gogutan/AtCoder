# nCk 前処理メモ化
MOD = 10 ** 9 + 7
N = 2000
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

n, k = gets.split.map(&:to_i)
blue = k
red = n - k

1.upto(k) do |i|
  blue_places_combi = nCk(red + 1, i)
  blue_splits_combi = nCk(blue - 1, i - 1)
  puts blue_places_combi * blue_splits_combi % MOD
end
