n = gets.to_i
nums = gets.split.map(&:to_i).sort.reverse
a = nums.shift
b = nums.min_by { |num| (a - num * 2).abs }
puts "#{a} #{b}"
