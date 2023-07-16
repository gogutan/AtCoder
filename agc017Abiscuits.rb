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

n, pp = gets.split.map(&:to_i)
cookies = gets.split.map(&:to_i)
odd_count = cookies.count { |n| n.odd? }
even_count = n - odd_count
zeros = 1
ones = 0

(1..odd_count).each do |i|
  if i.odd?
    ones += nCk(odd_count, i)
  else
    zeros += nCk(odd_count, i)
  end
end

if pp == 0
  puts zeros * 2 ** even_count
else
  puts ones * 2 ** even_count
end
