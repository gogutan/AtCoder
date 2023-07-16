h, w = gets.split.map(&:to_i)
grids = []
h.times { grids << gets.chomp.split("") }
dp = Array.new(h) { Array.new(w, 10 ** 6) }
# dp.each { |r| p r }
cnt = 0
prev = "."
grids.first.each_with_index do |column, i|
  if i == 0
    prev = "."
  else
    prev = grids.first[i - 1]
  end
  if column == "#" && prev == "."
    cnt += 1
  end
  dp[0][i] = cnt
end

(1...h).each do |row|
  (0...w).each do |column|
    if column == 0
      dp[row][column] = dp[row - 1][column]
      dp[row][column] += 1 if grids[row - 1][column] == "." && grids[row][column] == "#"
    else
      op_1 = dp[row - 1][column]
      op_1 += 1 if grids[row - 1][column] == "." && grids[row][column] == "#"
      op_2 = dp[row][column - 1]
      op_2 += 1 if grids[row][column - 1] == "." && grids[row][column] == "#"
      dp[row][column] = [op_1, op_2].min
    end
  end
end
# dp.each { |r| p r }
puts dp.last.last
