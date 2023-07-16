n = gets.to_i
ans = 0
1.upto(n - 1) do |a|
  ans += (n - 1) / a
end
puts ans
