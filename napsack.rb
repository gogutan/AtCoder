# N, LIMIT = gets.chomp.split(" ").map(&:to_i)
# things = Array.new
# N.times do
#   things << gets.chomp.split(" ").map(&:to_i)
# end

N = 6
LIMIT = 15
things = [[2, 3], [1, 2], [3, 6], [2, 1], [1, 3], [5, 85]]

dp = Array.new(N + 1){Array.new(LIMIT + 1, 0)}

(0...N).each do |n|
  cost, value = things[n]
  (0..LIMIT).each do |limit|
    dp[n + 1][limit] = [dp[n][limit], dp[n + 1][limit]].max
    if (limit + cost) <= LIMIT
      dp[n + 1][limit + cost] = [dp[n][limit] + value, dp[n + 1][limit + cost]].max
    end
  end
end

puts dp[N][LIMIT]
dp.each { |row| p row }