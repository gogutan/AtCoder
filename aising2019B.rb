n = gets.to_i
a, b = gets.split.map(&:to_i)
problems = gets.split.map(&:to_i)
easy = problems.select { |problem| problem <= a }
normal = problems.select { |problem| problem > a && problem <= b }
hard = problems.select { |problem| problem > b }
puts [easy.size, normal.size, hard.size].min
