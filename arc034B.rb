def f(n)
  n.to_s.split("").map(&:to_i).inject(:+)
end

n = gets.to_i
ans = []
(n - 9 * 18..n).each do |i|
  ans << i if i + f(i) == n
end
puts ans.size
puts ans
