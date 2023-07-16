h, w = gets.split.map(&:to_i)
board = []
h.times { board << gets.split.map(&:to_i) }
ans = []
h.times do |r|
  (w - 1).times do |c|
    if board[r][c].odd?
      board[r][c + 1] += 1
      ans << [r + 1, c + 1, r + 1, c + 2]
    end
  end
end
(h - 1).times do |r|
  if board[r][w - 1].odd?
    board[r + 1][w - 1] += 1
    ans << [r + 1, w, r + 2, w]
  end
end
puts ans.size
ans.each { |a| puts a.join(" ") }
