m, d = gets.chomp.split(" ").map(&:to_i)

ans = m % d == 0 ? "YES" : "NO"

puts ans