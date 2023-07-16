MOD = 10 ** 9 + 7
ONE = '1'.freeze

def nCk(n, k)
  res = 1
  i = k
  j = 1
  while i > 0
    res = res * (n - i + 1)
    res %= MOD
    j *= i
    j %= MOD
    i -= 1
  end
  res *= inv(j)
  res %= MOD
  res
end

def repeated_nCk(n, k)
  # 仕切りのイメージで
  nCk(n + k - 1, n - 1) % MOD
end

def inv(x)
  res = 1
  beki = x
  (MOD - 2).to_s(2).reverse.chars do |digest|
    res = (beki * res) % MOD if digest == ONE
    beki = (beki * beki) % MOD
  end
  res
end

require 'prime'

n, m = gets.split.map(&:to_i)
factor_counts = m.prime_division.map { |factor, count| count }
puts factor_counts.inject(1) { |res, count| res * repeated_nCk(n, count) } % MOD
