n = gets.to_i
ans = 1000 - n % 1000
puts ans == 1000 ? 0 : ans
