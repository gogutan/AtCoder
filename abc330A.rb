n, l = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort.reverse
index = nums.find_index { |num| num < l }
puts index ? index : nums.size
