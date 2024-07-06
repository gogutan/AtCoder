n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort

diff = n - k - 1
min = 10 ** 9
(k + 1).times do |i|
  min = nums[i + diff] - nums[i] if min > nums[i + diff] - nums[i]
end
puts min
