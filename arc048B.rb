INF = 10 ** 5
n = gets.to_i
participants = []
n.times { participants << gets.split.map(&:to_i) }
memo = Array.new(INF + 1) { Array.new(3, 0) }
participants.each do |rate, hand|
  memo[rate][hand - 1] += 1
end
cumulative_memo = [memo.first]
(1...INF).each do |i|
  prev_first, prev_second, prev_third = cumulative_memo[i - 1]
  first, second, third = memo[i]
  cumulative_memo[i] = [prev_first + first, prev_second + second, prev_third + third]
end
participants.each do |rate, hand|
  win = cumulative_memo[rate - 1].inject(:+) + memo[rate][hand - 3]
  even = memo[rate][hand - 1] - 1
  lose = n - even - win - 1
  puts "#{win} #{lose} #{even}"
end
