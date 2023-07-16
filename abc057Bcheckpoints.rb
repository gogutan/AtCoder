n, m = gets.split.map(&:to_i)
students = []
n.times { students << gets.split.map(&:to_i) }
checkpoints = []
m.times { checkpoints << gets.split.map(&:to_i) }
students.each do |x, y|
  puts checkpoints.index(checkpoints.min_by { |item| (item[0] - x).abs + (item[1] - y).abs }) + 1
end
