n = gets.to_i
nums = gets.split.map(&:to_i)
prev = ""
streak_count = 1
ans = 0
nums.each do |num|
  if prev == num
    streak_count += 1
  else
    ans += streak_count / 2
    streak_count = 1
  end
  prev = num
end
ans += streak_count / 2
puts ans
