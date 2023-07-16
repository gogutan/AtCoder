# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

# 行列ともに n + 1 長の array を返す
def cumulative_sum_2d(array)
  tmp = array.map { |r| cumulative_sum(r) }
  length = tmp.first.length
  tmp.unshift(Array.new(length, 0))
  tmp.each_cons(2) do |from, to|
    length.times { |i| to[i] += from[i] }
  end
  tmp
end

n = gets.to_i
creatures = gets.split.map(&:to_i).sort
cumulative_sum = cumulative_sum(creatures)
ans = 1
(n - 1).downto(1) do |i|
  break if creatures[i] > 2 * cumulative_sum[i]
  ans += 1
end
puts ans
