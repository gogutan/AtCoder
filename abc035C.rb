n, q = gets.split.map(&:to_i)
reverses = []
q.times { reverses << gets.split.map(&:to_i).map(&:pred) }
memo = Array.new(n + 1, 0)
reverses.each do |from, to|
  memo[from] += 1
  memo[to + 1] -= 1
end
cumulative_memo = memo.inject([]) { |res, num| res << ((res.last || 0) + num) }
cumulative_memo.pop
puts cumulative_memo.map { |num| num.even? ? 0 : 1 }.join
