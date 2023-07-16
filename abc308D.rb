# grid BFS
height, width = gets.split.map(&:to_i)
boards = []
height.times { boards << gets.chomp.split("").map { |c| [c.to_sym, false] } }

NEXT_CHAR = {
  :s => :n,
  :n => :u,
  :u => :k,
  :k => :e,
  :e => :s,
}

# unless NEXT_CHAR[boards[0][0][0]]
#   puts 'No'
#   exit
# end

unless boards[0][0][0] == :s
  puts 'No'
  exit
end

# next_h, next_w, next_c
queue = [[0, 0, boards[0][0][0]]]

until queue.empty?
  h, w, c = queue.pop
  if h == height - 1 && w == width - 1
    puts 'Yes'
    exit
  end
  prev_row = boards[h - 1]
  current_row = boards[h]
  next_row = boards[h + 1]
  current_row[w][1] = true
  next_c = NEXT_CHAR[c]

  # 次のマスを探す
  if h > 0 && !prev_row[w][1] && prev_row[w][0] == next_c
    queue << [h - 1, w, next_c]
  end

  if h < height - 1 && !next_row[w][1] && next_row[w][0] == next_c
    queue << [h + 1, w, next_c]
  end

  if w > 0 && !current_row[w - 1][1] && current_row[w - 1][0] == next_c
    queue << [h, w - 1, next_c]
  end

  if w < width - 1 && !current_row[w + 1][1] && current_row[w + 1][0] == next_c
    queue << [h, w + 1, next_c]
  end
end

puts 'No'
# puts boards[height - 1][width - 1][1] ? 'Yes' : 'No'
