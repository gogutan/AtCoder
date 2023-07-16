n = gets.to_i
nums = []
n.times do
  nums << gets.split.map(&:to_i)
end
ans = 0
nums.each do |a, b|
  count = b - a + 1
  avg = (b + a).to_f / 2
  ans += count * avg
end
puts ans.to_i
