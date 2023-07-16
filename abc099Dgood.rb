n, c = gets.split.map(&:to_i)
discomforts = []
c.times { discomforts << gets.split.map(&:to_i) }
grids = []
n.times { grids << gets.split.map(&:to_i) }
hash_0 = Hash.new(0)
hash_1 = Hash.new(0)
hash_2 = Hash.new(0)
grids.each_with_index do |row, row_index|
  row.each_with_index do |column, column_index|
    if (row_index + column_index) % 3 == 0
      hash_0[column] += 1
    elsif (row_index + column_index) % 3 == 1
      hash_1[column] += 1
    else (row_index + column_index) % 3 == 2
      hash_2[column] += 1
    end
  end
end

ans = []
colors = (1..c).to_a
colors.permutation(3).each do |a, b, c|
  cost = 0
  hash_0.each do |k, v|
    cost += discomforts[k - 1][a - 1] * v
  end
  hash_1.each do |k, v|
    cost += discomforts[k - 1][b - 1] * v
  end
  hash_2.each do |k, v|
    cost += discomforts[k - 1][c - 1] * v
  end
  ans << cost
end
puts ans.min
