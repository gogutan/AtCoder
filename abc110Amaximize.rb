nums = gets.chomp.split(" ").map(&:to_i)
nums.sort!
puts nums[2] * 10 + nums[1] + nums[0]