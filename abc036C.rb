n = gets.to_i
nums = []
n.times { nums << gets.to_i }
compressed = nums.uniq.sort
hash = compressed.zip(compressed.size.times).to_h
nums.each { |num| puts hash[num] }
