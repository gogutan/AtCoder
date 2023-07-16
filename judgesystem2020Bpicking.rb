n = gets.to_i
balls = []
n.times do
  a, b = gets.chomp.split
  balls << [a.to_i, b]
end
balls.sort! { |a, b| (b[1] <=> a[1]).nonzero? || (a[0] <=> b[0]) }
balls.each do |num, _|
  puts num
end
