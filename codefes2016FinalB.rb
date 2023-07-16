INF = 10 ** 7

# n + 1 長の array を返す
def cumulative_sum(array)
  tmp = [0]
  previous = 0
  array.each { |num| tmp << previous += num }
  tmp
end

n = gets.to_i
nums = (1..INF).to_a
cumulative_sum = cumulative_sum(nums)
from_index = cumulative_sum.bsearch_index { |sum| sum >= n }
reversed_nums = nums[0, from_index].reverse
reversed_nums.each do |num|
  if n >= num
    n -= num
    puts num
  end
end
