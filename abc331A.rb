M, D = gets.split.map(&:to_i)
y, m, d = gets.split.map(&:to_i)
d += 1

if d > D
  d -= D
  m += 1
end

if m > M
  m -= M
  y += 1
end

puts "#{y} #{m} #{d}"
