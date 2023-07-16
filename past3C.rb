a, r, n = gets.split.map(&:to_i)
if r == 1
  puts a
  exit
end
(n - 1).times do |i|
  a *= r
  break if a > 10 ** 9
end
puts a > 10 ** 9 ? "large" : a
