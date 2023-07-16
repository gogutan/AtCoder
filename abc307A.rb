n = gets.to_i
nums = gets.split.map(&:to_i)
puts nums.each_slice(7).map(&:sum).join(' ')
