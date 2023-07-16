# DP

INF = 10 ** 4
n, m = gets.split.map(&:to_i)
# [S, 1, 2, 3, 4, 5, 6, 7, 8, 9, G]
positions = Array.new(11) { Array.new }
n.times do |r|
  gets.chomp.chars.each_with_index do |s, c|
    case s
    when "S"
      s = 0
    when "G"
      s = 10
    else
      s = s.to_i
    end
    # [row, column, step]
    positions[s] << [r, c, INF]
  end
end

# スタート地点のステップ数は 0
positions[0][0][2] = 0

(0..9).each do |from|
  positions[from].each do |from_r, from_c, from_s|
    positions[from + 1].each do |to|
      to_r, to_c, to_s = to
      tmp_s = (from_r - to_r).abs + (from_c - to_c).abs + from_s
      to[2] = tmp_s if to_s > tmp_s
    end
  end
end
ans = positions[10].max_by { |_, _, s| s }[2]
puts ans == INF ? -1 : ans
