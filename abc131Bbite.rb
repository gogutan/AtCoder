n, l = gets.split(" ").map(&:to_i)
apples = []
(1..n).each do |num|
  apples << l + num - 1
end

sum = apples.inject(:+)

if apples.include?(0)
  puts sum
elsif sum > 0
  puts sum - apples.first
else
  puts sum - apples.last
end