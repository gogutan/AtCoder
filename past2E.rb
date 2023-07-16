n = gets.to_i
nums = gets.split.map(&:to_i)
ans = []
nums.each_with_index do |num, i|
  count = 1
  current = num
  until current == i + 1
    current = nums[current - 1]
    count += 1
  end
  ans << count
end
puts ans.join(" ")
