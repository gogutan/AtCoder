s = gets.chomp.split("")
nums = gets.split.map(&:to_i)
nums.reverse.each do |num|
  s.insert(num, "\"")
end
puts s.join
