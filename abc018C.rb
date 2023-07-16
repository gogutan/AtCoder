# grid BFS 最短経路
INF = 1000
r, c, k = gets.split.map(&:to_i)
grid = []
r.times { grid << gets.chomp.chars }

number_grid = Array.new(r) { Array.new(c, INF) }

queue = []

(0...r).each do |from_row|
  (0...c).each do |from_column|
    next if grid[from_row][from_column] == "o"
    number_grid[from_row][from_column] = 0
    queue << [from_row, from_column, 0]
  end
end

until queue.empty?
  row, column, step = queue.shift

  if row > 0 && number_grid[row - 1][column] > step + 1
    number_grid[row - 1][column] = step + 1
    queue << [row - 1, column, step + 1]
  end

  if row < r - 1 && number_grid[row + 1][column] > step + 1
    number_grid[row + 1][column] = step + 1
    queue << [row + 1, column, step + 1]
  end

  if column > 0 && number_grid[row][column - 1] > step + 1
    number_grid[row][column - 1] = step + 1
    queue << [row, column - 1, step + 1]
  end

  if column < c - 1 && number_grid[row][column + 1] > step + 1
    number_grid[row][column + 1] = step + 1
    queue << [row, column + 1, step + 1]
  end

end

ans = 0
number_grid[0 + (k - 1)..- 1 - (k - 1)].each do |row|
  row[0 + (k - 1)..- 1 - (k - 1)].each do |step|
    ans += 1 if step >= k
  end
end

puts ans


# height, width, k = gets.split(" ").map(&:to_i)
# boards = []
# height.times { boards << gets.chomp.split("") }

# number_boards = Array.new(height) { Array.new(width, -1) }
# queue = []
# boards.each_with_index do |row, row_i|
#   row.each_with_index do |e, e_i|
#     if e == "x"
#       number_boards[row_i][e_i] = k - 1
#       queue << [row_i, e_i, k - 1]
#     end
#   end
# end

# until queue.empty?
#   h, w, step = queue.shift

#   if h > 0 && number_boards[h - 1][w] < step - 1
#     number_boards[h - 1][w] = step - 1
#     queue << [h - 1, w, step - 1]
#   end

#   if h < height - 1 && number_boards[h + 1][w] < step - 1
#     number_boards[h + 1][w] = step - 1
#     queue << [h + 1, w, step - 1]
#   end

#   if w > 0 && number_boards[h][w - 1] < step - 1
#     number_boards[h][w - 1] = step - 1
#     queue << [h, w - 1, step - 1]
#   end

#   if w < width - 1 && number_boards[h][w + 1] < step - 1
#     number_boards[h][w + 1] = step - 1
#     queue << [h, w + 1, step - 1]
#   end
# end

# # number_boards.each { |e| p e }

# sum = 0
# (0 + k - 1..height - k).each do |r|
#   (0 + k - 1..width - k).each do |c|
#     sum += 1 if number_boards[r][c] == -1
#   end
# end
# puts sum
