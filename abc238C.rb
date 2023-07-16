MOD = 998244353
n = gets.to_i
ans = 0
memo = Array.new(18, 0)
memo[0] = 9
(1..17).each do |i|
  memo[i] = memo[i - 1] * 10 % MOD
end
(1..18).each do |i|
  if n.to_s.size > i
    ans += (memo[i - 1] * (memo[i - 1] + 1)) / 2
  else
    n -= 10 ** (i - 1) - 1
    ans += (n * (n + 1)) / 2
    break
  end
end
puts ans % MOD
