MOD = 10 ** 9 + 7
h, w = gets.split.map(&:to_i)
grid = []
h.times do
  grid << gets.chomp.split("")
end
s = []
g = []
memo = Array.new(26) { Array.new }
num_grid = Array.new(h) { Array.new(w, 10 ** 10) }
grid.each_with_index do |row, row_index|
  row.each_with_index do |col, col_index|
    case col
    when "S"
      s << row_index
      s << col_index
    when "G"
      g << row_index
      g << col_index
    when "."
    when "#"
    else
      memo[col.ord - 97] << [row_index, col_index]
    end
  end
end

# row, col, cost
num_grid[s[0], s[1]] = 0
queue = [[s[0], s[1], 0]]
until queue.empty?
  row, col, cost = queue.shift
  current = grid[row][col]
  warp = nil
  if current != "." && current != "#" && current != "S"
    warp_1, warp_2 = memo[current.ord - 97]
    if warp_1[0] == row && warp_1[1] == col
      warp = warp_2
    else
      warp = warp_1
    end
  end
  if current == "G"
    puts cost
    exit
  end
  if col > 0
    left = grid[row][col - 1]
    if left != "#" && num_grid[row][col - 1] == 10 ** 10
      num_grid[row][col - 1] = cost + 1
      queue << [row, col - 1, cost + 1]
    end
  end
  if col < w - 1
    right = grid[row][col + 1]
    if right != "#" && num_grid[row][col + 1] == 10 ** 10
      num_grid[row][col + 1] = cost + 1
      queue << [row, col + 1, cost + 1]
    end
  end
  if row > 0
    up = grid[row - 1][col]
    if up != "#" && num_grid[row - 1][col] == 10 ** 10
      num_grid[row - 1][col] = cost + 1
      queue << [row - 1, col, cost + 1]
    end
  end
  if row < h - 1
    down = grid[row + 1][col]
    if down != "#" && num_grid[row + 1][col] == 10 ** 10
      num_grid[row + 1][col] = cost + 1
      queue << [row + 1, col, cost + 1]
    end
  end
  if warp
    to = grid[warp[0]][warp[1]]
    if to != "#" && num_grid[warp[0]][warp[1]] == 10 ** 10
      num_grid[warp[0]][warp[1]] = cost + 1
      queue << [warp[0], warp[1], cost + 1]
    end
  end
end
puts -1
