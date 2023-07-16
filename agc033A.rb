height, width = gets.split(" ").map(&:to_i)
boards = Array.new
height.times do
  boards << gets.chomp.to_s
end

# 上記操作後、boards 例
# .  .  .
# .  #  .
# .  .  .

# 数字バージョンの盤面を作成し、 # からの必要ステップ数を格納していく
# 初期値は -1 （未探索）とする
number_boards = Array.new(height) {Array.new(width, -1)}
queue = Array.new

# # の場所の必要ステップ数は 0 とする
# また、 queue に座標を格納する
boards.each_with_index do |board, h|
  board.length.times do |w|
    if board[w] == "#"
      number_boards[h][w] = 0
      queue << [h, w]
    end
  end
end

# 上記操作後、number_boards 例
# -1 -1 -1
# -1  0 -1
# -1 -1 -1
#
# queue 例
# [1, 1]

# queue が空になるまで、上下左右に必要ステップ数を格納していく
until queue.empty?
  current_h, current_w = queue.shift
  current_step = number_boards[current_h][current_w]

  # 上側が -1 の場合、現在地のステップ数 + 1 を格納する
  # queue に上側の座標を格納する
  if current_h > 0 && number_boards[current_h - 1][current_w] == -1
    number_boards[current_h - 1][current_w] = current_step + 1
    queue << [current_h - 1, current_w]
  end

  # 下側が -1 の場合、現在地のステップ数 + 1 を格納する
  # queue に下側の座標を格納する
  if current_h < height - 1 && number_boards[current_h + 1][current_w] == -1
    number_boards[current_h + 1][current_w] = current_step + 1
    queue << [current_h + 1, current_w]
  end

  # 左側が -1 の場合、現在地のステップ数 + 1 を格納する
  # queue に左側の座標を格納する
  if current_w > 0 && number_boards[current_h][current_w - 1] == -1
    number_boards[current_h][current_w - 1] = current_step + 1
    queue << [current_h, current_w - 1]
  end

  # 右側が -1 の場合、現在地のステップ数 + 1 を格納する
  # queue に右側の座標を格納する
  if current_w < width - 1 && number_boards[current_h][current_w + 1] == -1
    number_boards[current_h][current_w + 1] = current_step + 1
    queue << [current_h, current_w + 1]
  end
end

# number_boards 遷移イメージ
# -1 -1 -1
# -1  0 -1
# -1 -1 -1
#
# -1  1 -1
#  1  0  1
# -1  1 -1
# 中略
#  2  1  2
#  1  0  1
#  2  1  2
#
# よって最大ステップ数は 2

puts current_step