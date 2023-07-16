n, s, t = gets.chomp.split(" ").map(&:to_i)
w = gets.chomp.to_i
changes = Array.new
changes << 0
(n - 1).times do
  changes << gets.chomp.to_i
end

count = 0

changes.each do |change|
  w += change
  if w.between?(s, t)
    count += 1
  end
end

puts count