n = gets.to_i
memo = Array.new(n, 0)
n.times { memo[gets.to_i - 1] += 1 }
zero_i = memo.find_index { |i| i == 0 }
two_i = memo.find_index { |i| i == 2 }
puts zero_i ? "#{two_i + 1} #{zero_i + 1}" : "Correct"
