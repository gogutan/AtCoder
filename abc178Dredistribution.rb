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

s = gets.to_i
ans = 0
div = s / 3
div.times do |i|
  group = i + 1
  rest = s - 3 * group
  ans += repeated_nCk(group, rest)
end
puts ans % MOD
