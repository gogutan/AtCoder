n = gets.chomp
ans = 0
n.each_char do |char|
  ans += char.to_i
end
puts ans % 9 == 0 ? "Yes" : "No"
