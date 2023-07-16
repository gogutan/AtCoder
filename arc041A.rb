x, y = gets.split.map(&:to_i)
k = gets.to_i
if k <= y
  puts x + k
else
  puts x + y - (k - y)
end
