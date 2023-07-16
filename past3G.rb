BREADTH = 500
INF = 10 ** 10
n, x, y = gets.split.map(&:to_i)
obstacles = []
n.times { obstacles << gets.split.map(&:to_i) }
grid = Array.new(BREADTH + 1) { Array.new(BREADTH + 1, INF) }
obstacles.each do |x, y|
  grid[BREADTH / 2 - y][BREADTH / 2 + x] = "#"
end
grid[BREADTH / 2][BREADTH / 2] = 0
queue = [[BREADTH / 2, BREADTH / 2, 0]]
until queue.empty?
  cur_y, cur_x, cur_s = queue.shift
  if cur_y - 1 >= 0 && cur_x + 1 <= BREADTH && grid[cur_y - 1][cur_x + 1] != "#" && grid[cur_y - 1][cur_x + 1] > cur_s + 1
    grid[cur_y - 1][cur_x + 1] = cur_s + 1
    queue << [cur_y - 1, cur_x + 1, cur_s + 1]
  end
  if cur_y - 1 >= 0 && grid[cur_y - 1][cur_x] != "#" && grid[cur_y - 1][cur_x] > cur_s + 1
    grid[cur_y - 1][cur_x] = cur_s + 1
    queue << [cur_y - 1, cur_x, cur_s + 1]
  end
  if cur_y - 1 >= 0 && cur_x - 1 >= 0 && grid[cur_y - 1][cur_x - 1] != "#" && grid[cur_y - 1][cur_x - 1] > cur_s + 1
    grid[cur_y - 1][cur_x - 1] = cur_s + 1
    queue << [cur_y - 1, cur_x - 1, cur_s + 1]
  end
  if cur_x + 1 <= BREADTH && grid[cur_y][cur_x + 1] != "#" && grid[cur_y][cur_x + 1] > cur_s + 1
    grid[cur_y][cur_x + 1] = cur_s + 1
    queue << [cur_y, cur_x + 1, cur_s + 1]
  end
  if cur_x - 1 >= 0 && grid[cur_y][cur_x - 1] != "#" && grid[cur_y][cur_x - 1] > cur_s + 1
    grid[cur_y][cur_x - 1] = cur_s + 1
    queue << [cur_y, cur_x - 1, cur_s + 1]
  end
  if cur_y + 1 <= BREADTH && grid[cur_y + 1][cur_x] != "#" && grid[cur_y + 1][cur_x] > cur_s + 1
    grid[cur_y + 1][cur_x] = cur_s + 1
    queue << [cur_y + 1, cur_x, cur_s + 1]
  end
end
# grid.each { |r| p r }
puts grid[BREADTH / 2 - y][BREADTH / 2 + x] == INF ? -1 : grid[BREADTH / 2 - y][BREADTH / 2 + x]
