nums = gets.split.map(&:to_i)
sums = nums.combination(3).map { |i| i.inject(:+) }.sort { |a, b| b <=> a }
puts sums[2]
