d1 = gets.split.map(&:to_i)
d2 = gets.split.map(&:to_i)
puts d1.any? { |l| d2.include?(l) } ? "YES" : "NO"
