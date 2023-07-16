h, w = gets.split.map(&:to_i)
stones = []
h.times { stones << gets.chomp.split("") }
left_edge = 0
right_edge = 0
stones.each_with_index do |row, row_index|
  tmp_left_edge = 8
  tmp_right_edge = -1
  row.each_with_index do |column, column_index|
    if column == "#"
      tmp_left_edge = [tmp_left_edge, column_index].min
      tmp_right_edge = [tmp_right_edge, column_index].max
    end
  end
  if right_edge <= tmp_left_edge
    left_edge = tmp_left_edge
    right_edge = tmp_right_edge
  else
    puts "Impossible"
    exit
  end
end
puts "Possible"
