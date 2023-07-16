# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

MOD = 998244353
n, k = gets.split.map(&:to_i)
sections = []
k.times do
  sections << gets.split.map(&:to_i)
end
memo = Array.new(n + 1, 0)
memo[0] = 1
(n - 1).times do |i|
  if n > 0
    memo[i] += memo[i - 1]
  end
  memo[i] %= MOD
  current = memo[i]
  walkable = n - i - 1
  sections.each do |a, b|
    next if a > walkable
    b = walkable if b > walkable
    memo[i + a] += current
    memo[i + b + 1] -= current
  end
end
puts memo[n - 1] % MOD
