n = gets.chomp.to_i
ps = []
n.times do
  ps << gets.chomp.to_i
end

puts ps.inject(:+) - ps.max / 2