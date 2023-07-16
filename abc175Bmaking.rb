n = gets.to_i
nums = gets.split.map(&:to_i)
ans = 0
nums.combination(3).each do |a, b, c|
  ans += 1 if a < b + c && b < a + c && c < a + b && a != b && b != c && c != a
end
puts ans
