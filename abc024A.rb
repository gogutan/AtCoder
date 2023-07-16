a, b, c, k = gets.chomp.split(" ").map(&:to_i)
s, t = gets.chomp.split(" ").map(&:to_i)
sum = a * s + b * t
sum -= c * (s + t) if (s + t) >= k
puts sum