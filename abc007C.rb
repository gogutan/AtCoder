INF = 10 ** 4
row, column = gets.split.map(&:to_i)
sy, sx = gets.split.map(&:to_i).map(&:pred)
gy, gx = gets.split.map(&:to_i).map(&:pred)
# 到達にかかる歩数を記録する二次元配列
boards = Array.new
# 未開拓の空きマス(.)は-1、壁(#)はINFマスとする
row.times { boards << gets.chomp.split("").map { |i| i == "." ? -1 : INF } }
boards[sy][sx] = 0
# キューに現在地の場所を格納する
queue = [[sy, sx]]

until queue.empty?
  y, x = queue.shift
  step = boards[y][x]
  if boards[y + 1][x] == -1
    boards[y + 1][x] = step + 1
    queue << [y + 1, x]
  end
  if boards[y - 1][x] == -1
    boards[y - 1][x] = step + 1
    queue << [y - 1, x]
  end
  if boards[y][x + 1] == -1
    boards[y][x + 1] = step + 1
    queue << [y, x + 1]
  end
  if boards[y][x - 1] == -1
    boards[y][x - 1] = step + 1
    queue << [y, x - 1]
  end
end

puts boards[gy][gx]
