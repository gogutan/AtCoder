INF = 10 ** 5
h, w, k = gets.split.map(&:to_i)
chocolate = []
h.times { chocolate << gets.chomp.split("").map(&:to_i) }

# 0 の時は i 行目の下を横方向に分割しない、1 なら分割する
divisions = []
queue = [[]]
until queue.empty?
  tmp = queue.shift
  if tmp.size == h - 1
    divisions << tmp
  else
    queue << tmp + [0]
    queue << tmp + [1]
  end
end

# 横方向に分割後のチョコレート全通りを divided に入れる
# 21212
#
# 21101
# 00111
#
# 11100
# 10112
#
# 11100
# 10001
# 00111
divided = []
divisions.each do |division|
  tmp = []
  current_white = chocolate.first.dup
  division.each_with_index do |d, i|
    next_row = chocolate[i + 1].dup
    if d == 0
      (0...w).each { |c| current_white[c] += next_row[c] }
    else
      tmp << current_white
      current_white = next_row
    end
  end
  tmp << current_white
  divided << tmp
end
# divided.each { |d| p d }

counts = []
divided.each do |d|
  vertical_count = 0
  tmp_white = Array.new(d.size, 0)
  # どれか 1 行でもホワイトチョコレートが k を超えてしまったら分割
  (0...w).each do |i|
    add_white = d.map { |row| row[i] }
    add_white.each_with_index do |c, i|
      if c > k
        vertical_count = INF
        break
      end
      tmp_white[i] += c
    end
    if tmp_white.any? { |c| c > k }
      vertical_count += 1
      tmp_white = add_white
    end
  end
  counts << d.size - 1 + vertical_count
end
puts counts.min
