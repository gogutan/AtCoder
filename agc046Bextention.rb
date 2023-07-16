MOD = 998244353
a, b, c, d = gets.split.map(&:to_i)

# dp[タテ][ヨコ] の塗り方
dp = c.times.map { Array.new(d, 0) }
# 初期化
dp[a - 1][b - 1] = 1
dp_row = dp[a - 1]
(b...d).each do |i|
  dp_row[i] = dp_row[i - 1] * a % MOD
end
(a...c).each do |i|
  dp[i][b - 1] = dp[i - 1][b - 1] * b % MOD
end

a.upto(c - 1) do |current_row|
  dp_previous = dp[current_row - 1]
  dp_current = dp[current_row]
  b.upto(d - 1) do |current_column|
    dp_current[current_column] = (dp_current[current_column - 1] * (current_row + 1) + dp_previous[current_column] * (current_column + 1) - current_column * current_row * dp_previous[current_column - 1]) % MOD
  end
end

# dp.each { |r| p r }

puts dp.last.last
