nums = gets.split.map(&:to_i)
min = nums.min
max = nums.max
if min >= 3
  ans = (min - 2) * (max - 2)
elsif min == 2
  ans = 0
elsif min == 1 && max >= 2
  ans = max - 2
else
  ans = 1
end
puts ans
