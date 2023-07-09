n = gets.to_i
grid = n.times.map { gets.chomp.split('').map(&:to_i) }
converted_grid = grid.map(&:dup)

1.upto(n - 1) do |i|
  converted_grid[0][i] = grid[0][i - 1]
end

1.upto(n - 1) do |i|
  converted_grid[i][n - 1] = grid[i - 1][n - 1]
end

(n - 2).downto(0) do |i|
  converted_grid[n - 1][i] = grid[n - 1][i + 1]
end

(n - 2).downto(0) do |i|
  converted_grid[i][0] = grid[i + 1][0]
end

converted_grid.each do |row|
  puts row.join
end
