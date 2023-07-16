puzzle = []
8.times { puzzle << gets.chomp.split("") }

used_row = []
used_column = []
used_right_down = []
used_left_down = []

puzzle.each_with_index do |row, r_index|
  row.each_with_index do |column, c_index|
    if column == "Q"
      used_row << r_index
      used_column << c_index
      used_right_down << r_index - c_index
      used_left_down << c_index + r_index
    end
  end
end
possible_row = (0..7).to_a - used_row
if possible_row.size != 5
  puts "No Answer"
  exit
end

(0..7).each do |i_1|
  (0..7).each do |i_2|
    (0..7).each do |i_3|
      (0..7).each do |i_4|
        (0..7).each do |i_5|
          used_column_dup = used_column.dup
          used_right_down_dup = used_right_down.dup
          used_left_down_dup = used_left_down.dup
          used_column_dup.push(i_1, i_2, i_3, i_4, i_5)
          used_right_down_dup.push(
            possible_row[0] - i_1,
            possible_row[1] - i_2,
            possible_row[2] - i_3,
            possible_row[3] - i_4,
            possible_row[4] - i_5
          )
          used_left_down_dup.push(
            i_1 + possible_row[0],
            i_2 + possible_row[1],
            i_3 + possible_row[2],
            i_4 + possible_row[3],
            i_5 + possible_row[4]
          )
          if used_column_dup.size == used_column_dup.uniq.size &&
             used_right_down_dup.size == used_right_down_dup.uniq.size &&
             used_left_down_dup.size == used_left_down_dup.uniq.size
            puzzle[possible_row[0]][i_1] = "Q"
            puzzle[possible_row[1]][i_2] = "Q"
            puzzle[possible_row[2]][i_3] = "Q"
            puzzle[possible_row[3]][i_4] = "Q"
            puzzle[possible_row[4]][i_5] = "Q"
            puzzle.each do |row|
              puts row.join
            end
            exit
          end
        end
      end
    end
  end
end
puts "No Answer"
