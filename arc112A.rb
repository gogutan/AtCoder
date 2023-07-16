memo = [0]
(10 ** 6 + 1).times do |i|
  memo[i + 1] = memo[i] + i + 1
end
t = gets.to_i
t.times do
  l, r = gets.split.map(&:to_i)
  a = l * 2
  length = [r - a, -1].max
  length = 0 if l == 0 && r == 0
  puts memo[length + 1]
end
