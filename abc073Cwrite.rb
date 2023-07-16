n = gets.to_i
hash = Hash.new(0)
nums = []
n.times { nums << gets.to_i }
nums.each { |num| hash[num] += 1 }
puts hash.values.count { |i| i.odd? }
