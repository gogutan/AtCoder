a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
k = gets.to_i
if [e - d, e - c, e - b, e - a, d - c, d - b, d - a, c - b, c - a, b - a].max <= k
  puts "Yay!"
else
  puts ":("
end