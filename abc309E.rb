n, m = gets.split.map(&:to_i)
family = gets.split.map(&:to_i)
memo = n.times.map { 1.times.map { -1 } }
# [何世代先までカバーするか（0以上なら自身がカバーされる）, [子どもたち]]
memo.each do |row|
  row.push(Array.new)
end
family.each_with_index do |parent, child|
  memo[parent - 1][1] << child + 2
end
m.times do
  x, y = gets.split.map(&:to_i)
  memo[x - 1][0] = y if y > memo[x - 1][0]
end

memo.each do |num, children|
  children.each do |child|
    memo[child - 1][0] = num - 1 if num - 1 > memo[child - 1][0]
  end
end

puts memo.filter { |row| row[0] >= 0 }.size
