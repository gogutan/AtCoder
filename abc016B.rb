a, b, c = gets.split.map(&:to_i)
plus_flag = a + b == c
minus_flag = a - b == c

if plus_flag && minus_flag
  ans = "?"
elsif plus_flag
  ans = "+"
elsif minus_flag
  ans = "-"
else
  ans = "!"
end

puts ans
