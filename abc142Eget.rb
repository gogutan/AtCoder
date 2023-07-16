# bitDP
INF = 10 ** 9
n, m = gets.split.map(&:to_i)
keys = []
m.times do
  price = gets.to_i
  openable = gets.split.map(&:to_i).inject(0) { |res, num| res | (2 ** (num - 1)) }
  keys << [price, openable]
end
max_num = 2 ** n
dp = Array.new(m + 1) { Array.new(max_num, INF) }
dp[0][0] = 0
m.times do |current|
  dp_current = dp[current]
  dp_next = dp[current + 1]
  price, openable = keys[current]
  max_num.times do |current_opened|
    next unless current_price = dp_current[current_opened]
    dp_next[current_opened] = current_price if dp_next[current_opened] > current_price
    next_opened = current_opened | openable
    tmp_price = current_price + price
    dp_next[next_opened] = tmp_price if dp_next[next_opened] > tmp_price
  end
end
puts dp.last.last == INF ? -1 : dp.last.last

# INF = 10 ** 10
# n, m = gets.split.map(&:to_i)
# costs = []
# keys = []
# m.times do
#   costs << gets.to_i
#   keys << gets.split.map(&:to_i).inject(0) { |res, num| res | 2 ** (num - 1) }
# end
# dp[0] = 0
# dp = Array.new(2 ** n, INF)
# dp.each_with_index do |cost, opened|
#   keys.each_with_index do |key, i|
#     next if cost == INF
#     next_opened = (opened | key)
#     dp[next_opened] = cost + costs[i] if dp[next_opened] > cost + costs[i]
#   end
# end
# puts dp.last == INF ? - 1 : dp.last
