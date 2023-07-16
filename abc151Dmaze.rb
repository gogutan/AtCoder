height, width = gets.split(" ").map(&:to_i)
boards = []
height.times do
  boards << gets.chomp.split("")
end
original_number_boards = Array.new(height) { Array.new(width, -1) }
boards.each_with_index do |row, index_1|
  row.each_with_index do |cell, index_2|
    if cell == "#"
      original_number_boards[index_1][index_2] = -2
    end
  end
end

ans = 0
0.upto(height - 1).each do |h_index|
  0.upto(width - 1).each do |w_index|
    number_boards = Marshal.load(Marshal.dump(original_number_boards))
    if number_boards[h_index][w_index] == -2
      next
    else
      number_boards[h_index][w_index] = 0
      queue = [[h_index, w_index]]
    end
    tmp = 0
    until queue.empty?
      current_h, current_w = queue.shift
      current_step = number_boards[current_h][current_w]
    
      if current_h > 0 && number_boards[current_h - 1][current_w] == -1
        number_boards[current_h - 1][current_w] = current_step + 1
        queue << [current_h - 1, current_w]
      end
    
      if current_h < height - 1 && number_boards[current_h + 1][current_w] == -1
        number_boards[current_h + 1][current_w] = current_step + 1
        queue << [current_h + 1, current_w]
      end
    
      if current_w > 0 && number_boards[current_h][current_w - 1] == -1
        number_boards[current_h][current_w - 1] = current_step + 1
        queue << [current_h, current_w - 1]
      end
    
      if current_w < width - 1 && number_boards[current_h][current_w + 1] == -1
        number_boards[current_h][current_w + 1] = current_step + 1
        queue << [current_h, current_w + 1]
      end
      tmp = current_step
    end
    ans = tmp if tmp > ans
  end
end
puts ans
