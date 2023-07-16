n = gets.to_i
memo = {}
n.times do
  key = gets.chomp
  memo[key] = true
end

puts memo.size
