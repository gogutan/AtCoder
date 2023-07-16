a, b = gets.split.map(&:to_i)
a = 14 if a == 1
b = 14 if b == 1
if a > b
  puts "Alice"
elsif b > a
  puts "Bob"
else
  puts "Draw"
end
