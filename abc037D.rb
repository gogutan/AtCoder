# メモ化再帰
# Ruby 2.3.3 では TLE

$h, $w = gets.split.map(&:to_i)
$grid = []
$h.times { $grid << gets.split.map(&:to_i) }
$paths = Array.new($h) { Array.new($w) }

def recursive_paths(row, column)
  if path = $paths[row][column]
    return path
  end
  current_grid = $grid[row][column]
  path = 1
  path += recursive_paths(row - 1, column) if row > 0 && current_grid < $grid[row - 1][column]
  path += recursive_paths(row, column - 1) if column > 0 && current_grid < $grid[row][column - 1]
  path += recursive_paths(row + 1, column) if row < $h - 1 && current_grid < $grid[row + 1][column]
  path += recursive_paths(row, column + 1) if column < $w - 1 && current_grid < $grid[row][column + 1]
  $paths[row][column] = path
end

$h.times do |row|
  $w.times do |column|
    recursive_paths(row, column)
  end
end

puts $paths.flatten.inject(:+)
