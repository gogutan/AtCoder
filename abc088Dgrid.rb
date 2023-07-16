# grid BFS 最短経路
height, width, k = gets.split.map(&:to_i)
boards = []
height.times { boards << gets.chomp.split("") }

number_boards = Array.new(height) { Array.new(width, -1) }

boards.each_with_index do |row, row_i|
  row.each_with_index do |e, e_i|
    if e == "#"
      number_boards[row_i][e_i] = - 2
    end
  end
end

queue = [[0, 0, 0]]

until queue.empty?
  h, w, step = queue.shift

  if h > 0 && number_boards[h - 1][w] == - 1
    number_boards[h - 1][w] = step + 1
    queue << [h - 1, w, step + 1]
  end

  if h < height - 1 && number_boards[h + 1][w] == - 1
    number_boards[h + 1][w] = step + 1
    queue << [h + 1, w, step + 1]
  end

  if w > 0 && number_boards[h][w - 1] == - 1
    number_boards[h][w - 1] = step + 1
    queue << [h, w - 1, step + 1]
  end

  if w < width - 1 && number_boards[h][w + 1] == - 1
    number_boards[h][w + 1] = step + 1
    queue << [h, w + 1, step + 1]
  end
end

neccesary_tiles = number_boards[height - 1][width - 1] + 1
black_tiles = boards.flatten.count("#")
score = height * width - neccesary_tiles - black_tiles
puts neccesary_tiles <= 0 ? -1 : score
