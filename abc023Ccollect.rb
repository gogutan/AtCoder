MAX = 10**5 + 1
r, c, necessary = gets.split(" ").map(&:to_i)
num_of_candies = gets.to_i
candy_rows = Array.new(r, 0)
candy_cols = Array.new(c, 0)
candy_spots = []
num_of_candies.times do
  tmp_r, tmp_c = gets.split(" ").map(&:to_i)
  candy_rows[tmp_r - 1] += 1
  candy_cols[tmp_c - 1] += 1
  candy_spots << [tmp_r - 1, tmp_c - 1]
end

rows_by_candy_num = Array.new(MAX, 0)
cols_by_candy_num = Array.new(MAX, 0)

candy_rows.each do |row|
  rows_by_candy_num[row] += 1
end

candy_cols.each do |col|
  cols_by_candy_num[col] += 1
end

ans = 0

(0..necessary).each do |n|
  ans += rows_by_candy_num[n] * cols_by_candy_num[necessary - n]
end

candy_spots.each do |row, col|
  if candy_rows[row] + candy_cols[col] == necessary
    ans -= 1
  elsif candy_rows[row] + candy_cols[col] == necessary + 1
    ans += 1
  end
end

puts ans