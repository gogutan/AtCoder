MOD = 998244353
a, b, c = gets.split.map(&:to_i)
def cum(n)
  (n + 1) * n / 2 % MOD
end
puts cum(a) * cum(b) * cum(c) % MOD
