_ = gets
s = gets.chomp
ans = 0
s.split('').each_cons(3) do |a, b, c|
  ans += 1 if a == '#' && b == '.' && c == '#'
end
puts ans
