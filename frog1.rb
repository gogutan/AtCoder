# まずは前提条件を配列で表現する、高さとメモ
INF = 2 ** 60
heights = [2, 9, 4, 5, 1, 6, 10]
dp = Array.new(7, INF)

p heights
p dp

dp[0] = 0

p dp

1.upto(6) do |i|
  if i == 1
    dp[i] = dp[i - 1] + (heights[i] - heights[i - 1]).abs
  else
    one_step_cost = dp[i - 1] + (heights[i] - heights[i - 1]).abs
    two_step_cost = dp[i - 2] + (heights[i] - heights[i - 2]).abs
    dp[i] = [one_step_cost, two_step_cost].min
  end
end

p dp
