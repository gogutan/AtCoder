ans = 0
12.times do |i|
  ans += 1 if gets.chomp.size == i + 1
end
puts ans
