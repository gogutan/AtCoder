n = gets.to_i
s = gets.chomp
ans = 0
0.upto(n - 3) do |i|
  ans += 1 if s[i..i + 2] == "ABC"
end
puts ans
