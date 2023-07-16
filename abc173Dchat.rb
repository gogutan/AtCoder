n = gets.to_i
nums = gets.split.map(&:to_i).sort.reverse
ans = nums.shift
nums = (nums * 2).sort.reverse
ans += nums[0, n - 2].sum
puts ans
