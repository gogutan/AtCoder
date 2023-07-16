n = gets.to_i
grids = []
n.times { grids << gets.chomp.split("") }
grids.transpose.map(&:reverse).each do |row|
  puts row.join
end
