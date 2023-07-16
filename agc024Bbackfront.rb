n = gets.to_i
nums = []
n.times { nums << gets.to_i }
hash = Hash.new(0)
nums.each { |num| hash[num] = hash[num - 1] + 1 }
puts n - hash.values.max
