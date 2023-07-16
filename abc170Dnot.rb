INF = 10 ** 6
n = gets.to_i
nums = gets.split.map(&:to_i).sort
tally = nums.tally
dp = Array.new(INF + 1, true)

ans = 0
nums.each do |num|
  next unless dp[num]
  num.step(INF + 1, num) { |i| dp[i] = false }
  ans += 1 if tally[num] == 1
end

puts ans
