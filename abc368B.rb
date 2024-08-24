n = gets.to_i
nums = gets.split.map(&:to_i)
ans = 0
loop do
  break if nums.filter { |num| num > 0 }.size < 2
  nums.sort!.reverse!
  nums[0] -= 1
  nums[1] -= 1
  ans += 1
end
puts ans
