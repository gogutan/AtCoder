ONE = '1'.freeze
MOD = 10 ** 9 + 7

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

# 繰り返し二乗法(MODを取る)
def modpow(base, exp, mod = 10 ** 9 + 7)
  if exp == 0
    1
  elsif exp.even?
    modpow(base, exp / 2, mod) ** 2 % mod
  else
    modpow(base, exp / 2, mod) ** 2 * base % mod
  end
end

n, a, b = gets.split.map(&:to_i)
ans = modpow(2, n) - 1 - nCk(n, a) - nCk(n, b)
2.times { ans += MOD if ans < 0 }
puts ans % MOD
