n, k, x = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)
nums.insert(k, x)
puts nums.join(' ')
