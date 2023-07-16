n = gets.to_i
nums = gets.split.map(&:to_i)
ans = Array.new(n, 0)
nums.each do |num|
  ans[num - 1] += 1
end
ans.each do |a|
  puts a
end
