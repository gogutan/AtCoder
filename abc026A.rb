a = gets.chomp.to_i
x = a / 2
y = a.even? ? x : x + 1
ans = x * y
puts ans 