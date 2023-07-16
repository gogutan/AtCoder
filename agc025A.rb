n = gets.to_i
ans = 100
(1...n).each do |i|
  a = i
  b = n - i
  tmp = a.to_s.split("").map(&:to_i).inject(:+) + b.to_s.split("").map(&:to_i).inject(:+)
  ans = tmp if ans > tmp
end
puts ans
