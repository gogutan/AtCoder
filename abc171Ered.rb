n = gets.to_i
nums = gets.split.map(&:to_i)
xor_sum = nums.inject(:^)
puts nums.map { |num| num ^ xor_sum}.join(' ')
