n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
gcd = nums.inject(&:gcd)
puts k % gcd == 0 && k <= nums.max ? "POSSIBLE" : "IMPOSSIBLE"
