MOD = 10 ** 9 + 7
n, k = gets.split.map(&:to_i)

min_memo = [0]
1.upto(n - 1) do |i|
  min_memo[i] = min_memo[i - 1] + i
end

max_memo = [n]
1.upto(n - 1) do |i|
  max_memo[i] = max_memo[i - 1] + (n - i)
end

ans = 1
k.upto(n) do |i|
  min = min_memo[i - 1]
  max = max_memo[i - 1]
  ans += (max - min) + 1
end
puts ans % MOD
