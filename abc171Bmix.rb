n, k = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort
puts nums[0...k].sum
