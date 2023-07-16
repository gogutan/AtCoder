s1, e1 = gets.chomp.split(" ").map(&:to_i)
s2, e2 = gets.chomp.split(" ").map(&:to_i)
s3, e3 = gets.chomp.split(" ").map(&:to_i)

ans = (s1 * e1 + s2 * e2 + s3 * e3) / 10

puts ans