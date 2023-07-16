INF = 2 * 10 ** 5
MOD = 10 ** 9 + 7
n = gets.to_i
colors = []
n.times { colors << gets.to_i }
previous_places = Array.new(INF + 1)
previous_places[colors.shift] = 0
dp = [1]
colors.each.with_index(1) do |color, index|
  previous_place = previous_places[color]
  if previous_place == index - 1 || !previous_place
    dp[index] = dp[index - 1] % MOD
  else
    dp[index] = (dp[index - 1] + dp[previous_place]) % MOD
  end
  previous_places[color] = index
end
puts dp.last % MOD

# INF = 2 * 10 ** 5
# MOD = 10 ** 9 + 7
# n = gets.to_i
# colors = []
# n.times { colors << gets.to_i }
# places = Array.new(INF + 1) { [] }
# colors.each_with_index do |color, index|
#   places[color] << index
# end
# dp = [1]
# previous = colors.shift
# colors.each.with_index(1) do |color, index|
#   place_index = places[color].bsearch_index { |place| place >= index }
#   if previous == color || place_index == 0
#     dp[index] = dp[index - 1]
#   else
#     dp[index] = dp[index - 1] + dp[places[color][place_index - 1]]
#   end
#   previous = color
# end
# puts dp.last % MOD
