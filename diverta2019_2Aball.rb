n, k = gets.split(" ").map(&:to_i)
ans = n - k
if k == 1
  ans = 0
end
puts ans