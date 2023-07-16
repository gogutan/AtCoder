n = gets.to_i
nums = gets.split.map(&:to_i)
next_num = 1
sum = 0
nums.each do |num|
  if num == next_num
    sum += 1
    next_num += 1
  end
end
if sum == 0
  puts -1
else
  puts n - sum
end
