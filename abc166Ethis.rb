n = gets.to_i
nums = gets.split.map(&:to_i)
hash = Hash.new(0)
nums.each_with_index do |num, i|
  next if i == 0
  hash[num - i] += 1
end
ans = 0
nums.each_with_index do |num, i|
  next if i == n - 1
  ans += hash[(num + i) * - 1]
  hash[num[i + 1]] -= 1
end
puts ans
